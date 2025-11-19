@interface POAgentAuthenticationProcess
- (BOOL)_doLoginWithPasswordContext:(id)a3 tokenId:(id)a4;
- (BOOL)_doRefreshWithPasswordContext:(id)a3 tokenId:(id)a4;
- (BOOL)handleUserNeedsReauthenticationAfterDelay:(double)a3;
- (BOOL)isCurrentSSOExtension:(id)a3;
- (BOOL)performLoginForCurrentUserWithPasswordContext:(id)a3 tokenId:(id)a4 forceLogin:(BOOL)a5;
- (POAgentAuthenticationProcess)initWithConfigurationHost:(id)a3;
- (POAgentAuthenticationProcessKerberosDelegate)kerberosDelegate;
- (id)createPasswordChangedNotificationWithAccountName:(id)a3 extensionIdentifier:(id)a4;
- (id)createSignInNotificationWithAccountName:(id)a3 extensionIdentifier:(id)a4;
- (id)initForAgentWithDelegate:(id)a3 configurationHost:(id)a4;
- (unint64_t)handleKeyRequestSync;
- (unint64_t)handleTokenBindingWithPasswordContext:(id)a3;
- (unint64_t)requestUserPasswordChangePreference;
- (void)_doUnlockForTokenWithCredentialContext:(id)a3 atLogin:(BOOL)a4;
- (void)_handleConfigurationChanged:(BOOL)a3 startup:(BOOL)a4;
- (void)_handleLoginResult:(unint64_t)a3 authenticationContext:(id)a4 tokens:(id)a5 passwordContext:(id)a6 tokenId:(id)a7 tokenHash:(id)a8;
- (void)_performStartupSteps;
- (void)checkIfGroupNamesNeedUpdate;
- (void)checkIfGroupNamesNeedUpdateForRegistrationManager:(id)a3;
- (void)checkIfPlatformSSOIsActive;
- (void)configurationChanged;
- (void)configurationChanged:(id)a3;
- (void)dealloc;
- (void)doUnlockForPasswordWithCredentialContext:(id)a3 atLogin:(BOOL)a4;
- (void)doUnlockForSmartCardWithCredentialContext:(id)a3 tokenId:(id)a4 atLogin:(BOOL)a5;
- (void)doUnlockForTokenLoginWithCredentialContext:(id)a3 atLogin:(BOOL)a4;
- (void)doUnlockForTokenUnlockWithCredentialContext:(id)a3 atLogin:(BOOL)a4;
- (void)doUnlockWithEmptyCredentialContext:(id)a3 atLogin:(BOOL)a4;
- (void)exchangeTGTForStatus:(id)a3;
- (void)handleAgentStartup;
- (void)handleChecksAfterSuccessfulLoginWithPasswordContext:(id)a3;
- (void)handleConfigurationChanged:(BOOL)a3;
- (void)handleConfigurationChanged:(BOOL)a3 startup:(BOOL)a4;
- (void)handleEncryptionKeyRotation;
- (void)handleKerberosMappingForTokens:(id)a3 extensionIdentifier:(id)a4 userConfiguration:(id)a5;
- (void)handleKerberosMappingForTokens:(id)a3 loginConfiguration:(id)a4 userConfiguration:(id)a5;
- (void)handleKeyRequestSync;
- (void)handleKeyRequestWithCompletion:(id)a3;
- (void)handleKeyUpdatesWithPasswordContext:(id)a3;
- (void)handleNetworkChange;
- (void)handlePendingSSOTokensWithSharedData:(id)a3;
- (void)handlePreviousRefreshTokens;
- (void)handleRemovingSSOTokens;
- (void)handleScreenLock;
- (void)handleScreenUnlock;
- (void)handleUnfinishedTGTExchanges;
- (void)notifyKerberosDelegateTGTDidBegin;
- (void)notifyKerberosDelegateTGTDidComplete;
- (void)postAuthenticationNotification:(unint64_t)a3;
- (void)requestUserAuthenticationSyncPassword:(BOOL)a3 completion:(id)a4;
- (void)requestUserAuthenticationWithWindow:(id)a3 completion:(id)a4;
- (void)requestUserPasswordChangePreference;
- (void)sendPasswordChangedNotification;
- (void)setupNotificationCategories;
- (void)setupTimerForAuthentication;
- (void)showAlertMessage:(id)a3 messageText:(id)a4 completion:(id)a5;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)waitForScreenUnlockithCompletion:(id)a3;
- (void)waitForShieldLoweredWithCompletion:(id)a3;
@end

@implementation POAgentAuthenticationProcess

- (id)initForAgentWithDelegate:(id)a3 configurationHost:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess initForAgentWithDelegate:configurationHost:];
  }

  v9 = [(POAgentAuthenticationProcess *)self initWithConfigurationHost:v7];
  if (v9)
  {
    objc_storeWeak(&v9->_kerberosDelegate, v6);
    v10 = objc_alloc_init(MEMORY[0x277D3D208]);
    keyBag = v9->_keyBag;
    v9->_keyBag = v10;

    [(POKeyBag *)v9->_keyBag startObservingKeyBagLockStatusChanges];
    v12 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.PlatformSSO.notifications"];
    userNotificationCenter = v9->_userNotificationCenter;
    v9->_userNotificationCenter = v12;

    [(UNUserNotificationCenter *)v9->_userNotificationCenter setDelegate:v9];
    [(UNUserNotificationCenter *)v9->_userNotificationCenter setWantsNotificationResponsesDelivered];
    [(POAgentAuthenticationProcess *)v9 setupNotificationCategories];
    v14 = NSUserName();
    userName = v9->_userName;
    v9->_userName = v14;

    v16 = [[PORegistrationManager alloc] initWithAgentAuthenticationProcess:v9 userNotificationCenter:v9->_userNotificationCenter configurationHost:v9->_configurationHost];
    registrationManager = v9->_registrationManager;
    v9->_registrationManager = v16;
  }

  return v9;
}

- (POAgentAuthenticationProcess)initWithConfigurationHost:(id)a3
{
  v5 = a3;
  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess initWithConfigurationHost:];
  }

  v35.receiver = self;
  v35.super_class = POAgentAuthenticationProcess;
  v7 = [(POAgentAuthenticationProcess *)&v35 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D3D1C0]);
    v9 = *(v7 + 5);
    *(v7 + 5) = v8;

    [*(v7 + 5) setWaitForConnectivity:1];
    v10 = +[POConfigurationManager sharedInstance];
    v11 = *(v7 + 4);
    *(v7 + 4) = v10;

    v12 = objc_alloc_init(MEMORY[0x277D3D210]);
    v13 = *(v7 + 9);
    *(v7 + 9) = v12;

    objc_storeStrong(v7 + 7, a3);
    v14 = objc_alloc_init(POKerberosHelper);
    v15 = *(v7 + 3);
    *(v7 + 3) = v14;

    v16 = NSUserName();
    v17 = *(v7 + 19);
    *(v7 + 19) = v16;

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *(v7 + 11);
    *(v7 + 11) = v18;

    v20 = [MEMORY[0x277CCA9A0] defaultCenter];
    v21 = *(v7 + 12);
    *(v7 + 12) = v20;

    v22 = objc_alloc_init(PODirectoryServices);
    v23 = *(v7 + 13);
    *(v7 + 13) = v22;

    *(v7 + 9) = 0;
    v7[11] = 0;
    v24 = [objc_alloc(MEMORY[0x277D3D238]) initWithIdentifierProvider:*(v7 + 13)];
    v25 = *(v7 + 14);
    *(v7 + 14) = v24;

    v26 = objc_alloc_init(MEMORY[0x277D3D218]);
    v27 = *(v7 + 15);
    *(v7 + 15) = v26;

    v28 = [[POKeychainJWKSStorageProvider alloc] initWithSystem:0];
    v29 = *(v7 + 6);
    *(v7 + 6) = v28;

    v30 = dispatch_queue_create("com.apple.AppSSOAgent.PlatformSSO.login", 0);
    v31 = *(v7 + 21);
    *(v7 + 21) = v30;

    v32 = dispatch_queue_create("com.apple.AppSSOAgent.PlatformSSO.configuration", 0);
    v33 = *(v7 + 22);
    *(v7 + 22) = v32;

    *(v7 + 6) = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(POAgentAuthenticationProcess *)self authenticationTimer];

  if (v3)
  {
    v4 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [v4 invalidate];

    [(POAgentAuthenticationProcess *)self setAuthenticationTimer:0];
  }

  v5 = [(POAgentAuthenticationProcess *)self distributedNotificationCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = POAgentAuthenticationProcess;
  [(POAgentAuthenticationProcess *)&v6 dealloc];
}

void __111__POAgentAuthenticationProcess_handleScreenUnlockWithCredentialContext_tokenId_atLogin_tokenUnlock_afterBuddy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained doUnlockWithEmptyCredentialContext:*(a1 + 32) atLogin:*(a1 + 48)];
}

- (void)doUnlockForSmartCardWithCredentialContext:(id)a3 tokenId:(id)a4 atLogin:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForSmartCardWithCredentialContext:tokenId:atLogin:];
  }

  v10 = [(POAgentAuthenticationProcess *)self loginQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke;
  block[3] = &unk_279A3A7B0;
  block[4] = self;
  v14 = v8;
  v15 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(v10, block);
}

void __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyBag];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke_2;
  v4[3] = &unk_279A3A7B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 waitForKeyBagUnlockWithCompletion:v4];
}

void __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataUsingEncoding:4];
  [v2 handlePendingSSOTokensWithSharedData:v3];

  [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:*(a1 + 48) tokenId:*(a1 + 40) forceLogin:0];
  [*(a1 + 32) handleUnfinishedTGTExchanges];
  if (([*(a1 + 32) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 32), "configurationManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "currentUserConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isNewUser"), v5, v4, v6))
  {
    v7 = *(a1 + 32);

    [v7 handleConfigurationChanged:0];
  }
}

- (void)doUnlockForPasswordWithCredentialContext:(id)a3 atLogin:(BOOL)a4
{
  v5 = a3;
  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForPasswordWithCredentialContext:atLogin:];
  }

  v7 = [(POAgentAuthenticationProcess *)self loginQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A7D8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

void __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userNotificationCenter];
  v14[0] = @"com.apple.PlatformSSO.passwordchanged";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v2 removePendingNotificationRequestsWithIdentifiers:v3];

  v4 = [*(a1 + 32) userNotificationCenter];
  v13 = @"com.apple.PlatformSSO.passwordchanged";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v4 removeDeliveredNotificationsWithIdentifiers:v5];

  v6 = [*(a1 + 32) keyBag];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_2;
  v10[3] = &unk_279A3A7D8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  [v6 waitForKeyBagUnlockWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v2 error:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = [*(a1 + 40) keyWrap];
    v6 = [v5 wrapBlob:v3];
    v7 = [*(a1 + 40) configurationManager];
    v8 = [v7 currentUserConfiguration];
    [v8 set_credential:v6];

    v9 = [*(a1 + 40) configurationManager];
    LOBYTE(v6) = [v9 saveCurrentUserConfigurationAndSyncToPreboot:0];

    if ((v6 & 1) == 0)
    {
      v10 = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_3();
    }

    [*(a1 + 40) handlePendingSSOTokensWithSharedData:v3];
    memset_s([v3 mutableBytes], objc_msgSend(v3, "length"), 0, objc_msgSend(v3, "length"));
  }

  else
  {
    v11 = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_58();
  }

  [*(a1 + 40) performLoginForCurrentUserWithPasswordContext:*(a1 + 32) tokenId:0 forceLogin:0];
  [*(a1 + 40) handleUnfinishedTGTExchanges];
  if (([*(a1 + 40) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 40), "configurationManager"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "currentUserConfiguration"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isNewUser"), v13, v12, v14))
  {
    [*(a1 + 40) handleConfigurationChanged:0];
  }
}

id __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_3()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after password unlock."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_58()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find credential after password unlock."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)doUnlockForTokenUnlockWithCredentialContext:(id)a3 atLogin:(BOOL)a4
{
  v6 = a3;
  v7 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForTokenUnlockWithCredentialContext:atLogin:];
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__POAgentAuthenticationProcess_doUnlockForTokenUnlockWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A788;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  v12 = a4;
  [(POAgentAuthenticationProcess *)self waitForScreenUnlockithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __84__POAgentAuthenticationProcess_doUnlockForTokenUnlockWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doUnlockForTokenWithCredentialContext:*(a1 + 32) atLogin:*(a1 + 48)];
}

- (void)doUnlockForTokenLoginWithCredentialContext:(id)a3 atLogin:(BOOL)a4
{
  v6 = a3;
  v7 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForTokenLoginWithCredentialContext:atLogin:];
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__POAgentAuthenticationProcess_doUnlockForTokenLoginWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A788;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  v12 = a4;
  [(POAgentAuthenticationProcess *)self waitForShieldLoweredWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __83__POAgentAuthenticationProcess_doUnlockForTokenLoginWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doUnlockForTokenWithCredentialContext:*(a1 + 32) atLogin:*(a1 + 48)];
}

- (void)_doUnlockForTokenWithCredentialContext:(id)a3 atLogin:(BOOL)a4
{
  v5 = a3;
  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess _doUnlockForTokenWithCredentialContext:atLogin:];
  }

  v7 = [(POAgentAuthenticationProcess *)self loginQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A7D8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userNotificationCenter];
  v14[0] = @"com.apple.PlatformSSO.passwordchanged";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v2 removePendingNotificationRequestsWithIdentifiers:v3];

  v4 = [*(a1 + 32) userNotificationCenter];
  v13 = @"com.apple.PlatformSSO.passwordchanged";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v4 removeDeliveredNotificationsWithIdentifiers:v5];

  v6 = [*(a1 + 32) keyBag];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2;
  v10[3] = &unk_279A3A7D8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  [v6 waitForKeyBagUnlockWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18 = 0;
  v3 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v2 error:&v18];
  v4 = v18;
  if (!v3)
  {
    v5 = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_3();
  }

  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2_cold_1();
  }

  v7 = [[POAgentProcess alloc] initWithAuthenticationProcess:*(a1 + 40)];
  v8 = dispatch_semaphore_create(0);
  v9 = NSUserName();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70;
  v14[3] = &unk_279A3A800;
  v11 = a1 + 32;
  v10 = *(a1 + 32);
  v14[4] = *(v11 + 8);
  v15 = v3;
  v16 = v10;
  v17 = v8;
  v12 = v8;
  v13 = v3;
  [(POAgentProcess *)v7 updateLocalAccountPassword:v9 passwordContext:v10 completion:v14];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

id __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_3()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find credential after token unlock."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

intptr_t __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70(uint64_t a1, uint64_t a2)
{
  v4 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70_cold_1(a2, v4);
  }

  [*(a1 + 32) handlePendingSSOTokensWithSharedData:*(a1 + 40)];
  memset_s([*(a1 + 40) mutableBytes], objc_msgSend(*(a1 + 40), "length"), 0, objc_msgSend(*(a1 + 40), "length"));
  [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:*(a1 + 48) tokenId:0 forceLogin:0];
  [*(a1 + 32) handleUnfinishedTGTExchanges];
  if (([*(a1 + 32) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 32), "configurationManager"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "currentUserConfiguration"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isNewUser"), v6, v5, v7))
  {
    [*(a1 + 32) handleConfigurationChanged:0];
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

- (void)doUnlockWithEmptyCredentialContext:(id)a3 atLogin:(BOOL)a4
{
  v5 = a3;
  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockWithEmptyCredentialContext:atLogin:];
  }

  v7 = [(POAgentAuthenticationProcess *)self loginQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A7D8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

void __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyBag];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke_2;
  v4[3] = &unk_279A3A7D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 waitForKeyBagUnlockWithCompletion:v4];
}

void __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:*(a1 + 40) tokenId:0 forceLogin:0];
  [*(a1 + 32) handleUnfinishedTGTExchanges];
  if (([*(a1 + 32) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 32), "configurationManager"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "currentUserConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isNewUser"), v3, v2, v4))
  {
    v5 = *(a1 + 32);

    [v5 handleConfigurationChanged:0];
  }
}

- (void)handleAgentStartup
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSOAgentStartup", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_3;
  v10[3] = &unk_279A3A298;
  objc_copyWeak(&v11, &location);
  v2 = [*(a1 + 32) keyBag];
  [v2 setLockHandler:v10];

  v3 = [*(a1 + 32) notificationCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_configurationChanged_ name:*MEMORY[0x277CEBEF8] object:0];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:getuid()];
  v5 = [v4 stringValue];

  v6 = [*(a1 + 32) distributedNotificationCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_handleScreenUnlock name:@"com.apple.screenIsUnlocked" object:v5];

  v7 = [*(a1 + 32) distributedNotificationCenter];
  [v7 addObserver:*(a1 + 32) selector:sel_handleScreenLock name:@"com.apple.screenIsLocked" object:v5];

  [*(a1 + 32) checkIfPlatformSSOIsActive];
  v8 = [*(a1 + 32) keyBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_4;
  v9[3] = &unk_279A3A060;
  v9[4] = *(a1 + 32);
  [v8 waitForKeyBagFirstUnlockOnStartupWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnableNetworkChanges:0];
}

- (void)_performStartupSteps
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke(uint64_t a1)
{
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) configurationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke_86;
  block[3] = &unk_279A3A060;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v3, block);

  v4 = [*(a1 + 32) platformSSOActive];
  v5 = *(a1 + 32);
  if (!v4)
  {
    v13 = [v5 userNotificationCenter];
    [v13 removeAllDeliveredNotifications];

    v14 = [*(a1 + 32) userNotificationCenter];
    [v14 removeAllPendingNotificationRequests];

    return;
  }

  v6 = [v5 configurationManager];
  v7 = [v6 currentDeviceConfiguration];
  if (![v7 supportsTokenUnlock])
  {
    goto LABEL_10;
  }

  v8 = [*(a1 + 32) configurationManager];
  v9 = [v8 currentUserConfiguration];
  if ([v9 loginType] != 1)
  {

    goto LABEL_10;
  }

  v10 = [*(a1 + 32) configurationManager];
  v11 = NSUserName();
  v12 = [v10 isTemporaryAccountUserName:v11];

  if ((v12 & 1) == 0)
  {
    v6 = [*(a1 + 32) tokenHelper];
    v7 = NSUserName();
    [v6 insertTokenForUser:v7];
LABEL_10:
  }

  [*(a1 + 32) setupTimerForAuthentication];
}

- (void)handleNetworkChange
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke(uint64_t a1)
{
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_cold_1();
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSONetworkChange", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87(uint64_t a1)
{
  if (([*(a1 + 32) enableNetworkChanges] & 1) == 0)
  {
    v5 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_1();
    }

    goto LABEL_14;
  }

  if (([*(a1 + 32) platformSSOActive] & 1) == 0)
  {
    v5 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_2();
    }

    goto LABEL_14;
  }

  if (([*(a1 + 32) platformSSOAccount] & 1) == 0)
  {
    v5 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_3();
    }

LABEL_14:

    return;
  }

  v2 = [*(a1 + 32) keyBag];
  v3 = [v2 isUserKeybagUnlocked];

  if (v3)
  {
    [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:0];
    v4 = *(a1 + 32);

    [v4 handleUnfinishedTGTExchanges];
  }
}

- (void)waitForShieldLoweredWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(POAgentAuthenticationProcess *)self shieldLoweredLock];
  objc_sync_enter(v4);
  if ([(POAgentAuthenticationProcess *)self shieldLowered])
  {
    v5[2](v5);
  }

  else
  {
    [(POAgentAuthenticationProcess *)self set__shieldLoweredHandler:v5];
  }

  objc_sync_exit(v4);
}

- (void)handleScreenUnlock
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleScreenLock
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)waitForScreenUnlockithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(POAgentAuthenticationProcess *)self screenUnlockLock];
  objc_sync_enter(v4);
  if ([(POAgentAuthenticationProcess *)self screenUnlocked])
  {
    v5[2](v5);
  }

  else
  {
    [(POAgentAuthenticationProcess *)self set__screenUnlockHandler:v5];
  }

  objc_sync_exit(v4);
}

- (BOOL)performLoginForCurrentUserWithPasswordContext:(id)a3 tokenId:(id)a4 forceLogin:(BOOL)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:];
  }

  v11 = self;
  objc_sync_enter(v11);
  if (![(POAgentAuthenticationProcess *)v11 platformSSOActive])
  {
    v13 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_2();
    }

    goto LABEL_20;
  }

  v12 = [(POAgentAuthenticationProcess *)v11 platformSSOAccount];
  v13 = PO_LOG_POAgentAuthenticationProcess();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (!v12)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_INFO, "not a PlatformSSO account", buf, 2u);
    }

    goto LABEL_20;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_INFO, "Checking Login for user", buf, 2u);
  }

  v15 = [(POAgentAuthenticationProcess *)v11 configurationManager];
  v13 = [v15 currentUserConfiguration];

  if (v13)
  {
    v16 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSObject state](v13, "state")}];
      *buf = 136315650;
      v85 = "[POAgentAuthenticationProcess performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:]";
      v86 = 2114;
      v87 = v17;
      v88 = 2112;
      v89 = v11;
      _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_DEFAULT, "%s user state = %{public}@ on %@", buf, 0x20u);
    }

    if ([v13 state]== 2 || [v13 state]== 5)
    {
      v18 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v18, OS_LOG_TYPE_INFO, "User state is needs registration or key is invalid", buf, 2u);
      }

      goto LABEL_20;
    }

    if ([v13 state]== 1)
    {
      v23 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v23, OS_LOG_TYPE_INFO, "User state is needs authentication", buf, 2u);
      }

      a5 = 1;
    }

    v24 = [v13 lastLoginDate];
    if (v24)
    {
      v25 = [v13 lastLoginDate];
      [v25 timeIntervalSinceNow];
      v27 = v26;
      v28 = [(POAgentAuthenticationProcess *)v11 configurationManager];
      v29 = [v28 currentDeviceConfiguration];
      v30 = [v29 loginFrequency];
      v72 = v27 < -[v30 intValue];
    }

    else
    {
      v72 = 1;
    }

    if (a5 || !v72)
    {
      if (a5)
      {
        goto LABEL_38;
      }

      v31 = [(POAgentAuthenticationProcess *)v11 configurationManager];
      v32 = [v31 tokenReceived];
      [v32 timeIntervalSinceNow];
      v34 = v33 < -14400.0;

      if (!v34)
      {
        v58 = [(POAgentAuthenticationProcess *)v11 configurationManager];
        v59 = [v58 tokenExpiration];
        [v59 timeIntervalSinceNow];
        v61 = v60 < 600.0;

        if (!v61)
        {
          v76 = 0u;
          v77 = 0u;
          v75 = 0u;
          v74 = 0u;
          v62 = [v13 kerberosStatus];
          v63 = [v62 countByEnumeratingWithState:&v74 objects:v83 count:16];
          obj = v62;
          if (v63)
          {
            v64 = *v75;
            while (2)
            {
              for (i = 0; i != v63; ++i)
              {
                if (*v75 != v64)
                {
                  objc_enumerationMutation(obj);
                }

                v66 = *(*(&v74 + 1) + 8 * i);
                if ([v66 importSuccessful])
                {
                  if (([v66 exchangeRequired] & 1) == 0)
                  {
                    v67 = [(POAgentAuthenticationProcess *)v11 kerberosHelper];
                    v68 = [v66 cacheName];
                    v69 = [v67 checkForValidKerberosTGT:v68];

                    if ((v69 & 1) == 0)
                    {
                      v71 = PO_LOG_POAgentAuthenticationProcess();
                      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_25E831000, v71, OS_LOG_TYPE_INFO, "Kerberos cache not valid", buf, 2u);
                      }

                      v35 = obj;
                      goto LABEL_37;
                    }
                  }
                }
              }

              v63 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
              if (v63)
              {
                continue;
              }

              break;
            }
          }

          v70 = PO_LOG_POAgentAuthenticationProcess();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25E831000, v70, OS_LOG_TYPE_INFO, "User does not need authentication", buf, 2u);
          }

          [(POAgentAuthenticationProcess *)v11 handleChecksAfterSuccessfulLoginWithPasswordContext:v8];
          goto LABEL_20;
        }

        v35 = PO_LOG_POAgentAuthenticationProcess();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v36 = "Tokens expire soon";
        goto LABEL_36;
      }

      v35 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v36 = "Tokens issued more than 4 hours ago";
LABEL_36:
        _os_log_impl(&dword_25E831000, v35, OS_LOG_TYPE_INFO, v36, buf, 2u);
      }
    }

    else
    {
      v35 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v36 = "Time for user authentication";
        goto LABEL_36;
      }
    }

LABEL_37:

LABEL_38:
    v37 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v37, OS_LOG_TYPE_INFO, "Attempting authentication", buf, 2u);
    }

    v38 = [(POAgentAuthenticationProcess *)v11 authenticationProcess];
    v39 = [v38 waitForConnectivity];

    v40 = [(POAgentAuthenticationProcess *)v11 lastAuthenticationAttempt];
    if (v40)
    {
      v41 = [(POAgentAuthenticationProcess *)v11 lastAuthenticationAttempt];
      [v41 timeIntervalSinceNow];
      v43 = -180.0;
      if (!v39)
      {
        v43 = -2.0;
      }

      v44 = v42 > v43;

      if (v44)
      {
        v45 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:];
        }

        goto LABEL_20;
      }
    }

    v46 = [(POAgentAuthenticationProcess *)v11 configurationManager];
    v47 = [v46 currentLoginConfiguration];

    if (!v47)
    {
      v55 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_91();
      v20 = 0;
LABEL_65:

      goto LABEL_21;
    }

    v48 = [(POAgentAuthenticationProcess *)v11 configurationManager];
    v49 = [v48 currentDeviceConfiguration];

    if (v49)
    {
      if ([v49 registrationCompleted])
      {
        if (v72)
        {
          goto LABEL_62;
        }

        if ([v13 loginType]== 2)
        {
          goto LABEL_62;
        }

        v50 = [v47 refreshEndpointURL];
        if (!v50)
        {
          goto LABEL_62;
        }

        v51 = [(POAgentAuthenticationProcess *)v11 configurationManager];
        v52 = [v51 currentRefreshToken];
        v53 = v52 == 0;

        if (v53)
        {
LABEL_62:
          v54 = [(POAgentAuthenticationProcess *)v11 _doLoginWithPasswordContext:v8 tokenId:v9];
        }

        else
        {
          v54 = [(POAgentAuthenticationProcess *)v11 _doRefreshWithPasswordContext:v8 tokenId:v9];
        }

        v20 = v54;
        goto LABEL_64;
      }

      v57 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_99();
    }

    else
    {
      v56 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_95();
    }

    v20 = 0;
LABEL_64:

    goto LABEL_65;
  }

  v78 = MEMORY[0x277D85DD0];
  v79 = 3221225472;
  v80 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke;
  v81 = &unk_279A3A088;
  v82 = v11;
  v19 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke();
LABEL_20:
  v20 = 0;
LABEL_21:

  objc_sync_exit(v11);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for user for login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_91()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for user for login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_95()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for user for login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_99()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Registration is not complete for user for login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)_doRefreshWithPasswordContext:(id)a3 tokenId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess _doRefreshWithPasswordContext:tokenId:];
  }

  v9 = [(POAgentAuthenticationProcess *)self configurationManager];
  v10 = [v9 currentUserConfiguration];

  if (v10)
  {
    v11 = [(POAgentAuthenticationProcess *)self configurationManager];
    v12 = [v11 currentDeviceConfiguration];

    if (v12)
    {
      v13 = [(POAgentAuthenticationProcess *)self configurationManager];
      v14 = [v13 currentLoginConfiguration];

      v15 = v14 != 0;
      if (v14)
      {
        v41 = v6;
        [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
        v16 = [MEMORY[0x277CBEAA8] date];
        [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:v16];

        v17 = PO_LOG_POAgentAuthenticationProcess();
        v18 = os_signpost_id_generate(v17);

        v19 = PO_LOG_POAgentAuthenticationProcess();
        v20 = v19;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PlatformSSO_RefreshAuth", " enableTelemetry=YES ", buf, 2u);
        }

        v21 = [v10 userLoginConfiguration];
        v22 = [v14 mergedConfigurationWithUserLoginConfiguration:v21];

        v23 = [v10 userLoginConfiguration];
        v24 = [v23 loginUserName];
        v25 = v24;
        v42 = v18;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = [(POAgentAuthenticationProcess *)self userName];
        }

        v30 = v26;
        v39 = v26;

        v31 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v40 = v22;
        v32 = [v31 createAuthenticationContextUsingLoginConfiguration:v22 deviceConfiguration:v12 userName:v30];

        v33 = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
        [v32 setJwksStorageProvider:v33];

        v34 = [(POAgentAuthenticationProcess *)self configurationManager];
        v35 = [v34 currentRefreshToken];
        [v32 setRefreshToken:v35];

        v36 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_121;
        v43[3] = &unk_279A3A828;
        v6 = v41;
        v47 = v42;
        v43[4] = self;
        v44 = v32;
        v45 = v41;
        v46 = v7;
        v37 = v32;
        [v36 performTokenRefreshUsingContext:v37 completion:v43];
      }

      else
      {
        v29 = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_114();
      }
    }

    else
    {
      v28 = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_108();
      v15 = 0;
    }
  }

  else
  {
    v27 = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke();
    v15 = 0;
  }

  return v15;
}

id __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for refresh."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_108()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for refresh."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_114()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for refresh."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_121(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v17 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v17;
        v11 = *(a1 + 64);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v12 = "Success";
        v13 = buf;
        goto LABEL_24;
      case 2:
        v14 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v14;
        v11 = *(a1 + 64);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v14))
        {
          goto LABEL_25;
        }

        v20 = 0;
        v12 = "PermanentFailure";
        v13 = &v20;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v9 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v9;
        v11 = *(a1 + 64);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
        {
          goto LABEL_25;
        }

        v21 = 0;
        v12 = "CredentialFailure";
        v13 = &v21;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_RefreshAuth", v12, v13, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v15 = PO_LOG_POAgentAuthenticationProcess();
      v10 = v15;
      v11 = *(a1 + 64);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
      {
        goto LABEL_25;
      }

      LOWORD(v18) = 0;
      v12 = "Failed";
      v13 = &v18;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v16 = PO_LOG_POAgentAuthenticationProcess();
      v10 = v16;
      v11 = *(a1 + 64);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_25;
      }

      v19 = 0;
      v12 = "Unavailable";
      v13 = &v19;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:*(a1 + 40) tokens:v8 passwordContext:*(a1 + 48) tokenId:*(a1 + 56) tokenHash:{0, v18}];
}

- (BOOL)_doLoginWithPasswordContext:(id)a3 tokenId:(id)a4
{
  v235 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
  }

  v9 = [(POAgentAuthenticationProcess *)self configurationManager];
  v10 = [v9 currentUserConfiguration];

  if (v10)
  {
    v11 = [(POAgentAuthenticationProcess *)self configurationManager];
    v182 = [v11 currentDeviceConfiguration];

    if (!v182)
    {
      v221 = MEMORY[0x277D85DD0];
      v222 = 3221225472;
      v223 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_126;
      v224 = &unk_279A3A088;
      v225 = self;
      v33 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_126();
      LOBYTE(v32) = 0;
LABEL_49:

      goto LABEL_50;
    }

    v12 = [(POAgentAuthenticationProcess *)self configurationManager];
    v181 = [v12 currentLoginConfiguration];

    if (!v181)
    {
      v216 = MEMORY[0x277D85DD0];
      v217 = 3221225472;
      v218 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_130;
      v219 = &unk_279A3A088;
      v220 = self;
      v34 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_130();
      goto LABEL_21;
    }

    v13 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "loginType")}];
      *buf = 136315650;
      *&buf[4] = "[POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:]";
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v232 = self;
      _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_DEFAULT, "%s loginType = %{public}@ on %@", buf, 0x20u);
    }

    if ([v10 loginType] == 1)
    {
      v15 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_INFO, "Password authentication", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v232 = __Block_byref_object_copy__3;
      v233 = __Block_byref_object_dispose__3;
      v234 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v6 error:0];
      if (*(*&buf[8] + 40))
      {
        goto LABEL_13;
      }

      v16 = [(POAgentAuthenticationProcess *)self keyWrap];
      v17 = [v10 _credential];
      v18 = [v16 unwrapBlob:v17];
      v19 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v18;

      if (*(*&buf[8] + 40))
      {
LABEL_13:
        [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
        v20 = [MEMORY[0x277CBEAA8] date];
        [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:v20];

        v21 = PO_LOG_POAgentAuthenticationProcess();
        v22 = os_signpost_id_generate(v21);

        v23 = PO_LOG_POAgentAuthenticationProcess();
        v24 = v23;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *v189 = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "PlatformSSO_PasswordAuth", " enableTelemetry=YES ", v189, 2u);
        }

        v25 = [v10 userLoginConfiguration];
        v26 = [v181 mergedConfigurationWithUserLoginConfiguration:v25];

        v27 = [v10 userLoginConfiguration];
        v28 = [v27 loginUserName];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = [(POAgentAuthenticationProcess *)self userName];
        }

        v50 = v30;

        v51 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v52 = [v51 createAuthenticationContextUsingLoginConfiguration:v26 deviceConfiguration:v182 userName:v50];

        [v52 setPassword:*(*&buf[8] + 40)];
        v53 = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
        [v52 setJwksStorageProvider:v53];

        v54 = [(POAgentAuthenticationProcess *)self configurationManager];
        v55 = [v54 currentRefreshToken];
        [v52 setRefreshToken:v55];

        v56 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v206[0] = MEMORY[0x277D85DD0];
        v206[1] = 3221225472;
        v206[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_138;
        v206[3] = &unk_279A3A850;
        v209 = buf;
        v210 = v22;
        v206[4] = self;
        v207 = v6;
        v208 = v7;
        [v56 performPasswordLoginUsingContext:v52 completion:v206];

        _Block_object_dispose(buf, 8);
LABEL_47:
        LOBYTE(v32) = 1;
        goto LABEL_48;
      }

      v211 = MEMORY[0x277D85DD0];
      v212 = 3221225472;
      v213 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_134;
      v214 = &unk_279A3A088;
      v215 = self;
      v68 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_134();
      [(POAgentAuthenticationProcess *)self handleUserNeedsReauthenticationAfterDelay:1.0];
      _Block_object_dispose(buf, 8);

LABEL_21:
      LOBYTE(v32) = 0;
LABEL_48:

      goto LABEL_49;
    }

    if ([v10 loginType] == 2)
    {
      [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
      v177 = SecKeyCopyAttributes([v10 sepKey]);
      v35 = [(__CFDictionary *)v177 objectForKeyedSubscript:*MEMORY[0x277CDBEC0]];

      if (!v35 || ![MEMORY[0x277D3D230] checkIfBiometricConstraintsForSigning:v35])
      {
        v179 = 0;
LABEL_34:
        v39 = [MEMORY[0x277CBEAA8] date];
        [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:v39];

        v40 = PO_LOG_POAgentAuthenticationProcess();
        v41 = os_signpost_id_generate(v40);

        v42 = PO_LOG_POAgentAuthenticationProcess();
        v43 = v42;
        if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "PlatformSSO_UserSEPKeyAuth", " enableTelemetry=YES ", buf, 2u);
        }

        v44 = [v10 userLoginConfiguration];
        v45 = [v181 mergedConfigurationWithUserLoginConfiguration:v44];

        v46 = [v10 userLoginConfiguration];
        v47 = [v46 loginUserName];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = [(POAgentAuthenticationProcess *)self userName];
        }

        v58 = v49;

        v59 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v60 = [v59 createAuthenticationContextUsingLoginConfiguration:v45 deviceConfiguration:v182 userName:v58];

        v61 = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
        [v60 setJwksStorageProvider:v61];

        v62 = [(POAgentAuthenticationProcess *)self configurationManager];
        v63 = [v62 currentRefreshToken];
        [v60 setRefreshToken:v63];

        [v60 setEmbeddedAssertionSigningKey:{objc_msgSend(v10, "sepKeyWithContext:", v179)}];
        [v60 setEmbeddedAssertionCertificate:{objc_msgSend(v10, "sepKeyCertificate")}];
        v64 = [v10 signingAlgorithm];
        [v60 setUserSepSigningAlgorithm:v64];

        v65 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_184;
        v194[3] = &unk_279A3A8C0;
        v197 = v41;
        v194[4] = self;
        v195 = v6;
        v196 = v7;
        [v65 performSEPKeyLoginUsingContext:v60 completion:v194];

        goto LABEL_47;
      }

      v36 = [v181 userSEPKeyBiometricPolicy];
      if (v6 && (v36 & 4) != 0)
      {
        v37 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
        }

        v179 = v6;
        goto LABEL_34;
      }

      v179 = objc_alloc_init(MEMORY[0x277CD4790]);
      v81 = [v182 accountDisplayName];
      v82 = [v81 length] == 0;

      if (v82)
      {
        v99 = [v181 accountDisplayName];
        v100 = [v99 length] == 0;

        v101 = MEMORY[0x277CCACA8];
        v176 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v102 = [v176 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        if (v100)
        {
          v140 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v141 = [v140 localizedStringForKey:@"IDENTITY_PROVIDER_TEXT" value:&stru_287080C08 table:0];
          v142 = [v101 localizedStringWithFormat:v102, v141];
          [v179 setLocalizedReason:v142];

          v175 = 0;
        }

        else
        {
          v103 = [v181 accountDisplayName];
          v104 = [v101 localizedStringWithFormat:v102, v103];
          [v179 setLocalizedReason:v104];

          v175 = [v181 accountDisplayName];
        }
      }

      else
      {
        v83 = MEMORY[0x277CCACA8];
        v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v85 = [v84 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        v86 = [v182 accountDisplayName];
        v87 = [v83 localizedStringWithFormat:v85, v86];
        [v179 setLocalizedReason:v87];

        v175 = [v182 accountDisplayName];
      }

      v143 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v144 = [v143 localizedStringForKey:@"DEFAULT_LOGIN_PROMPT_NAME" value:&stru_287080C08 table:0];
      [v179 setOptionCallerName:v144];

      v145 = MEMORY[0x277CCA8D8];
      v146 = [v182 extensionIdentifier];
      v147 = [v145 bundleWithIdentifier:v146];
      v148 = [v147 bundlePath];
      [v179 setOptionCallerIconPath:v148];

      [v179 setInteractionNotAllowed:0];
      if (([v181 userSEPKeyBiometricPolicy] & 8) != 0)
      {
        if (!v175 || [v175 length] >= 0x13)
        {
          v149 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v150 = [v149 localizedStringForKey:@"IDENTITY_PROVIDER_TEXT" value:&stru_287080C08 table:0];

          v175 = v150;
        }

        v151 = MEMORY[0x277CCACA8];
        v152 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v153 = [v152 localizedStringForKey:@"CUSTOM_FALLBACK_BUTTON_TEXT" value:&stru_287080C08 table:0];
        v154 = [v151 localizedStringWithFormat:v153, v175];
        [v179 setLocalizedFallbackTitle:v154];

        [v179 setOptionFallbackVisible:MEMORY[0x277CBEC38]];
      }

      v155 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v232 = __Block_byref_object_copy__3;
      v233 = __Block_byref_object_dispose__3;
      v234 = 0;
      v156 = 10;
      v32 = 0x277CCA000uLL;
      while (1)
      {
        v157 = *&buf[8];
        obj = *(*&buf[8] + 40);
        v158 = [v179 evaluateAccessControl:v35 operation:3 options:MEMORY[0x277CBEC10] error:&obj];
        objc_storeStrong((v157 + 40), obj);

        v159 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:v189 tokenId:&v189[1]];
        }

        if ([*(*&buf[8] + 40) code] == -1004)
        {
          v160 = PO_LOG_POAgentAuthenticationProcess();
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
          {
            [POAgentAuthenticationProcess _doLoginWithPasswordContext:v204 tokenId:&v204[1]];
          }

          [MEMORY[0x277CCACC8] sleepForTimeInterval:2.0];
        }

        if ([*(*&buf[8] + 40) code] != -4)
        {
          break;
        }

        v161 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:v203 tokenId:?];
        }

        [MEMORY[0x277CCACC8] sleepForTimeInterval:5.0];
        v155 = v158;
        if (!--v156)
        {
          goto LABEL_122;
        }
      }

      v32 = *(*&buf[8] + 40);
      v161 = PO_LOG_POAgentAuthenticationProcess();
      v162 = os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG);
      if (v32)
      {
        if (v162)
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
        }
      }

      else if (v162)
      {
        [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
      }

LABEL_122:
      if (!v158)
      {
        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_159;
        v201[3] = &unk_279A3A450;
        v201[4] = buf;
        v163 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_159(v201);
        v164 = [v181 userSEPKeyBiometricPolicy];
        v165 = [*(*&buf[8] + 40) code];
        v166 = v164 & 8;
        if (v165 == -1)
        {
          v164 = [*(*&buf[8] + 40) userInfo];
          v161 = [v164 objectForKeyedSubscript:@"Subcode"];
          if ([v161 intValue]== 6)
          {

LABEL_128:
            v168 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v169 = [v168 localizedStringForKey:@"BIOMETRIC_CHANGED_TEXT" value:&stru_287080C08 table:0];

            v170 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v171 = [v170 localizedStringForKey:@"DEFAULT_REGISTRATION_REQUIRED_TEXT" value:&stru_287080C08 table:0];

            v198[0] = MEMORY[0x277D85DD0];
            v198[1] = 3221225472;
            v198[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_172;
            v198[3] = &unk_279A3A898;
            v200 = v166 >> 3;
            v198[4] = self;
            v199 = v10;
            [(POAgentAuthenticationProcess *)self showAlertMessage:v169 messageText:v171 completion:v198];

LABEL_131:
            LOBYTE(v32) = 0;
            goto LABEL_133;
          }
        }

        v167 = [*(*&buf[8] + 40) code];
        if (v165 == -1)
        {
          v172 = v167 == -7;

          if (v172)
          {
            goto LABEL_128;
          }
        }

        else if (v167 == -7)
        {
          goto LABEL_128;
        }

        if (!v166)
        {
          goto LABEL_131;
        }

        [(POAgentAuthenticationProcess *)self requestUserAuthenticationSyncPassword:0 completion:&__block_literal_global_183];
        LOBYTE(v32) = 1;
      }

LABEL_133:

      _Block_object_dispose(buf, 8);
      if (!v158)
      {

        goto LABEL_48;
      }

      goto LABEL_34;
    }

    if ([v10 loginType] != 3)
    {
      if ([v10 loginType] == 4)
      {
        v57 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v57, OS_LOG_TYPE_INFO, "Prompting user for access key authentication", buf, 2u);
        }
      }

      goto LABEL_47;
    }

    if (v7)
    {
      v38 = v7;
    }

    else
    {
      v38 = [v10 smartCardTokenId];
      if (!v38)
      {
        goto LABEL_60;
      }
    }

    v69 = [(POAgentAuthenticationProcess *)self tokenHelper];
    v70 = [v69 waitForTokenAvailable:v38];

    if (v70)
    {
LABEL_54:
      v71 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
      }

      v72 = [(POAgentAuthenticationProcess *)self tokenHelper];
      v73 = [(POAgentAuthenticationProcess *)self userName];
      v191[0] = 0;
      v180 = [v72 findTokenIdForSmartCardBoundUser:v73 tokenHash:v191];
      v178 = v191[0];

      if (![v180 length])
      {
        v74 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
        }

        v75 = [(POAgentAuthenticationProcess *)self tokenHelper];
        v76 = [(POAgentAuthenticationProcess *)self userName];
        v190 = v178;
        v77 = [v75 findTokenIdForSmartCardAMUser:v76 tokenHash:&v190];
        v78 = v190;

        v178 = v78;
        v180 = v77;
      }

LABEL_63:
      if (v6)
      {
        v174 = v6;
      }

      else
      {
        v174 = objc_alloc_init(MEMORY[0x277CD4790]);
      }

      v89 = [v182 accountDisplayName];
      v90 = [v89 length] == 0;

      if (v90)
      {
        v96 = [v181 accountDisplayName];
        v97 = [v96 length] == 0;

        v98 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v93 = [v92 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        if (v97)
        {
          v94 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v95 = [v94 localizedStringForKey:@"IDENTITY_PROVIDER_TEXT" value:&stru_287080C08 table:0];
          v106 = [v98 localizedStringWithFormat:v93, v95];
          [v174 setOptionAuthenticationTitle:v106];
        }

        else
        {
          v94 = [v181 accountDisplayName];
          v95 = [v98 localizedStringWithFormat:v93, v94];
          [v174 setOptionAuthenticationTitle:v95];
        }
      }

      else
      {
        v91 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v93 = [v92 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        v94 = [v182 accountDisplayName];
        v95 = [v91 localizedStringWithFormat:v93, v94];
        [v174 setOptionAuthenticationTitle:v95];
      }

      v107 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v108 = [v107 localizedStringForKey:@"DEFAULT_LOGIN_PROMPT_NAME" value:&stru_287080C08 table:0];
      [v174 setOptionCallerName:v108];

      v109 = MEMORY[0x277CCA8D8];
      v110 = [v182 extensionIdentifier];
      v111 = [v109 bundleWithIdentifier:v110];
      v112 = [v111 bundlePath];
      [v174 setOptionCallerIconPath:v112];

      *buf = 0;
      *v189 = 0;
      v113 = [(POAgentAuthenticationProcess *)self keychainHelper];
      LOBYTE(v109) = [v113 retrieveCertAndKeyForTokenId:v180 context:v174 forSigning:1 hash:v178 certificate:v189 privateKey:buf];

      if (v109)
      {
        goto LABEL_81;
      }

      v124 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
      {
        *v204 = 0;
        _os_log_impl(&dword_25E831000, v124, OS_LOG_TYPE_INFO, "Smartcard not found.", v204, 2u);
      }

      v125 = [(POAgentAuthenticationProcess *)self registrationManager];
      v188 = v178;
      v126 = [v125 requestSmartCardForBinding:1 window:0 tokenId:0 tokenHash:&v188 wrapTokenHash:0 pinContext:0];
      v127 = v188;

      if (v126 == 1)
      {
        v128 = [(POAgentAuthenticationProcess *)self keychainHelper];
        v129 = [v128 retrieveCertAndKeyForTokenId:v180 context:v174 forSigning:1 hash:v127 certificate:v189 privateKey:buf];

        if (v129)
        {
          v178 = v127;
LABEL_81:
          [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
          v114 = [MEMORY[0x277CBEAA8] date];
          [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:v114];

          v115 = PO_LOG_POAgentAuthenticationProcess();
          v116 = os_signpost_id_generate(v115);

          v117 = PO_LOG_POAgentAuthenticationProcess();
          v118 = v117;
          if (v116 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v117))
          {
            *v204 = 0;
            _os_signpost_emit_with_name_impl(&dword_25E831000, v118, OS_SIGNPOST_INTERVAL_BEGIN, v116, "PlatformSSO_SmartCard", " enableTelemetry=YES ", v204, 2u);
          }

          v119 = [v10 userLoginConfiguration];
          v173 = [v181 mergedConfigurationWithUserLoginConfiguration:v119];

          v120 = [v10 userLoginConfiguration];
          v121 = [v120 loginUserName];
          v122 = v121;
          if (v121)
          {
            v123 = v121;
          }

          else
          {
            v123 = [(POAgentAuthenticationProcess *)self userName];
          }

          v131 = v123;

          v132 = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v133 = [v132 createAuthenticationContextUsingLoginConfiguration:v173 deviceConfiguration:v182 userName:v131];

          v134 = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
          [v133 setJwksStorageProvider:v134];

          v135 = [(POAgentAuthenticationProcess *)self configurationManager];
          v136 = [v135 currentRefreshToken];
          [v133 setRefreshToken:v136];

          [v133 setEmbeddedAssertionSigningKey:*buf];
          [v133 setEmbeddedAssertionCertificate:*v189];
          v137 = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v183[0] = MEMORY[0x277D85DD0];
          v183[1] = 3221225472;
          v183[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_195;
          v183[3] = &unk_279A3A828;
          v187 = v116;
          v183[4] = self;
          v184 = v6;
          v185 = v7;
          v186 = v178;
          v138 = v178;
          [v137 performSmartCardLoginUsingContext:v133 completion:v183];

          goto LABEL_47;
        }

        v139 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_189();
      }

      else
      {
        v130 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
        {
          *v204 = 0;
          _os_log_impl(&dword_25E831000, v130, OS_LOG_TYPE_INFO, "Smartcard dialog cancelled", v204, 2u);
        }
      }

      goto LABEL_21;
    }

LABEL_60:
    v79 = [(POAgentAuthenticationProcess *)self registrationManager];
    v192 = 0;
    v193 = v38;
    v80 = [v79 requestSmartCardForBinding:1 window:0 tokenId:&v193 tokenHash:&v192 wrapTokenHash:0 pinContext:0];
    v180 = v193;

    v178 = v192;
    if (v80 == 1)
    {
      v38 = v180;
      if (v180)
      {
        if (v178)
        {
          goto LABEL_63;
        }

        goto LABEL_54;
      }

      v191[1] = MEMORY[0x277D85DD0];
      v191[2] = 3221225472;
      v191[3] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_185;
      v191[4] = &unk_279A3A088;
      v191[5] = self;
      v105 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_185();
      v180 = 0;
    }

    else
    {
      v88 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v88, OS_LOG_TYPE_INFO, "Smartcard dialog cancelled", buf, 2u);
      }
    }

    goto LABEL_21;
  }

  v226 = MEMORY[0x277D85DD0];
  v227 = 3221225472;
  v228 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke;
  v229 = &unk_279A3A088;
  v230 = self;
  v31 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke();
  LOBYTE(v32) = 0;
LABEL_50:

  v66 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for user for password login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_126()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for user for password login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_130()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for user for password login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_134()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No credential for user for password login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_138(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v19 = PO_LOG_POAgentAuthenticationProcess();
        v12 = v19;
        v13 = *(a1 + 64);
        if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v19))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v14 = "Success";
        v15 = buf;
        goto LABEL_24;
      case 2:
        v16 = PO_LOG_POAgentAuthenticationProcess();
        v12 = v16;
        v13 = *(a1 + 64);
        if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
        {
          goto LABEL_25;
        }

        v22 = 0;
        v14 = "PermanentFailure";
        v15 = &v22;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v11 = PO_LOG_POAgentAuthenticationProcess();
        v12 = v11;
        v13 = *(a1 + 64);
        if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
        {
          goto LABEL_25;
        }

        v23 = 0;
        v14 = "CredentialFailure";
        v15 = &v23;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PlatformSSO_PasswordAuth", v14, v15, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v17 = PO_LOG_POAgentAuthenticationProcess();
      v12 = v17;
      v13 = *(a1 + 64);
      if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_25;
      }

      LOWORD(v20) = 0;
      v14 = "Failed";
      v15 = &v20;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v18 = PO_LOG_POAgentAuthenticationProcess();
      v12 = v18;
      v13 = *(a1 + 64);
      if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
      {
        goto LABEL_25;
      }

      v21 = 0;
      v14 = "Unavailable";
      v15 = &v21;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:v7 tokens:v8 passwordContext:*(a1 + 40) tokenId:*(a1 + 48) tokenHash:{0, v20}];
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_159(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"Error evaluating context for User Secure Enclave Key authentication"];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_172(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) requestUserAuthenticationSyncPassword:0 completion:&__block_literal_global_175];
  }

  v2 = [*(a1 + 32) configurationManager];
  v3 = [v2 currentUserConfiguration];
  [v3 setState:5];

  v4 = [*(a1 + 32) configurationManager];
  LOBYTE(v3) = [v4 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((v3 & 1) == 0)
  {
    v5 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_3();
  }

  v8 = [*(a1 + 32) registrationManager];
  v6 = [*(a1 + 40) userLoginConfiguration];
  v7 = [v6 loginUserName];
  [v8 handleUserRegistrationForUser:v7 repair:1];
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_3()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after biometric failure."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_184(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v17 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v17;
        v11 = *(a1 + 56);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v12 = "Success";
        v13 = buf;
        goto LABEL_24;
      case 2:
        v14 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v14;
        v11 = *(a1 + 56);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v14))
        {
          goto LABEL_25;
        }

        v20 = 0;
        v12 = "PermanentFailure";
        v13 = &v20;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v9 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v9;
        v11 = *(a1 + 56);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
        {
          goto LABEL_25;
        }

        v21 = 0;
        v12 = "CredentialFailure";
        v13 = &v21;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_UserSEPKeyAuth", v12, v13, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v15 = PO_LOG_POAgentAuthenticationProcess();
      v10 = v15;
      v11 = *(a1 + 56);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
      {
        goto LABEL_25;
      }

      LOWORD(v18) = 0;
      v12 = "Failed";
      v13 = &v18;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v16 = PO_LOG_POAgentAuthenticationProcess();
      v10 = v16;
      v11 = *(a1 + 56);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_25;
      }

      v19 = 0;
      v12 = "Unavailable";
      v13 = &v19;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:v7 tokens:v8 passwordContext:*(a1 + 40) tokenId:*(a1 + 48) tokenHash:{0, v18}];
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_185()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No SmartCard to use for SmartCard login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_189()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Failed to retrieve certificate and key from SmartCard for SmartCard login."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_195(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v17 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v17;
        v11 = *(a1 + 64);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v12 = "Success";
        v13 = buf;
        goto LABEL_24;
      case 2:
        v14 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v14;
        v11 = *(a1 + 64);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v14))
        {
          goto LABEL_25;
        }

        v20 = 0;
        v12 = "PermanentFailure";
        v13 = &v20;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v9 = PO_LOG_POAgentAuthenticationProcess();
        v10 = v9;
        v11 = *(a1 + 64);
        if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
        {
          goto LABEL_25;
        }

        v21 = 0;
        v12 = "CredentialFailure";
        v13 = &v21;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_SmartCard", v12, v13, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v15 = PO_LOG_POAgentAuthenticationProcess();
      v10 = v15;
      v11 = *(a1 + 64);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
      {
        goto LABEL_25;
      }

      LOWORD(v18) = 0;
      v12 = "Failed";
      v13 = &v18;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v16 = PO_LOG_POAgentAuthenticationProcess();
      v10 = v16;
      v11 = *(a1 + 64);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_25;
      }

      v19 = 0;
      v12 = "Unavailable";
      v13 = &v19;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:v7 tokens:v8 passwordContext:*(a1 + 40) tokenId:*(a1 + 48) tokenHash:{*(a1 + 56), v18}];
}

- (void)_handleLoginResult:(unint64_t)a3 authenticationContext:(id)a4 tokens:(id)a5 passwordContext:(id)a6 tokenId:(id)a7 tokenHash:(id)a8
{
  v88 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = self;
  objc_sync_enter(v19);
  if (PO_LOG_PODiagnostics_once_0 != -1)
  {
    [POAgentAuthenticationProcess _handleLoginResult:authenticationContext:tokens:passwordContext:tokenId:tokenHash:];
  }

  v20 = PO_LOG_PODiagnostics_log_0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277D3D1D0] stringForLoginResult:a3];
    *buf = 138543362;
    v87 = v21;
    _os_log_impl(&dword_25E831000, v20, OS_LOG_TYPE_DEFAULT, "Login Result = %{public}@", buf, 0xCu);
  }

  v22 = MEMORY[0x277D3D1B8];
  v23 = [MEMORY[0x277D3D1D0] stringForLoginType:{objc_msgSend(v14, "loginType")}];
  v24 = [MEMORY[0x277D3D1D0] stringForLoginResult:a3];
  [v22 analyticsForLoginType:v23 result:v24];

  [(POAgentAuthenticationProcess *)v19 setLastAuthenticationAttempt:0];
  [(POAgentAuthenticationProcess *)v19 setEnableNetworkChanges:0];
  if (a3 > 2)
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        v30 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v30, OS_LOG_TYPE_INFO, "Authentication failed because network is unavailable", buf, 2u);
        }

        [(POAgentAuthenticationProcess *)v19 setEnableNetworkChanges:1];
        v31 = [(POAgentAuthenticationProcess *)v19 configurationManager];
        v32 = [v31 currentUserConfiguration];
        [v32 setState:1];

        v33 = [(POAgentAuthenticationProcess *)v19 configurationManager];
        LOBYTE(v32) = [v33 saveCurrentUserConfigurationAndSyncToPreboot:0];

        if ((v32 & 1) == 0)
        {
          v34 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_226();
        }

        a3 = 5;
        goto LABEL_52;
      }

      if (a3 != 6)
      {
LABEL_52:
        [(POAgentAuthenticationProcess *)v19 notifyKerberosDelegateTGTDidComplete];
        [(POAgentAuthenticationProcess *)v19 postAuthenticationNotification:a3];
        goto LABEL_53;
      }
    }

    else if (a3 != 3)
    {
      v25 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v25, OS_LOG_TYPE_INFO, "Authentication failed with invalid credential", buf, 2u);
      }

      if ([v14 loginType] == 100)
      {
        [(POAgentAuthenticationProcess *)v19 _doLoginWithPasswordContext:v16 tokenId:v17];
      }

      else if ([v14 loginType] == 2 || objc_msgSend(v14, "loginType") == 3)
      {
        v49 = [(POAgentAuthenticationProcess *)v19 configurationManager];
        v50 = [v49 currentUserConfiguration];
        [v50 setState:5];

        v51 = [(POAgentAuthenticationProcess *)v19 configurationManager];
        LOBYTE(v50) = [v51 saveCurrentUserConfigurationAndSyncToPreboot:1];

        if ((v50 & 1) == 0)
        {
          v52 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_220();
          [(POAgentAuthenticationProcess *)v19 postAuthenticationNotification:4];
        }

        v53 = [(POAgentAuthenticationProcess *)v19 registrationManager];
        v54 = [v14 userName];
        [v53 handleUserRegistrationForUser:v54 repair:1 newPasswordUser:0 newSmartCardUser:0 notified:0 profile:0];
      }

      else
      {
        [(POAgentAuthenticationProcess *)v19 handleUserNeedsReauthenticationAfterDelay:1.0];
      }

      a3 = 4;
      goto LABEL_52;
    }

LABEL_20:
    v28 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v28, OS_LOG_TYPE_INFO, "Authentication failed", buf, 2u);
    }

    v29 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_232();
    if ([v14 loginType] == 100)
    {
      [(POAgentAuthenticationProcess *)v19 _doLoginWithPasswordContext:v16 tokenId:v17];
    }

    goto LABEL_52;
  }

  if (!a3)
  {
    goto LABEL_20;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v26 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v26, OS_LOG_TYPE_INFO, "Authentication failed and needs repair", buf, 2u);
      }

      v27 = [(POAgentAuthenticationProcess *)v19 registrationManager];
      [v27 handleDeviceAndUserRegistrationForRepair:1];

      a3 = 2;
    }

    goto LABEL_52;
  }

  v35 = [(POAgentAuthenticationProcess *)v19 configurationManager];
  v36 = NSUserName();
  v37 = [MEMORY[0x277CBEAA8] date];
  [v35 updateLoginStateForUserName:v36 state:0 loginDate:v37 loginType:{objc_msgSend(v14, "loginType")}];

  v38 = [(POAgentAuthenticationProcess *)v19 configurationManager];
  v39 = [v38 currentUserConfiguration];
  [v39 setState:0];

  v40 = [MEMORY[0x277CBEAA8] date];
  v41 = [(POAgentAuthenticationProcess *)v19 configurationManager];
  v42 = [v41 currentUserConfiguration];
  [v42 setLastLoginDate:v40];

  v43 = [(POAgentAuthenticationProcess *)v19 configurationManager];
  v44 = [v14 deviceConfiguration];
  v45 = [v44 extensionIdentifier];
  v83 = 0;
  v46 = [v43 setTokens:v15 extensionIdentifier:v45 returningError:&v83];
  v82 = v83;

  if (v46)
  {
    v47 = [(POAgentAuthenticationProcess *)v19 configurationManager];
    v48 = NSUserName();
    if ([v47 isTemporaryAccountUserName:v48])
    {
    }

    else
    {
      v56 = [(POAgentAuthenticationProcess *)v19 configurationManager];
      v57 = NSUserName();
      v81 = [v56 saveStashedSSOTokens:v15 forUserName:v57];

      if ((v81 & 1) == 0)
      {
        v58 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_202();
      }
    }

    v59 = [(POAgentAuthenticationProcess *)v19 userNotificationCenter];
    v85 = @"com.apple.PlatformSSO.authentication";
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    [v59 removeDeliveredNotificationsWithIdentifiers:v60];

    v61 = [(POAgentAuthenticationProcess *)v19 userNotificationCenter];
    v84 = @"com.apple.PlatformSSO.authentication";
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
    [v61 removePendingNotificationRequestsWithIdentifiers:v62];

    [(POAgentAuthenticationProcess *)v19 setupTimerForAuthentication];
    v63 = [v14 loginConfiguration];
    v64 = [(POAgentAuthenticationProcess *)v19 configurationManager];
    v65 = [v64 currentUserConfiguration];
    [(POAgentAuthenticationProcess *)v19 handleKerberosMappingForTokens:v15 loginConfiguration:v63 userConfiguration:v65];

    if ([v14 loginType] == 3)
    {
      v66 = [(POAgentAuthenticationProcess *)v19 configurationManager];
      v67 = [v66 currentUserConfiguration];
      [v67 setSmartCardTokenId:v17];

      v68 = [(POAgentAuthenticationProcess *)v19 configurationManager];
      v69 = [v68 currentUserConfiguration];
      [v69 setSmartCardHash:v18];
    }

    v70 = [(POAgentAuthenticationProcess *)v19 configurationManager];
    v71 = [v70 saveCurrentUserConfigurationAndSyncToPreboot:1];

    if (v71)
    {
      a3 = 1;
    }

    else
    {
      v72 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_208();
      a3 = 3;
    }

    v73 = [(POAgentAuthenticationProcess *)v19 configurationManager];
    v74 = NSUserName();
    v75 = [v73 savePendingSSOTokens:0 forUserName:v74];

    if ((v75 & 1) == 0)
    {
      v76 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_214();
    }

    v77 = NSUserName();
    v78 = [(POAgentAuthenticationProcess *)v19 configurationManager];
    [(POAgentAuthenticationProcess *)v19 handleUserAuthorizationUsing:v14 userName:v77 tokens:v15 configurationManager:v78];

    [(POAgentAuthenticationProcess *)v19 handleChecksAfterSuccessfulLoginWithPasswordContext:v16];
    [(POAgentAuthenticationProcess *)v19 handleEncryptionKeyRotation];
    v79 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v79, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
    }

    goto LABEL_52;
  }

  v55 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke();
  [(POAgentAuthenticationProcess *)v19 postAuthenticationNotification:3];

LABEL_53:
  objc_sync_exit(v19);

  v80 = *MEMORY[0x277D85DE8];
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save SSO tokens after authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_202()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to stash SSO tokens after successful authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_208()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_214()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to clear SSO tokens after successful authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_220()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after credential failure."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_226()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after authentication unavailable."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_232()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to authenticate user."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (void)handleEncryptionKeyRotation
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_242()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_248()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension has changed for key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_254()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found for key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_1();
    }

    goto LABEL_7;
  }

  if (a2 == 10)
  {
    v2 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_2();
    }

LABEL_7:

    return;
  }

  v4 = [*(a1 + 32) configurationManager];
  v8 = [v4 currentDeviceConfiguration];

  [v8 setDeviceEncryptionKey:*(a1 + 48)];
  [v8 setEncryptionAlgorithm:*(a1 + 40)];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v8 setLastEncryptionKeyChange:v5];

  v6 = [*(a1 + 32) configurationManager];
  LOBYTE(v5) = [v6 saveDeviceConfiguration:v8];

  if ((v5 & 1) == 0)
  {
    v7 = __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_261();
  }
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_261()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new device configuration during key rotation"];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleKeyUpdatesWithPasswordContext:(id)a3
{
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleKeyUpdatesWithPasswordContext:];
  }
}

- (void)checkIfGroupNamesNeedUpdate
{
  v3 = [(POAgentAuthenticationProcess *)self registrationManager];
  [(POAgentAuthenticationProcess *)self checkIfGroupNamesNeedUpdateForRegistrationManager:v3];
}

- (void)checkIfGroupNamesNeedUpdateForRegistrationManager:(id)a3
{
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess checkIfGroupNamesNeedUpdateForRegistrationManager:];
  }
}

- (void)handleChecksAfterSuccessfulLoginWithPasswordContext:(id)a3
{
  [(POAgentAuthenticationProcess *)self handleKeyUpdatesWithPasswordContext:a3];
  [(POAgentAuthenticationProcess *)self checkIfGroupNamesNeedUpdate];

  [(POAgentAuthenticationProcess *)self checkIfProfilePictureNeedsUpdate];
}

void __81__POAgentAuthenticationProcess_requestUserAuthenticationWithUserInfo_forceLogin___block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 <= 6)
  {
    if (((1 << a2) & 0x59) != 0)
    {
      if (*(a1 + 40))
      {
        v3 = *(a1 + 32);

        [v3 handleUserNeedsReauthenticationAfterDelay:1.0];
      }
    }

    else if (a2 == 2)
    {
      v4 = [*(a1 + 32) registrationManager];
      [v4 handleDeviceAndUserRegistrationForRepair:1];
    }
  }
}

- (void)requestUserAuthenticationSyncPassword:(BOOL)a3 completion:(id)a4
{
  v4 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess requestUserAuthenticationSyncPassword:completion:];
  }
}

- (void)showAlertMessage:(id)a3 messageText:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess showAlertMessage:messageText:completion:];
  }

  v5[2](v5, 3);
}

- (unint64_t)handleKeyRequestSync
{
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleKeyRequestSync];
  }

  v4 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__POAgentAuthenticationProcess_handleKeyRequestSync__block_invoke;
  v8[3] = &unk_279A3A938;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(POAgentAuthenticationProcess *)self handleKeyRequestWithCompletion:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)handleKeyRequestWithCompletion:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v48 = "[POAgentAuthenticationProcess handleKeyRequestWithCompletion:]";
    v49 = 2112;
    v50 = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = [(POAgentAuthenticationProcess *)self configurationManager];
  v7 = [v6 currentDeviceConfiguration];

  if (v7 && ([v7 registrationCompleted] & 1) != 0)
  {
    v8 = [(POAgentAuthenticationProcess *)self configurationManager];
    v9 = [v8 currentLoginConfiguration];

    if (v9)
    {
      v10 = [(POAgentAuthenticationProcess *)self configurationManager];
      v11 = [v10 currentUserConfiguration];

      if (v11)
      {
        v12 = [(POAgentAuthenticationProcess *)self configurationManager];
        v13 = [v12 currentRefreshToken];

        if (v13)
        {
          v14 = PO_LOG_POAgentAuthenticationProcess();
          v15 = os_signpost_id_generate(v14);

          v16 = PO_LOG_POAgentAuthenticationProcess();
          v17 = v16;
          if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25E831000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PlatformSSO_KeyRequest", " enableTelemetry=YES ", buf, 2u);
          }

          v33 = v15;

          v18 = [v11 userLoginConfiguration];
          v19 = [v9 mergedConfigurationWithUserLoginConfiguration:v18];

          v20 = [v11 userLoginConfiguration];
          v21 = [v20 loginUserName];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = [(POAgentAuthenticationProcess *)self userName];
          }

          v28 = v23;

          v29 = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v30 = [v29 createAuthenticationContextUsingLoginConfiguration:v19 deviceConfiguration:v7 userName:v28];

          [v30 setRefreshToken:v13];
          v31 = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_287;
          v34[3] = &unk_279A3A960;
          v36 = v33;
          v34[4] = self;
          v35 = v4;
          [v31 performKeyRequestUsingContext:v30 completion:v34];
        }

        else
        {
          v37 = MEMORY[0x277D85DD0];
          v38 = 3221225472;
          v39 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_283;
          v40 = &unk_279A3A088;
          v41 = self;
          v27 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_283();
          (*(v4 + 2))(v4, 3);
        }
      }

      else
      {
        v42 = MEMORY[0x277D85DD0];
        v43 = 3221225472;
        v44 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_279;
        v45 = &unk_279A3A088;
        v46 = self;
        v26 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_279();
        (*(v4 + 2))(v4, 3);
      }
    }

    else
    {
      v25 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_273();
      (*(v4 + 2))(v4, 3);
    }
  }

  else
  {
    v24 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke();
    (*(v4 + 2))(v4, 3);
  }

  v32 = *MEMORY[0x277D85DE8];
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration or registration not complete during key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_273()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration during key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_279()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration during key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_283()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No refresh token for user during key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

void __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_287(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      if (a2 == 5)
      {
        v28 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v28, OS_LOG_TYPE_INFO, "Key request failed because network is unavailable", buf, 2u);
        }

        v29 = PO_LOG_POAgentAuthenticationProcess();
        v30 = v29;
        v31 = *(a1 + 48);
        if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v30, OS_SIGNPOST_INTERVAL_END, v31, "PlatformSSO_KeyRequest", "Unavailable", buf, 2u);
        }

        goto LABEL_22;
      }

      if (a2 != 6)
      {
LABEL_22:
        (*(*(a1 + 40) + 16))();
        goto LABEL_23;
      }
    }

LABEL_16:
    v23 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v23, OS_LOG_TYPE_INFO, "Key request failed", buf, 2u);
    }

    v24 = PO_LOG_POAgentAuthenticationProcess();
    v25 = v24;
    v26 = *(a1 + 48);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E831000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PlatformSSO_KeyRequest", "Failed", buf, 2u);
    }

    v59 = *(a1 + 32);
    v27 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_301();
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v15 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_INFO, "Authentication failed and needs repair", buf, 2u);
      }

      v16 = PO_LOG_POAgentAuthenticationProcess();
      v17 = v16;
      v18 = *(a1 + 48);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E831000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PlatformSSO_KeyRequest", "PermanentFailure", buf, 2u);
      }

      v19 = [*(a1 + 32) configurationManager];
      v20 = [v19 currentUserConfiguration];
      [v20 setState:2];

      v21 = [*(a1 + 32) configurationManager];
      LOBYTE(v20) = [v21 saveCurrentUserConfigurationAndSyncToPreboot:1];

      if ((v20 & 1) == 0)
      {
        v60 = *(a1 + 32);
        v22 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_297();
      }
    }

    goto LABEL_22;
  }

  v32 = PO_LOG_POAgentAuthenticationProcess();
  v33 = v32;
  v34 = *(a1 + 48);
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E831000, v33, OS_SIGNPOST_INTERVAL_END, v34, "PlatformSSO_KeyRequest", "Success", buf, 2u);
  }

  v35 = [MEMORY[0x277D3D230] certificateForData:v13];
  v36 = SecCertificateCopyKey(v35);
  *buf = 0;
  v37 = MEMORY[0x277D3D250];
  v38 = NSUserName();
  v72 = 0;
  v73 = 0;
  LOBYTE(v37) = [v37 createUnlockKeyWithPublicKey:v36 userName:v38 returningCertificate:buf hash:&v73 encryptedData:&v72];
  v58 = v73;
  v56 = v72;

  if (v37)
  {
    if (v36)
    {
      CFRelease(v36);
    }

    v39 = [*(a1 + 32) configurationManager];
    v40 = [v39 currentUserConfiguration];
    [v40 setUserDecryptionKeyHash:v58];

    v41 = *buf;
    v42 = [*(a1 + 32) configurationManager];
    v43 = [v42 currentUserConfiguration];
    [v43 setUserDecryptionCertificate:v41];

    v44 = [*(a1 + 32) configurationManager];
    v45 = [v44 currentUserConfiguration];
    [v45 setUserDecryptionContext:v14];

    v46 = [*(a1 + 32) configurationManager];
    v47 = [v46 currentUserConfiguration];
    [v47 setUserUnlockData:v57];

    v48 = [*(a1 + 32) configurationManager];
    v49 = [v48 currentUserConfiguration];
    [v49 setUserUnlockHash:v12];

    v50 = [*(a1 + 32) configurationManager];
    v51 = [v50 currentUserConfiguration];
    [v51 setUserUnlockCertificate:v35];

    v52 = [*(a1 + 32) configurationManager];
    LOBYTE(v51) = [v52 saveCurrentUserConfigurationAndSyncToPreboot:1];

    if ((v51 & 1) == 0)
    {
      v62 = MEMORY[0x277D85DD0];
      v63 = 3221225472;
      v64 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_293;
      v65 = &unk_279A3A088;
      v66 = *(a1 + 32);
      v53 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_293();
    }

    v54 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *v61 = 0;
      _os_log_impl(&dword_25E831000, v54, OS_LOG_TYPE_INFO, "Key request completed successfully", v61, 2u);
    }

    goto LABEL_22;
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v67 = MEMORY[0x277D85DD0];
  v68 = 3221225472;
  v69 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_289;
  v70 = &unk_279A3A088;
  v71 = *(a1 + 32);
  v55 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_289();
  (*(*(a1 + 40) + 16))();

LABEL_23:
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_289()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to create unlock key."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_293()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_297()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after failed key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_301()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (unint64_t)handleTokenBindingWithPasswordContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[POAgentAuthenticationProcess handleTokenBindingWithPasswordContext:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_25E831000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)postAuthenticationNotification:(unint64_t)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess postAuthenticationNotification:];
  }

  v6 = [(POAgentAuthenticationProcess *)self notificationCenter];
  v11 = @"authenticationResult";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 postNotificationName:@"com.apple.PlatformSSO.authenticationCompleted" object:0 userInfo:v8];

  v9 = [(POAgentAuthenticationProcess *)self distributedNotificationCenter];
  [v9 postNotificationName:@"com.apple.platformSSO.UserRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)checkIfPlatformSSOIsActive
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configurationChanged:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[POAgentAuthenticationProcess configurationChanged:]";
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v12, 0x16u);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"reason"];
  v8 = [v7 integerValue];
  v9 = PO_LOG_POAgentAuthenticationProcess();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8 == 2)
  {
    if (v10)
    {
      [POAgentAuthenticationProcess configurationChanged:];
    }
  }

  else
  {
    if (v10)
    {
      [POAgentAuthenticationProcess configurationChanged:];
    }

    [(POAgentAuthenticationProcess *)self configurationChanged];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configurationChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[POAgentAuthenticationProcess configurationChanged]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__POAgentAuthenticationProcess_configurationChanged__block_invoke;
  block[3] = &unk_279A3A060;
  block[4] = self;
  dispatch_async(v4, block);

  v5 = *MEMORY[0x277D85DE8];
}

void __52__POAgentAuthenticationProcess_configurationChanged__block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __52__POAgentAuthenticationProcess_configurationChanged__block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "configurationChanged", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __52__POAgentAuthenticationProcess_configurationChanged__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) keyBag];
  v3 = [v2 isUserKeybagUnlocked];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 handleConfigurationChanged:0];
  }

  else
  {

    return [v4 setShouldRunConfigurationChangeWhenUnlocked:1];
  }
}

- (void)handleConfigurationChanged:(BOOL)a3
{
  v5 = [(POAgentAuthenticationProcess *)self configurationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__POAgentAuthenticationProcess_handleConfigurationChanged___block_invoke;
  v6[3] = &unk_279A3A988;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)handleConfigurationChanged:(BOOL)a3 startup:(BOOL)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[POAgentAuthenticationProcess handleConfigurationChanged:startup:]";
    v40 = 2112;
    v41 = self;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v7 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_INFO, "Configuration changed", buf, 2u);
  }

  [(POAgentAuthenticationProcess *)self setShouldRunConfigurationChangeWhenUnlocked:0];
  v8 = [(POAgentAuthenticationProcess *)self platformSSOActiveLock];
  objc_sync_enter(v8);
  v9 = [(POAgentAuthenticationProcess *)self configurationManager];
  v10 = [v9 currentDeviceConfiguration];

  if (!v10)
  {
    v11 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [POAgentAuthenticationProcess handleConfigurationChanged:startup:];
    }
  }

  v12 = [(POAgentAuthenticationProcess *)self configurationManager];
  v13 = [v12 currentUserConfiguration];

  if (!v13)
  {
    v14 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [POAgentAuthenticationProcess handleConfigurationChanged:startup:];
    }
  }

  v15 = [(POAgentAuthenticationProcess *)self configurationManager];
  v16 = [v15 currentLoginConfiguration];

  if (v16)
  {
    goto LABEL_17;
  }

  v17 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleConfigurationChanged:startup:];
  }

  if (v10 != 0 || v13 != 0)
  {
LABEL_17:
    [(POAgentAuthenticationProcess *)self setPlatformSSOActive:1];
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = [v10 extensionIdentifier];
  if (v19)
  {
    goto LABEL_31;
  }

  v20 = [(POAgentAuthenticationProcess *)self registrationManager];
  v21 = [v20 registrationContext];
  v19 = [v21 extensionIdentifier];

  if (v19)
  {
LABEL_31:
    v22 = [(POAgentAuthenticationProcess *)self configurationHost];
    v23 = [v22 hasAnyMDMProfileForExtension:v19];

    if (((v18 | v23) & 1) == 0)
    {
      v24 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v24, OS_LOG_TYPE_INFO, "Removing registration", buf, 2u);
      }

      v25 = [(POAgentAuthenticationProcess *)self registrationManager];
      [v25 handleRemovingRegistrationForExtension:v19 alreadyDeleted:0];

      v16 = 0;
      v13 = 0;
      v10 = 0;
    }
  }

  objc_sync_exit(v8);
  v26 = [POProfile alloc];
  v27 = [(POAgentAuthenticationProcess *)self configurationHost];
  v28 = [v27 platformSSOProfile];
  v29 = [(POProfile *)v26 initWithProfile:v28];

  if (v29)
  {
    v30 = [(POAgentAuthenticationProcess *)self configurationHost];
    v31 = [(POProfile *)v29 extensionBundleIdentifier];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_315;
    v35[3] = &unk_279A3A9D8;
    v35[4] = self;
    v36 = a3;
    v37 = a4;
    [v30 isConfigurationActiveForExtensionIdentifier:v31 runningAsAgent:1 completion:v35];
  }

  else
  {
    v32 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke();
  }

  v33 = *MEMORY[0x277D85DE8];
}

id __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No validated Platform SSO Profiles in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_315(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ([v5 code] == -14)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_2;
    v16[3] = &unk_279A3A088;
    v17 = v5;
    v6 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_2(v16);
    v7 = v17;
LABEL_5:

    goto LABEL_13;
  }

  if ([v5 code] == -13)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_319;
    v14[3] = &unk_279A3A088;
    v15 = v5;
    v8 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_319(v14);
    v7 = v15;
    goto LABEL_5;
  }

  v9 = PO_LOG_POAgentAuthenticationProcess();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v9, OS_LOG_TYPE_INFO, "SSO is ready for configuration", buf, 2u);
    }

    v9 = [*(a1 + 32) configurationQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_323;
    v11[3] = &unk_279A3A9B0;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 40);
    dispatch_async(v9, v11);
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v9, OS_LOG_TYPE_INFO, "SSO is not ready for configuration", buf, 2u);
  }

LABEL_13:
}

id __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"SSO Extension missing in configuration changed."];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_319(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Not configured for Platform SSO in configuration changed."];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)_handleConfigurationChanged:(BOOL)a3 startup:(BOOL)a4
{
  v4 = a4;
  v7 = [POProfile alloc];
  v8 = [(POAgentAuthenticationProcess *)self configurationHost];
  v9 = [v8 validatedProfileForPlatformSSO];
  v10 = [(POProfile *)v7 initWithProfile:v9];

  if (v10)
  {
    v11 = [(POAgentAuthenticationProcess *)self registrationManager];
    v12 = [(POProfile *)v10 extensionBundleIdentifier];
    v13 = [v11 loadSSOExtensionWithExtensionBundleIdentifier:v12];

    if (!v13)
    {
      v18 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_327();
      goto LABEL_9;
    }

    if (([v13 canPerformRegistration] & 1) == 0)
    {
      v19 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_333();
      goto LABEL_9;
    }

    v14 = [(POAgentAuthenticationProcess *)self registrationManager];
    v15 = [v14 ssoMethodToUse:v13 profile:v10];

    if (v15 == 1000)
    {
      v16 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_339();
LABEL_9:

      goto LABEL_10;
    }

    if (![(POProfile *)v10 useSharedDeviceKeys]&& ([(POProfile *)v10 createUsersEnabled]|| [(POProfile *)v10 authorizationEnabled]))
    {
      v25 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_345();
      goto LABEL_9;
    }

    v20 = [(POAgentAuthenticationProcess *)self platformSSOActiveLock];
    objc_sync_enter(v20);
    [(POAgentAuthenticationProcess *)self setPlatformSSOActive:1];
    objc_sync_exit(v20);

    v21 = [(POAgentAuthenticationProcess *)self configurationManager];
    v22 = NSUserName();
    v23 = [v21 isTemporaryAccountUserName:v22];

    if (v23)
    {
      v24 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v24, OS_LOG_TYPE_INFO, "Not running registration for the temporary user.", buf, 2u);
      }

      goto LABEL_9;
    }

    v26 = [(POAgentAuthenticationProcess *)self configurationManager];
    v27 = [v26 currentDeviceConfiguration];

    v28 = [(POAgentAuthenticationProcess *)self configurationManager];
    v79 = [v28 currentUserConfiguration];

    v29 = [(POAgentAuthenticationProcess *)self configurationManager];
    v78 = [v29 currentLoginConfiguration];

    if (v27)
    {
      v30 = [POAlgorithmUtil deviceSigningAlgorithmToUse:v13 deviceConfiguration:v27];
      v31 = [v27 signingAlgorithm];
      v75 = v30;
      LOBYTE(v30) = [v30 isEqualToNumber:v31];

      if ((v30 & 1) == 0)
      {
        [v27 setPendingSigningAlgorithm:v75];
      }

      v32 = [POAlgorithmUtil deviceEncryptionAlgorithmToUse:v13 deviceConfiguration:v27];
      v33 = [v27 encryptionAlgorithm];
      v34 = [v32 isEqualToNumber:v33];

      if ((v34 & 1) == 0)
      {
        [v27 setPendingEncryptionAlgorithm:v32];
      }

      [v27 updateWithProfile:v10];
      v35 = [v13 sdkVersionString];
      [v27 setSdkVersionString:v35];

      [v27 setProtocolVersion:{objc_msgSend(v13, "protocolVersion")}];
      [v27 setLoginType:v15];
      v36 = [v27 fileVaultPolicy];
      if (v36 != -[POProfile fileVaultPolicy](v10, "fileVaultPolicy") && (-[POProfile fileVaultPolicy](v10, "fileVaultPolicy") & 8) != 0 || (v37 = [v27 loginPolicy], v37 != -[POProfile loginPolicy](v10, "loginPolicy")) && (-[POProfile loginPolicy](v10, "loginPolicy") & 8) != 0 || (v38 = objc_msgSend(v27, "unlockPolicy"), v38 != -[POProfile unlockPolicy](v10, "unlockPolicy")) && (-[POProfile unlockPolicy](v10, "unlockPolicy") & 8) != 0)
      {
        v39 = [MEMORY[0x277CBEAA8] date];
        [v27 setAuthGracePeriodStart:v39];
      }

      v40 = [(POAgentAuthenticationProcess *)self configurationManager];
      v41 = [v40 saveDeviceConfigurationSyncAllConfigToPreboot:v27];

      if ((v41 & 1) == 0)
      {
        v42 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_352();
      }
    }

    v80 = v27;
    v43 = v79;
    if (v79)
    {
      if ([v79 loginType] == 2)
      {
        v44 = [(POAgentAuthenticationProcess *)self configurationManager];
        v45 = [v44 currentUserConfiguration];
        v76 = [POAlgorithmUtil userSigningAlgorithmToUse:v13 userConfiguration:v45];

        v46 = [(POAgentAuthenticationProcess *)self configurationManager];
        v47 = [v46 currentUserConfiguration];
        v48 = [v47 signingAlgorithm];
        v49 = [v76 isEqualToNumber:v48];

        if ((v49 & 1) == 0)
        {
          v50 = [(POAgentAuthenticationProcess *)self configurationManager];
          v51 = [v50 currentUserConfiguration];
          [v51 setPendingSigningAlgorithm:v76];

          v52 = [(POAgentAuthenticationProcess *)self configurationManager];
          LOBYTE(v51) = [v52 saveCurrentUserConfigurationAndSyncToPreboot:1];

          if ((v51 & 1) == 0)
          {
            v68 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_358();

            v62 = v78;
            v43 = v79;
            goto LABEL_74;
          }
        }

        v43 = v79;
      }

      v53 = [v43 state] == 4 && v15 == 1;
      v54 = v53;
      v55 = [v43 state];
      v57 = [v43 state] == 7 && v15 == 2;
      v58 = v55 == 6 && v15 == 3;
      v59 = v58;
      if (v58)
      {
        v60 = 1;
      }

      else
      {
        v60 = v54;
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
      LOBYTE(v54) = 0;
      v57 = 0;
    }

    if (v4 && ((v60 | v57) & 1) != 0)
    {
      v61 = PO_LOG_POAgentAuthenticationProcess();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v61, OS_LOG_TYPE_INFO, "Delaying registration checks for new users during startup.", buf, 2u);
      }

      v62 = v78;
      goto LABEL_74;
    }

    v62 = v78;
    if (!v80 || !v78 || ![v80 registrationCompleted])
    {
      goto LABEL_72;
    }

    v74 = v59;
    v63 = [v80 extensionIdentifier];
    v64 = [(POProfile *)v10 extensionBundleIdentifier];
    v77 = v63;
    if (![v63 isEqualToString:v64] || (v65 = -[POProfile useSharedDeviceKeys](v10, "useSharedDeviceKeys"), v65 != objc_msgSend(v80, "sharedDeviceKeys")))
    {

      v62 = v78;
      v43 = v79;
      v59 = v74;
LABEL_72:
      v66 = [(POAgentAuthenticationProcess *)self registrationManager];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_364;
      v87[3] = &unk_279A3AA00;
      v87[4] = self;
      v89 = v54;
      v90 = v59;
      v91 = a3;
      v88 = v10;
      [v66 resetRegistrationWithCompletion:v87];

      v67 = v88;
LABEL_73:

LABEL_74:
      goto LABEL_9;
    }

    if ([v80 sharedDeviceKeys])
    {

      v62 = v78;
      v43 = v79;
      v59 = v74;
    }

    else
    {
      v43 = v79;
      v69 = [v79 state];

      v53 = v69 == 2;
      v62 = v78;
      v59 = v74;
      if (v53)
      {
        goto LABEL_72;
      }
    }

    if (v43 && [v43 loginType] == v15)
    {
      if ([v80 sharedDeviceKeys])
      {
        v70 = [(POAgentAuthenticationProcess *)self configurationManager];
        v71 = [v70 userDeviceConfiguration];
        if (v71 || [v79 state] == 2)
        {

          v43 = v79;
        }

        else
        {
          v72 = ([v79 state] == 5) | v60;

          v43 = v79;
          if ((v72 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if ([v43 state] != 2 && !((objc_msgSend(v43, "state") == 5) | v60 & 1))
      {
        goto LABEL_74;
      }
    }

    v73 = [(POAgentAuthenticationProcess *)self registrationManager];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_3;
    v81[3] = &unk_279A3AA28;
    v81[4] = self;
    v82 = v43;
    v84 = v54;
    v85 = v59;
    v86 = a3;
    v83 = v10;
    [v73 resetRegistrationWithCompletion:v81];

    v67 = v82;
    goto LABEL_73;
  }

  v17 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke();
LABEL_10:
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_327()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_333()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension does not implement registration protocol in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_339()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No supported authentication methods in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_345()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Shared device keys required for creating or authorizing users in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_352()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed save device configuration with profile changes in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_358()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new user configuration during user registration."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_364(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_2;
  block[3] = &unk_279A3AA00;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v5 = v3;
  dispatch_async(v2, block);
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationManager];
  [v2 handleDeviceAndUserRegistrationForRepair:0 newPasswordUser:*(a1 + 48) newSmartCardUser:*(a1 + 49) notified:*(a1 + 50) profile:*(a1 + 40)];
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_4;
  v4[3] = &unk_279A3AA28;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v6 = *(a1 + 48);
  dispatch_async(v2, v4);
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_4(uint64_t a1)
{
  v4 = [*(a1 + 32) registrationManager];
  v2 = [*(a1 + 40) userLoginConfiguration];
  v3 = [v2 loginUserName];
  [v4 handleUserRegistrationForUser:v3 repair:0 newPasswordUser:*(a1 + 56) newSmartCardUser:*(a1 + 57) notified:*(a1 + 58) profile:*(a1 + 48)];
}

- (BOOL)handleUserNeedsReauthenticationAfterDelay:(double)a3
{
  v59[1] = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleUserNeedsReauthenticationAfterDelay:];
  }

  v6 = [(POAgentAuthenticationProcess *)self registrationManager];
  v7 = [v6 registrationContext];
  if (!v7)
  {

LABEL_7:
    v14 = NSUserName();
    if ([(POAgentAuthenticationProcess *)self platformSSOAccount])
    {
      v15 = [(POAgentAuthenticationProcess *)self configurationManager];
      v16 = [v15 currentUserConfiguration];

      if (v16)
      {
        v17 = [(POAgentAuthenticationProcess *)self configurationManager];
        v18 = [v17 currentUserConfiguration];
        [v18 setState:1];

        v19 = [(POAgentAuthenticationProcess *)self configurationManager];
        LOBYTE(v18) = [v19 saveCurrentUserConfigurationAndSyncToPreboot:0];

        if (v18)
        {
          v20 = [(POAgentAuthenticationProcess *)self configurationManager];
          v21 = [v20 currentUserConfiguration];
          v22 = [v21 loginType];

          if (v22 == 1)
          {
            v23 = [(POAgentAuthenticationProcess *)self configurationManager];
            v24 = [v23 currentLoginConfiguration];

            v13 = v24 != 0;
            if (v24)
            {
              v25 = [(POAgentAuthenticationProcess *)self configurationManager];
              v26 = [v25 currentDeviceConfiguration];
              v27 = [v26 accountDisplayName];
              v28 = v27;
              if (!v27)
              {
                v28 = [v24 accountDisplayName];
              }

              v50 = v24;
              v29 = [(POAgentAuthenticationProcess *)self configurationManager];
              v30 = [v29 currentDeviceConfiguration];
              v31 = [v30 extensionIdentifier];
              v49 = [(POAgentAuthenticationProcess *)self createSignInNotificationWithAccountName:v28 extensionIdentifier:v31];

              if (!v27)
              {
              }

              v32 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
              v59[0] = @"com.apple.PlatformSSO.authentication";
              v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
              [v32 removeDeliveredNotificationsWithIdentifiers:v33];

              v34 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
              v58 = @"com.apple.PlatformSSO.authentication";
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
              [v34 removePendingNotificationRequestsWithIdentifiers:v35];

              v36 = MEMORY[0x277CE1FC0];
              v37 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:a3];
              v38 = [v36 requestWithIdentifier:@"com.apple.PlatformSSO.authentication" content:v49 trigger:v37 destinations:5];

              v39 = PO_LOG_POAgentAuthenticationProcess();
              v40 = v49;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_25E831000, v39, OS_LOG_TYPE_INFO, "Sending login notification", buf, 2u);
              }

              v41 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
              v51[0] = MEMORY[0x277D85DD0];
              v51[1] = 3221225472;
              v51[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_392;
              v51[3] = &unk_279A3AA78;
              v52 = v14;
              [v41 addNotificationRequest:v38 withCompletionHandler:v51];

              v24 = v50;
            }

            else
            {
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_386;
              v53[3] = &unk_279A3A088;
              v54 = v14;
              v48 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_386(v53);
              v40 = v54;
            }
          }

          else
          {
            v47 = PO_LOG_POAgentAuthenticationProcess();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_25E831000, v47, OS_LOG_TYPE_INFO, "Not a password user", buf, 2u);
            }

            [(POAgentAuthenticationProcess *)self performLoginForCurrentUserWithPasswordContext:0];
            v13 = 1;
          }

          goto LABEL_23;
        }

        v44 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_380();
      }

      else
      {
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376;
        v56[3] = &unk_279A3A088;
        v57 = v14;
        v43 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376(v56);
      }
    }

    else
    {
      v42 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_370();
    }

    v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v8 = v7;
  v9 = [(POAgentAuthenticationProcess *)self registrationManager];
  v10 = [v9 registrationContext];
  v11 = [v10 state];

  if (v11 == 1)
  {
    goto LABEL_7;
  }

  v12 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke();
  v13 = 0;
LABEL_24:
  v45 = *MEMORY[0x277D85DE8];
  return v13;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No user authentication during registration."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_370()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Not a PlatformSSO account during authentication notification."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for user for authentication notification."];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1(v2, a1);
  }

  return v2;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_380()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration before authentication notification."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_386(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for user for authentication notification."];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1(v2, a1);
  }

  return v2;
}

void __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_392(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2;
    v6[3] = &unk_279A3AA50;
    v7 = v3;
    v8 = *(a1 + 32);
    v5 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2(v6);
  }
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error sending authentication notification."];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2_cold_1(v2, a1);
  }

  return v2;
}

- (unint64_t)requestUserPasswordChangePreference
{
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess requestUserPasswordChangePreference];
  }

  return 0;
}

- (void)sendPasswordChangedNotification
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [(POAgentAuthenticationProcess *)self configurationManager];
  v4 = [v3 currentLoginConfiguration];

  v5 = [(POAgentAuthenticationProcess *)self configurationManager];
  v6 = [v5 currentDeviceConfiguration];
  v7 = [v6 accountDisplayName];
  v8 = v7;
  if (!v7)
  {
    v8 = [v4 accountDisplayName];
  }

  v9 = [(POAgentAuthenticationProcess *)self configurationManager];
  v10 = [v9 currentDeviceConfiguration];
  v11 = [v10 extensionIdentifier];
  v12 = [(POAgentAuthenticationProcess *)self createPasswordChangedNotificationWithAccountName:v8 extensionIdentifier:v11];

  if (!v7)
  {
  }

  v13 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  v24[0] = @"com.apple.PlatformSSO.passwordchanged";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v13 removePendingNotificationRequestsWithIdentifiers:v14];

  v15 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  v23 = @"com.apple.PlatformSSO.passwordchanged";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v15 removeDeliveredNotificationsWithIdentifiers:v16];

  v17 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:1.0];
  v18 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.PlatformSSO.passwordchanged" content:v12 trigger:v17 destinations:5];
  v19 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_25E831000, v19, OS_LOG_TYPE_INFO, "Sending password changed notification", v22, 2u);
  }

  v20 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  [v20 addNotificationRequest:v18 withCompletionHandler:&__block_literal_global_398];

  v21 = *MEMORY[0x277D85DE8];
}

void __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke_2;
    v5[3] = &unk_279A3A088;
    v6 = v2;
    v4 = __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke_2(v5);
  }
}

id __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error sending local notification for password changed."];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)handleKerberosMappingForTokens:(id)a3 extensionIdentifier:(id)a4 userConfiguration:(id)a5
{
  v11 = a3;
  v7 = a5;
  v8 = [(POAgentAuthenticationProcess *)self configurationManager];
  v9 = [v8 currentLoginConfiguration];

  if (v9)
  {
    [(POAgentAuthenticationProcess *)self handleKerberosMappingForTokens:v11 loginConfiguration:v9 userConfiguration:v7];
  }

  else
  {
    v10 = __101__POAgentAuthenticationProcess_handleKerberosMappingForTokens_extensionIdentifier_userConfiguration___block_invoke();
  }
}

id __101__POAgentAuthenticationProcess_handleKerberosMappingForTokens_extensionIdentifier_userConfiguration___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No login configuration when handling kerberos mapping."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)exchangeTGTForStatus:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  v6 = [v4 realm];
  v7 = [v5 isRealmConfiguredForKerberosExtension:v6];

  v8 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  v9 = [v4 realm];
  [v8 triggerVPNForRealm:v9];

  if (v7)
  {
    v10 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
    v11 = [v4 realm];
    v12 = [v10 isNetworkConnectedForRealm:v11];
  }

  else
  {
    v12 = 1;
  }

  v13 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    v22 = 136315906;
    v23 = "[POAgentAuthenticationProcess exchangeTGTForStatus:]";
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    v28 = 2112;
    v29 = self;
    _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_DEFAULT, "%s kerberos extension = %{public}@, isNetworkConnected = %{public}@ on %@", &v22, 0x2Au);
  }

  if (v12)
  {
    v16 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v4 realm];
      v22 = 138543362;
      v23 = v17;
      _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_INFO, "Exchanging TGT for realm: %{public}@", &v22, 0xCu);
    }

    v18 = [(POAgentAuthenticationProcess *)self kerberosHelper];
    [v18 exchangeKerberosTGTForEntry:v4];
  }

  v19 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v4 realm];
    v22 = 138543362;
    v23 = v20;
    _os_log_impl(&dword_25E831000, v19, OS_LOG_TYPE_INFO, "Successfully imported Kerberos ticket for realm: %{public}@", &v22, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleKerberosMappingForTokens:(id)a3 loginConfiguration:(id)a4 userConfiguration:(id)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v89 = "[POAgentAuthenticationProcess handleKerberosMappingForTokens:loginConfiguration:userConfiguration:]";
    v90 = 2112;
    v91 = self;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v11 = 0x277CCA000uLL;
  v86 = 0;
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v86];
  v13 = v86;
  if (v13)
  {
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke;
    v84[3] = &unk_279A3A088;
    v14 = v13;
    v85 = v14;
    v15 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke(v84);
    v16 = v85;
  }

  else
  {
    v63 = v9;
    v65 = v7;
    v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v64 = v8;
    obj = [v8 kerberosTicketMappings];
    v17 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
    if (v17)
    {
      v18 = v17;
      v71 = 0;
      v72 = *v81;
      v67 = v12;
      do
      {
        v19 = 0;
        v69 = v18;
        do
        {
          if (*v81 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v80 + 1) + 8 * v19);
          v21 = PO_LOG_POAgentAuthenticationProcess();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v20 ticketKeyPath];
            *buf = 138543362;
            v89 = v22;
            _os_log_impl(&dword_25E831000, v21, OS_LOG_TYPE_INFO, "Mapping Kerberos TGT for %{public}@", buf, 0xCu);
          }

          v23 = [v20 ticketKeyPath];
          v24 = [v12 valueForKeyPath:v23];

          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = *(v11 + 2720);
              v26 = [v24 dataUsingEncoding:4];
              v77 = v71;
              v27 = [v25 JSONObjectWithData:v26 options:16 error:&v77];
              v28 = v77;

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v27;

                v24 = v29;
              }

              v18 = v69;

              v71 = v28;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v24;
              v30 = objc_alloc_init(POKerberosEntry);
              v31 = [v20 ticketKeyPath];
              [(POKerberosEntry *)v30 setTicketKeyPath:v31];

              v32 = [v20 messageBufferKeyName];
              v33 = [v24 objectForKeyedSubscript:v32];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v33 options:0];
                [(POKerberosEntry *)v30 setMessageBuffer:v34];
              }

              v35 = [v20 realmKeyName];
              v36 = [v24 objectForKeyedSubscript:v35];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(POKerberosEntry *)v30 setRealm:v36];
              }

              v37 = [v20 serviceNameKeyName];
              v38 = [v24 objectForKeyedSubscript:v37];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(POKerberosEntry *)v30 setServiceName:v38];
              }

              v39 = [v20 clientNameKeyName];
              v40 = [v24 objectForKeyedSubscript:v39];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(POKerberosEntry *)v30 setClientName:v40];
              }

              v41 = [v20 encryptionKeyTypeKeyName];
              v42 = [v24 objectForKeyedSubscript:v41];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                -[POKerberosEntry setEncryptionKeyType:](v30, "setEncryptionKeyType:", [v42 intValue]);
              }

              v43 = [v20 sessionKeyKeyName];
              v44 = [v24 objectForKeyedSubscript:v43];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v45 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v44 options:0];
                [(POKerberosEntry *)v30 setSessionKey:v45];
              }

              if ([(POKerberosEntry *)v30 hasAllRequiredValues])
              {
                v46 = PO_LOG_POAgentAuthenticationProcess();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  v47 = [(POKerberosEntry *)v30 realm];
                  *buf = 138543362;
                  v89 = v47;
                  _os_log_impl(&dword_25E831000, v46, OS_LOG_TYPE_INFO, "Importing Kerberos TGT for %{public}@", buf, 0xCu);
                }

                v48 = [(POAgentAuthenticationProcess *)self kerberosHelper];
                v76[0] = 0;
                v49 = [v48 importKerberosEntry:v30 error:v76];
                v50 = v76[0];

                [v66 addObject:v49];
                if (([v49 importSuccessful] & 1) == 0)
                {
                  v73[0] = MEMORY[0x277D85DD0];
                  v73[1] = 3221225472;
                  v73[2] = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418;
                  v73[3] = &unk_279A3AA50;
                  v74 = v50;
                  v75 = v20;
                  v51 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418(v73);
                }

                v12 = v67;
                if ([v49 exchangeRequired])
                {
                  v52 = PO_LOG_POAgentAuthenticationProcess();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                  {
                    v53 = [(POKerberosEntry *)v30 realm];
                    *buf = 138543362;
                    v89 = v53;
                    _os_log_impl(&dword_25E831000, v52, OS_LOG_TYPE_INFO, "Exchanging Kerberos TGT for %{public}@", buf, 0xCu);

                    v12 = v67;
                  }

                  [(POAgentAuthenticationProcess *)self exchangeTGTForStatus:v49];
                }

                if ([v49 failedToConnect])
                {
                  [(POAgentAuthenticationProcess *)self setEnableNetworkChanges:1];
                }

                if (([v49 exchangeRequired] & 1) == 0)
                {
                  v54 = PO_LOG_POAgentAuthenticationProcess();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                  {
                    v55 = [v49 realm];
                    *buf = 138543362;
                    v89 = v55;
                    _os_log_impl(&dword_25E831000, v54, OS_LOG_TYPE_INFO, "Notifying TGT delegate for realm: %{public}@", buf, 0xCu);
                  }

                  v56 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
                  v57 = [v49 realm];
                  v58 = [v49 upn];
                  v59 = [v49 cacheName];
                  [v56 TGTReceivedForRealm:v57 upn:v58 cache:v59];

                  v12 = v67;
                  v18 = v69;
                }
              }

              else
              {
                v61 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_422();
              }

              v11 = 0x277CCA000;
            }

            else
            {
              v76[1] = MEMORY[0x277D85DD0];
              v76[2] = 3221225472;
              v76[3] = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412;
              v76[4] = &unk_279A3A088;
              v76[5] = v20;
              v60 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412();
            }
          }

          else
          {
            v24 = PO_LOG_POAgentAuthenticationProcess();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [POAgentAuthenticationProcess handleKerberosMappingForTokens:v79 loginConfiguration:? userConfiguration:?];
            }
          }

          ++v19;
        }

        while (v18 != v19);
        v18 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
      }

      while (v18);
    }

    else
    {
      v71 = 0;
    }

    v9 = v63;
    v16 = v66;
    [v63 setKerberosStatus:v66];
    v8 = v64;
    v7 = v65;
    v14 = v71;
  }

  v62 = *MEMORY[0x277D85DE8];
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing mapping when handling kerberos mapping."];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Ticket key path not NSDictionary when handling kerberos mapping."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412_cold_1();
  }

  return v0;
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to import kerberos ticketmapping when handling kerberos mapping."];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418_cold_1();
  }

  return v1;
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_422()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Kerberos mapping is missing all required values when handling kerberos mapping."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handlePreviousRefreshTokens
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[POAgentAuthenticationProcess handlePreviousRefreshTokens]";
    v26 = 2112;
    v27 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v24, 0x16u);
  }

  v4 = [(POAgentAuthenticationProcess *)self configurationManager];
  v5 = [v4 currentLoginConfiguration];
  if (![v5 includePreviousRefreshTokenInLoginRequest])
  {
    goto LABEL_13;
  }

  v6 = [(POAgentAuthenticationProcess *)self configurationManager];
  v7 = [v6 currentRefreshToken];
  if (!v7)
  {

LABEL_13:
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [(POAgentAuthenticationProcess *)self configurationManager];
  v10 = [v9 tokenExpiration];
  [v10 timeIntervalSinceNow];
  v12 = v11;

  if (v12 <= 0.0)
  {
LABEL_14:
    [(POAgentAuthenticationProcess *)self handleRemovingSSOTokens];
    goto LABEL_15;
  }

  v13 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_INFO, "Using previous refresh token after login", &v24, 2u);
  }

  v14 = [(POAgentAuthenticationProcess *)self configurationManager];
  v15 = [v14 currentUserConfiguration];
  [v15 setState:1];

  v16 = [(POAgentAuthenticationProcess *)self configurationManager];
  v17 = NSUserName();
  v18 = [v16 savePendingSSOTokens:0 forUserName:v17];

  if ((v18 & 1) == 0)
  {
    v19 = __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke();
  }

  v20 = [(POAgentAuthenticationProcess *)self configurationManager];
  v21 = [v20 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((v21 & 1) == 0)
  {
    v22 = __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke_433();
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
}

id __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to clear pending SSO tokens."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke_433()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after clearing tokens."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleRemovingSSOTokens
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[POAgentAuthenticationProcess handleRemovingSSOTokens]";
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v4 = [(POAgentAuthenticationProcess *)self configurationManager];
  v5 = [v4 currentDeviceConfiguration];
  v6 = [v5 extensionIdentifier];

  if (v6)
  {
    v7 = [(POAgentAuthenticationProcess *)self configurationManager];
    v8 = [(POAgentAuthenticationProcess *)self configurationManager];
    v9 = [v8 currentDeviceConfiguration];
    v10 = [v9 extensionIdentifier];
    v17 = 0;
    v11 = [v7 setTokens:0 extensionIdentifier:v10 returningError:&v17];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__POAgentAuthenticationProcess_handleRemovingSSOTokens__block_invoke;
      v15[3] = &unk_279A3A088;
      v12 = v12;
      v16 = v12;
      v13 = __55__POAgentAuthenticationProcess_handleRemovingSSOTokens__block_invoke(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

id __55__POAgentAuthenticationProcess_handleRemovingSSOTokens__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to remove SSO tokens."];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)handlePendingSSOTokensWithSharedData:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v52 = "[POAgentAuthenticationProcess handlePendingSSOTokensWithSharedData:]";
    v53 = 2112;
    v54 = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = [(POAgentAuthenticationProcess *)self configurationManager];
  v7 = NSUserName();
  v8 = [v6 retrievePendingSSOTokensForUserName:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D3D1E0];
    v10 = [(POAgentAuthenticationProcess *)self configurationManager];
    v11 = [v10 currentDeviceConfiguration];
    v12 = [v9 decryptPendingSSOTokens:v8 UsingPrivateKey:objc_msgSend(v11 sharedData:{"deviceEncryptionKey"), v4}];

    if (!v12)
    {
      v13 = [(POAgentAuthenticationProcess *)self registrationManager];
      v14 = [v13 registrationContext];
      if ([v14 migratingDeviceKeys])
      {
        v15 = [(POAgentAuthenticationProcess *)self configurationManager];
        v16 = [v15 userDeviceConfiguration];

        if (!v16)
        {
          v12 = 0;
          goto LABEL_14;
        }

        v17 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v17, OS_LOG_TYPE_INFO, "Handling Pending SSO During Migration", buf, 2u);
        }

        v18 = MEMORY[0x277D3D1E0];
        v13 = [(POAgentAuthenticationProcess *)self configurationManager];
        v14 = [v13 userDeviceConfiguration];
        v12 = [v18 decryptPendingSSOTokens:v8 UsingPrivateKey:objc_msgSend(v14 sharedData:{"deviceEncryptionKey"), v4}];
      }

      else
      {
        v12 = 0;
      }
    }

LABEL_14:
    v19 = [(POAgentAuthenticationProcess *)self configurationManager];
    v20 = [(POAgentAuthenticationProcess *)self configurationManager];
    v21 = [v20 currentDeviceConfiguration];
    v22 = [v21 extensionIdentifier];
    v48 = 0;
    v23 = [v19 setTokens:v12 extensionIdentifier:v22 returningError:&v48];
    v24 = v48;

    if (v23)
    {
      [(POAgentAuthenticationProcess *)self setupTimerForAuthentication];
      if (v12)
      {
        v25 = PO_LOG_POAgentAuthenticationProcess();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v25, OS_LOG_TYPE_INFO, "Pending SSO Tokens Saved", buf, 2u);
        }

        v26 = [(POAgentAuthenticationProcess *)self configurationManager];
        v27 = [v26 currentUserConfiguration];
        v28 = [v27 state];

        if (v28 == 1)
        {
          v29 = [(POAgentAuthenticationProcess *)self configurationManager];
          v30 = [v29 currentUserConfiguration];
          [v30 setState:0];

          v31 = [(POAgentAuthenticationProcess *)self configurationManager];
          LOBYTE(v30) = [v31 saveCurrentUserConfigurationAndSyncToPreboot:0];

          if ((v30 & 1) == 0)
          {
            v32 = __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke_445();
          }
        }

        v33 = [(POAgentAuthenticationProcess *)self configurationManager];
        v34 = [v33 currentLoginConfiguration];
        v35 = [(POAgentAuthenticationProcess *)self configurationManager];
        v36 = [v35 currentUserConfiguration];
        [(POAgentAuthenticationProcess *)self handleKerberosMappingForTokens:v12 loginConfiguration:v34 userConfiguration:v36];

        v37 = [(POAgentAuthenticationProcess *)self configurationManager];
        v38 = NSUserName();
        LOBYTE(v35) = [v37 savePendingSSOTokens:0 forUserName:v38];

        if (v35)
        {
          v39 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
          v50 = @"com.apple.PlatformSSO.authentication";
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
          [v39 removeDeliveredNotificationsWithIdentifiers:v40];

          v41 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
          v49 = @"com.apple.PlatformSSO.authentication";
          v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
          [v41 removePendingNotificationRequestsWithIdentifiers:v42];
        }

        else
        {
          v44 = __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke();
        }
      }
    }

    else
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke;
      v46[3] = &unk_279A3A088;
      v47 = v24;
      v43 = __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke(v46);
    }

    goto LABEL_26;
  }

  v12 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handlePendingSSOTokensWithSharedData:];
  }

LABEL_26:

  v45 = *MEMORY[0x277D85DE8];
}

id __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to save pending SSO tokens."];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke_445()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after saving pending SSO tokens."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleUnfinishedTGTExchanges
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[POAgentAuthenticationProcess handleUnfinishedTGTExchanges]";
    v34 = 2112;
    v35 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v4 = [(POAgentAuthenticationProcess *)self configurationManager];
  v5 = [v4 currentUserConfiguration];

  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [v5 kerberosStatus];
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v26 = v5;
      v9 = 0;
      v10 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          if ([v12 exchangeRequired])
          {
            v13 = PO_LOG_POAgentAuthenticationProcess();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v12 realm];
              *buf = 138543362;
              v33 = v14;
              _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_INFO, "Exchanging Kerberos TGT for %{public}@", buf, 0xCu);
            }

            [(POAgentAuthenticationProcess *)self exchangeTGTForStatus:v12];
            if ([v12 failedToConnect])
            {
              [(POAgentAuthenticationProcess *)self setEnableNetworkChanges:1];
            }

            if (([v12 exchangeRequired] & 1) == 0)
            {
              v15 = PO_LOG_POAgentAuthenticationProcess();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                v16 = [v12 realm];
                *buf = 138543362;
                v33 = v16;
                _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_INFO, "Notifying TGT delegate for realm: %{public}@", buf, 0xCu);
              }

              v17 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
              v18 = [v12 realm];
              v19 = [v12 upn];
              v20 = [v12 cacheName];
              [v17 TGTReceivedForRealm:v18 upn:v19 cache:v20];

              v9 = 1;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);

      v5 = v26;
      if (v9)
      {
        v21 = [(POAgentAuthenticationProcess *)self configurationManager];
        v22 = [v21 saveCurrentUserConfigurationAndSyncToPreboot:0];

        if ((v22 & 1) == 0)
        {
          v23 = __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke_459();
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v24 = __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke();
  }

  v25 = *MEMORY[0x277D85DE8];
}

id __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration when handling unfinished TGT exchanges."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke_459()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration when handling unfinished TGT exchanges."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)notifyKerberosDelegateTGTDidBegin
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[POAgentAuthenticationProcess notifyKerberosDelegateTGTDidBegin]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  v4 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  [v4 TGTRequestDidBegin];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyKerberosDelegateTGTDidComplete
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[POAgentAuthenticationProcess notifyKerberosDelegateTGTDidComplete]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  v4 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  [v4 TGTRequestDidComplete];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setupTimerForAuthentication
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[POAgentAuthenticationProcess setupTimerForAuthentication]";
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v22, 0x16u);
  }

  v4 = [(POAgentAuthenticationProcess *)self authenticationTimerLock];
  objc_sync_enter(v4);
  v5 = [(POAgentAuthenticationProcess *)self authenticationTimer];

  if (v5)
  {
    v6 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [v6 invalidate];

    [(POAgentAuthenticationProcess *)self setAuthenticationTimer:0];
  }

  objc_sync_exit(v4);

  v7 = [(POAgentAuthenticationProcess *)self configurationManager];
  v8 = [v7 currentUserConfiguration];

  if (v8)
  {
    v9 = [(POAgentAuthenticationProcess *)self configurationManager];
    v10 = [v9 tokenReceived];

    [v10 timeIntervalSinceNow];
    if (v11 >= -14400.0)
    {
      v13 = [v10 dateByAddingTimeInterval:14400.0];
      if (!v13)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v12 = [(POAgentAuthenticationProcess *)self configurationManager];
      v13 = [v12 tokenExpiration];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    v15 = [(POAgentAuthenticationProcess *)self authenticationTimerLock];
    objc_sync_enter(v15);
    v16 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v22 = 138543362;
      v23 = v13;
      _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_INFO, "Refresh token timer set: %{public}@", &v22, 0xCu);
    }

    v17 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v13 interval:self target:sel_performLoginForCurrentUserWithPasswordContext_ selector:0 userInfo:0 repeats:0.0];
    [(POAgentAuthenticationProcess *)self setAuthenticationTimer:v17];

    v18 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [v18 setTolerance:300.0];

    v19 = [MEMORY[0x277CBEB88] currentRunLoop];
    v20 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [v19 addTimer:v20 forMode:*MEMORY[0x277CBE640]];

    objc_sync_exit(v15);
    goto LABEL_14;
  }

  v14 = __59__POAgentAuthenticationProcess_setupTimerForAuthentication__block_invoke();
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

id __59__POAgentAuthenticationProcess_setupTimerForAuthentication__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration when handling setting up authentication timer."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)isCurrentSSOExtension:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess isCurrentSSOExtension:];
  }

  v6 = [(POAgentAuthenticationProcess *)self configurationManager];
  v7 = [v6 currentDeviceConfiguration];

  if (!v7)
  {
    v13 = __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke();
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = [(POAgentAuthenticationProcess *)self configurationManager];
  v9 = [v8 currentDeviceConfiguration];
  v10 = [v9 extensionIdentifier];
  v11 = [v10 isEqualToString:v4];

  if ((v11 & 1) == 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke_479;
    v16[3] = &unk_279A3A088;
    v17 = v4;
    v14 = __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke_479(v16);

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:

  return v12;
}

id __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration when checking sso extension."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke_479(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Caller is not current extension when checking sso extension."];
  v3 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1(v2, a1);
  }

  return v2;
}

- (void)requestUserAuthenticationWithWindow:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess requestUserAuthenticationWithWindow:completion:];
  }

  v7 = [(POAgentAuthenticationProcess *)self registrationManager];
  v8 = [v7 registrationContext];
  if (v8)
  {
    v9 = v8;
    v10 = [(POAgentAuthenticationProcess *)self registrationManager];
    v11 = [v10 registrationContext];
    v12 = [v11 state];

    if (v12 != 1)
    {
      v13 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke();
LABEL_11:
      v17 = 6;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (![(POAgentAuthenticationProcess *)self platformSSOAccount])
  {
    v18 = __79__POAgentAuthenticationProcess_requestUserAuthenticationWithWindow_completion___block_invoke_485();
    goto LABEL_11;
  }

  v14 = [(POAgentAuthenticationProcess *)self configurationManager];
  v15 = [v14 currentUserConfiguration];
  v16 = [v15 loginType];

  if (v16 == 1)
  {
    v17 = 3;
  }

  else
  {
    v19 = PO_LOG_POAgentAuthenticationProcess();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_25E831000, v19, OS_LOG_TYPE_INFO, "Not a password user", v20, 2u);
    }

    v17 = 0;
  }

LABEL_15:
  v5[2](v5, v17);
}

id __79__POAgentAuthenticationProcess_requestUserAuthenticationWithWindow_completion___block_invoke_485()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Not a PlatformSSO account for user authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (id)createSignInNotificationWithAccountName:(id)a3 extensionIdentifier:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(POAgentAuthenticationProcess *)self registrationManager];
  v9 = [v8 loadSSOExtensionWithExtensionBundleIdentifier:v7];

  v10 = objc_alloc_init(MEMORY[0x277CE1F60]);
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = &stru_287080C08;
  }

  v24[0] = @"account_name";
  v24[1] = @"extension_identifier";
  v25[0] = v11;
  v25[1] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v10 setUserInfo:v12];

  [v10 setShouldBackgroundDefaultAction:1];
  v13 = MEMORY[0x277CE1FB0];
  v14 = [v9 containerAppBundleIdentifier];
  v15 = [v13 iconForApplicationIdentifier:v14];
  [v10 setIcon:v15];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"NOTIFICATION_SIGNIN_TITLE" value:&stru_287080C08 table:0];
  [v10 setTitle:v17];

  if ([(__CFString *)v6 length])
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CUSTOM_NOTIFICATION_SIGNIN_BODY" value:&stru_287080C08 table:0];
    v21 = [v18 localizedStringWithFormat:v20, v6];
    [v10 setBody:v21];
  }

  else
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"DEFAULT_NOTIFICATION_SIGNIN_BODY" value:&stru_287080C08 table:0];
    [v10 setBody:v20];
  }

  [v10 setCategoryIdentifier:@"LOGIN_USER"];
  [v10 setInterruptionLevel:2];
  [v10 setShouldPreventNotificationDismissalAfterDefaultAction:1];

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createPasswordChangedNotificationWithAccountName:(id)a3 extensionIdentifier:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CE1F60];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  [v8 setShouldBackgroundDefaultAction:1];
  v21 = 0;
  v9 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v7 allowPlaceholder:0 error:&v21];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 containingBundleRecord];
    v11 = [v10 bundleIdentifier];

    v12 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:v11];
    [v8 setIcon:v12];
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"NOTIFICATION_PASSWORDCHANGED_TITLE" value:&stru_287080C08 table:0];
  [v8 setTitle:v14];

  if ([v5 length])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CUSTOM_NOTIFICATION_PASSWORDCHANGED_BODY" value:&stru_287080C08 table:0];
    v18 = [v15 localizedStringWithFormat:v17, v5];
    [v8 setBody:v18];
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"DEFAULT_NOTIFICATION_PASSWORDCHANGED_BODY" value:&stru_287080C08 table:0];
    [v8 setBody:v17];
  }

  [v8 setInterruptionLevel:2];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:180.0];
  [v8 setExpirationDate:v19];

  return v8;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
  }

  v10 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  block[3] = &unk_279A3AAA0;
  v14 = v7;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, block);
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = PO_LOG_POAgentAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) actionIdentifier];
    v4 = [*(a1 + 32) notification];
    v5 = [v4 request];
    v6 = [v5 content];
    v7 = [v6 categoryIdentifier];
    *buf = 138543618;
    v80 = v3;
    v81 = 2114;
    v82 = v7;
    _os_log_impl(&dword_25E831000, v2, OS_LOG_TYPE_INFO, "%{public}@, %{public}@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  v12 = [v11 isEqualToString:@"LOGIN_USER"];
  v13 = MEMORY[0x277CE20F0];
  if (v12)
  {
    v14 = [*(a1 + 32) actionIdentifier];
    if ([v14 isEqualToString:*MEMORY[0x277CE20E8]])
    {
    }

    else
    {
      v15 = [*(a1 + 32) actionIdentifier];
      v16 = [v15 isEqualToString:@"LOGIN"];

      if (!v16)
      {
LABEL_8:
        v22 = [*(a1 + 32) actionIdentifier];
        v23 = [v22 isEqualToString:*v13];

        if (v23)
        {
          v24 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_513;
          block[3] = &unk_279A3A060;
          block[4] = *(a1 + 40);
          dispatch_async(v24, block);
        }

        v25 = [*(a1 + 40) userNotificationCenter];
        v26 = [*(a1 + 32) notification];
        v27 = [v26 request];
        v28 = [v27 identifier];
        v78 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
        [v25 removeDeliveredNotificationsWithIdentifiers:v29];

        v30 = [*(a1 + 40) userNotificationCenter];
        v31 = [*(a1 + 32) notification];
        v32 = [v31 request];
        v33 = [v32 identifier];
        v77 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
        [v30 removePendingNotificationRequestsWithIdentifiers:v34];

        goto LABEL_11;
      }
    }

    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) notification];
    v19 = [v18 request];
    v20 = [v19 content];
    v21 = [v20 userInfo];
    [v17 requestUserAuthenticationWithUserInfo:v21 forceLogin:0];

    goto LABEL_8;
  }

LABEL_11:
  if ([v11 isEqualToString:@"REGISTER_DEVICE"])
  {
    v35 = [*(a1 + 32) actionIdentifier];
    v36 = [v35 isEqualToString:*v13];

    v37 = dispatch_get_global_queue(0, 0);
    v38 = v37;
    if (v36)
    {
      v39 = v70;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v40 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_3;
    }

    else
    {
      v39 = v71;
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v40 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
    }

    v39[2] = v40;
    v39[3] = &unk_279A3A060;
    v39[4] = *(a1 + 40);
    dispatch_async(v37, v39);

    v41 = [*(a1 + 40) userNotificationCenter];
    v42 = [*(a1 + 32) notification];
    v43 = [v42 request];
    v44 = [v43 identifier];
    v76 = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    [v41 removeDeliveredNotificationsWithIdentifiers:v45];

    v46 = [*(a1 + 40) userNotificationCenter];
    v47 = [*(a1 + 32) notification];
    v48 = [v47 request];
    v49 = [v48 identifier];
    v75 = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    [v46 removePendingNotificationRequestsWithIdentifiers:v50];
  }

  if ([v11 isEqualToString:@"REGISTER_USER"])
  {
    v51 = [*(a1 + 32) actionIdentifier];
    v52 = [v51 isEqualToString:*v13];

    v53 = dispatch_get_global_queue(0, 0);
    v54 = v53;
    if (v52)
    {
      v55 = v68;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v56 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_5;
    }

    else
    {
      v55 = v69;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v56 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_4;
    }

    v55[2] = v56;
    v55[3] = &unk_279A3A060;
    v55[4] = *(a1 + 40);
    dispatch_async(v53, v55);

    v57 = [*(a1 + 40) userNotificationCenter];
    v58 = [*(a1 + 32) notification];
    v59 = [v58 request];
    v60 = [v59 identifier];
    v74 = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
    [v57 removeDeliveredNotificationsWithIdentifiers:v61];

    v62 = [*(a1 + 40) userNotificationCenter];
    v63 = [*(a1 + 32) notification];
    v64 = [v63 request];
    v65 = [v64 identifier];
    v73 = v65;
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    [v62 removePendingNotificationRequestsWithIdentifiers:v66];
  }

  (*(*(a1 + 48) + 16))();

  v67 = *MEMORY[0x277D85DE8];
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationManager];
  [v1 handleDeviceRegistrationNotification];
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationManager];
  v3 = [v2 registrationContext];
  [v3 setRetry:1];

  v4 = [*(a1 + 32) registrationManager];
  [v4 promptUserForRegistration];
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationManager];
  [v1 handleUserRegistrationNotification];
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationManager];
  v3 = [v2 registrationContext];
  [v3 setRetry:1];

  v4 = [*(a1 + 32) registrationManager];
  [v4 promptUserForRegistration];
}

- (void)setupNotificationCategories
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CE1F80];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_SIGNIN_BUTTON" value:&stru_287080C08 table:0];
  v6 = [v3 actionWithIdentifier:@"LOGIN" title:v5 options:1];

  v7 = MEMORY[0x277CE1F80];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_REGISTER_BUTTON" value:&stru_287080C08 table:0];
  v10 = [v7 actionWithIdentifier:@"REGISTER" title:v9 options:65537];

  v11 = MEMORY[0x277CE1F98];
  v29[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v13 = MEMORY[0x277CBEBF8];
  v14 = [v11 categoryWithIdentifier:@"LOGIN_USER" actions:v12 intentIdentifiers:MEMORY[0x277CBEBF8] options:5];

  v15 = MEMORY[0x277CE1F98];
  v28 = v10;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v17 = [v15 categoryWithIdentifier:@"REGISTER_USER" actions:v16 intentIdentifiers:v13 options:5];

  v18 = MEMORY[0x277CE1F98];
  v27 = v10;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v20 = [v18 categoryWithIdentifier:@"REGISTER_DEVICE" actions:v19 intentIdentifiers:v13 options:5];

  v21 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  v22 = MEMORY[0x277CBEB98];
  v26[0] = v14;
  v26[1] = v17;
  v26[2] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v24 = [v22 setWithArray:v23];
  [v21 setNotificationCategories:v24];

  v25 = *MEMORY[0x277D85DE8];
}

- (POAgentAuthenticationProcessKerberosDelegate)kerberosDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_kerberosDelegate);

  return WeakRetained;
}

- (void)initForAgentWithDelegate:configurationHost:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfigurationHost:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)doUnlockForSmartCardWithCredentialContext:tokenId:atLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)doUnlockForPasswordWithCredentialContext:atLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)doUnlockForTokenUnlockWithCredentialContext:atLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)doUnlockForTokenLoginWithCredentialContext:atLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doUnlockForTokenWithCredentialContext:atLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3D1D0] stringForLoginResult:a1];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "Password update result: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)doUnlockWithEmptyCredentialContext:atLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doRefreshWithPasswordContext:tokenId:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.6()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.7()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.9()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleKeyUpdatesWithPasswordContext:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkIfGroupNamesNeedUpdateForRegistrationManager:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestUserAuthenticationWithUserInfo:forceLogin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestUserAuthenticationSyncPassword:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showAlertMessage:messageText:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleKeyRequestSync
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)postAuthenticationNotification:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configurationChanged:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configurationChanged:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleConfigurationChanged:startup:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleConfigurationChanged:startup:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleConfigurationChanged:startup:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleUserNeedsReauthenticationAfterDelay:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1(&dword_25E831000, v3, v4, "%{public}@, %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1(&dword_25E831000, v3, v4, "%{public}@, %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPasswordChangePreference
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_9(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_2(&dword_25E831000, v4, v5, "%{public}@, %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 40) ticketKeyPath];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_2(&dword_25E831000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handlePendingSSOTokensWithSharedData:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isCurrentSSOExtension:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestUserAuthenticationWithWindow:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end