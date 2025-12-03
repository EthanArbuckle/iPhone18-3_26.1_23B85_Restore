@interface BYManagedAppleIDBootstrap
+ (BOOL)isFirstTimeLogin;
+ (BOOL)isManagedAppleIDSignedIn;
+ (BOOL)isMultiUser;
+ (BOOL)isSettingUpMultiUser;
+ (id)sharedManager;
- (BOOL)isLoginUser;
- (BOOL)needsToUpgradeShortLivedToken;
- (BOOL)passwordChangeFlowNeedsToRun;
- (BYManagedAppleIDBootstrap)init;
- (NSString)shortLivedToken;
- (OS_dispatch_queue)notificationQueue;
- (UMUserSwitchContext)userSwitchContext;
- (id)_authenticationContextWithAuthenticationResults:(id)results;
- (id)_fetchAKURLBagSynchronously;
- (id)_languageConfigurationDictionary;
- (void)_createAppleAccountWithAuthenticationResults:(id)results completion:(id)completion;
- (void)_fetchAKURLBagSynchronously;
- (void)_modifyAuthenticationContextIfNeeded:(id)needed;
- (void)_registerForStartupCompletionNotificationWithTask:(id)task;
- (void)_runPostStartupTasksWithAccountStore:(id)store completion:(id)completion;
- (void)_runSilentLoginUpgradeWithCompletion:(id)completion shortLivedTokenUpgradeCompletion:(id)upgradeCompletion;
- (void)_upgradeShortLivedTokenCompletion:(id)completion;
- (void)dealloc;
- (void)ingestManagedBuddyData;
- (void)markUserWithManagedCredentials;
- (void)postUserSwitchContextHasBeenUsed;
- (void)recoverEMCSWithCompletion:(id)completion;
- (void)runSilentLoginUpgradeIfNeededWithCompletion:(id)completion shortLivedTokenUpgradeCompletion:(id)upgradeCompletion willNotCompleteBlock:(id)block;
- (void)switchToLoginWindowDueToError:(id)error completion:(id)completion;
- (void)userSwitchContextHasBeenUsed;
- (void)writeAccountConfigurationIfNeededWithCompletion:(id)completion;
@end

@implementation BYManagedAppleIDBootstrap

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[BYManagedAppleIDBootstrap sharedManager];
  }

  v3 = sharedManager_instance_0;

  return v3;
}

uint64_t __42__BYManagedAppleIDBootstrap_sharedManager__block_invoke()
{
  sharedManager_instance_0 = objc_alloc_init(BYManagedAppleIDBootstrap);

  return MEMORY[0x1EEE66BB8]();
}

- (BYManagedAppleIDBootstrap)init
{
  v8.receiver = self;
  v8.super_class = BYManagedAppleIDBootstrap;
  v2 = [(BYManagedAppleIDBootstrap *)&v8 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, BYUserSwitchContextHasBeenUsed, @"BYUserSwitchContextHasBeenUsed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = +[BYNetworkMonitor sharedInstance];
    [v4 addObserver:v2];

    v2->_silentLoginUpgradeRetryCount = 0;
    v5 = +[BYPreferencesController buddyPreferences];
    buddyPreferences = v2->_buddyPreferences;
    v2->_buddyPreferences = v5;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"BYUserSwitchContextHasBeenUsed", 0);
  v4.receiver = self;
  v4.super_class = BYManagedAppleIDBootstrap;
  [(BYManagedAppleIDBootstrap *)&v4 dealloc];
}

+ (BOOL)isMultiUser
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isMultiUser = [mEMORY[0x1E69DF068] isMultiUser];

  return isMultiUser;
}

+ (BOOL)isFirstTimeLogin
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  if ([mEMORY[0x1E69DF068] isMultiUser])
  {
    mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
    currentUser = [mEMORY[0x1E69DF068]2 currentUser];
    inFirstLoginSession = [currentUser inFirstLoginSession];
  }

  else
  {
    inFirstLoginSession = 0;
  }

  return inFirstLoginSession;
}

+ (BOOL)isSettingUpMultiUser
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v11 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getMCProfileConnectionClass_block_invoke;
    v7[3] = &unk_1E7D02730;
    v7[4] = &v8;
    __getMCProfileConnectionClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  sharedConnection = [v2 sharedConnection];
  v5 = [sharedConnection userMode] == 1 && !objc_msgSend(sharedConnection, "isEphemeralMultiUser");

  return v5;
}

+ (BOOL)isManagedAppleIDSignedIn
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  LOBYTE(defaultStore) = [aa_primaryAppleAccount aa_isManagedAppleID];
  return defaultStore;
}

- (BOOL)isLoginUser
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentUser = [mEMORY[0x1E69DF068] currentUser];
  isLoginUser = [currentUser isLoginUser];

  return isLoginUser;
}

- (void)userSwitchContextHasBeenUsed
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "User switch context has been used", v6, 2u);
  }

  userSwitchContext = self->_userSwitchContext;
  if (userSwitchContext)
  {
    self->_userSwitchContext = 0;

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    [mEMORY[0x1E69DF068] currentUserSwitchContextHasBeenUsed];
  }
}

- (UMUserSwitchContext)userSwitchContext
{
  v14 = *MEMORY[0x1E69E9840];
  userSwitchContext = self->_userSwitchContext;
  if (!userSwitchContext)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentUserSwitchContext = [mEMORY[0x1E69DF068] currentUserSwitchContext];
    v6 = self->_userSwitchContext;
    self->_userSwitchContext = currentUserSwitchContext;

    if (self->_userSwitchContext)
    {
      v7 = _BYLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        secondaryActionRequired = [(UMUserSwitchContext *)self->_userSwitchContext secondaryActionRequired];
        v9 = @"NERP";
        if (secondaryActionRequired)
        {
          v9 = @"YASE";
        }

        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Fetched user switch context. Password change required = %{public}@", &v12, 0xCu);
      }
    }

    userSwitchContext = self->_userSwitchContext;
  }

  v10 = *MEMORY[0x1E69E9840];

  return userSwitchContext;
}

- (NSString)shortLivedToken
{
  userSwitchContext = [(BYManagedAppleIDBootstrap *)self userSwitchContext];
  shortLivedToken = [userSwitchContext shortLivedToken];
  v4 = [shortLivedToken copy];

  return v4;
}

- (BOOL)passwordChangeFlowNeedsToRun
{
  userSwitchContext = [(BYManagedAppleIDBootstrap *)self userSwitchContext];
  secondaryActionRequired = [userSwitchContext secondaryActionRequired];

  return secondaryActionRequired;
}

- (OS_dispatch_queue)notificationQueue
{
  notificationQueue = self->_notificationQueue;
  if (!notificationQueue)
  {
    v4 = dispatch_queue_create("com.apple.purplebuddy.startupNotificationQueue", 0);
    v5 = self->_notificationQueue;
    self->_notificationQueue = v4;

    notificationQueue = self->_notificationQueue;
  }

  return notificationQueue;
}

- (void)postUserSwitchContextHasBeenUsed
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(BYManagedAppleIDBootstrap *)v2 postUserSwitchContextHasBeenUsed];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BYUserSwitchContextHasBeenUsed", 0, 0, 1u);
}

- (void)ingestManagedBuddyData
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "Buddy data from IdMS: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)needsToUpgradeShortLivedToken
{
  if (![objc_opt_class() isMultiUser])
  {
    return 0;
  }

  shortLivedToken = [(BYManagedAppleIDBootstrap *)self shortLivedToken];
  v4 = shortLivedToken != 0;

  return v4;
}

- (void)switchToLoginWindowDueToError:(id)error completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v9 = 0;
      v10 = errorCopy;
    }

    else if (errorCopy)
    {
      v11 = MEMORY[0x1E696AEC0];
      domain = [errorCopy domain];
      v10 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(errorCopy, "code")];
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Unrecoverable error, switching to Login Window: %{public}@", buf, 0xCu);
    if (v9)
    {
    }
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__BYManagedAppleIDBootstrap_switchToLoginWindowDueToError_completion___block_invoke;
  v15[3] = &unk_1E7D02BD8;
  v16 = completionCopy;
  v13 = completionCopy;
  [mEMORY[0x1E69DF068] switchToLoginUserWithError:errorCopy completionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __70__BYManagedAppleIDBootstrap_switchToLoginWindowDueToError_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _BYIsInternalInstall();
      v7 = v4;
      if ((v6 & 1) == 0)
      {
        v8 = MEMORY[0x1E696AEC0];
        v2 = [v4 domain];
        v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v4, "code")];
      }

      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Switch to Login Window failed: %{public}@", buf, 0xCu);
      if ((v6 & 1) == 0)
      {
      }
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_runSilentLoginUpgradeWithCompletion:(id)completion shortLivedTokenUpgradeCompletion:(id)upgradeCompletion
{
  completionCopy = completion;
  upgradeCompletionCopy = upgradeCompletion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__BYManagedAppleIDBootstrap__runSilentLoginUpgradeWithCompletion_shortLivedTokenUpgradeCompletion___block_invoke;
  v10[3] = &unk_1E7D02C60;
  v10[4] = self;
  v11 = upgradeCompletionCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = upgradeCompletionCopy;
  [(BYManagedAppleIDBootstrap *)self _upgradeShortLivedTokenCompletion:v10];
}

void __99__BYManagedAppleIDBootstrap__runSilentLoginUpgradeWithCompletion_shortLivedTokenUpgradeCompletion___block_invoke(id *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1[4];
  if (a2)
  {
    [v6 postUserSwitchContextHasBeenUsed];
    if (a1[5])
    {
      v7 = _BYLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Short lived token upgrade completed with success. Will call shortLivedTokenUpgradeCompletion", buf, 2u);
      }

      (*(a1[5] + 2))();
    }

    kdebug_trace();
    v8 = a1[4];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __99__BYManagedAppleIDBootstrap__runSilentLoginUpgradeWithCompletion_shortLivedTokenUpgradeCompletion___block_invoke_59;
    v20[3] = &unk_1E7D02C10;
    v21 = a1[6];
    [v8 recoverEMCSWithCompletion:v20];
    v9 = v21;
LABEL_11:

    goto LABEL_12;
  }

  if ([v6 silentLoginUpgradeRetryCount] <= 1)
  {
    [a1[4] setSilentLoginUpgradeRetryCount:{objc_msgSend(a1[4], "silentLoginUpgradeRetryCount") + 1}];
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1[4] silentLoginUpgradeRetryCount];
      *buf = 134217984;
      v23 = v11;
      _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Retrying Silent Token Upgrade, retry count: %ld", buf, 0xCu);
    }

    v12 = +[BYNetworkMonitor sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99__BYManagedAppleIDBootstrap__runSilentLoginUpgradeWithCompletion_shortLivedTokenUpgradeCompletion___block_invoke_61;
    v17[3] = &unk_1E7D02C38;
    v17[4] = a1[4];
    v18 = a1[6];
    v19 = a1[5];
    [v12 withMinimumNetworkType:1 timeout:v17 runBlock:10.0];

    v9 = v18;
    goto LABEL_11;
  }

  if (a1[6])
  {
    v14 = _BYLoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [a1[4] silentLoginUpgradeRetryCount];
      *buf = 134217984;
      v23 = v15;
      _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Silent login upgrade failed with an error, retry count: %ld", buf, 0xCu);
    }

    if (a1[5])
    {
      v16 = _BYLoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, "Will call shortLivedTokenUpgradeCompletion", buf, 2u);
      }

      (*(a1[5] + 2))();
    }

    (*(a1[6] + 2))();
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

void __99__BYManagedAppleIDBootstrap__runSilentLoginUpgradeWithCompletion_shortLivedTokenUpgradeCompletion___block_invoke_59(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  kdebug_trace();
  if (v6 || (a2 & 1) == 0)
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (_BYIsInternalInstall())
      {
        v10 = 0;
        v11 = v6;
      }

      else if (v6)
      {
        v12 = MEMORY[0x1E696AEC0];
        v3 = [v6 domain];
        v11 = [v12 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v6, "code")];
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *buf = 138543362;
      v14 = v11;
      _os_log_error_impl(&dword_1B862F000, v7, OS_LOG_TYPE_ERROR, "Continuing despite EMCS recovery failure with error: %{public}@", buf, 0xCu);
      if (v10)
      {
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __99__BYManagedAppleIDBootstrap__runSilentLoginUpgradeWithCompletion_shortLivedTokenUpgradeCompletion___block_invoke_61(uint64_t a1, int a2)
{
  v4 = _BYLoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v10 = 0;
      v6 = "Timed out waiting for Wi-Fi!";
      v7 = &v10;
LABEL_6:
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v9 = 0;
    v6 = "Wi-Fi Acquired!";
    v7 = &v9;
    goto LABEL_6;
  }

  return [*(a1 + 32) _runSilentLoginUpgradeWithCompletion:*(a1 + 40) shortLivedTokenUpgradeCompletion:*(a1 + 48)];
}

- (void)runSilentLoginUpgradeIfNeededWithCompletion:(id)completion shortLivedTokenUpgradeCompletion:(id)upgradeCompletion willNotCompleteBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_64;
  }

  blockCopy = block;
  upgradeCompletionCopy = upgradeCompletion;
  v10 = MEMORY[0x1B8CC28E0](completionCopy);
  if (upgradeCompletionCopy)
  {
    v11 = upgradeCompletionCopy;
  }

  else
  {
    v11 = &__block_literal_global_66;
  }

  v12 = MEMORY[0x1B8CC28E0](v11);

  if (blockCopy)
  {
    v13 = blockCopy;
  }

  else
  {
    v13 = &__block_literal_global_68_0;
  }

  v14 = MEMORY[0x1B8CC28E0](v13);

  if (([objc_opt_class() isMultiUser] & 1) == 0)
  {
    goto LABEL_22;
  }

  needsToUpgradeShortLivedToken = [(BYManagedAppleIDBootstrap *)self needsToUpgradeShortLivedToken];
  passwordChangeFlowNeedsToRun = [(BYManagedAppleIDBootstrap *)self passwordChangeFlowNeedsToRun];
  if ([objc_opt_class() isMultiUser])
  {
    v17 = needsToUpgradeShortLivedToken && !passwordChangeFlowNeedsToRun;
  }

  else
  {
    v17 = 0;
  }

  v18 = _BYLoggingFacility();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v31 = needsToUpgradeShortLivedToken;
    v32 = 1024;
    v33 = passwordChangeFlowNeedsToRun;
    v34 = 1024;
    v35 = v17;
    _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "Silent token upgrade requirements: needs upgrade: %d, password change required: %d, running silent upgrade: %d", buf, 0x14u);
  }

  if (v17)
  {
    if (+[BYManagedAppleIDBootstrap isFirstTimeLogin])
    {
      v19 = +[BYAppleIDAccountsManager sharedManager];
      delegateBundleIDsForManagedAccount = [objc_opt_class() delegateBundleIDsForManagedAccount];
      [v19 preloadDefaultLoginParametersWithBundleIDs:delegateBundleIDsForManagedAccount];

      v21 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_70;
      block[3] = &unk_1E7D027A8;
      block[4] = self;
      dispatch_async(v21, block);
    }

    CFPreferencesSetAppValue(@"silentTokenUpgradeInProgress", *MEMORY[0x1E695E4D0], @"com.apple.purplebuddy.notbackedup");
    CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
    kdebug_trace();
    v22 = _BYLoggingFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, "Waiting for Wi-Fi...", buf, 2u);
    }

    v23 = +[BYNetworkMonitor sharedInstance];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_71;
    v25[3] = &unk_1E7D02CF8;
    v25[4] = self;
    v26 = v10;
    v27 = v14;
    v28 = v12;
    [v23 withMinimumNetworkType:1 timeout:v25 runBlock:20.0];
  }

  else
  {
LABEL_22:
    v12[2](v12);
    v10[2](v10, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_71(uint64_t a1, int a2)
{
  kdebug_trace();
  v4 = _BYLoggingFacility();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Timed out waiting for Wi-Fi!", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_71_cold_1(v5);
  }

  [*(a1 + 32) setSilentLoginUpgradeRetryCount:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_72;
  v8[3] = &unk_1E7D02CD0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  v10 = *(a1 + 48);
  [v6 _runSilentLoginUpgradeWithCompletion:v8 shortLivedTokenUpgradeCompletion:*(a1 + 56)];
}

void __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_72(id *a1, void *a2)
{
  v3 = a2;
  CFPreferencesSetAppValue(@"silentTokenUpgradeInProgress", 0, @"com.apple.purplebuddy.notbackedup");
  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"silentTokenUpgradeCompleted", 0, 0, 1u);
  if (!v3)
  {
    [a1[4] markUserWithManagedCredentials];
    v6 = *(a1[5] + 2);
LABEL_8:
    v6();
    goto LABEL_9;
  }

  if (!+[BYManagedAppleIDBootstrap isFirstTimeLogin])
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_72_cold_1(v3, v7);
    }

    v6 = *(a1[5] + 2);
    goto LABEL_8;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_73;
  v8[3] = &unk_1E7D02CA8;
  v5 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  [v5 switchToLoginWindowDueToError:v3 completion:v8];

LABEL_9:
}

uint64_t __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_73(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Blocking indefinitely as we are attempting logout.", v7, 2u);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_runPostStartupTasksWithAccountStore:(id)store completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  authenticationResults = [(BYManagedAppleIDBootstrap *)self authenticationResults];

  if (authenticationResults)
  {
    v9 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:storeCopy];
    authenticationResults2 = [(BYManagedAppleIDBootstrap *)self authenticationResults];
    v11 = [(BYManagedAppleIDBootstrap *)self _authenticationContextWithAuthenticationResults:authenticationResults2];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke;
    v32[3] = &unk_1E7D02D20;
    v32[4] = self;
    v33 = storeCopy;
    v12 = MEMORY[0x1B8CC28E0](v32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_76;
    v29[3] = &unk_1E7D02D20;
    v13 = v9;
    v30 = v13;
    v14 = v11;
    v31 = v14;
    v15 = MEMORY[0x1B8CC28E0](v29);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_78;
    v26[3] = &unk_1E7D02D20;
    v27 = v13;
    v28 = v14;
    v16 = v14;
    v17 = v13;
    v18 = MEMORY[0x1B8CC28E0](v26);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_81;
    v22[3] = &unk_1E7D02DC0;
    v23 = v12;
    v24 = v18;
    v25 = completionCopy;
    v19 = v15[2];
    v20 = v18;
    v21 = v12;
    v19(v15, v22);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BYAppleIDAccountsManager alloc];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() delegateBundleIDsForManagedAccount];
  v7 = [(BYAppleIDAccountsManager *)v4 initForDelegateBundleIDs:v6];

  v8 = [*(a1 + 40) aa_primaryAppleAccount];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2;
  v10[3] = &unk_1E7D02C10;
  v11 = v3;
  v9 = v3;
  [v7 enableDataClassesForAccount:v8 completion:v10];
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v8 = 0;
      v9 = v6;
    }

    else if (v6)
    {
      v10 = MEMORY[0x1E696AEC0];
      v3 = [v6 domain];
      v9 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v6, "code")];
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Finished enabling data classes with success: %d, error: %{public}@", buf, 0x12u);
    if (v8)
    {
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E698C238];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2_77;
  v8[3] = &unk_1E7D02C10;
  v9 = v3;
  v7 = v3;
  [v6 signInService:v4 withContext:v5 completion:v8];
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2_77(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v8 = 0;
      v9 = v6;
    }

    else if (v6)
    {
      v10 = MEMORY[0x1E696AEC0];
      v3 = [v6 domain];
      v9 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v6, "code")];
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Finished signing in iTunes account with success: %d, error: %{public}@", buf, 0x12u);
    if (v8)
    {
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E698C220];
  v12[0] = *MEMORY[0x1E698C230];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2_79;
  v10[3] = &unk_1E7D02D48;
  v11 = v3;
  v8 = v3;
  [v4 signInToServices:v6 usingContext:v7 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2_79(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Finished signing in Messages & FaceTime account with success: %d, result: %{public}@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_81(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2_82;
  v3[3] = &unk_1E7D02D98;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(v2 + 16))(v2, v3);
}

void __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_2_82(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_3;
  v2[3] = &unk_1E7D02D70;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(v1 + 16))(v1, v2);
}

uint64_t __77__BYManagedAppleIDBootstrap__runPostStartupTasksWithAccountStore_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recoverEMCSWithCompletion:(id)completion
{
  v28[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Starting EMCS Recovery...", buf, 2u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = getSecureBackupClass_softClass;
  v26 = getSecureBackupClass_softClass;
  if (!getSecureBackupClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getSecureBackupClass_block_invoke;
    v21 = &unk_1E7D02730;
    v22 = &v23;
    __getSecureBackupClass_block_invoke(buf);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  v7 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = getkSecureBackupContainsEMCSDataKeySymbolLoc_ptr;
  v26 = getkSecureBackupContainsEMCSDataKeySymbolLoc_ptr;
  if (!getkSecureBackupContainsEMCSDataKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getkSecureBackupContainsEMCSDataKeySymbolLoc_block_invoke;
    v21 = &unk_1E7D02730;
    v22 = &v23;
    v9 = CloudServicesLibrary();
    v10 = dlsym(v9, "kSecureBackupContainsEMCSDataKey");
    *(v22[1] + 24) = v10;
    getkSecureBackupContainsEMCSDataKeySymbolLoc_ptr = *(v22[1] + 24);
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v8)
  {
    +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    __break(1u);
  }

  v27 = *v8;
  v28[0] = MEMORY[0x1E695E118];
  v11 = MEMORY[0x1E695DF20];
  v12 = v27;
  v13 = [v11 dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__BYManagedAppleIDBootstrap_recoverEMCSWithCompletion___block_invoke;
  v16[3] = &unk_1E7D02DE8;

  v17 = completionCopy;
  v14 = completionCopy;
  [v7 recoverWithInfo:v13 completionBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __55__BYManagedAppleIDBootstrap_recoverEMCSWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v7 = 0;
      v8 = v5;
    }

    else if (v5)
    {
      v9 = MEMORY[0x1E696AEC0];
      v3 = [v5 domain];
      v8 = [v9 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v5, "code")];
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "EMCS recovery completed with error: %{public}@", buf, 0xCu);
    if (v7)
    {
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5 == 0, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_createAppleAccountWithAuthenticationResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  resultsCopy = results;
  kdebug_trace();
  v8 = objc_alloc_init(getACAccountStoreClass());
  v9 = [(BYManagedAppleIDBootstrap *)self _authenticationContextWithAuthenticationResults:resultsCopy];

  v10 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:v8];
  v11 = *MEMORY[0x1E698C218];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__BYManagedAppleIDBootstrap__createAppleAccountWithAuthenticationResults_completion___block_invoke;
  v13[3] = &unk_1E7D02C10;
  v14 = completionCopy;
  v12 = completionCopy;
  [v10 signInService:v11 withContext:v9 completion:v13];
}

void __85__BYManagedAppleIDBootstrap__createAppleAccountWithAuthenticationResults_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v8 = 0;
      v9 = v6;
    }

    else if (v6)
    {
      v10 = MEMORY[0x1E696AEC0];
      v3 = [v6 domain];
      v9 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v6, "code")];
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Finished signing in iCloud account with success: %d, error: %{public}@", buf, 0x12u);
    if (v8)
    {
    }
  }

  kdebug_trace();
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_registerForStartupCompletionNotificationWithTask:(id)task
{
  taskCopy = task;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  uTF8String = [@"com.apple.LoginKit.isLoggedIn" UTF8String];
  notificationQueue = [(BYManagedAppleIDBootstrap *)self notificationQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __79__BYManagedAppleIDBootstrap__registerForStartupCompletionNotificationWithTask___block_invoke;
  handler[3] = &unk_1E7D02E10;
  v7 = taskCopy;
  v16 = v7;
  v17 = v18;
  LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &self->_notifyToken, notificationQueue, handler);

  if (uTF8String)
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BYManagedAppleIDBootstrap _registerForStartupCompletionNotificationWithTask:v8];
    }
  }

  v9 = dispatch_time(0, 30000000000);
  notificationQueue2 = [(BYManagedAppleIDBootstrap *)self notificationQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__BYManagedAppleIDBootstrap__registerForStartupCompletionNotificationWithTask___block_invoke_85;
  v12[3] = &unk_1E7D02E38;
  v13 = v7;
  v14 = v18;
  v11 = v7;
  dispatch_after(v9, notificationQueue2, v12);

  _Block_object_dispose(v18, 8);
}

uint64_t __79__BYManagedAppleIDBootstrap__registerForStartupCompletionNotificationWithTask___block_invoke(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "User logged in notification received", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      result = (*(result + 16))();
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t __79__BYManagedAppleIDBootstrap__registerForStartupCompletionNotificationWithTask___block_invoke_85(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Stop waiting for startup completion", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      result = (*(result + 16))();
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)_upgradeShortLivedTokenCompletion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Running silent short-lived token upgrade...", buf, 2u);
  }

  v32 = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __AppleAccountLibraryCore_block_invoke;
    v42 = &__block_descriptor_40_e5_v8__0l;
    v43 = &v32;
    *v36 = xmmword_1E7D02F90;
    v37 = 0;
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
    v5 = v32;
    if (AppleAccountLibraryCore_frameworkLibrary)
    {
      if (!v32)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v24 = v32;
      v5 = abort_report_np();
      __break(1u);
    }

    free(v5);
  }

LABEL_6:
  shortLivedToken = [(BYManagedAppleIDBootstrap *)self shortLivedToken];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentUser = [mEMORY[0x1E69DF068] currentUser];
  username = [currentUser username];
  alternateDSID = [currentUser alternateDSID];
  v11 = _BYLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = username;
    *&buf[12] = 2112;
    *&buf[14] = alternateDSID;
    *&buf[22] = 2112;
    v42 = shortLivedToken;
    _os_log_debug_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEBUG, "Username: %@, altDSID: %@, SLT: %@", buf, 0x20u);
  }

  if (username && alternateDSID && shortLivedToken)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__1;
    v43 = __Block_byref_object_dispose__1;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v12 = getAKAppleIDAuthenticationContextClass_softClass;
    v35 = getAKAppleIDAuthenticationContextClass_softClass;
    if (!getAKAppleIDAuthenticationContextClass_softClass)
    {
      *v36 = MEMORY[0x1E69E9820];
      *&v36[8] = 3221225472;
      v37 = __getAKAppleIDAuthenticationContextClass_block_invoke;
      v38 = &unk_1E7D02730;
      v39 = &v32;
      __getAKAppleIDAuthenticationContextClass_block_invoke(v36);
      v12 = v33[3];
    }

    v13 = v12;
    _Block_object_dispose(&v32, 8);
    v44 = objc_alloc_init(v12);
    [*(*&buf[8] + 40) setShouldPreventInteractiveAuth:1];
    [*(*&buf[8] + 40) setUsername:username];
    [*(*&buf[8] + 40) _setShortLivedToken:shortLivedToken];
    [*(*&buf[8] + 40) setAltDSID:alternateDSID];
    [*(*&buf[8] + 40) setShouldUpdatePersistentServiceTokens:1];
    [(BYManagedAppleIDBootstrap *)self _modifyAuthenticationContextIfNeeded:*(*&buf[8] + 40)];
    v14 = objc_alloc_init(getACAccountStoreClass());
    aa_primaryAppleAccount = [v14 aa_primaryAppleAccount];
    v16 = aa_primaryAppleAccount != 0;

    v17 = _BYLoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"NERP";
      if (aa_primaryAppleAccount)
      {
        v18 = @"YASE";
      }

      *v36 = 138412290;
      *&v36[4] = v18;
      _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, "Primary account exists: %@", v36, 0xCu);
    }

    if (!aa_primaryAppleAccount)
    {
      [*(*&buf[8] + 40) setFirstTimeLogin:1];
    }

    *v36 = 0;
    *&v36[8] = v36;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v40 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
    kdebug_trace();
    v19 = *(*&v36[8] + 40);
    v20 = *(*&buf[8] + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke;
    v26[3] = &unk_1E7D02ED8;
    v31 = v16;
    v28 = completionCopy;
    v26[4] = self;
    v21 = v14;
    v27 = v21;
    v29 = buf;
    v30 = v36;
    [v19 authenticateWithContext:v20 completion:v26];

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(buf, 8);
  }

  else if (completionCopy)
  {
    v22 = _BYLoggingFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, "Missing required data to do token upgrade", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Silent token upgrade error: %@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_9:
      v9();
    }
  }

  else
  {
    if (*(a1 + 72) != 1)
    {
      v11 = [v5 copy];
      v12 = *(a1 + 32);
      v13 = *(v12 + 48);
      *(v12 + 48) = v11;

      v14 = *(a1 + 32);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke_86;
      v20[3] = &unk_1E7D02EB0;
      v20[4] = v14;
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      [v14 _createAppleAccountWithAuthenticationResults:v5 completion:v20];

      goto LABEL_11;
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_9;
    }
  }

LABEL_11:
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = *MEMORY[0x1E69E9840];
}

void __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke_86(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__1;
    v15[4] = __Block_byref_object_dispose__1;
    v16 = os_transaction_create();
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    [v6 registerUserSwitchStakeHolder:*(a1 + 32)];

    v7 = [MEMORY[0x1E69DF090] taskWithName:@"BuddUserSwitchBlockingTask" reason:@"Post Startup tasks"];
    [v7 begin];
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke_2;
    v11[3] = &unk_1E7D02E88;
    v11[4] = v8;
    v12 = *(a1 + 40);
    v9 = v7;
    v13 = v9;
    v14 = v15;
    [v8 _registerForStartupCompletionNotificationWithTask:v11];

    _Block_object_dispose(v15, 8);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

void __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke_3;
  v6[3] = &unk_1E7D02E60;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 56);
  [v2 _runPostStartupTasksWithAccountStore:v3 completion:v6];
}

void __63__BYManagedAppleIDBootstrap__upgradeShortLivedTokenCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) end];
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  [v2 unregisterStakeHolder:*(a1 + 40) status:0 reason:@"Tasks completed"];

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)_languageConfigurationDictionary
{
  v2 = CFPreferencesCopyMultiple(&unk_1F30A7898, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  return v2;
}

- (void)writeAccountConfigurationIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([objc_opt_class() isMultiUser])
  {
    v5 = dispatch_get_global_queue(25, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__BYManagedAppleIDBootstrap_writeAccountConfigurationIfNeededWithCompletion___block_invoke;
    v6[3] = &unk_1E7D02F28;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(v5, v6);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __77__BYManagedAppleIDBootstrap_writeAccountConfigurationIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 currentUser];
  v4 = [v3 alternateDSID];

  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Write account configuration? altDSID = %@", &buf, 0xCu);
  }

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = CFPreferencesCopyMultiple(0, @"com.apple.purplebuddy", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    [v6 addEntriesFromDictionary:v7];
    v8 = [*(a1 + 32) buddyPreferences];
    v9 = [v8 preferences];
    [v6 addEntriesFromDictionary:v9];

    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SetupDone"];
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Writing defaults to IdMS...", &buf, 2u);
    }

    if (_BYLoggingEnabled())
    {
      v11 = _BYLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
      }
    }

    v12 = [*(a1 + 32) _languageConfigurationDictionary];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    getAKAppleIDAuthenticationControllerClass();
    v28 = objc_opt_new();
    v13 = *(*(&buf + 1) + 40);
    v14 = [v6 copy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__BYManagedAppleIDBootstrap_writeAccountConfigurationIfNeededWithCompletion___block_invoke_123;
    v19[3] = &unk_1E7D02F00;
    p_buf = &buf;
    v15 = v12;
    v20 = v15;
    v21 = v4;
    v22 = *(a1 + 40);
    [v13 setConfigurationInfo:v14 forIdentifier:@"com.apple.idms.config.BuddyData" forAltDSID:v21 completion:v19];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v16 = _BYLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, "No account altDSID, not writing configuration data.", &buf, 2u);
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __77__BYManagedAppleIDBootstrap_writeAccountConfigurationIfNeededWithCompletion___block_invoke_123(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Wrote Buddy data to IdMS, success = %d, error = %@", buf, 0x12u);
  }

  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__BYManagedAppleIDBootstrap_writeAccountConfigurationIfNeededWithCompletion___block_invoke_124;
  v13[3] = &unk_1E7D02C10;
  v14 = *(a1 + 48);
  [v7 setConfigurationInfo:v8 forIdentifier:@"com.apple.idms.config.Language" forAltDSID:v9 completion:v13];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x1E69E9840];
}

void __77__BYManagedAppleIDBootstrap_writeAccountConfigurationIfNeededWithCompletion___block_invoke_124(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Wrote Language data to IdMS, success = %d, error = %@", v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_fetchAKURLBagSynchronously
{
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v6 = 0;
  [mEMORY[0x1E698DDF8] requestNewURLBagIfNecessaryWithError:&v6];
  v3 = v6;

  if (v3)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BYManagedAppleIDBootstrap *)v3 _fetchAKURLBagSynchronously];
    }
  }

  return v3;
}

- (id)_authenticationContextWithAuthenticationResults:(id)results
{
  v3 = MEMORY[0x1E698C258];
  resultsCopy = results;
  v5 = objc_alloc_init(v3);
  [v5 setAuthenticationResults:resultsCopy];

  [v5 setShouldForceOperation:0];
  [v5 setOperationUIPermissions:0];

  return v5;
}

- (void)markUserWithManagedCredentials
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentUser = [mEMORY[0x1E69DF068] currentUser];

  [currentUser refetchUser];
  if (([currentUser hasManagedCredentials] & 1) == 0)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "User has a managed credential set up, update it", v6, 2u);
    }

    v5 = [currentUser mutableCopy];
    [v5 setHasManagedCredentials:1];
    [v5 commitChanges];
  }
}

- (void)_modifyAuthenticationContextIfNeeded:(id)needed
{
  neededCopy = needed;
  if (os_variant_has_internal_ui())
  {
    altDSID = [neededCopy altDSID];
    v4 = [altDSID containsString:@"restrictionlessLogin"];

    if (v4)
    {
      [neededCopy setAltDSID:0];
      _shortLivedToken = [neededCopy _shortLivedToken];
      [neededCopy _setPassword:_shortLivedToken];

      [neededCopy _setShortLivedToken:0];
    }
  }
}

void __127__BYManagedAppleIDBootstrap_runSilentLoginUpgradeIfNeededWithCompletion_shortLivedTokenUpgradeCompletion_willNotCompleteBlock___block_invoke_72_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to upgrade the short lived token due to error, but continuing anyway. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_fetchAKURLBagSynchronously
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Fetching AKURLBag failed with error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end