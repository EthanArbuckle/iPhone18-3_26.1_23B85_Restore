@interface SSAccountStore
+ (BOOL)URLResponseAllowsSilentAuthentication:(id)a3;
+ (BOOL)_accountDictionaryRepresentsActiveAccount:(id)a3 inKeyValueStore:(id)a4;
+ (BOOL)_accountDictionaryRepresentsActiveLockerAccount:(id)a3 inKeyValueStore:(id)a4;
+ (BOOL)_allowSilentPasswordAuthForAccount:(id)a3 withOptions:(id)a4;
+ (BOOL)_copyKVSDatabaseWithError:(id *)a3;
+ (BOOL)_shouldRemoveAccountDictionaryWithoutMigration:(id)a3 reason:(id *)a4;
+ (BOOL)areAccountStoreChangedNotificationsDisabled;
+ (BOOL)isExpiredForTokenType:(int64_t)a3;
+ (BOOL)migrateToAccountsFramework;
+ (BOOL)unitTestModeEnabled;
+ (id)_backingAccountForAccount:(id)a3;
+ (id)_copyKVSDatabasePath;
+ (id)_createAuthenticationContextForAccount:(id)a3 silentAuthentication:(BOOL)a4 options:(id)a5;
+ (id)_createAuthenticationController;
+ (id)_createUpdatedAccount:(id)a3 withAuthenticationResults:(id)a4 options:(id)a5;
+ (id)_hashedDescriptionFromAccountDictionary:(id)a3;
+ (id)_migrateAccountDictionary:(id)a3 fromKeyValueStore:(id)a4 originalActiveDSID:(id)a5 originalActiveLockerDSID:(id)a6 logKey:(id)a7 error:(id *)a8;
+ (id)_refreshAccount:(id)a3;
+ (id)_unitTestAccountsAccessQueue;
+ (id)defaultStore;
+ (id)existingDefaultStore;
+ (void)_addAccountToUnitTestStore:(id)a3;
+ (void)_cleanupActiveAccountsAfterMigrationWithActiveDSID:(id)a3 activeLockerDSID:(id)a4;
+ (void)_disableAccountStoreChangedNotifications;
+ (void)_enableAccountStoreChangedNotifications;
+ (void)_excludeCopyKVSDatabasePathFromBackups;
+ (void)_postAccountsChangedDarwinNotification;
+ (void)_postAccountsChangedInternalDarwinNotification;
+ (void)_removeAccountDictionary:(id)a3 fromKeyValueStore:(id)a4;
+ (void)_removeAccountFromUnitTestStore:(id)a3;
+ (void)_setActiveAccountIsManagedAppleIDPreference:(BOOL)a3;
+ (void)resetExpirationForTokenType:(int64_t)a3;
+ (void)setAuthenticationStartedDate:(id)a3;
+ (void)setUnitTestModeEnabled:(BOOL)a3;
- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6;
- (BOOL)isAuthenticationActive;
- (BOOL)isExpired;
- (BOOL)isExpiredForTokenType:(int64_t)a3;
- (BOOL)removeAccount:(id)a3 error:(id *)a4;
- (BOOL)repairAccountWithBrokenDSID:(id)a3;
- (BOOL)saveAccount:(id)a3 verifyCredentials:(BOOL)a4 error:(id *)a5;
- (NSArray)accounts;
- (SSAccount)activeAccount;
- (SSAccount)activeLockerAccount;
- (SSAccount)activeSandboxAccount;
- (SSAccount)demoAccount;
- (SSAccount)localiTunesAccount;
- (SSAccountStore)init;
- (SSKeyValueStore)keyValueStore;
- (SSPromise)accountsPromise;
- (SSPromise)localAccount;
- (id)_buyParamsForBuyParamsString:(id)a3;
- (id)_cachedAccounts;
- (id)_convertPasswordToPET:(id)a3 forAccount:(id)a4 options:(id)a5;
- (id)_optionsForProxiedAuthenticationWithVerifyCredentialsOptions:(id)a3;
- (id)_saveAccount:(id)a3 verifyCredentials:(BOOL)a4;
- (id)_saveAccountInUnitTestMode:(id)a3 ignoreValidationErrors:(BOOL)a4;
- (id)_shouldCreateNewAccountForAccount:(id)a3 options:(id)a4;
- (id)_updateAccountWithAuthKitViaPromptAuth:(id)a3 store:(id)a4 options:(id)a5;
- (id)_updateAccountWithAuthKitViaSilentAuth:(id)a3 options:(id)a4;
- (id)_updateAccountWithAuthKitViaSilentPETAuth:(id)a3 options:(id)a4;
- (id)_updateAccountWithAuthKitViaSilentPasswordAuth:(id)a3 options:(id)a4;
- (id)accountWithAccountName:(id)a3;
- (id)accountWithAccountName:(id)a3 scope:(int64_t)a4;
- (id)accountWithAltDSID:(id)a3;
- (id)accountWithAltDSID:(id)a3 scope:(int64_t)a4;
- (id)accountWithAltDSID:(id)a3 uniqueIdentifier:(id)a4 accountName:(id)a5 scope:(int64_t)a6;
- (id)accountWithUniqueIdentifier:(id)a3;
- (id)accountWithUniqueIdentifier:(id)a3 reloadIfNecessary:(BOOL)a4;
- (id)accountWithUniqueIdentifier:(id)a3 scope:(int64_t)a4;
- (id)addAccount:(id)a3;
- (id)iTunesStoreAccountType;
- (id)iTunesStoreAccountTypePromise;
- (id)setActiveAccount:(id)a3;
- (id)setActiveLockerAccount:(id)a3;
- (id)updateAccountWithAuthKit:(id)a3 store:(id)a4 options:(id)a5;
- (void)_postAccountStoreChangeNotification;
- (void)_postActiveAccountChangedNotification;
- (void)_postAuthenticationActivityNotification;
- (void)_recordAnalyticsForMetricsDialogEvent:(id)a3 withTopic:(id)a4;
- (void)_setCachedAccounts:(id)a3;
- (void)clearCachedAccounts;
- (void)dealloc;
- (void)getDefaultAccountNameUsingBlock:(id)a3;
- (void)removeAccount:(id)a3 completion:(id)a4;
- (void)removeAllAccountsWithCompletion:(id)a3;
- (void)removeCookiesForAccount:(id)a3 logKey:(id)a4;
- (void)resetExpiration;
- (void)resetExpirationForTokenType:(int64_t)a3;
- (void)resetLocalAccount;
- (void)saveAccount:(id)a3 verifyCredentials:(BOOL)a4 completion:(id)a5;
- (void)setAccountCredits:(id)a3 forAccountWithUniqueIdentifier:(id)a4;
- (void)setDefaultAccountName:(id)a3 completionBlock:(id)a4;
- (void)signOutAccount:(id)a3 completion:(id)a4;
- (void)signOutAllAccountsWithCompletionBlock:(id)a3;
@end

@implementation SSAccountStore

+ (id)defaultStore
{
  pthread_mutex_lock(&__DefaultStoreLock);
  if (!__DefaultStore)
  {
    v2 = objc_alloc_init(SSAccountStore);
    v3 = __DefaultStore;
    __DefaultStore = v2;
  }

  pthread_mutex_unlock(&__DefaultStoreLock);
  v4 = __DefaultStore;

  return v4;
}

- (SSAccountStore)init
{
  v16.receiver = self;
  v16.super_class = SSAccountStore;
  v2 = [(SSAccountStore *)&v16 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AccountsChanged, @"com.apple.itunesstored.accountschanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AccountsChangedInternal, @"com.apple.itunesstored.accountschanged.internal", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __ActiveAccountChanged, @"com.apple.StoreServices.SSAccountStore.activeaccountchanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authbegin", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authfail", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authfinish", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __AuthenticationStateChanged, @"com.apple.StoreServices.authsubmit", 0, CFNotificationSuspensionBehaviorCoalesce);
    v4 = MEMORY[0x1E69E96A8];
    v5 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.accountsCache", MEMORY[0x1E69E96A8]);
    accountsCacheAccessQueue = v2->_accountsCacheAccessQueue;
    v2->_accountsCacheAccessQueue = v5;

    v7 = [MEMORY[0x1E6959A48] defaultStore];
    backingAccountStore = v2->_backingAccountStore;
    v2->_backingAccountStore = v7;

    v9 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.fetchAccounts", v4);
    fetchAccountsQueue = v2->_fetchAccountsQueue;
    v2->_fetchAccountsQueue = v9;

    v11 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.metricsQueue", 0);
    metricsQueue = v2->_metricsQueue;
    v2->_metricsQueue = v11;

    v13 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.notificationQueue", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v13;
  }

  return v2;
}

- (SSAccount)activeAccount
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(SSAccountStore *)self accounts];
  v3 = [v2 _ss_firstObjectPassingTest:&__block_literal_global_192];

  v4 = +[SSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = v8;
    [v3 hashedDescription];
    v20 = 138543618;
    v21 = v8;
    v23 = v22 = 2114;
    LODWORD(v19) = 22;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v20, v19}];
    free(v10);
    SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v7);
  }

LABEL_12:
  v17 = [v3 copy];

  return v17;
}

- (NSArray)accounts
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = [(SSAccountStore *)self _cachedAccounts];
  v4 = +[SSLogConfig sharedAccountsConfig];
  v5 = v4;
  if (!v3)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v18 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v5 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      *v94 = 138543362;
      *&v94[4] = objc_opt_class();
      v21 = *&v94[4];
      LODWORD(v85) = 12;
      v83 = v94;
      v22 = _os_log_send_and_compose_impl();

      if (v22)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, v94, v85}];
        free(v22);
        SSFileLog(v5, @"%@", v24, v25, v26, v27, v28, v29, v23);
      }
    }

    else
    {
    }

    if ([objc_opt_class() unitTestModeEnabled])
    {
      v30 = +[SSLogConfig sharedAccountsConfig];
      if (!v30)
      {
        v30 = +[SSLogConfig sharedConfig];
      }

      v31 = [v30 shouldLog];
      if ([v30 shouldLogToDisk])
      {
        v32 = v31 | 2;
      }

      else
      {
        v32 = v31;
      }

      v33 = [v30 OSLogObject];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v32 &= 2u;
      }

      if (v32)
      {
        v34 = objc_opt_class();
        *v94 = 138543362;
        *&v94[4] = v34;
        v35 = v34;
        LODWORD(v85) = 12;
        v84 = v94;
        v36 = _os_log_send_and_compose_impl();

        if (!v36)
        {
LABEL_37:

          *v94 = 0;
          *&v94[8] = v94;
          *&v94[16] = 0x3032000000;
          v95 = __Block_byref_object_copy__19;
          v96 = __Block_byref_object_dispose__19;
          v97 = 0;
          v43 = [objc_opt_class() _unitTestAccountsAccessQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __26__SSAccountStore_accounts__block_invoke;
          block[3] = &unk_1E84AC2A8;
          block[4] = v94;
          dispatch_sync(v43, block);

          if (*(*&v94[8] + 40))
          {
            v44 = *(*&v94[8] + 40);
          }

          else
          {
            v44 = MEMORY[0x1E695E0F0];
          }

          [(SSAccountStore *)self _setCachedAccounts:v44, v84];
          v3 = *(*&v94[8] + 40);
          _Block_object_dispose(v94, 8);

          goto LABEL_77;
        }

        v33 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:{4, v94, v85}];
        free(v36);
        SSFileLog(v30, @"%@", v37, v38, v39, v40, v41, v42, v33);
      }

      goto LABEL_37;
    }

    v45 = [(SSAccountStore *)self backingAccountStore];
    v46 = [v45 _ss_accountTypeWithIdentifier:*MEMORY[0x1E6959930] error:0];

    v47 = [(SSAccountStore *)self backingAccountStore];
    v91 = 0;
    v48 = [v47 accountsWithAccountType:v46 options:1 error:&v91];
    v86 = v91;

    if (v48)
    {
LABEL_55:
      v63 = [v48 _ss_map:{&__block_literal_global_8, v83}];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v64 = [v63 countByEnumeratingWithState:&v87 objects:v93 count:16];
      if (v64)
      {
        v65 = *v88;
        do
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v88 != v65)
            {
              objc_enumerationMutation(v63);
            }

            v67 = *(*(&v87 + 1) + 8 * i);
            if ([v67 hasBrokenDSID])
            {
              [(SSAccountStore *)self repairAccountWithBrokenDSID:v67];
            }
          }

          v64 = [v63 countByEnumeratingWithState:&v87 objects:v93 count:16];
        }

        while (v64);
      }

      v68 = +[SSLogConfig sharedAccountsConfig];
      if (!v68)
      {
        v68 = +[SSLogConfig sharedConfig];
      }

      v69 = [v68 shouldLog];
      if ([v68 shouldLogToDisk])
      {
        v70 = v69 | 2;
      }

      else
      {
        v70 = v69;
      }

      v71 = [v68 OSLogObject];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = v70;
      }

      else
      {
        v72 = v70 & 2;
      }

      if (v72)
      {
        v73 = objc_opt_class();
        *v94 = 138543362;
        *&v94[4] = v73;
        v74 = v73;
        LODWORD(v85) = 12;
        v75 = _os_log_send_and_compose_impl();

        if (!v75)
        {
LABEL_76:

          [(SSAccountStore *)self _setCachedAccounts:v63];
          v3 = v63;

          goto LABEL_77;
        }

        v71 = [MEMORY[0x1E696AEC0] stringWithCString:v75 encoding:{4, v94, v85}];
        free(v75);
        SSFileLog(v68, @"%@", v76, v77, v78, v79, v80, v81, v71);
      }

      goto LABEL_76;
    }

    v49 = +[SSLogConfig sharedAccountsConfig];
    if (!v49)
    {
      v49 = +[SSLogConfig sharedConfig];
    }

    v50 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      v51 = v50 | 2;
    }

    else
    {
      v51 = v50;
    }

    v52 = [v49 OSLogObject];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = v51;
    }

    else
    {
      v53 = v51 & 2;
    }

    if (v53)
    {
      v54 = objc_opt_class();
      *v94 = 138543618;
      *&v94[4] = v54;
      *&v94[12] = 2114;
      *&v94[14] = v86;
      v55 = v54;
      LODWORD(v85) = 22;
      v83 = v94;
      v56 = _os_log_send_and_compose_impl();

      if (!v56)
      {
LABEL_54:

        goto LABEL_55;
      }

      v52 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:{4, v94, v85}];
      free(v56);
      SSFileLog(v49, @"%@", v57, v58, v59, v60, v61, v62, v52);
    }

    goto LABEL_54;
  }

  if (!v4)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v94 = 138543362;
    *&v94[4] = objc_opt_class();
    v9 = *&v94[4];
    LODWORD(v85) = 12;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v94, v85}];
      free(v10);
      SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
    }
  }

  else
  {
  }

LABEL_77:

  return v3;
}

- (id)_cachedAccounts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  v3 = [(SSAccountStore *)self accountsCacheAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__SSAccountStore__cachedAccounts__block_invoke;
  v6[3] = &unk_1E84ABFD8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__SSAccountStore__cachedAccounts__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isInProcessCacheDisabled])
  {
    v2 = +[SSLogConfig sharedAccountsConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v6 = v20;
      LODWORD(v17) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_13:

        return;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v19, v17}];
      free(v7);
      SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
    }

    goto LABEL_13;
  }

  v18 = [*(a1 + 32) accountsCache];
  v14 = [v18 copy];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

+ (BOOL)unitTestModeEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [a1 _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSAccountStore_unitTestModeEnabled__block_invoke;
  block[3] = &unk_1E84AC2A8;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (id)_unitTestAccountsAccessQueue
{
  if (_unitTestAccountsAccessQueue_onceToken != -1)
  {
    +[SSAccountStore _unitTestAccountsAccessQueue];
  }

  v3 = _unitTestAccountsAccessQueue_sUnitTestAccountsAccessQueue;

  return v3;
}

void __46__SSAccountStore__unitTestAccountsAccessQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.unitTestAccountsAccessQueue", MEMORY[0x1E69E96A8]);
  v1 = _unitTestAccountsAccessQueue_sUnitTestAccountsAccessQueue;
  _unitTestAccountsAccessQueue_sUnitTestAccountsAccessQueue = v0;
}

SSAccount *__26__SSAccountStore_accounts__block_invoke_186(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SSAccount alloc] initWithBackingAccount:v2];

  return v3;
}

- (SSPromise)localAccount
{
  v3 = [(SSAccountStore *)self iTunesStoreAccountTypePromise];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__SSAccountStore_localAccount__block_invoke;
  v6[3] = &unk_1E84AE8C0;
  v6[4] = self;
  v4 = [v3 thenWithBlock:v6];

  return v4;
}

- (id)iTunesStoreAccountTypePromise
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  if (iTunesStoreAccountTypePromise_onceToken != -1)
  {
    [SSAccountStore iTunesStoreAccountTypePromise];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_2;
  block[3] = &unk_1E84AC2A8;
  block[4] = &v11;
  dispatch_sync(iTunesStoreAccountTypePromise_accountTypeQueue, block);
  v3 = v12[5];
  if (!v3)
  {
    v4 = objc_alloc_init(SSPromise);
    v5 = v12[5];
    v12[5] = v4;

    [v12[5] addSuccessBlock:&__block_literal_global_205];
    v6 = [(SSAccountStore *)self backingAccountStore];
    v7 = [v12[5] completionHandlerAdapter];
    [v6 accountTypeWithIdentifier:*MEMORY[0x1E6959930] completion:v7];

    v3 = v12[5];
  }

  v8 = v3;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.sAccountType", 0);
  v1 = iTunesStoreAccountTypePromise_accountTypeQueue;
  iTunesStoreAccountTypePromise_accountTypeQueue = v0;
}

void __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_2(uint64_t a1)
{
  if (iTunesStoreAccountTypePromise_sAccountType)
  {
    v2 = [SSPromise promiseWithResult:?];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

SSPromise *__30__SSAccountStore_localAccount__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 backingAccountStore];
  v5 = [v4 ams_localiTunesAccountForAccountType:v3];

  v6 = objc_alloc_init(SSPromise);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __30__SSAccountStore_localAccount__block_invoke_2;
  v14[3] = &unk_1E84AE898;
  v7 = v6;
  v15 = v7;
  [v5 addSuccessBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__SSAccountStore_localAccount__block_invoke_3;
  v12[3] = &unk_1E84AD730;
  v8 = v7;
  v13 = v8;
  [v5 addErrorBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = iTunesStoreAccountTypePromise_accountTypeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SSAccountStore_iTunesStoreAccountTypePromise__block_invoke_4;
  block[3] = &unk_1E84AC050;
  v6 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
}

void __30__SSAccountStore_localAccount__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[SSAccount alloc] initWithBackingAccount:v3];

  [v2 finishWithResult:v4];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.accountschanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.accountschanged.internal", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.SSAccountStore.activeaccountchanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authbegin", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authfail", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authfinish", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.authsubmit", 0);
  v4.receiver = self;
  v4.super_class = SSAccountStore;
  [(SSAccountStore *)&v4 dealloc];
}

- (SSKeyValueStore)keyValueStore
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_keyValueStore)
  {
    v3 = objc_alloc_init(SSKeyValueStore);
    keyValueStore = v2->_keyValueStore;
    v2->_keyValueStore = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_keyValueStore;

  return v5;
}

void __26__SSAccountStore_accounts__block_invoke(uint64_t a1)
{
  v5 = [sUnitTestAccounts allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SSPromise)accountsPromise
{
  v3 = objc_alloc_init(SSPromise);
  objc_initWeak(&location, self);
  v4 = [(SSAccountStore *)self fetchAccountsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SSAccountStore_accountsPromise__block_invoke;
  block[3] = &unk_1E84AD870;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __33__SSAccountStore_accountsPromise__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained accounts];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 finishWithResult:v2 error:0];
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v3 finishWithResult:0 error:v4];
  }
}

- (id)accountWithAccountName:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SSAccountStore *)self accounts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v12 = [v11 accountName];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        v14 = v11;

        v8 = v14;
        if (![v14 accountScope])
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v14 = v8;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 copy];

  return v15;
}

- (id)accountWithAccountName:(id)a3 scope:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
    v8 = [v7 ams_iTunesAccountWithUsername:v6];
    if (v8)
    {
      v9 = [[SSAccount alloc] initWithBackingAccount:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [(SSAccountStore *)self accounts];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v14 accountName];
          if ([v15 isEqualToString:v6])
          {
            v16 = [v14 accountScope];

            if (v16 == a4)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

LABEL_15:

    v9 = [v11 copy];
  }

  return v9;
}

- (id)accountWithAltDSID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SSAccountStore *)self accounts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v12 = [v11 altDSID];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        v14 = v11;

        v8 = v14;
        if (![v14 accountScope])
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v14 = v8;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 copy];

  return v15;
}

- (id)accountWithAltDSID:(id)a3 scope:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
    v8 = [v7 ams_iTunesAccountWithAltDSID:v6];
    if (v8)
    {
      v9 = [[SSAccount alloc] initWithBackingAccount:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [(SSAccountStore *)self accounts];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v14 altDSID];
          if ([v15 isEqualToString:v6])
          {
            v16 = [v14 accountScope];

            if (v16 == a4)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

LABEL_15:

    v9 = [v11 copy];
  }

  return v9;
}

- (id)accountWithAltDSID:(id)a3 uniqueIdentifier:(id)a4 accountName:(id)a5 scope:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a3 || v10 || v11)
  {
    v14 = [(SSAccountStore *)self accountWithAltDSID:a3 scope:a6];
    if (!v14)
    {
      v14 = [(SSAccountStore *)self accountWithUniqueIdentifier:v10 scope:a6];
      if (!v14)
      {
        v14 = [(SSAccountStore *)self accountWithAccountName:v12 scope:a6];
      }
    }

    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)accountWithUniqueIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(SSAccountStore *)self accounts];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v18;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 isEqualToNumber:v4];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
          if (![v14 accountScope])
          {
            break;
          }
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v14 = v8;
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)accountWithUniqueIdentifier:(id)a3 scope:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
    v8 = [v7 ams_iTunesAccountWithDSID:v6];
    if (v8)
    {
      v9 = [[SSAccount alloc] initWithBackingAccount:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [(SSAccountStore *)self accounts];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v14 uniqueIdentifier];
          if ([v15 isEqual:v6])
          {
            v16 = [v14 accountScope];

            if (v16 == a4)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

LABEL_15:

    v9 = [v11 copy];
  }

  return v9;
}

- (SSAccount)localiTunesAccount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SSAccountStore *)self accounts];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 backingAccount];
        v8 = [v7 ams_isLocalAccount];

        if (v8)
        {
          v3 = [v6 copy];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (SSAccount)activeSandboxAccount
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
  v3 = [v2 ams_activeiTunesAccount];

  if (v3)
  {
    v4 = [[SSAccount alloc] initWithBackingAccount:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SSAccount)activeLockerAccount
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [(SSAccountStore *)self activeAccount];
  if ([v2 isActiveLockerAccount])
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[SSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = v8;
    [v3 hashedDescription];
    v19 = 138543618;
    v20 = v8;
    v22 = v21 = 2114;
    LODWORD(v18) = 22;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_15;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v19, v18}];
    free(v10);
    SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v7);
  }

LABEL_15:

  return v3;
}

- (BOOL)isExpired
{
  v2 = objc_opt_class();

  return [v2 isExpired];
}

- (void)resetLocalAccount
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v35 = 138543362;
    v36 = objc_opt_class();
    v7 = v36;
    LODWORD(v33) = 12;
    v32 = &v35;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v35, v33}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v6);
  }

LABEL_12:
  v15 = [(SSAccountStore *)self localAccount];
  v16 = [v15 resultWithError:0];

  [v16 setStoreFrontIdentifier:0];
  v34 = 0;
  v17 = [(SSAccountStore *)self saveAccount:v16 verifyCredentials:0 error:&v34];
  v18 = v34;
  if (!v17)
  {
    v19 = +[SSLogConfig sharedAccountsConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v35 = 138543618;
      v36 = v23;
      v37 = 2114;
      v38 = v18;
      v24 = v23;
      LODWORD(v33) = 22;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_24:

        goto LABEL_25;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v35, v33}];
      free(v25);
      SSFileLog(v19, @"%@", v26, v27, v28, v29, v30, v31, v22);
    }

    goto LABEL_24;
  }

LABEL_25:
}

+ (BOOL)URLResponseAllowsSilentAuthentication:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (v3 && (isKindOfClass & 1) != 0)
  {
    v6 = [v3 itunes_allHeaderFields];
    v7 = [v6 objectForKeyedSubscript:@"X-Apple-Allow-Auth-Types"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 componentsSeparatedByString:@" "];
      v5 = [v8 containsObject:@"silent"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)iTunesStoreAccountType
{
  v2 = [(SSAccountStore *)self iTunesStoreAccountTypePromise];
  v3 = [v2 resultWithError:0];

  return v3;
}

- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6
{
  v7 = a5;
  v8 = a6;
  v9 = [v8 clientInfo];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setClientInfo:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKey:@"metricsAuthenticationAttempts"];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v9 setObject:v10 forKey:@"metricsAuthenticationAttempts"];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v7;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:@"authenticate" forKey:@"targetId"];
  v13 = [MEMORY[0x1E695DF00] date];
  [v13 timeIntervalSince1970];
  v15 = v14;

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", (v15 * 1000.0)];
  [v12 setObject:v16 forKey:@"responseTime"];
  if (v11)
  {
    [v12 setObject:@"failure" forKey:@"result"];
    v17 = [v11 code];
    v18 = @"unknown";
    if (v17 == -7006)
    {
      v18 = @"invalidCredentials";
    }

    if (v17 == -7010)
    {
      v18 = @"badServerResponse";
    }

    if (v17 == -7028)
    {
      v19 = @"maxNumberOfAttemptsReached";
    }

    else
    {
      v19 = v18;
    }

    v20 = @"reason";
  }

  else
  {
    v19 = @"success";
    v20 = @"result";
  }

  [v12 setObject:v19 forKey:v20];

  if (v12)
  {
    [v10 addObject:v12];
  }

  return v11 == 0;
}

+ (BOOL)areAccountStoreChangedNotificationsDisabled
{
  v2 = CFPreferencesCopyAppValue(@"AccountsChangedNotificationsSuppressionStarted", @"com.apple.itunesstored");
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
    [v2 timeIntervalSinceReferenceDate];
    v7 = v5 - v6;

    v8 = v7 <= 60.0 && v7 >= 0.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)clearCachedAccounts
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    LODWORD(location[0]) = 138543362;
    *(location + 4) = objc_opt_class();
    v7 = *(location + 4);
    LODWORD(v17) = 12;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, location, v17}];
      free(v8);
      SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
    }
  }

  else
  {
  }

  objc_initWeak(location, self);
  v16 = [(SSAccountStore *)self accountsCacheAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSAccountStore_clearCachedAccounts__block_invoke;
  block[3] = &unk_1E84AD820;
  objc_copyWeak(&v19, location);
  dispatch_barrier_async(v16, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
}

void __37__SSAccountStore_clearCachedAccounts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAccountsCache:0];
}

+ (id)existingDefaultStore
{
  pthread_mutex_lock(&__DefaultStoreLock);
  v2 = __DefaultStore;
  pthread_mutex_unlock(&__DefaultStoreLock);

  return v2;
}

- (BOOL)repairAccountWithBrokenDSID:(id)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(SSAccountStore *)a2 repairAccountWithBrokenDSID:?];
  }

  if (([v5 isLocalAccount] & 1) == 0 && objc_msgSend(v5, "hasBrokenDSID"))
  {
    v6 = SSGenerateLogCorrelationString();
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [v5 hashedDescription];
      v116 = 138543874;
      v117 = v11;
      v118 = 2114;
      v119 = v6;
      v120 = 2114;
      v121 = v13;
      LODWORD(v111) = 32;
      v109 = &v116;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
        goto LABEL_16;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v116, v111}];
      free(v14);
      SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v10);
    }

LABEL_16:
    v21 = +[SSLogConfig sharedAccountsConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v116 = 138543618;
      v117 = v25;
      v118 = 2114;
      v119 = v6;
      v26 = v25;
      LODWORD(v111) = 22;
      v110 = &v116;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
        goto LABEL_27;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v116, v111}];
      free(v27);
      SSFileLog(v21, @"%@", v28, v29, v30, v31, v32, v33, v24);
    }

LABEL_27:
    v34 = [(SSAccountStore *)self backingAccountStore];
    v35 = [v5 backingAccount];
    v36 = [v34 _ss_IDMSAccountForAccount:v35 error:0];

    v37 = [v36 _ss_DSID];
    if (v37)
    {
LABEL_28:
      v38 = v37;
      goto LABEL_44;
    }

    v40 = +[SSLogConfig sharedAccountsConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v41 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v42 = v41 | 2;
    }

    else
    {
      v42 = v41;
    }

    v43 = [v40 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v45 = objc_opt_class();
      v116 = 138543618;
      v117 = v45;
      v118 = 2114;
      v119 = v6;
      v46 = v45;
      LODWORD(v111) = 22;
      v110 = &v116;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
        goto LABEL_42;
      }

      v43 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:{4, &v116, v111}];
      free(v47);
      SSFileLog(v40, @"%@", v48, v49, v50, v51, v52, v53, v43);
    }

LABEL_42:
    v54 = [(SSAccountStore *)self backingAccountStore];
    v55 = [v5 backingAccount];
    v56 = [v54 _ss_iCloudAccountForAccount:v55 error:0];

    v57 = [v56 _ss_DSID];
    if (v57)
    {
      v38 = v57;
      v36 = v56;
LABEL_44:
      [v5 setUniqueIdentifier:{v38, v110}];
      v115 = 0;
      v39 = [(SSAccountStore *)self saveAccount:v5 verifyCredentials:0 error:&v115];
      v113 = v115;
      v58 = +[SSLogConfig sharedAccountsConfig];
      v59 = v58;
      v114 = v36;
      if (v39)
      {
        v60 = v6;
        if (!v58)
        {
          v59 = +[SSLogConfig sharedConfig];
        }

        v61 = [v59 shouldLog];
        if ([v59 shouldLogToDisk])
        {
          v62 = v61 | 2;
        }

        else
        {
          v62 = v61;
        }

        v63 = [v59 OSLogObject];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v62;
        }

        else
        {
          v64 = v62 & 2;
        }

        if (v64)
        {
          v65 = objc_opt_class();
          v66 = v65;
          v67 = [v5 hashedDescription];
          v116 = 138543874;
          v117 = v65;
          v118 = 2114;
          v119 = v60;
          v120 = 2114;
          v121 = v67;
          LODWORD(v111) = 32;
          v68 = _os_log_send_and_compose_impl();

          v6 = v60;
          if (!v68)
          {
            v69 = v113;
            v36 = v114;
            goto LABEL_71;
          }

          v69 = v113;
LABEL_65:
          v63 = [MEMORY[0x1E696AEC0] stringWithCString:v68 encoding:{4, &v116, v111}];
          free(v68);
          SSFileLog(v59, @"%@", v75, v76, v77, v78, v79, v80, v63);
LABEL_69:

          goto LABEL_70;
        }

        v6 = v60;
      }

      else
      {
        v70 = v6;
        if (!v58)
        {
          v59 = +[SSLogConfig sharedConfig];
        }

        v71 = [v59 shouldLog];
        if ([v59 shouldLogToDisk])
        {
          v71 |= 2u;
        }

        v63 = [v59 OSLogObject];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v72 = v71;
        }

        else
        {
          v72 = v71 & 2;
        }

        if (v72)
        {
          v73 = objc_opt_class();
          v112 = v73;
          v74 = [v5 hashedDescription];
          v116 = 138544130;
          v117 = v73;
          v118 = 2114;
          v119 = v70;
          v120 = 2114;
          v121 = v74;
          v122 = 2114;
          v69 = v113;
          v123 = v113;
          LODWORD(v111) = 42;
          v68 = _os_log_send_and_compose_impl();

          v6 = v70;
          if (!v68)
          {
LABEL_70:
            v36 = v114;
LABEL_71:

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v6 = v70;
      }

      v69 = v113;
      goto LABEL_69;
    }

    v82 = +[SSLogConfig sharedAccountsConfig];
    if (!v82)
    {
      v82 = +[SSLogConfig sharedConfig];
    }

    v83 = [v82 shouldLog];
    if ([v82 shouldLogToDisk])
    {
      v84 = v83 | 2;
    }

    else
    {
      v84 = v83;
    }

    v85 = [v82 OSLogObject];
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      v84 &= 2u;
    }

    if (v84)
    {
      v86 = objc_opt_class();
      v116 = 138543618;
      v117 = v86;
      v118 = 2114;
      v119 = v6;
      v87 = v86;
      LODWORD(v111) = 22;
      v110 = &v116;
      v88 = _os_log_send_and_compose_impl();

      if (!v88)
      {
        goto LABEL_86;
      }

      v85 = [MEMORY[0x1E696AEC0] stringWithCString:v88 encoding:{4, &v116, v111}];
      free(v88);
      SSFileLog(v82, @"%@", v89, v90, v91, v92, v93, v94, v85);
    }

LABEL_86:
    v95 = [(SSAccountStore *)self backingAccountStore];
    v96 = [v5 backingAccount];
    v36 = [v95 _ss_appleAuthenticationAccountForAccount:v96 error:0];

    v37 = [v36 _ss_DSID];
    if (!v37)
    {
      v38 = +[SSLogConfig sharedAccountsConfig];
      if (!v38)
      {
        v38 = +[SSLogConfig sharedConfig];
      }

      v97 = [v38 shouldLog];
      if ([v38 shouldLogToDisk])
      {
        v98 = v97 | 2;
      }

      else
      {
        v98 = v97;
      }

      v99 = [v38 OSLogObject];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        v39 = v98;
      }

      else
      {
        v39 = v98 & 2;
      }

      if (v39)
      {
        v100 = objc_opt_class();
        v116 = 138543618;
        v117 = v100;
        v118 = 2114;
        v119 = v6;
        v101 = v100;
        LODWORD(v111) = 22;
        v102 = _os_log_send_and_compose_impl();

        if (!v102)
        {
          LOBYTE(v39) = 0;
          goto LABEL_73;
        }

        v69 = [MEMORY[0x1E696AEC0] stringWithCString:v102 encoding:{4, &v116, v111}];
        free(v102);
        SSFileLog(v38, @"%@", v103, v104, v105, v106, v107, v108, v69);
        LOBYTE(v39) = 0;
      }

      else
      {
        v69 = v99;
      }

LABEL_72:

LABEL_73:
      goto LABEL_74;
    }

    goto LABEL_28;
  }

  LOBYTE(v39) = 1;
LABEL_74:

  return v39;
}

+ (void)resetExpirationForTokenType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [@"LastAuthTime" stringByAppendingFormat:@"-%@", @"InAppPurchase"];
  }

  else
  {
    v3 = @"LastAuthTime";
  }

  CFPreferencesSetAppValue(v3, [MEMORY[0x1E695DF00] date], @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

- (id)accountWithUniqueIdentifier:(id)a3 reloadIfNecessary:(BOOL)a4
{
  v4 = [(SSAccountStore *)self accountWithUniqueIdentifier:a3, a4];
  v5 = [v4 copy];

  return v5;
}

- (void)getDefaultAccountNameUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SSAccountStore *)self keyValueStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SSAccountStore_getDefaultAccountNameUsingBlock___block_invoke;
  v7[3] = &unk_1E84AE870;
  v8 = v4;
  v6 = v4;
  [v5 getValueForDomain:@"com.apple.itunesstored" key:@"DefaultAccountName" usingBlock:v7];
}

uint64_t __50__SSAccountStore_getDefaultAccountNameUsingBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isAuthenticationActive
{
  v2 = CFPreferencesCopyAppValue(@"AuthenticationStarted", @"com.apple.itunesstored");
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
    [v2 timeIntervalSinceReferenceDate];
    v7 = v5 - v6;

    v8 = v7 <= 600.0 && v7 >= 0.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isExpiredForTokenType:(int64_t)a3
{
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  if (a3 == 1)
  {
    v5 = [@"LastAuthTime" stringByAppendingFormat:@"-%@", @"InAppPurchase"];
  }

  else
  {
    v5 = @"LastAuthTime";
  }

  v6 = CFPreferencesCopyAppValue(v5, @"com.apple.itunesstored");
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v6 timeIntervalSinceReferenceDate];
    v9 = v8;
    [a1 tokenExpirationInterval];
    v11 = Current > v9 + v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (SSAccount)demoAccount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SSAccountStore *)self accounts];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 backingAccount];
        v8 = [v7 ams_isDemoAccount];

        if (v8)
        {
          v3 = [v6 copy];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (BOOL)migrateToAccountsFramework
{
  v236 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SSKeyValueStore);
  v204 = [(SSKeyValueStore *)v3 accountDictionaries];
  if (![v204 count])
  {
    v120 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v120)
    {
      v120 = +[SSLogConfig sharedConfig];
    }

    v121 = [v120 shouldLog];
    if ([v120 shouldLogToDisk])
    {
      v122 = v121 | 2;
    }

    else
    {
      v122 = v121;
    }

    v123 = [v120 OSLogObject];
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v124 = v122;
    }

    else
    {
      v124 = v122 & 2;
    }

    if (v124)
    {
      v227 = 138543362;
      v228 = objc_opt_class();
      v125 = v228;
      LODWORD(v203) = 12;
      v126 = _os_log_send_and_compose_impl();

      if (!v126)
      {
LABEL_120:

        [a1 _excludeCopyKVSDatabasePathFromBackups];
        LOBYTE(v119) = 0;
        goto LABEL_184;
      }

      v123 = [MEMORY[0x1E696AEC0] stringWithCString:v126 encoding:{4, &v227, v203}];
      free(v126);
      SSFileLog(v120, @"%@", v127, v128, v129, v130, v131, v132, v123);
    }

    goto LABEL_120;
  }

  if (+[SSDevice deviceIsInternalBuild])
  {
    [a1 _copyKVSDatabaseWithError:0];
  }

  v4 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (v8)
  {
    v227 = 138543362;
    v228 = objc_opt_class();
    v9 = v228;
    LODWORD(v203) = 12;
    v197 = &v227;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_16;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v227, v203}];
    free(v10);
    SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v7);
  }

LABEL_16:
  v17 = +[SSAccountStore defaultStore];
  v18 = [v17 accountsCacheAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SSAccountStore_migrateToAccountsFramework__block_invoke;
  block[3] = &unk_1E84AC050;
  v207 = v17;
  v226 = v207;
  dispatch_sync(v18, block);

  v19 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = v20 | 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v21;
  }

  else
  {
    v23 = v21 & 2;
  }

  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = objc_opt_class();
  v25 = v24;
  v26 = [v204 count];
  v227 = 138543618;
  v228 = v24;
  v229 = 2048;
  v230 = v26;
  LODWORD(v203) = 22;
  v198 = &v227;
  v27 = _os_log_send_and_compose_impl();

  if (v27)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v227, v203}];
    free(v27);
    SSFileLog(v19, @"%@", v28, v29, v30, v31, v32, v33, v22);
LABEL_27:
  }

  v34 = [(SSKeyValueStore *)v3 iTunesValueForKey:@"DSPersonID" usedDomain:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v34 = 0;
  }

  v35 = [(SSKeyValueStore *)v3 iTunesValueForKey:@"ActiveLockerAccountID" usedDomain:0, v198];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v35 = 0;
  }

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v36 = v204;
  v208 = v35;
  v209 = v3;
  v214 = [v36 countByEnumeratingWithState:&v221 objects:v235 count:16];
  if (!v214)
  {

    v119 = 0;
    goto LABEL_123;
  }

  v206 = v34;
  v205 = 0;
  v212 = *v222;
  v215 = a1;
  v213 = v36;
  do
  {
    for (i = 0; i != v214; ++i)
    {
      if (*v222 != v212)
      {
        objc_enumerationMutation(v36);
      }

      v38 = *(*(&v221 + 1) + 8 * i);
      v39 = SSGenerateLogCorrelationString();
      v220 = 0;
      v40 = [a1 _shouldRemoveAccountDictionaryWithoutMigration:v38 reason:&v220];
      v41 = v220;
      if (v40)
      {
        v210 = v38;
        v42 = v3;
        v43 = v41;
        v44 = +[SSLogConfig sharedAccountsMigrationConfig];
        if (!v44)
        {
          v44 = +[SSLogConfig sharedConfig];
        }

        v45 = [v44 shouldLog];
        if ([v44 shouldLogToDisk])
        {
          v46 = v45 | 2;
        }

        else
        {
          v46 = v45;
        }

        v47 = [v44 OSLogObject];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v46;
        }

        else
        {
          v48 = v46 & 2;
        }

        if (v48)
        {
          v49 = objc_opt_class();
          v227 = 138543874;
          v228 = v49;
          v229 = 2114;
          v230 = v39;
          v231 = 2112;
          v50 = v43;
          v232 = v43;
          v51 = v49;
          LODWORD(v203) = 32;
          v199 = &v227;
          v52 = _os_log_send_and_compose_impl();

          v3 = v42;
          v53 = v210;
          if (v52)
          {
            v47 = [MEMORY[0x1E696AEC0] stringWithCString:v52 encoding:{4, &v227, v203}];
            free(v52);
            SSFileLog(v44, @"%@", v54, v55, v56, v57, v58, v59, v47);
            goto LABEL_73;
          }
        }

        else
        {
          v50 = v43;
          v3 = v42;
          v53 = v210;
LABEL_73:
        }

        [a1 _removeAccountDictionary:v53 fromKeyValueStore:v3];
        goto LABEL_92;
      }

      v211 = v41;
      v60 = [v207 accounts];
      v61 = [v60 _ss_map:&__block_literal_global_228];

      v62 = +[SSLogConfig sharedAccountsMigrationConfig];
      if (!v62)
      {
        v62 = +[SSLogConfig sharedConfig];
      }

      v63 = [v62 shouldLog];
      if ([v62 shouldLogToDisk])
      {
        v64 = v63 | 2;
      }

      else
      {
        v64 = v63;
      }

      v65 = [v62 OSLogObject];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v64;
      }

      else
      {
        v66 = v64 & 2;
      }

      if (v66)
      {
        v67 = objc_opt_class();
        v68 = v67;
        v69 = [v215 _hashedDescriptionFromAccountDictionary:v38];
        v227 = 138544130;
        v228 = v67;
        v3 = v209;
        v229 = 2114;
        v230 = v39;
        v231 = 2114;
        v232 = v69;
        v233 = 2112;
        v234 = v61;
        LODWORD(v203) = 42;
        v200 = &v227;
        v70 = _os_log_send_and_compose_impl();

        a1 = v215;
        if (!v70)
        {
          goto LABEL_61;
        }

        v65 = [MEMORY[0x1E696AEC0] stringWithCString:v70 encoding:{4, &v227, v203}];
        free(v70);
        SSFileLog(v62, @"%@", v71, v72, v73, v74, v75, v76, v65);
      }

LABEL_61:
      v219 = 0;
      v77 = [a1 _migrateAccountDictionary:v38 fromKeyValueStore:v3 originalActiveDSID:v206 originalActiveLockerDSID:v208 logKey:v39 error:&v219];
      v78 = v219;
      v79 = +[SSLogConfig sharedAccountsMigrationConfig];
      v80 = v79;
      if (!v77)
      {
        if (!v79)
        {
          v80 = +[SSLogConfig sharedConfig];
        }

        v93 = [v80 shouldLog];
        if ([v80 shouldLogToDisk])
        {
          v93 |= 2u;
        }

        v94 = [v80 OSLogObject];
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v95 = v93;
        }

        else
        {
          v95 = v93 & 2;
        }

        if (v95)
        {
          v96 = objc_opt_class();
          v227 = 138543874;
          v228 = v96;
          v229 = 2114;
          v230 = v39;
          v231 = 2112;
          v232 = v78;
          v97 = v96;
          LODWORD(v203) = 32;
          v199 = &v227;
          v98 = _os_log_send_and_compose_impl();

          v50 = v211;
          if (!v98)
          {
LABEL_90:

            a1 = v215;
            goto LABEL_91;
          }

          v94 = [MEMORY[0x1E696AEC0] stringWithCString:v98 encoding:{4, &v227, v203}];
          free(v98);
          SSFileLog(v80, @"%@", v99, v100, v101, v102, v103, v104, v94);
        }

        else
        {
          v50 = v211;
        }

        goto LABEL_90;
      }

      if (!v79)
      {
        v80 = +[SSLogConfig sharedConfig];
      }

      v81 = [v80 shouldLog];
      if ([v80 shouldLogToDisk])
      {
        v81 |= 2u;
      }

      v82 = [v80 OSLogObject];
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = v81;
      }

      else
      {
        v83 = v81 & 2;
      }

      if (!v83)
      {
        v50 = v211;
        goto LABEL_86;
      }

      v84 = objc_opt_class();
      v227 = 138543618;
      v228 = v84;
      v229 = 2114;
      v230 = v39;
      v85 = v84;
      LODWORD(v203) = 22;
      v199 = &v227;
      v86 = _os_log_send_and_compose_impl();

      v50 = v211;
      if (v86)
      {
        v82 = [MEMORY[0x1E696AEC0] stringWithCString:v86 encoding:{4, &v227, v203}];
        free(v86);
        SSFileLog(v80, @"%@", v87, v88, v89, v90, v91, v92, v82);
LABEL_86:
      }

      a1 = v215;
      v3 = v209;
      [v215 _removeAccountDictionary:v38 fromKeyValueStore:v209];
      v205 = 1;
LABEL_91:

LABEL_92:
      v36 = v213;
    }

    v214 = [v213 countByEnumeratingWithState:&v221 objects:v235 count:16];
  }

  while (v214);

  if (v205)
  {
    v105 = +[SSLogConfig sharedAccountsMigrationConfig];
    v34 = v206;
    if (!v105)
    {
      v105 = +[SSLogConfig sharedConfig];
    }

    v106 = [v105 shouldLog];
    if ([v105 shouldLogToDisk])
    {
      v107 = v106 | 2;
    }

    else
    {
      v107 = v106;
    }

    v108 = [v105 OSLogObject];
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      v109 = v107;
    }

    else
    {
      v109 = v107 & 2;
    }

    if (v109)
    {
      v110 = objc_opt_class();
      v227 = 138543362;
      v228 = v110;
      v111 = v110;
      LODWORD(v203) = 12;
      v199 = &v227;
      v112 = _os_log_send_and_compose_impl();

      if (v112)
      {
        v108 = [MEMORY[0x1E696AEC0] stringWithCString:v112 encoding:{4, &v227, v203}];
        free(v112);
        SSFileLog(v105, @"%@", v113, v114, v115, v116, v117, v118, v108);
        goto LABEL_106;
      }
    }

    else
    {
LABEL_106:
    }

    [a1 _cleanupActiveAccountsAfterMigrationWithActiveDSID:v206 activeLockerDSID:v208];
    v119 = 1;
  }

  else
  {
    v119 = 0;
    v34 = v206;
  }

LABEL_123:
  v133 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v133)
  {
    v133 = +[SSLogConfig sharedConfig];
  }

  v134 = [v133 shouldLog];
  if ([v133 shouldLogToDisk])
  {
    v135 = v134 | 2;
  }

  else
  {
    v135 = v134;
  }

  v136 = [v133 OSLogObject];
  if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
  {
    v137 = v135;
  }

  else
  {
    v137 = v135 & 2;
  }

  if (v137)
  {
    v138 = objc_opt_class();
    v227 = 138543362;
    v228 = v138;
    v139 = v138;
    LODWORD(v203) = 12;
    v201 = &v227;
    v140 = _os_log_send_and_compose_impl();

    if (v140)
    {
      v136 = [MEMORY[0x1E696AEC0] stringWithCString:v140 encoding:{4, &v227, v203}];
      free(v140);
      SSFileLog(v133, @"%@", v141, v142, v143, v144, v145, v146, v136);
      goto LABEL_134;
    }
  }

  else
  {
LABEL_134:
  }

  v147 = [v207 accountsCacheAccessQueue];
  v217[0] = MEMORY[0x1E69E9820];
  v217[1] = 3221225472;
  v217[2] = __44__SSAccountStore_migrateToAccountsFramework__block_invoke_229;
  v217[3] = &unk_1E84AC050;
  v148 = v207;
  v218 = v148;
  dispatch_sync(v147, v217);

  v149 = +[SSLogConfig sharedAccountsMigrationConfig];
  v150 = v149;
  v151 = v34;
  if (!v119)
  {
    if (!v149)
    {
      v150 = +[SSLogConfig sharedConfig];
    }

    v164 = [v150 shouldLog];
    if ([v150 shouldLogToDisk])
    {
      v164 |= 2u;
    }

    v165 = [v150 OSLogObject];
    if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
    {
      v166 = v164;
    }

    else
    {
      v166 = v164 & 2;
    }

    if (v166)
    {
      v167 = objc_opt_class();
      v227 = 138543362;
      v228 = v167;
      v168 = v167;
      LODWORD(v203) = 12;
      v202 = &v227;
      v169 = _os_log_send_and_compose_impl();

      if (!v169)
      {
LABEL_159:

        goto LABEL_160;
      }

      v165 = [MEMORY[0x1E696AEC0] stringWithCString:v169 encoding:{4, &v227, v203}];
      free(v169);
      SSFileLog(v150, @"%@", v170, v171, v172, v173, v174, v175, v165);
    }

    goto LABEL_159;
  }

  if (!v149)
  {
    v150 = +[SSLogConfig sharedConfig];
  }

  v152 = [v150 shouldLog];
  if ([v150 shouldLogToDisk])
  {
    v152 |= 2u;
  }

  v153 = [v150 OSLogObject];
  if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
  {
    v154 = v152;
  }

  else
  {
    v154 = v152 & 2;
  }

  if (v154)
  {
    v155 = objc_opt_class();
    v227 = 138543362;
    v228 = v155;
    v156 = v155;
    LODWORD(v203) = 12;
    v202 = &v227;
    v157 = _os_log_send_and_compose_impl();

    if (v157)
    {
      v153 = [MEMORY[0x1E696AEC0] stringWithCString:v157 encoding:{4, &v227, v203}];
      free(v157);
      SSFileLog(v150, @"%@", v158, v159, v160, v161, v162, v163, v153);
      goto LABEL_146;
    }
  }

  else
  {
LABEL_146:
  }

  [a1 _postAccountsChangedInternalDarwinNotification];
  [a1 _postAccountsChangedDarwinNotification];
LABEL_160:
  v176 = [(SSKeyValueStore *)v3 accountDictionaries];
  v216[0] = MEMORY[0x1E69E9820];
  v216[1] = 3221225472;
  v216[2] = __44__SSAccountStore_migrateToAccountsFramework__block_invoke_230;
  v216[3] = &__block_descriptor_40_e32___NSString_16__0__NSDictionary_8l;
  v216[4] = a1;
  v177 = [v176 _ss_map:v216];

  v178 = [v177 count];
  v179 = +[SSLogConfig sharedAccountsMigrationConfig];
  v180 = v179;
  if (v178)
  {
    if (!v179)
    {
      v180 = +[SSLogConfig sharedConfig];
    }

    v181 = [v180 shouldLog];
    if ([v180 shouldLogToDisk])
    {
      v181 |= 2u;
    }

    v182 = [v180 OSLogObject];
    if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
    {
      v183 = v181;
    }

    else
    {
      v183 = v181 & 2;
    }

    if (v183)
    {
      v184 = objc_opt_class();
      v227 = 138543618;
      v228 = v184;
      v229 = 2112;
      v230 = v177;
      v185 = v184;
      LODWORD(v203) = 22;
      goto LABEL_179;
    }

LABEL_181:
  }

  else
  {
    if (!v179)
    {
      v180 = +[SSLogConfig sharedConfig];
    }

    v186 = [v180 shouldLog];
    if ([v180 shouldLogToDisk])
    {
      v186 |= 2u;
    }

    v182 = [v180 OSLogObject];
    if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
    {
      v187 = v186;
    }

    else
    {
      v187 = v186 & 2;
    }

    if (!v187)
    {
      goto LABEL_181;
    }

    v188 = objc_opt_class();
    v227 = 138543362;
    v228 = v188;
    v185 = v188;
    LODWORD(v203) = 12;
LABEL_179:
    v189 = _os_log_send_and_compose_impl();

    if (v189)
    {
      v3 = v209;
      v182 = [MEMORY[0x1E696AEC0] stringWithCString:v189 encoding:{4, &v227, v203}];
      free(v189);
      SSFileLog(v180, @"%@", v190, v191, v192, v193, v194, v195, v182);
      goto LABEL_181;
    }

    v3 = v209;
  }

LABEL_184:
  return v119;
}

uint64_t __44__SSAccountStore_migrateToAccountsFramework__block_invoke_229(uint64_t a1)
{
  [*(a1 + 32) setAccountsCache:0];
  v2 = *(a1 + 32);

  return [v2 setInProcessCacheDisabled:0];
}

- (BOOL)removeAccount:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__19;
  v40 = __Block_byref_object_dispose__19;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = dispatch_semaphore_create(0);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __38__SSAccountStore_removeAccount_error___block_invoke;
  v28[3] = &unk_1E84AE928;
  v30 = &v36;
  v31 = &v32;
  v8 = v7;
  v29 = v8;
  [(SSAccountStore *)self removeAccount:v6 completion:v28];
  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = +[SSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    v12 = [v10 shouldLogToDisk];
    v13 = [v10 OSLogObject];
    v14 = v13;
    if (v12)
    {
      v11 |= 2u;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v15 = objc_opt_class();
      v16 = [v6 accountName];
      v17 = SSHashIfNeeded(v16);
      v42 = 138543618;
      v43 = v15;
      v44 = 2114;
      v45 = v17;
      LODWORD(v27) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v42, v27}];
      free(v18);
      SSFileLog(v10, @"%@", v19, v20, v21, v22, v23, v24, v14);
    }

    goto LABEL_12;
  }

LABEL_13:
  if (a4)
  {
    *a4 = v37[5];
  }

  v25 = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v25 & 1;
}

void __38__SSAccountStore_removeAccount_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)removeAccount:(id)a3 completion:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[SSLogConfig sharedAccountsConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [v6 accountName];
      SSHashIfNeeded(v15);
      v45 = 138543618;
      v46 = v13;
      v48 = v47 = 2114;
      LODWORD(v40) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
        goto LABEL_13;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v45, v40}];
      free(v16);
      SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v12);
    }

LABEL_13:
    v23 = [objc_opt_class() unitTestModeEnabled];
    v24 = objc_opt_class();
    v25 = v24;
    if (v23)
    {
      [v24 _removeAccountFromUnitTestStore:v6];
      __AccountsChangedInternal();
      if (([objc_opt_class() areAccountStoreChangedNotificationsDisabled] & 1) == 0)
      {
        __AccountsChanged();
      }

      if (v7)
      {
        v7[2](v7, 1, 0);
      }
    }

    else
    {
      v37 = [objc_opt_class() _backingAccountForAccount:v6];
      v38 = [(SSAccountStore *)self backingAccountStore];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __43__SSAccountStore_removeAccount_completion___block_invoke;
      v41[3] = &unk_1E84AE950;
      v44 = v25;
      v42 = v37;
      v43 = v7;
      v39 = v37;
      [v38 removeAccount:v39 withCompletionHandler:v41];
    }

    goto LABEL_32;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v26 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v9 OSLogObject];
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v27 &= 2u;
  }

  if (v27)
  {
    v45 = 138543362;
    v46 = objc_opt_class();
    v29 = v46;
    LODWORD(v40) = 12;
    v30 = _os_log_send_and_compose_impl();

    if (!v30)
    {
      goto LABEL_29;
    }

    v28 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v45, v40}];
    free(v30);
    SSFileLog(v9, @"%@", v31, v32, v33, v34, v35, v36, v28);
  }

LABEL_29:
  if (v7)
  {
    v7[2](v7, 0, 0);
  }

LABEL_32:
}

void __43__SSAccountStore_removeAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 description];
      SSHashIfNeeded(v14);
      v24 = 138543874;
      v25 = v11;
      v27 = v26 = 2114;
      v28 = 2112;
      v29 = v5;
      LODWORD(v23) = 32;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v24, v23}];
      free(v15);
      SSFileLog(v6, @"%@", v16, v17, v18, v19, v20, v21, v9);
    }

    goto LABEL_14;
  }

LABEL_15:
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, a2, v5);
  }
}

- (void)removeAllAccountsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SSAccountStore *)self accounts];
  objc_initWeak(&location, self);
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke;
  v9[3] = &unk_1E84AE9A0;
  objc_copyWeak(&v12, &location);
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = dispatch_group_create();
  v4 = dispatch_queue_create("com.apple.StoreServices.SSAccountStore.removeAccountsQueue", MEMORY[0x1E69E96A8]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke_2;
        block[3] = &unk_1E84AC028;
        block[4] = WeakRetained;
        block[5] = v10;
        dispatch_group_async(v3, v4, block);
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
  }

  v11 = dispatch_time(0, 300000000000);
  if (dispatch_group_wait(v3, v11))
  {
    v12 = +[SSLogConfig sharedAccountsConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = *(v29 + 32);
      v35 = 138543618;
      v36 = v17;
      v37 = 2112;
      v38 = v18;
      v19 = v17;
      LODWORD(v28) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_21:

        goto LABEL_22;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v35, v28}];
      free(v20);
      SSFileLog(v12, @"%@", v21, v22, v23, v24, v25, v26, v15);
    }

    goto LABEL_21;
  }

LABEL_22:
  v27 = *(v29 + 40);
  if (v27)
  {
    (*(v27 + 16))();
  }
}

void __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__SSAccountStore_removeAllAccountsWithCompletion___block_invoke_3;
  v24[3] = &unk_1E84AE978;
  v5 = v2;
  v25 = v5;
  [v3 removeAccount:v4 completion:v24];
  v6 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v13 = v11;
      v14 = [v12 description];
      v15 = SSHashIfNeeded(v14);
      v26 = 138543618;
      v27 = v11;
      v28 = 2114;
      v29 = v15;
      LODWORD(v23) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v26, v23}];
      free(v16);
      SSFileLog(v7, @"%@", v17, v18, v19, v20, v21, v22, v10);
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)removeCookiesForAccount:(id)a3 logKey:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[SSLogConfig sharedAccountsCookiesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = v11;
  v13 = [v5 accountName];
  SSHashIfNeeded(v13);
  v23 = 138543874;
  v24 = v11;
  v25 = 2114;
  v26 = v6;
  v28 = v27 = 2114;
  LODWORD(v22) = 32;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v23, v22}];
    free(v14);
    SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v10);
LABEL_11:
  }

  v21 = +[SSVCookieStorage sharedStorage];
  [v21 removeCookiesWithAccount:v5];
}

- (void)resetExpiration
{
  v2 = objc_opt_class();

  [v2 resetExpiration];
}

- (void)resetExpirationForTokenType:(int64_t)a3
{
  v4 = objc_opt_class();

  [v4 resetExpirationForTokenType:a3];
}

- (void)saveAccount:(id)a3 verifyCredentials:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SSAccountStore *)self _saveAccount:a3 verifyCredentials:v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SSAccountStore_saveAccount_verifyCredentials_completion___block_invoke;
  v11[3] = &unk_1E84AE9C8;
  v12 = v8;
  v10 = v8;
  [v9 addFinishBlock:v11];
}

void __59__SSAccountStore_saveAccount_verifyCredentials_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 BOOLValue], v5);
  }
}

- (BOOL)saveAccount:(id)a3 verifyCredentials:(BOOL)a4 error:(id *)a5
{
  v6 = [(SSAccountStore *)self _saveAccount:a3 verifyCredentials:a4];
  v7 = [v6 resultWithTimeout:a5 error:5.0];
  v8 = [v7 BOOLValue];

  return v8;
}

- (void)setDefaultAccountName:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSAccountStore *)self keyValueStore];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SSAccountStore_setDefaultAccountName_completionBlock___block_invoke;
  v10[3] = &unk_1E84AE9F0;
  v11 = v6;
  v9 = v6;
  [v8 setValue:v7 forDomain:@"com.apple.itunesstored" key:@"DefaultAccountName" completionBlock:v10];
}

uint64_t __56__SSAccountStore_setDefaultAccountName_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)setAuthenticationStartedDate:(id)a3
{
  CFPreferencesSetAppValue(@"AuthenticationStarted", a3, @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

- (void)signOutAccount:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = a4;
  v7 = SSGenerateLogCorrelationString();
  v8 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v9 |= 2u;
  }

  v10 = [v8 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [v6 accountName];
    SSHashIfNeeded(v14);
    *location = 138543874;
    *&location[4] = v12;
    v43 = 2114;
    v44 = v7;
    v46 = v45 = 2114;
    LODWORD(v31) = 32;
    v15 = _os_log_send_and_compose_impl();

    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, location, v31}];
      free(v15);
      SSFileLog(v8, @"%@", v17, v18, v19, v20, v21, v22, v16);
    }
  }

  else
  {
  }

  [v6 setActive:0];
  v23 = objc_alloc_init(SSPromise);
  objc_initWeak(location, self);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __44__SSAccountStore_signOutAccount_completion___block_invoke;
  v37[3] = &unk_1E84AEA18;
  objc_copyWeak(&v41, location);
  v24 = v7;
  v38 = v24;
  v25 = v6;
  v39 = v25;
  v26 = v32;
  v40 = v26;
  [(SSPromise *)v23 addSuccessBlock:v37];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __44__SSAccountStore_signOutAccount_completion___block_invoke_239;
  v33[3] = &unk_1E84AEA40;
  v33[4] = self;
  v27 = v24;
  v34 = v27;
  v28 = v25;
  v35 = v28;
  v29 = v26;
  v36 = v29;
  [(SSPromise *)v23 addErrorBlock:v33];
  v30 = [(SSPromise *)v23 BOOLCompletionHandlerAdapter];
  [(SSAccountStore *)self saveAccount:v28 verifyCredentials:0 completion:v30];

  objc_destroyWeak(&v41);
  objc_destroyWeak(location);
}

void __44__SSAccountStore_signOutAccount_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v8;
    v12 = [v9 accountName];
    SSHashIfNeeded(v12);
    v22 = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v10;
    v27 = v26 = 2114;
    LODWORD(v21) = 32;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_13;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v21}];
    free(v13);
    SSFileLog(v3, @"%@", v14, v15, v16, v17, v18, v19, v6);
  }

LABEL_13:
  [WeakRetained removeCookiesForAccount:*(a1 + 40) logKey:*(a1 + 32)];
  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, 1, 0);
  }
}

void __44__SSAccountStore_signOutAccount_completion___block_invoke_239(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v11 = a1[5];
    v10 = a1[6];
    v12 = v9;
    v13 = [v10 accountName];
    SSHashIfNeeded(v13);
    v23 = 138544130;
    v24 = v9;
    v25 = 2114;
    v26 = v11;
    v28 = v27 = 2114;
    v29 = 2112;
    v30 = v3;
    LODWORD(v22) = 42;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_13;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v23, v22}];
    free(v14);
    SSFileLog(v4, @"%@", v15, v16, v17, v18, v19, v20, v7);
  }

LABEL_13:
  v21 = a1[7];
  if (v21)
  {
    (*(v21 + 16))(v21, 0, v3);
  }
}

- (id)updateAccountWithAuthKit:(id)a3 store:(id)a4 options:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:@"SSAccountStoreAuthKitSkipAuthKitKey"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      [v10 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *location = 138543618;
      *&location[4] = self;
      v46 = v45 = 2114;
      LODWORD(v35) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (v18)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, location, v35}];
        free(v18);
        SSFileLog(v13, @"%@", v20, v21, v22, v23, v24, v25, v19);
      }
    }

    else
    {
    }

    v32 = [SSUpdateAccountResponse alloc];
    v33 = [v10 objectForKeyedSubscript:@"SSAccountStoreAuthKitCredentialSource"];
    v26 = -[SSUpdateAccountResponse initWithUpdatedAccount:credentialSource:](v32, "initWithUpdatedAccount:credentialSource:", v8, [v33 unsignedIntegerValue]);

    v31 = [SSPromise promiseWithResult:v26];
  }

  else
  {
    v26 = [v10 objectForKeyedSubscript:@"SSAccountStoresProxiedDeviceFlagKey"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(SSUpdateAccountResponse *)v26 BOOLValue])
    {
      v27 = [v10 mutableCopy];
      [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];

      v10 = v27;
    }

    v28 = [(SSAccountStore *)self _shouldCreateNewAccountForAccount:v8 options:v10];
    objc_initWeak(location, self);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke;
    v39[3] = &unk_1E84AEA90;
    objc_copyWeak(&v43, location);
    v29 = v10;
    v40 = v29;
    v41 = v8;
    v42 = v9;
    v30 = [v28 thenWithBlock:v39];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_267;
    v36[3] = &unk_1E84AEAB8;
    objc_copyWeak(&v38, location);
    v10 = v29;
    v37 = v10;
    v31 = [v30 thenWithBlock:v36];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
  }

  return v31;
}

id __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 integerValue];

  if (v5 == 3)
  {
    v19 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v41 = 138543618;
      v42 = WeakRetained;
      v44 = v43 = 2114;
      LODWORD(v37) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_26:

        v17 = [MEMORY[0x1E698C7D8] bagForProfile:@"Accounts" profileVersion:@"1"];
        v30 = [v17 URLForKey:@"signup"];
        v31 = [v30 valuePromise];

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_256;
        v38[3] = &unk_1E84AEA68;
        v38[4] = WeakRetained;
        v39 = *(a1 + 32);
        [v31 resultWithCompletion:v38];
        v32 = SSError(@"SSErrorDomain", 140, 0, @"The user opted to create a new account.");
        v18 = [SSPromise promiseWithError:v32];

        goto LABEL_28;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v41, v37}];
      free(v23);
      SSFileLog(v19, @"%@", v24, v25, v26, v27, v28, v29, v22);
    }

    goto LABEL_26;
  }

  if (v5 == 2)
  {
    v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v41 = 138543618;
      v42 = WeakRetained;
      v44 = v43 = 2114;
      LODWORD(v37) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_14:

        v17 = SSError(@"SSErrorDomain", 140, 0, @"The user cancelled the create account dialog.");
        v18 = [SSPromise promiseWithError:v17];
        goto LABEL_29;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v41, v37}];
      free(v10);
      SSFileLog(v6, @"%@", v11, v12, v13, v14, v15, v16, v9);
    }

    goto LABEL_14;
  }

  v17 = [WeakRetained _updateAccountWithAuthKitViaSilentPETAuth:*(a1 + 40) options:*(a1 + 32)];
  v40[0] = v17;
  v31 = [WeakRetained _updateAccountWithAuthKitViaSilentPasswordAuth:*(a1 + 40) options:*(a1 + 32)];
  v40[1] = v31;
  v33 = [WeakRetained _updateAccountWithAuthKitViaSilentAuth:*(a1 + 40) options:*(a1 + 32)];
  v40[2] = v33;
  v34 = [WeakRetained _updateAccountWithAuthKitViaPromptAuth:*(a1 + 40) store:*(a1 + 48) options:*(a1 + 32)];
  v40[3] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v18 = [SSPromise promiseWithAny:v35];

LABEL_28:
LABEL_29:

  return v18;
}

void __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_256(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = *(a1 + 32);
      [*(a1 + 40) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v19 = 138543874;
      v20 = v10;
      v22 = v21 = 2114;
      v23 = 2112;
      v24 = v5;
      LODWORD(v18) = 32;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v19, v18}];
      free(v11);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v9);
    }

    goto LABEL_14;
  }

  [MEMORY[0x1E698CA98] openURL:a2 account:0 preferredClient:@"com.apple.AppStore"];
LABEL_15:
}

id __57__SSAccountStore_updateAccountWithAuthKit_store_options___block_invoke_267(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 updatedAccount];
  if ([v5 isActive])
  {
    v6 = 0;
  }

  else
  {
    if ([v5 accountScope] == 1)
    {
      v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
      v8 = [v7 ams_activeiTunesAccount];
    }

    else
    {
      v7 = [WeakRetained activeAccount];
      v8 = v7;
    }

    v6 = v8 == 0;
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 BOOLValue];
  if ((v11 & v6) == 1)
  {
    v12 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v17 = [v5 accountName];
      SSHashIfNeeded(v17);
      v29 = 138543874;
      v30 = WeakRetained;
      v31 = 2114;
      v32 = v16;
      v34 = v33 = 2114;
      LODWORD(v28) = 32;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_22:

        [v5 setActive:1];
        v25 = -[SSUpdateAccountResponse initWithUpdatedAccount:credentialSource:]([SSUpdateAccountResponse alloc], "initWithUpdatedAccount:credentialSource:", v5, [v3 credentialSource]);
        v26 = [SSPromise promiseWithResult:v25];

        goto LABEL_24;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v29, v28}];
      free(v18);
      SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, v15);
    }

    goto LABEL_22;
  }

  v26 = [SSPromise promiseWithResult:v3];
LABEL_24:

  return v26;
}

+ (void)setUnitTestModeEnabled:(BOOL)a3
{
  v4 = [a1 _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSAccountStore_setUnitTestModeEnabled___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = a3;
  dispatch_barrier_async(v4, block);
}

void __41__SSAccountStore_setUnitTestModeEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sUnitTestModeEnabled != v2)
  {
    sUnitTestModeEnabled = *(a1 + 32);
    if (v2)
    {
      if (!sUnitTestAccounts)
      {
        v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v4 = sUnitTestAccounts;
        sUnitTestAccounts = v3;
      }
    }

    else
    {
      [sUnitTestAccounts removeAllObjects];
    }

    v5 = +[SSAccountStore defaultStore];
    [v5 clearCachedAccounts];
  }
}

+ (void)_addAccountToUnitTestStore:(id)a3
{
  v4 = a3;
  v5 = [a1 _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSAccountStore__addAccountToUnitTestStore___block_invoke;
  block[3] = &unk_1E84AC050;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, block);
}

void __45__SSAccountStore__addAccountToUnitTestStore___block_invoke(uint64_t a1)
{
  v2 = sUnitTestAccounts;
  if (!sUnitTestAccounts)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = sUnitTestAccounts;
    sUnitTestAccounts = v3;

    v2 = sUnitTestAccounts;
  }

  v5 = *(a1 + 32);
  v7 = [v5 backingAccount];
  v6 = [v7 identifier];
  [v2 setObject:v5 forKeyedSubscript:v6];
}

+ (void)_removeAccountFromUnitTestStore:(id)a3
{
  v4 = a3;
  v5 = [a1 _unitTestAccountsAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSAccountStore__removeAccountFromUnitTestStore___block_invoke;
  block[3] = &unk_1E84AC050;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, block);
}

void __50__SSAccountStore__removeAccountFromUnitTestStore___block_invoke(uint64_t a1)
{
  v2 = sUnitTestAccounts;
  if (!sUnitTestAccounts)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = sUnitTestAccounts;
    sUnitTestAccounts = v3;

    v2 = sUnitTestAccounts;
  }

  v6 = [*(a1 + 32) backingAccount];
  v5 = [v6 identifier];
  [v2 removeObjectForKey:v5];
}

+ (id)_backingAccountForAccount:(id)a3
{
  v3 = [a3 backingAccount];
  v4 = [v3 copy];

  return v4;
}

- (id)_buyParamsForBuyParamsString:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 componentsSeparatedByString:@"&"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v10 objectAtIndexedSubscript:1];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [v4 setObject:v12 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];

  return v15;
}

+ (id)_copyKVSDatabasePath
{
  v2 = +[SSKeyValueStoreSchema databasePath];
  v3 = [v2 stringByDeletingPathExtension];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-copy", v3];

  v5 = [v4 stringByAppendingPathExtension:@"sqlitedb"];

  return v5;
}

+ (BOOL)_copyKVSDatabaseWithError:(id *)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v74 = 138543362;
    v75 = objc_opt_class();
    v9 = v75;
    LODWORD(v70) = 12;
    v69 = &v74;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v74, v70}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
  }

LABEL_12:
  v17 = +[SSKeyValueStoreSchema databasePath];
  v18 = [a1 _copyKVSDatabasePath];
  v19 = [MEMORY[0x1E696AC08] defaultManager];
  if (![v19 fileExistsAtPath:v18])
  {
    goto LABEL_38;
  }

  v20 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  v21 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v20 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v22 &= 2u;
  }

  if (v22)
  {
    v24 = objc_opt_class();
    v74 = 138543362;
    v75 = v24;
    v25 = v24;
    LODWORD(v70) = 12;
    v69 = &v74;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
      goto LABEL_24;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v74, v70}];
    free(v26);
    SSFileLog(v20, @"%@", v27, v28, v29, v30, v31, v32, v23);
  }

LABEL_24:
  v73 = 0;
  v33 = [v19 removeItemAtPath:v18 error:&v73];
  v34 = v73;
  if ((v33 & 1) == 0)
  {
    v35 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    v36 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v37 = v36 | 2;
    }

    else
    {
      v37 = v36;
    }

    v38 = [v35 OSLogObject];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v39 = objc_opt_class();
      v74 = 138543618;
      v75 = v39;
      v76 = 2112;
      v77 = v34;
      v40 = v17;
      v41 = a3;
      v42 = v39;
      LODWORD(v70) = 22;
      v69 = &v74;
      v43 = _os_log_send_and_compose_impl();

      a3 = v41;
      v17 = v40;

      if (!v43)
      {
LABEL_36:

        goto LABEL_37;
      }

      v38 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, &v74, v70}];
      free(v43);
      SSFileLog(v35, @"%@", v44, v45, v46, v47, v48, v49, v38);
    }

    goto LABEL_36;
  }

LABEL_37:

LABEL_38:
  v72 = 0;
  v50 = [v19 copyItemAtPath:v17 toPath:v18 error:{&v72, v69}];
  v51 = v72;
  if (v50)
  {
    [a1 _excludeCopyKVSDatabasePathFromBackups];
    if (!a3)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v71 = v17;
  v52 = a3;
  v53 = +[SSLogConfig sharedAccountsMigrationConfig];
  if (!v53)
  {
    v53 = +[SSLogConfig sharedConfig];
  }

  v54 = [v53 shouldLog];
  if ([v53 shouldLogToDisk])
  {
    v55 = v54 | 2;
  }

  else
  {
    v55 = v54;
  }

  v56 = [v53 OSLogObject];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    v57 = v55;
  }

  else
  {
    v57 = v55 & 2;
  }

  if (v57)
  {
    v58 = objc_opt_class();
    v74 = 138543618;
    v75 = v58;
    v76 = 2112;
    v77 = v51;
    v59 = v58;
    LODWORD(v70) = 22;
    v60 = _os_log_send_and_compose_impl();

    a3 = v52;
    v17 = v71;
    if (!v60)
    {
      goto LABEL_54;
    }

    v56 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:{4, &v74, v70}];
    free(v60);
    SSFileLog(v53, @"%@", v61, v62, v63, v64, v65, v66, v56);
  }

  else
  {
    a3 = v52;
    v17 = v71;
  }

LABEL_54:
  if (a3)
  {
LABEL_55:
    v67 = v51;
    *a3 = v51;
  }

LABEL_56:

  return v50;
}

+ (void)_disableAccountStoreChangedNotifications
{
  CFPreferencesSetAppValue(@"AccountsChangedNotificationsSuppressionStarted", [MEMORY[0x1E695DF00] date], @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

+ (void)_enableAccountStoreChangedNotifications
{
  CFPreferencesSetAppValue(@"AccountsChangedNotificationsSuppressionStarted", 0, @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

+ (void)_excludeCopyKVSDatabasePathFromBackups
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [a1 _copyKVSDatabasePath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    v6 = v5;
    if (!v5)
    {
LABEL_17:

      goto LABEL_18;
    }

    v7 = *MEMORY[0x1E695DB80];
    v24 = 0;
    v8 = [v5 setResourceValue:MEMORY[0x1E695E118] forKey:v7 error:&v24];
    v9 = v24;
    if (v8)
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v25 = 138543618;
      v26 = v14;
      v27 = 2112;
      v28 = v9;
      v15 = v14;
      LODWORD(v23) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v25, v23}];
      free(v16);
      SSFileLog(v10, @"%@", v17, v18, v19, v20, v21, v22, v13);
    }

    goto LABEL_15;
  }

LABEL_18:
}

+ (id)_hashedDescriptionFromAccountDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AltDSID"];
  v5 = SSHashIfNeeded(v4);

  v6 = [v3 objectForKeyedSubscript:@"DSPersonID"];
  v7 = [v6 stringValue];
  v8 = SSHashIfNeeded(v7);

  v9 = [v3 objectForKeyedSubscript:@"FirstName"];
  v10 = SSHashIfNeeded(v9);

  v11 = [v3 objectForKeyedSubscript:@"LastName"];
  v12 = SSHashIfNeeded(v11);

  v13 = [v3 objectForKeyedSubscript:@"AccountURLBagType"];
  v14 = [v3 objectForKeyedSubscript:@"AccountStoreFront"];
  v15 = SSHashIfNeeded(v14);

  v16 = [v3 objectForKeyedSubscript:@"AppleID"];

  v17 = SSHashIfNeeded(v16);

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<altDSID = %@ | DSID = %@ | username = %@ | firstName = %@ | lastName = %@ | storefront = %@ | scope = %@>", v5, v8, v17, v10, v12, v15, v13];

  return v18;
}

+ (void)_postAccountsChangedInternalDarwinNotification
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v16) = 138543362;
  *(&v16 + 4) = objc_opt_class();
  v6 = *(&v16 + 4);
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15, v16}];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_11:
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.accountschanged.internal", 0, 0, 1u);
}

+ (void)_postAccountsChangedDarwinNotification
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v16) = 138543362;
  *(&v16 + 4) = objc_opt_class();
  v6 = *(&v16 + 4);
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v16, v15, v16}];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_11:
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.accountschanged", 0, 0, 1u);
}

- (void)_postAccountStoreChangeNotification
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(SSAccountStore *)self notificationQueue];

  if (!v3)
  {
    v4 = +[SSLogConfig sharedAccountsConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = @"SSAccountStoreChangedNotification";
      v8 = v19;
      LODWORD(v16) = 22;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
        goto LABEL_14;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v18, v16}];
      free(v9);
      SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, v7);
    }

    goto LABEL_14;
  }

  v4 = [(SSAccountStore *)self notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSAccountStore__postAccountStoreChangeNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(v4, block);
LABEL_14:
}

void __53__SSAccountStore__postAccountStoreChangeNotification__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesGetAppBooleanValue(@"ActiveAccountIsManagedAppleID", @"com.apple.itunesstored", 0) != 0;
  v3 = [*(a1 + 32) activeAccount];
  v4 = [v3 isManagedAppleID];

  if (v2 != v4)
  {
    [objc_opt_class() _setActiveAccountIsManagedAppleIDPreference:v4];
    v5 = +[SSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      *v33 = 138543362;
      *&v33[4] = objc_opt_class();
      v9 = *&v33[4];
      LODWORD(v32) = 12;
      v31 = v33;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v33, v32, *v33}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_13;
  }

LABEL_14:
  v17 = +[SSLogConfig sharedAccountsConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 OSLogObject];
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_24;
  }

  v21 = objc_opt_class();
  *v33 = 138543618;
  *&v33[4] = v21;
  *&v33[12] = 2114;
  *&v33[14] = @"SSAccountStoreChangedNotification";
  v22 = v21;
  LODWORD(v32) = 22;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, v33, v32}];
    free(v23);
    SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, v20);
LABEL_24:
  }

  v30 = [MEMORY[0x1E696AD88] defaultCenter];
  [v30 postNotificationName:@"_SSAccountStoreDidChangeNotification" object:*(a1 + 32)];
  [v30 postNotificationName:@"SSAccountStoreChangedNotification" object:*(a1 + 32)];
}

- (void)_postActiveAccountChangedNotification
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(SSAccountStore *)self notificationQueue];

  if (!v3)
  {
    v4 = +[SSLogConfig sharedAccountsConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = @"SSAccountStoreActiveAccountChangedNotification";
      v8 = v19;
      LODWORD(v16) = 22;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
        goto LABEL_14;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v18, v16}];
      free(v9);
      SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, v7);
    }

    goto LABEL_14;
  }

  v4 = [(SSAccountStore *)self notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SSAccountStore__postActiveAccountChangedNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(v4, block);
LABEL_14:
}

void __55__SSAccountStore__postActiveAccountChangedNotification__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  *v16 = 138543618;
  *&v16[4] = objc_opt_class();
  *&v16[12] = 2114;
  *&v16[14] = @"SSAccountStoreActiveAccountChangedNotification";
  v6 = *&v16[4];
  LODWORD(v15) = 22;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, v16, v15, *v16, *&v16[16]}];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_11:
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"SSAccountStoreActiveAccountChangedNotification" object:*(a1 + 32)];
}

- (void)_postAuthenticationActivityNotification
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(SSAccountStore *)self notificationQueue];

  if (!v3)
  {
    v4 = +[SSLogConfig sharedAccountsConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = @"SSAccountStoreChangedNotification";
      v8 = v19;
      LODWORD(v16) = 22;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
        goto LABEL_14;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v18, v16}];
      free(v9);
      SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, v7);
    }

    goto LABEL_14;
  }

  v4 = [(SSAccountStore *)self notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSAccountStore__postAuthenticationActivityNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(v4, block);
LABEL_14:
}

void __57__SSAccountStore__postAuthenticationActivityNotification__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedAccountsConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  *v16 = 138543618;
  *&v16[4] = objc_opt_class();
  *&v16[12] = 2114;
  *&v16[14] = @"SSAccountStoreAuthenticationActivityNotification";
  v6 = *&v16[4];
  LODWORD(v15) = 22;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, v16, v15, *v16, *&v16[16]}];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_11:
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"SSAccountStoreAuthenticationActivityNotification" object:*(a1 + 32)];
}

- (void)_recordAnalyticsForMetricsDialogEvent:(id)a3 withTopic:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SSAccountStore *)self metricsQueue];

  if (!v8)
  {
    v10 = +[SSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v26 = 138543362;
      v27 = objc_opt_class();
      v14 = v27;
      LODWORD(v22) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_14;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v26, v22}];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v13);
    }

    goto LABEL_14;
  }

  v9 = [(SSAccountStore *)self metricsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SSAccountStore__recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke;
  block[3] = &unk_1E84AC028;
  v24 = v6;
  v25 = v7;
  dispatch_async(v9, block);

  v10 = v24;
LABEL_14:
}

void __66__SSAccountStore__recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SSMetricsController);
  [(SSMetricsController *)v2 recordAnalyticsForMetricsDialogEvent:*(a1 + 32) withTopic:*(a1 + 40)];
}

+ (id)_refreshAccount:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _backingAccountForAccount:v3];

  [v4 refresh];
  v5 = [[SSAccount alloc] initWithBackingAccount:v4];

  return v5;
}

- (id)_saveAccountInUnitTestMode:(id)a3 ignoreValidationErrors:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Accounts/Notification/iTunesAccountsNotificationPlugin.bundle"];
  v8 = objc_alloc_init([v7 principalClass]);
  if (v8)
  {
    v9 = NSSelectorFromString(&cfstr_Cansaveaccount.isa);
    v10 = [objc_opt_class() instanceMethodSignatureForSelector:v9];
    v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
    [v11 setTarget:v8];
    [v11 setSelector:v9];
    v19 = [v6 backingAccount];
    [v11 setArgument:&v19 atIndex:2];
    v12 = [(SSAccountStore *)self accounts];
    v18 = [v12 _ss_map:&__block_literal_global_310];

    [v11 setArgument:&v18 atIndex:3];
    [v11 invoke];
    v17 = 0;
    [v11 getReturnValue:&v17];
    if (a4 || (v17 & 1) != 0)
    {
      [objc_opt_class() _addAccountToUnitTestStore:v6];
      __AccountsChangedInternal();
      if (([objc_opt_class() areAccountStoreChangedNotificationsDisabled] & 1) == 0)
      {
        __AccountsChanged();
      }

      v13 = [SSPromise promiseWithResult:MEMORY[0x1E695E118]];
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:5 userInfo:0];
      v13 = [SSPromise promiseWithError:v15];
    }
  }

  else
  {
    v14 = SSError(@"SSErrorDomain", 100, 0, @"We failed to load the notification plugin.");
    v13 = [SSPromise promiseWithError:v14];
  }

  return v13;
}

- (id)_saveAccount:(id)a3 verifyCredentials:(BOOL)a4
{
  v4 = a4;
  v102 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SSGenerateLogCorrelationString();
  if (v6)
  {
    if ([v6 isDirty])
    {
      v88 = [objc_opt_class() _backingAccountForAccount:v6];
      if (!v88)
      {
        v37 = +[SSLogConfig sharedAccountsConfig];
        if (!v37)
        {
          v37 = +[SSLogConfig sharedConfig];
        }

        v38 = [v37 shouldLog];
        if ([v37 shouldLogToDisk])
        {
          v38 |= 2u;
        }

        v39 = [v37 OSLogObject];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = v38;
        }

        else
        {
          v40 = v38 & 2;
        }

        if (v40)
        {
          v41 = objc_opt_class();
          v42 = v41;
          [v6 hashedDescription];
          *location = 138543874;
          *&location[4] = v41;
          v96 = 2114;
          v97 = v7;
          v99 = v98 = 2114;
          LODWORD(v87) = 32;
          v43 = _os_log_send_and_compose_impl();

          if (v43)
          {
            v44 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, location, v87}];
            free(v43);
            SSFileLog(v37, @"%@", v45, v46, v47, v48, v49, v50, v44);
          }
        }

        else
        {
        }

        v68 = SSError(@"SSErrorDomain", 100, 0, @"The backing account is nil.");
        v8 = [SSPromise promiseWithError:v68];

        goto LABEL_67;
      }

      if ([objc_opt_class() unitTestModeEnabled])
      {
        v8 = [(SSAccountStore *)self _saveAccountInUnitTestMode:v6 ignoreValidationErrors:0];
LABEL_67:

        goto LABEL_68;
      }

      v51 = +[SSLogConfig sharedAccountsConfig];
      if (!v51)
      {
        v51 = +[SSLogConfig sharedConfig];
      }

      v52 = [v51 shouldLog];
      if ([v51 shouldLogToDisk])
      {
        v52 |= 2u;
      }

      v53 = [v51 OSLogObject];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v52;
      }

      else
      {
        v54 = v52 & 2;
      }

      if (v54)
      {
        v55 = objc_opt_class();
        v56 = v55;
        v57 = [v6 hashedDescription];
        v58 = v57;
        v59 = @"NO";
        *location = 138544130;
        *&location[4] = v55;
        v96 = 2114;
        if (v4)
        {
          v59 = @"YES";
        }

        v97 = v7;
        v98 = 2114;
        v99 = v57;
        v100 = 2114;
        v101 = v59;
        LODWORD(v87) = 42;
        v86 = location;
        v60 = _os_log_send_and_compose_impl();

        if (v60)
        {
          v61 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:{4, location, v87}];
          free(v60);
          SSFileLog(v51, @"%@", v62, v63, v64, v65, v66, v67, v61);
        }
      }

      else
      {
      }

      v69 = +[SSLogConfig sharedAccountsConfig];
      if (!v69)
      {
        v69 = +[SSLogConfig sharedConfig];
      }

      v70 = [v69 shouldLog];
      if ([v69 shouldLogToDisk])
      {
        v70 |= 2u;
      }

      v71 = [v69 OSLogObject];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = v70;
      }

      else
      {
        v72 = v70 & 2;
      }

      if (v72)
      {
        v73 = objc_opt_class();
        *location = 138543618;
        *&location[4] = v73;
        v96 = 2114;
        v97 = v7;
        v74 = v73;
        LODWORD(v87) = 22;
        v75 = _os_log_send_and_compose_impl();

        if (!v75)
        {
LABEL_66:

          [(SSAccountStore *)self clearCachedAccounts];
          v8 = objc_alloc_init(SSPromise);
          objc_initWeak(location, self);
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke;
          v92[3] = &unk_1E84AEB20;
          objc_copyWeak(&v94, location);
          v82 = v7;
          v93 = v82;
          [(SSPromise *)v8 addSuccessBlock:v92];
          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = 3221225472;
          v89[2] = __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke_324;
          v89[3] = &unk_1E84AEB48;
          objc_copyWeak(&v91, location);
          v90 = v82;
          [(SSPromise *)v8 addErrorBlock:v89];
          v83 = [(SSAccountStore *)self backingAccountStore];
          v84 = [(SSPromise *)v8 BOOLCompletionHandlerAdapter];
          [v83 saveAccount:v88 withDataclassActions:0 doVerify:v4 completion:v84];

          objc_destroyWeak(&v91);
          objc_destroyWeak(&v94);
          objc_destroyWeak(location);
          goto LABEL_67;
        }

        v71 = [MEMORY[0x1E696AEC0] stringWithCString:v75 encoding:{4, location, v87}];
        free(v75);
        SSFileLog(v69, @"%@", v76, v77, v78, v79, v80, v81, v71);
      }

      goto LABEL_66;
    }

    v22 = +[SSLogConfig sharedAccountsConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v22 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v27 = v26;
      [v6 hashedDescription];
      *location = 138543874;
      *&location[4] = v26;
      v96 = 2114;
      v97 = v7;
      v99 = v98 = 2114;
      LODWORD(v87) = 32;
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, location, v87}];
        free(v28);
        SSFileLog(v22, @"%@", v30, v31, v32, v33, v34, v35, v29);
      }
    }

    else
    {
    }

    v8 = [SSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v9 = +[SSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v96 = 2114;
      v97 = v7;
      v13 = *&location[4];
      LODWORD(v87) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, location, v87}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }

    else
    {
    }

    v36 = SSError(@"SSErrorDomain", 137, 0, @"The account must be non-nil.");
    v8 = [SSPromise promiseWithError:v36];
  }

LABEL_68:

  return v8;
}

void __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[SSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  *v18 = 138543618;
  *&v18[4] = v7;
  *&v18[12] = 2114;
  *&v18[14] = v8;
  v9 = v7;
  LODWORD(v17) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v18, v17, *v18, *&v18[16], v19}];
    free(v10);
    SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v6);
LABEL_11:
  }
}

void __49__SSAccountStore__saveAccount_verifyCredentials___block_invoke_324(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[SSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = objc_opt_class();
  v10 = *(a1 + 32);
  *v20 = 138543874;
  *&v20[4] = v9;
  *&v20[12] = 2114;
  *&v20[14] = v10;
  *&v20[22] = 2112;
  v21 = v3;
  v11 = v9;
  LODWORD(v19) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v20, v19, *v20, *&v20[16], v21}];
    free(v12);
    SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v8);
LABEL_11:
  }
}

+ (void)_setActiveAccountIsManagedAppleIDPreference:(BOOL)a3
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"ActiveAccountIsManagedAppleID", *v3, @"com.apple.itunesstored");

  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

- (void)_setCachedAccounts:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SSAccountStore *)self accountsCacheAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSAccountStore__setCachedAccounts___block_invoke;
  block[3] = &unk_1E84AD870;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__SSAccountStore__setCachedAccounts___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) copy];
  [WeakRetained setAccountsCache:v2];
}

+ (BOOL)_accountDictionaryRepresentsActiveAccount:(id)a3 inKeyValueStore:(id)a4
{
  v5 = a3;
  v6 = [a4 iTunesValueForKey:@"DSPersonID" usedDomain:0];
  v7 = [v5 objectForKeyedSubscript:@"DSPersonID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v6 isEqualToNumber:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_accountDictionaryRepresentsActiveLockerAccount:(id)a3 inKeyValueStore:(id)a4
{
  v5 = a3;
  v6 = [a4 iTunesValueForKey:@"ActiveLockerAccountID" usedDomain:0];
  v7 = [v5 objectForKeyedSubscript:@"DSPersonID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v6 isEqualToNumber:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)_cleanupActiveAccountsAfterMigrationWithActiveDSID:(id)a3 activeLockerDSID:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    +[SSAccountStore defaultStore];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v68 = v75 = 0u;
    obj = [v68 accounts];
    v70 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (!v70)
    {
      goto LABEL_55;
    }

    v69 = *v73;
    v65 = v5;
    v66 = v6;
    while (1)
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v73 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v72 + 1) + 8 * i);
        if (v5)
        {
          if ([*(*(&v72 + 1) + 8 * i) isActive])
          {
            v9 = [v8 uniqueIdentifier];
            v10 = [v9 isEqualToNumber:v5];

            if ((v10 & 1) == 0)
            {
              v30 = +[SSLogConfig sharedAccountsMigrationConfig];
              if (!v30)
              {
                v30 = +[SSLogConfig sharedConfig];
              }

              v31 = [v30 shouldLog];
              if ([v30 shouldLogToDisk])
              {
                v32 = v31 | 2;
              }

              else
              {
                v32 = v31;
              }

              v33 = [v30 OSLogObject];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = v32;
              }

              else
              {
                v34 = v32 & 2;
              }

              if (v34)
              {
                v35 = objc_opt_class();
                v36 = v35;
                v37 = [v8 hashedDescription];
                v38 = [v5 stringValue];
                v39 = SSHashIfNeeded(v38);
                v76 = 138543874;
                v77 = v35;
                v6 = v66;
                v78 = 2114;
                v79 = v37;
                v80 = 2114;
                v81 = v39;
                LODWORD(v64) = 32;
                v63 = &v76;
                v40 = _os_log_send_and_compose_impl();

                if (v40)
                {
                  v33 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:{4, &v76, v64}];
                  free(v40);
                  SSFileLog(v30, @"%@", v41, v42, v43, v44, v45, v46, v33);
                  goto LABEL_36;
                }
              }

              else
              {
LABEL_36:
              }

              [v8 setActive:0];
              v11 = 1;
              v5 = v65;
              if (!v6)
              {
                goto LABEL_38;
              }

              goto LABEL_11;
            }
          }
        }

        v11 = 0;
        if (!v6)
        {
          goto LABEL_38;
        }

LABEL_11:
        if ([v8 isActiveLockerAccount])
        {
          v12 = [v8 uniqueIdentifier];
          v13 = [v12 isEqualToNumber:v6];

          if ((v13 & 1) == 0)
          {
            v14 = +[SSLogConfig sharedAccountsMigrationConfig];
            if (!v14)
            {
              v14 = +[SSLogConfig sharedConfig];
            }

            v15 = [v14 shouldLog];
            if ([v14 shouldLogToDisk])
            {
              v15 |= 2u;
            }

            v16 = [v14 OSLogObject];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = v15;
            }

            else
            {
              v17 = v15 & 2;
            }

            if (v17)
            {
              v18 = objc_opt_class();
              v19 = v18;
              v20 = [v8 hashedDescription];
              v21 = [v6 stringValue];
              v22 = SSHashIfNeeded(v21);
              v76 = 138543874;
              v77 = v18;
              v78 = 2114;
              v79 = v20;
              v80 = 2114;
              v81 = v22;
              LODWORD(v64) = 32;
              v63 = &v76;
              v23 = _os_log_send_and_compose_impl();

              v5 = v65;
              if (v23)
              {
                v16 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v76, v64}];
                free(v23);
                SSFileLog(v14, @"%@", v24, v25, v26, v27, v28, v29, v16);
                goto LABEL_23;
              }
            }

            else
            {
LABEL_23:
            }

            [v8 setActiveLockerAccount:0];
            v6 = v66;
            goto LABEL_39;
          }
        }

LABEL_38:
        if (!v11)
        {
          continue;
        }

LABEL_39:
        v71 = 0;
        v47 = [v68 saveAccount:v8 verifyCredentials:0 error:{&v71, v63, v64}];
        v48 = v71;
        if ((v47 & 1) == 0)
        {
          v49 = +[SSLogConfig sharedAccountsMigrationConfig];
          if (!v49)
          {
            v49 = +[SSLogConfig sharedConfig];
          }

          v50 = [v49 shouldLog];
          if ([v49 shouldLogToDisk])
          {
            v50 |= 2u;
          }

          v51 = [v49 OSLogObject];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = v50;
          }

          else
          {
            v52 = v50 & 2;
          }

          if (v52)
          {
            v53 = objc_opt_class();
            v54 = v53;
            v55 = [v8 hashedDescription];
            v76 = 138543874;
            v77 = v53;
            v78 = 2114;
            v79 = v55;
            v80 = 2112;
            v81 = v48;
            LODWORD(v64) = 32;
            v63 = &v76;
            v56 = _os_log_send_and_compose_impl();

            v6 = v66;
            if (v56)
            {
              v51 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:{4, &v76, v64}];
              free(v56);
              SSFileLog(v49, @"%@", v57, v58, v59, v60, v61, v62, v51);
              goto LABEL_50;
            }
          }

          else
          {
LABEL_50:
          }
        }
      }

      v70 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (!v70)
      {
LABEL_55:

        break;
      }
    }
  }
}

+ (id)_migrateAccountDictionary:(id)a3 fromKeyValueStore:(id)a4 originalActiveDSID:(id)a5 originalActiveLockerDSID:(id)a6 logKey:(id)a7 error:(id *)a8
{
  v226 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v207 = a4;
  v210 = a5;
  v209 = a6;
  v218 = a7;
  v14 = +[SSAccountStore defaultStore];
  v217 = a1;
  [a1 _disableAccountStoreChangedNotifications];
  v15 = 0;
  v211 = 1;
  v208 = *MEMORY[0x1E6959978];
  v16 = 1;
  v215 = v14;
  while (1)
  {
    v214 = v15;
    v17 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_12;
    }

    v21 = objc_opt_class();
    v220 = 138543874;
    v221 = v21;
    v222 = 2114;
    v223 = v218;
    v224 = 2048;
    v225 = v16;
    v22 = v21;
    LODWORD(v205) = 32;
    v200 = &v220;
    v23 = _os_log_send_and_compose_impl();

    if (v23)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v220, v205}];
      free(v23);
      SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, v20);
LABEL_12:
    }

    v30 = [v13 objectForKeyedSubscript:@"AltDSID"];
    v31 = [v13 objectForKeyedSubscript:@"DSPersonID"];
    v216 = [v13 objectForKeyedSubscript:@"AppleID"];
    v32 = [v13 objectForKeyedSubscript:@"AccountURLBagType"];
    v33 = SSAccountScopeForString(v32);

    v213 = v30;
    v34 = [v14 accountWithAltDSID:v30 scope:v33];
    v212 = v31;
    if (!v34)
    {
      v34 = [v14 accountWithUniqueIdentifier:v31 scope:v33];
      if (!v34)
      {
        v35 = [v14 accountWithAccountName:v216 scope:v33];
        v72 = [(SSAccount *)v35 altDSID];
        if ([v72 isEqualToString:&stru_1F503F418])
        {
        }

        else
        {
          v110 = [(SSAccount *)v35 uniqueIdentifier];
          v111 = [v110 isEqualToNumber:&unk_1F507A150];

          if (!v111)
          {
            v124 = [(SSAccount *)v35 altDSID];
            if (v124)
            {

LABEL_182:
              v187 = +[SSLogConfig sharedAccountsMigrationConfig];
              if (!v187)
              {
                v187 = +[SSLogConfig sharedConfig];
              }

              v188 = [v187 shouldLog];
              if ([v187 shouldLogToDisk])
              {
                v188 |= 2u;
              }

              v189 = [v187 OSLogObject];
              if (!os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
              {
                v188 &= 2u;
              }

              if (v188)
              {
                v190 = objc_opt_class();
                v220 = 138543618;
                v221 = v190;
                v222 = 2114;
                v223 = v218;
                v191 = v190;
                LODWORD(v205) = 22;
                v192 = _os_log_send_and_compose_impl();

                v176 = v207;
                if (v192)
                {
                  v189 = [MEMORY[0x1E696AEC0] stringWithCString:v192 encoding:{4, &v220, v205}];
                  free(v192);
                  SSFileLog(v187, @"%@", v193, v194, v195, v196, v197, v198, v189);
                  goto LABEL_192;
                }
              }

              else
              {
                v176 = v207;
LABEL_192:
              }

              v185 = 0;
              v15 = v214;
              goto LABEL_178;
            }

            v125 = [(SSAccount *)v35 uniqueIdentifier];

            if (v125)
            {
              goto LABEL_182;
            }

LABEL_114:
            if (v35)
            {
              goto LABEL_16;
            }

            v126 = +[SSLogConfig sharedAccountsMigrationConfig];
            if (!v126)
            {
              v126 = +[SSLogConfig sharedConfig];
            }

            v127 = [v126 shouldLog];
            if ([v126 shouldLogToDisk])
            {
              v127 |= 2u;
            }

            v128 = [v126 OSLogObject];
            if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              v127 &= 2u;
            }

            if (v127)
            {
              v129 = objc_opt_class();
              v220 = 138543618;
              v221 = v129;
              v222 = 2114;
              v223 = v218;
              v130 = v129;
              LODWORD(v205) = 22;
              v204 = &v220;
              v131 = _os_log_send_and_compose_impl();

              if (!v131)
              {
                goto LABEL_125;
              }

              v128 = [MEMORY[0x1E696AEC0] stringWithCString:v131 encoding:{4, &v220, v205}];
              free(v131);
              SSFileLog(v126, @"%@", v132, v133, v134, v135, v136, v137, v128);
            }

LABEL_125:
            v35 = objc_alloc_init(SSAccount);
            v36 = [SSAccount secureTokenForIdentifier:v216];
            v138 = [v36 length];
            v139 = +[SSLogConfig sharedAccountsMigrationConfig];
            v39 = v139;
            if (!v138)
            {
              if (!v139)
              {
                v39 = +[SSLogConfig sharedConfig];
              }

              v151 = [v39 shouldLog];
              if ([v39 shouldLogToDisk])
              {
                v151 |= 2u;
              }

              v152 = [v39 OSLogObject];
              if (!os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
              {
                v151 &= 2u;
              }

              if (v151)
              {
                v153 = objc_opt_class();
                v220 = 138543618;
                v221 = v153;
                v222 = 2114;
                v223 = v218;
                v154 = v153;
                LODWORD(v205) = 22;
                v201 = &v220;
                v155 = _os_log_send_and_compose_impl();

                if (!v155)
                {
                  goto LABEL_26;
                }

                v152 = [MEMORY[0x1E696AEC0] stringWithCString:v155 encoding:{4, &v220, v205}];
                free(v155);
                SSFileLog(v39, @"%@", v156, v157, v158, v159, v160, v161, v152);
              }

              goto LABEL_26;
            }

            if (!v139)
            {
              v39 = +[SSLogConfig sharedConfig];
            }

            v140 = [v39 shouldLog];
            if ([v39 shouldLogToDisk])
            {
              v140 |= 2u;
            }

            v141 = [v39 OSLogObject];
            if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              v140 &= 2u;
            }

            if (v140)
            {
              v142 = objc_opt_class();
              v220 = 138543618;
              v221 = v142;
              v222 = 2114;
              v223 = v218;
              v143 = v142;
              LODWORD(v205) = 22;
              v201 = &v220;
              v144 = _os_log_send_and_compose_impl();

              if (!v144)
              {
LABEL_136:

                [(SSAccount *)v35 setAuthenticated:1];
                [(SSAccount *)v35 setSecureToken:v36];
                goto LABEL_28;
              }

              v141 = [MEMORY[0x1E696AEC0] stringWithCString:v144 encoding:{4, &v220, v205}];
              free(v144);
              SSFileLog(v39, @"%@", v145, v146, v147, v148, v149, v150, v141);
            }

            goto LABEL_136;
          }
        }

        v112 = +[SSLogConfig sharedAccountsMigrationConfig];
        if (!v112)
        {
          v112 = +[SSLogConfig sharedConfig];
        }

        v113 = [v112 shouldLog];
        if ([v112 shouldLogToDisk])
        {
          v113 |= 2u;
        }

        v114 = [v112 OSLogObject];
        if (!os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
        {
          v113 &= 2u;
        }

        if (v113)
        {
          v115 = objc_opt_class();
          v220 = 138543618;
          v221 = v115;
          v222 = 2114;
          v223 = v218;
          v116 = v115;
          LODWORD(v205) = 22;
          v200 = &v220;
          v117 = _os_log_send_and_compose_impl();

          if (!v117)
          {
LABEL_111:

            goto LABEL_114;
          }

          v114 = [MEMORY[0x1E696AEC0] stringWithCString:v117 encoding:{4, &v220, v205}];
          free(v117);
          SSFileLog(v112, @"%@", v118, v119, v120, v121, v122, v123, v114);
        }

        goto LABEL_111;
      }
    }

    v35 = v34;
LABEL_16:
    v36 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v38 &= 2u;
    }

    if (!v38)
    {
      goto LABEL_26;
    }

    v40 = objc_opt_class();
    v41 = v40;
    v42 = [(SSAccount *)v35 hashedDescription];
    v220 = 138543874;
    v221 = v40;
    v222 = 2114;
    v223 = v218;
    v224 = 2114;
    v225 = v42;
    LODWORD(v205) = 32;
    v201 = &v220;
    v43 = _os_log_send_and_compose_impl();

    if (v43)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, &v220, v205}];
      free(v43);
      SSFileLog(v36, @"%@", v44, v45, v46, v47, v48, v49, v39);
      v14 = v215;
LABEL_26:

      goto LABEL_28;
    }

    v14 = v215;
LABEL_28:

    [(SSAccount *)v35 setLockdownDictionary:v13];
    v50 = [(SSAccount *)v35 uniqueIdentifier];
    v51 = [v210 isEqualToNumber:v50];

    v52 = +[SSLogConfig sharedAccountsMigrationConfig];
    v53 = v52;
    if (!v51)
    {
      if (!v52)
      {
        v53 = +[SSLogConfig sharedConfig];
      }

      v61 = [v53 shouldLog];
      if ([v53 shouldLogToDisk])
      {
        v61 |= 2u;
      }

      v55 = [v53 OSLogObject];
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v61 &= 2u;
      }

      if (v61)
      {
        v62 = objc_opt_class();
        v63 = v62;
        v64 = [(SSAccount *)v35 isActive];
        v220 = 138543874;
        v65 = @"NO";
        if (v64)
        {
          v65 = @"YES";
        }

        v221 = v62;
        v222 = 2114;
        v223 = v218;
        v224 = 2114;
        v225 = v65;
        LODWORD(v205) = 32;
        v202 = &v220;
        v60 = _os_log_send_and_compose_impl();

        if (!v60)
        {
          v51 = 0;
          goto LABEL_57;
        }

LABEL_50:
        v55 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:{4, &v220, v205}];
        free(v60);
        SSFileLog(v53, @"%@", v66, v67, v68, v69, v70, v71, v55);
        v14 = v215;
      }

      else
      {
        v51 = 0;
      }

LABEL_53:

      goto LABEL_58;
    }

    if (!v52)
    {
      v53 = +[SSLogConfig sharedConfig];
    }

    v54 = [v53 shouldLog];
    if ([v53 shouldLogToDisk])
    {
      v54 |= 2u;
    }

    v55 = [v53 OSLogObject];
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v54 &= 2u;
    }

    if (!v54)
    {
      v51 = 1;
      goto LABEL_53;
    }

    v56 = objc_opt_class();
    v57 = v56;
    v58 = [(SSAccount *)v35 isActive];
    v220 = 138543874;
    v59 = @"NO";
    if (v58)
    {
      v59 = @"YES";
    }

    v221 = v56;
    v222 = 2114;
    v223 = v218;
    v224 = 2114;
    v225 = v59;
    LODWORD(v205) = 32;
    v202 = &v220;
    v60 = _os_log_send_and_compose_impl();

    if (v60)
    {
      goto LABEL_50;
    }

    v51 = 1;
LABEL_57:
    v14 = v215;
LABEL_58:

    [(SSAccount *)v35 setActive:v51];
    v73 = [(SSAccount *)v35 uniqueIdentifier];
    v74 = [v209 isEqualToNumber:v73];

    v75 = +[SSLogConfig sharedAccountsMigrationConfig];
    v76 = v75;
    if (!v74)
    {
      if (!v75)
      {
        v76 = +[SSLogConfig sharedConfig];
      }

      v84 = [v76 shouldLog];
      if ([v76 shouldLogToDisk])
      {
        v84 |= 2u;
      }

      v78 = [v76 OSLogObject];
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v84 &= 2u;
      }

      if (v84)
      {
        v85 = objc_opt_class();
        v86 = v85;
        v87 = [(SSAccount *)v35 isActiveLockerAccount];
        v220 = 138543874;
        v88 = @"NO";
        if (v87)
        {
          v88 = @"YES";
        }

        v221 = v85;
        v222 = 2114;
        v223 = v218;
        v224 = 2114;
        v225 = v88;
        LODWORD(v205) = 32;
        v203 = &v220;
        v83 = _os_log_send_and_compose_impl();

        if (!v83)
        {
          v74 = 0;
          goto LABEL_85;
        }

LABEL_80:
        v78 = [MEMORY[0x1E696AEC0] stringWithCString:v83 encoding:{4, &v220, v205}];
        free(v83);
        SSFileLog(v76, @"%@", v89, v90, v91, v92, v93, v94, v78);
        v14 = v215;
      }

      else
      {
        v74 = 0;
      }

LABEL_83:

      goto LABEL_86;
    }

    if (!v75)
    {
      v76 = +[SSLogConfig sharedConfig];
    }

    v77 = [v76 shouldLog];
    if ([v76 shouldLogToDisk])
    {
      v77 |= 2u;
    }

    v78 = [v76 OSLogObject];
    if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v77 &= 2u;
    }

    if (!v77)
    {
      v74 = 1;
      goto LABEL_83;
    }

    v79 = objc_opt_class();
    v80 = v79;
    v81 = [(SSAccount *)v35 isActiveLockerAccount];
    v220 = 138543874;
    v82 = @"NO";
    if (v81)
    {
      v82 = @"YES";
    }

    v221 = v79;
    v222 = 2114;
    v223 = v218;
    v224 = 2114;
    v225 = v82;
    LODWORD(v205) = 32;
    v203 = &v220;
    v83 = _os_log_send_and_compose_impl();

    if (v83)
    {
      goto LABEL_80;
    }

    v74 = 1;
LABEL_85:
    v14 = v215;
LABEL_86:

    [(SSAccount *)v35 setActiveLockerAccount:v74];
    v219 = v214;
    v95 = [v14 saveAccount:v35 verifyCredentials:0 error:&v219];
    v15 = v219;

    if (v95)
    {
      v162 = v35;
      goto LABEL_150;
    }

    v96 = [v15 domain];
    if (([v96 isEqualToString:v208] & 1) == 0)
    {
      break;
    }

    v97 = [v15 code] != 5;

    if (v97 || (v211 & 1) == 0)
    {
      goto LABEL_149;
    }

    v98 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v98)
    {
      v98 = +[SSLogConfig sharedConfig];
    }

    v99 = [v98 shouldLog];
    if ([v98 shouldLogToDisk])
    {
      v99 |= 2u;
    }

    v100 = [v98 OSLogObject];
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v99 &= 2u;
    }

    if (v99)
    {
      v101 = objc_opt_class();
      v220 = 138543618;
      v221 = v101;
      v222 = 2114;
      v223 = v218;
      v102 = v101;
      LODWORD(v205) = 22;
      v199 = &v220;
      v103 = _os_log_send_and_compose_impl();

      if (!v103)
      {
        goto LABEL_99;
      }

      v100 = [MEMORY[0x1E696AEC0] stringWithCString:v103 encoding:{4, &v220, v205}];
      free(v103);
      SSFileLog(v98, @"%@", v104, v105, v106, v107, v108, v109, v100);
    }

LABEL_99:
    v211 = 0;
    v16 = 2;
  }

LABEL_149:
  v162 = 0;
LABEL_150:

  [v217 _enableAccountStoreChangedNotifications];
  v163 = +[SSLogConfig sharedAccountsMigrationConfig];
  v164 = v163;
  if (v95)
  {
    if (!v163)
    {
      v164 = +[SSLogConfig sharedConfig];
    }

    v165 = [v164 shouldLog];
    if ([v164 shouldLogToDisk])
    {
      v166 = v165 | 2;
    }

    else
    {
      v166 = v165;
    }

    v167 = [v164 OSLogObject];
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      v168 = v166;
    }

    else
    {
      v168 = v166 & 2;
    }

    if (v168)
    {
      v169 = objc_opt_class();
      v220 = 138543618;
      v221 = v169;
      v222 = 2114;
      v223 = v218;
      v170 = v169;
      LODWORD(v205) = 22;
      goto LABEL_171;
    }

LABEL_173:
    v177 = a8;
    v176 = v207;
LABEL_174:
  }

  else
  {
    if (!v163)
    {
      v164 = +[SSLogConfig sharedConfig];
    }

    v171 = [v164 shouldLog];
    if ([v164 shouldLogToDisk])
    {
      v172 = v171 | 2;
    }

    else
    {
      v172 = v171;
    }

    v167 = [v164 OSLogObject];
    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      v173 = v172;
    }

    else
    {
      v173 = v172 & 2;
    }

    if (!v173)
    {
      goto LABEL_173;
    }

    v174 = objc_opt_class();
    v220 = 138543874;
    v221 = v174;
    v222 = 2114;
    v223 = v218;
    v224 = 2112;
    v225 = v15;
    v170 = v174;
    LODWORD(v205) = 32;
LABEL_171:
    v175 = _os_log_send_and_compose_impl();

    v177 = a8;
    v176 = v207;
    if (v175)
    {
      v167 = [MEMORY[0x1E696AEC0] stringWithCString:v175 encoding:{4, &v220, v205}];
      free(v175);
      SSFileLog(v164, @"%@", v178, v179, v180, v181, v182, v183, v167);
      goto LABEL_174;
    }
  }

  if (v177)
  {
    v184 = v15;
    *v177 = v15;
  }

  v185 = v162;
  v14 = v215;
LABEL_178:

  return v185;
}

+ (void)_removeAccountDictionary:(id)a3 fromKeyValueStore:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([a1 _accountDictionaryRepresentsActiveAccount:v9 inKeyValueStore:v6])
  {
    [v6 removeAccountFromDomain:@"com.apple.mobile.iTunes.store"];
    [v6 removeAccountFromDomain:@"com.apple.itunesstored"];
  }

  if ([a1 _accountDictionaryRepresentsActiveLockerAccount:v9 inKeyValueStore:v6])
  {
    [v6 setValue:0 forDomain:@"com.apple.mobile.iTunes.store" key:@"ActiveLockerAccountID"];
    [v6 setValue:0 forDomain:@"com.apple.itunesstored" key:@"ActiveLockerAccountID"];
  }

  v7 = [v6 accountDictionaries];
  v8 = [v7 mutableCopy];

  [v8 removeObject:v9];
  if (![v8 count])
  {

    v8 = 0;
  }

  [v6 setValue:v8 forDomain:@"com.apple.mobile.iTunes.store" key:@"KnownAccounts"];
}

+ (BOOL)_shouldRemoveAccountDictionaryWithoutMigration:(id)a3 reason:(id *)a4
{
  v5 = a3;
  if (![v5 count])
  {
    v7 = @"it's empty";
    goto LABEL_9;
  }

  if ([v5 count] == 1)
  {
    v6 = [v5 objectForKeyedSubscript:@"AccountSource"];

    if (v6)
    {
      v7 = @"it only has an account source";
LABEL_9:
      *a4 = v7;
      v9 = 1;
      goto LABEL_10;
    }
  }

  v8 = [v5 objectForKeyedSubscript:@"AppleID"];

  if (!v8)
  {
    v7 = @"it has no username";
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)_convertPasswordToPET:(id)a3 forAccount:(id)a4 options:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  if (SSIsInternalBuild() && (NSStringIsNotPET(v7) & 1) == 0)
  {
    v10 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v35 = v34 = 138543362;
      LODWORD(v30) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_14:

        goto LABEL_15;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v34, v30}];
      free(v14);
      SSFileLog(v10, @"%@", v15, v16, v17, v18, v19, v20, v13);
    }

    goto LABEL_14;
  }

LABEL_15:
  v21 = objc_alloc_init(SSPromise);
  v22 = [objc_opt_class() _createAuthenticationController];
  v23 = [objc_opt_class() _createAuthenticationContextForAccount:v9 silentAuthentication:1 options:v8];

  [v23 _setPassword:v7];
  v24 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  [v23 setShouldPreventInteractiveAuth:{objc_msgSend(v24, "BOOLValue")}];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __59__SSAccountStore__convertPasswordToPET_forAccount_options___block_invoke;
  v31[3] = &unk_1E84AEB70;
  v32 = v8;
  v25 = v21;
  v33 = v25;
  v26 = v8;
  [v22 authenticateWithContext:v23 completion:v31];
  v27 = v33;
  v28 = v25;

  return v25;
}

void __59__SSAccountStore__convertPasswordToPET_forAccount_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v8 = [v7 length];
  v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v35 = v34 = 138543362;
      LODWORD(v33) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        [*(a1 + 40) finishWithResult:v5];
        goto LABEL_28;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v34, v33}];
      free(v14);
      SSFileLog(v10, @"%@", v15, v16, v17, v18, v19, v20, v13);
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v21 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v10 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v22 &= 2u;
  }

  if (v22)
  {
    [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    v35 = v34 = 138543618;
    v36 = 2114;
    v37 = v6;
    LODWORD(v33) = 22;
    v24 = _os_log_send_and_compose_impl();

    if (!v24)
    {
      goto LABEL_25;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v34, v33}];
    free(v24);
    SSFileLog(v10, @"%@", v25, v26, v27, v28, v29, v30, v23);
  }

LABEL_25:
  v31 = *(a1 + 40);
  if (v6)
  {
    [v31 finishWithError:v6];
  }

  else
  {
    v32 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v31 finishWithError:v32];
  }

LABEL_28:
}

+ (id)_createAuthenticationContextForAccount:(id)a3 silentAuthentication:(BOOL)a4 options:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if ([objc_opt_class() _currentProcessLinksUIKit])
  {
    v9 = [v8 objectForKey:@"SSAccountStoreAuthKitPresentingViewController"];
    v10 = [v9 pointerValue];

    if (!v10)
    {
      v11 = SSVUIKitFramework();
      v12 = [SSVWeakLinkedClassForString(&cfstr_Uiapplication.isa v11)];
      v13 = [v12 keyWindow];
      v14 = [v13 rootViewController];

      v15 = [v14 presentedViewController];

      if (v15)
      {
        do
        {
          v10 = [v14 presentedViewController];

          v16 = [v10 presentedViewController];

          v14 = v10;
        }

        while (v16);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = v14;
        if (!v14)
        {
          goto LABEL_13;
        }
      }
    }

    v17 = SSVAuthKitUIFramework();
    v18 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Akappleidauthe.isa, v17));
    v19 = SSVUIKitFramework();
    SSVWeakLinkedClassForString(&cfstr_Uinavigationco.isa, v19);
    if (objc_opt_isKindOfClass())
    {
      v20 = [v10 topViewController];
      [v18 setPresentingViewController:v20];

      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v18 setPresentingViewController:v10];
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:
  v18 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  [v18 _setProxyingForApp:1];
LABEL_14:
  v21 = [v7 accountName];
  v22 = [v7 altDSID];
  v23 = [v22 length];

  if (v23)
  {
    v24 = [v7 altDSID];
    [v18 setAltDSID:v24];
  }

  v25 = [v7 uniqueIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = [v7 uniqueIdentifier];
    v28 = [v27 isEqualToNumber:&unk_1F507A150];

    if ((v28 & 1) == 0)
    {
      v29 = [v7 uniqueIdentifier];
      v30 = [v29 stringValue];
      [v18 setDSID:v30];
    }
  }

  v31 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];
  [v18 setDefaultButtonString:v31];

  [v18 setIsUsernameEditable:v21 == 0];
  v32 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];
  [v18 set_passwordPromptTitle:v32];

  v33 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];
  [v18 setReason:v33];

  [v18 setServiceType:2];
  [v18 setShouldAllowAppleIDCreation:0];
  [v18 setShouldForceInteractiveAuth:1];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  [v18 setUsername:v21];
  v34 = [v18 clientInfo];
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!v35)
    {
      goto LABEL_27;
    }
  }

  v36 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  if (v36)
  {
    [v35 setObject:v36 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  }

  v37 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
  if (v37)
  {
    [v35 setObject:v37 forKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
  }

LABEL_27:
  [v18 setClientInfo:v35];
  v53 = v21;
  if (v6)
  {
    v38 = 1;
  }

  else
  {
    v39 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
    v38 = [v39 BOOLValue];
  }

  [v18 setShouldPreventInteractiveAuth:v38];
  v40 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppBundleIDKey"];
  if ([v40 length])
  {
    [v18 _setProxyingForApp:1];
    [v18 _setProxiedAppBundleID:v40];
  }

  v41 = [v8 objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppNameKey"];
  if ([v41 length])
  {
    [v18 _setProxyingForApp:1];
    [v18 _setProxiedAppName:v41];
  }

  if (v6)
  {
    v52 = v7;
    v42 = SSVAppleAccountFramework();
    v43 = SSVWeakLinkedStringConstantForString("kAASaveOptionCompanionDeviceClientInfoKey", v42);
    v44 = SSVAppleAccountFramework();
    v45 = SSVWeakLinkedStringConstantForString("kAASaveOptionCompanionDeviceUDIDKey", v44);
    v51 = v43;
    v46 = [v8 objectForKeyedSubscript:v43];
    v47 = [v8 objectForKeyedSubscript:v45];
    if ([v46 length] || objc_msgSend(v47, "length"))
    {
      v48 = objc_alloc_init(MEMORY[0x1E698DD60]);
      [v48 setLinkType:2];
      [v48 setServerFriendlyDescription:v46];
      [v48 setUniqueDeviceIdentifier:v47];
      if (v48)
      {
        [v18 setCompanionDevice:v48];
      }
    }

    [v18 setIsUsernameEditable:0];
    [v18 setShouldForceInteractiveAuth:0];
    v49 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6959A90]];
    [v18 setServiceIdentifiers:v49];

    v7 = v52;
  }

  return v18;
}

+ (id)_createAuthenticationController
{
  v2 = objc_alloc_init(MEMORY[0x1E698DCC0]);

  return v2;
}

+ (id)_createUpdatedAccount:(id)a3 withAuthenticationResults:(id)a4 options:(id)a5
{
  v215 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v204 = v9;
  v13 = [v9 objectForKeyedSubscript:SSVerifyCredentialsAccountScope];
  v200 = [v13 integerValue];

  v201 = v10;
  v202 = v11;
  v203 = v12;
  v199 = v8;
  if (!v7)
  {
    v14 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = [v9 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v10 = v201;
      v20 = SSHashIfNeeded(v201);
      v21 = [v202 stringValue];
      v22 = SSHashIfNeeded(v21);
      v23 = SSHashIfNeeded(v203);
      v205 = 138544386;
      v206 = v19;
      v207 = 2114;
      v208 = v20;
      v209 = 2114;
      v210 = v22;
      v211 = 2114;
      v212 = v23;
      v213 = 2048;
      v214 = v200;
      LODWORD(v198) = 52;
      v195 = &v205;
      v24 = _os_log_send_and_compose_impl();

      v11 = v202;
      v12 = v203;

      if (v24)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v205, v198}];
        free(v24);
        SSFileLog(v14, @"%@", v26, v27, v28, v29, v30, v31, v25);
      }
    }

    else
    {

      v10 = v201;
    }

    v32 = +[SSAccountStore defaultStore];
    v7 = [v32 accountWithAltDSID:v10 uniqueIdentifier:v11 accountName:v12 scope:v200];

    v33 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v34 = v33;
    if (v7)
    {
      v8 = v199;
      if (!v33)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      v35 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v36 = v35 | 2;
      }

      else
      {
        v36 = v35;
      }

      v37 = [v34 OSLogObject];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = v36;
      }

      else
      {
        v38 = v36 & 2;
      }

      if (v38)
      {
        v39 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v205 = 138543362;
        v206 = v39;
        LODWORD(v198) = 12;
        v195 = &v205;
        v40 = _os_log_send_and_compose_impl();

        if (!v40)
        {
LABEL_29:

          goto LABEL_70;
        }

        v37 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:{4, &v205, v198}];
        free(v40);
        SSFileLog(v34, @"%@", v41, v42, v43, v44, v45, v46, v37);
      }

      goto LABEL_29;
    }

    if (!v33)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    v47 = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      v48 = v47 | 2;
    }

    else
    {
      v48 = v47;
    }

    v49 = [v34 OSLogObject];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = v48;
    }

    else
    {
      v50 = v48 & 2;
    }

    if (v50)
    {
      v51 = [v9 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v205 = 138543362;
      v206 = v51;
      LODWORD(v198) = 12;
      v196 = &v205;
      v52 = _os_log_send_and_compose_impl();

      v10 = v201;
      if (!v52)
      {
        goto LABEL_43;
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithCString:v52 encoding:{4, &v205, v198}];
      free(v52);
      SSFileLog(v34, @"%@", v53, v54, v55, v56, v57, v58, v49);
    }

    else
    {
      v10 = v201;
    }

LABEL_43:
    v7 = objc_alloc_init(SSAccount);
    v59 = [v9 objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];
    v60 = [v59 BOOLValue];

    v61 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v62 = v61;
    if (v60)
    {
      if (!v61)
      {
        v62 = +[SSLogConfig sharedConfig];
      }

      v63 = [v62 shouldLog];
      if ([v62 shouldLogToDisk])
      {
        v64 = v63 | 2;
      }

      else
      {
        v64 = v63;
      }

      v65 = [v62 OSLogObject];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v64;
      }

      else
      {
        v66 = v64 & 2;
      }

      if (!v66)
      {
        v60 = 1;
        goto LABEL_68;
      }

      v67 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v205 = 138543362;
      v206 = v67;
      LODWORD(v198) = 12;
      v195 = &v205;
      v68 = _os_log_send_and_compose_impl();

      if (!v68)
      {
        v60 = 1;
LABEL_69:

        [(SSAccount *)v7 setActive:v60];
        [(SSAccount *)v7 setAccountScope:v200];
        v8 = v199;
LABEL_70:
        v12 = v203;
        if (!v10)
        {
          goto LABEL_72;
        }

LABEL_71:
        v79 = [(SSAccount *)v7 altDSID];
        v80 = [v79 isEqualToString:v10];

        if (v80)
        {
          goto LABEL_72;
        }

        v82 = [(SSAccount *)v7 altDSID];

        if (!v82)
        {
LABEL_88:
          [(SSAccount *)v7 setAltDSID:v10, v195];
          v81 = 1;
          if (!v11)
          {
            goto LABEL_105;
          }

          goto LABEL_89;
        }

        v83 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v83)
        {
          v83 = +[SSLogConfig sharedConfig];
        }

        v84 = [v83 shouldLog];
        if ([v83 shouldLogToDisk])
        {
          v85 = v84 | 2;
        }

        else
        {
          v85 = v84;
        }

        v86 = [v83 OSLogObject];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = v85;
        }

        else
        {
          v87 = v85 & 2;
        }

        if (v87)
        {
          v88 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
          v89 = [(SSAccount *)v7 altDSID];
          v90 = SSHashIfNeeded(v89);
          SSHashIfNeeded(v10);
          v92 = v91 = v8;
          v205 = 138543874;
          v206 = v88;
          v207 = 2114;
          v208 = v90;
          v209 = 2114;
          v210 = v92;
          LODWORD(v198) = 32;
          v195 = &v205;
          v93 = _os_log_send_and_compose_impl();

          v8 = v91;
          v11 = v202;

          if (!v93)
          {
LABEL_87:

            v12 = v203;
            goto LABEL_88;
          }

          v86 = [MEMORY[0x1E696AEC0] stringWithCString:v93 encoding:{4, &v205, v198}];
          free(v93);
          SSFileLog(v83, @"%@", v94, v95, v96, v97, v98, v99, v86);
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (!v61)
      {
        v62 = +[SSLogConfig sharedConfig];
      }

      v69 = [v62 shouldLog];
      if ([v62 shouldLogToDisk])
      {
        v70 = v69 | 2;
      }

      else
      {
        v70 = v69;
      }

      v65 = [v62 OSLogObject];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v70;
      }

      else
      {
        v71 = v70 & 2;
      }

      if (!v71)
      {
        v60 = 0;
        goto LABEL_68;
      }

      v72 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v205 = 138543362;
      v206 = v72;
      LODWORD(v198) = 12;
      v195 = &v205;
      v68 = _os_log_send_and_compose_impl();

      if (!v68)
      {
        v60 = 0;
        goto LABEL_69;
      }
    }

    v65 = [MEMORY[0x1E696AEC0] stringWithCString:v68 encoding:{4, &v205, v198}];
    free(v68);
    SSFileLog(v62, @"%@", v73, v74, v75, v76, v77, v78, v65);
LABEL_68:

    goto LABEL_69;
  }

  if (v10)
  {
    goto LABEL_71;
  }

LABEL_72:
  v81 = 0;
  if (!v11)
  {
    goto LABEL_105;
  }

LABEL_89:
  v100 = [(SSAccount *)v7 uniqueIdentifier];
  v101 = [v100 isEqualToNumber:v11];

  if ((v101 & 1) == 0)
  {
    v102 = [(SSAccount *)v7 uniqueIdentifier];

    if (!v102)
    {
LABEL_104:
      [(SSAccount *)v7 setUniqueIdentifier:v11, v195];
      v81 = 1;
      goto LABEL_105;
    }

    v103 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v103)
    {
      v103 = +[SSLogConfig sharedConfig];
    }

    v104 = [v103 shouldLog];
    if ([v103 shouldLogToDisk])
    {
      v105 = v104 | 2;
    }

    else
    {
      v105 = v104;
    }

    v106 = [v103 OSLogObject];
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = v105;
    }

    else
    {
      v107 = v105 & 2;
    }

    if (v107)
    {
      v108 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v109 = [(SSAccount *)v7 uniqueIdentifier];
      v110 = [v109 stringValue];
      v111 = SSHashIfNeeded(v110);
      v112 = [v202 stringValue];
      v113 = SSHashIfNeeded(v112);
      v205 = 138543874;
      v206 = v108;
      v207 = 2114;
      v208 = v111;
      v209 = 2114;
      v210 = v113;
      LODWORD(v198) = 32;
      v195 = &v205;
      v114 = _os_log_send_and_compose_impl();

      v8 = v199;
      v11 = v202;

      if (!v114)
      {
LABEL_103:

        v12 = v203;
        goto LABEL_104;
      }

      v106 = [MEMORY[0x1E696AEC0] stringWithCString:v114 encoding:{4, &v205, v198}];
      free(v114);
      SSFileLog(v103, @"%@", v115, v116, v117, v118, v119, v120, v106);
    }

    goto LABEL_103;
  }

LABEL_105:
  if (v12)
  {
    v121 = [(SSAccount *)v7 accountName];
    v122 = [v121 isEqualToString:v12];

    if ((v122 & 1) == 0)
    {
      v123 = [(SSAccount *)v7 accountName];

      if (!v123)
      {
LABEL_122:
        [(SSAccount *)v7 setAccountName:v12, v195];
        goto LABEL_123;
      }

      v124 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v124)
      {
        v124 = +[SSLogConfig sharedConfig];
      }

      v125 = [v124 shouldLog];
      if ([v124 shouldLogToDisk])
      {
        v125 |= 2u;
      }

      v126 = [v124 OSLogObject];
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        v127 = v125;
      }

      else
      {
        v127 = v125 & 2;
      }

      if (v127)
      {
        v128 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v129 = [(SSAccount *)v7 accountName];
        v130 = SSHashIfNeeded(v129);
        v131 = SSHashIfNeeded(v203);
        v205 = 138543874;
        v206 = v128;
        v207 = 2114;
        v208 = v130;
        v209 = 2114;
        v210 = v131;
        LODWORD(v198) = 32;
        v195 = &v205;
        v132 = _os_log_send_and_compose_impl();

        if (!v132)
        {
LABEL_121:

          v12 = v203;
          goto LABEL_122;
        }

        v126 = [MEMORY[0x1E696AEC0] stringWithCString:v132 encoding:{4, &v205, v198}];
        free(v132);
        SSFileLog(v124, @"%@", v133, v134, v135, v136, v137, v138, v126);
      }

      goto LABEL_121;
    }
  }

  if (!v81)
  {
    goto LABEL_171;
  }

LABEL_123:
  v139 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v139)
  {
    v139 = +[SSLogConfig sharedConfig];
  }

  v140 = [v139 shouldLog];
  if ([v139 shouldLogToDisk])
  {
    v140 |= 2u;
  }

  v141 = [v139 OSLogObject];
  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    v142 = v140;
  }

  else
  {
    v142 = v140 & 2;
  }

  if (v142)
  {
    v143 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    v205 = 138543362;
    v206 = v143;
    LODWORD(v198) = 12;
    v197 = &v205;
    v144 = _os_log_send_and_compose_impl();

    if (!v144)
    {
      goto LABEL_134;
    }

    v141 = [MEMORY[0x1E696AEC0] stringWithCString:v144 encoding:{4, &v205, v198}];
    free(v144);
    SSFileLog(v139, @"%@", v145, v146, v147, v148, v149, v150, v141);
  }

LABEL_134:
  v151 = +[SSAccountStore defaultStore];
  v152 = [(SSAccount *)v7 altDSID];
  v153 = [(SSAccount *)v7 uniqueIdentifier];
  v154 = [(SSAccount *)v7 accountName];
  v155 = [v151 accountWithAltDSID:v152 uniqueIdentifier:v153 accountName:v154 scope:v200];

  if (v155)
  {
    v156 = [v155 backingAccount];
    v157 = [v156 identifier];
    v158 = [(SSAccount *)v7 backingAccount];
    v159 = [v158 identifier];
    v160 = [v157 isEqualToString:v159];

    v161 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v162 = v161;
    if (v160)
    {
      if (!v161)
      {
        v162 = +[SSLogConfig sharedConfig];
      }

      v163 = [v162 shouldLog];
      if ([v162 shouldLogToDisk])
      {
        v163 |= 2u;
      }

      v164 = [v162 OSLogObject];
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        v165 = v163;
      }

      else
      {
        v165 = v163 & 2;
      }

      if (v165)
      {
        goto LABEL_153;
      }

LABEL_165:
      v8 = v199;
      goto LABEL_166;
    }

    if (!v161)
    {
      v162 = +[SSLogConfig sharedConfig];
    }

    v176 = [v162 shouldLog];
    if ([v162 shouldLogToDisk])
    {
      v176 |= 2u;
    }

    v177 = [v162 OSLogObject];
    if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
    {
      v178 = v176;
    }

    else
    {
      v178 = v176 & 2;
    }

    if (v178)
    {
      v179 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v180 = [v155 hashedDescription];
      v205 = 138543618;
      v206 = v179;
      v207 = 2114;
      v208 = v180;
      LODWORD(v198) = 22;
      v195 = &v205;
      v181 = _os_log_send_and_compose_impl();

      v8 = v199;
      if (!v181)
      {
LABEL_169:

        v162 = v7;
        v7 = v155;
        goto LABEL_170;
      }

      v177 = [MEMORY[0x1E696AEC0] stringWithCString:v181 encoding:{4, &v205, v198}];
      free(v181);
      SSFileLog(v162, @"%@", v182, v183, v184, v185, v186, v187, v177);
    }

    else
    {
      v8 = v199;
    }

    goto LABEL_169;
  }

  v162 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v162)
  {
    v162 = +[SSLogConfig sharedConfig];
  }

  v166 = [v162 shouldLog];
  if ([v162 shouldLogToDisk])
  {
    v166 |= 2u;
  }

  v164 = [v162 OSLogObject];
  if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
  {
    v167 = v166;
  }

  else
  {
    v167 = v166 & 2;
  }

  if (!v167)
  {
    goto LABEL_165;
  }

LABEL_153:
  v168 = [v204 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v205 = 138543362;
  v206 = v168;
  LODWORD(v198) = 12;
  v195 = &v205;
  v169 = _os_log_send_and_compose_impl();

  v8 = v199;
  if (v169)
  {
    v164 = [MEMORY[0x1E696AEC0] stringWithCString:v169 encoding:{4, &v205, v198}];
    free(v169);
    SSFileLog(v162, @"%@", v170, v171, v172, v173, v174, v175, v164);
LABEL_166:
  }

LABEL_170:

  v12 = v203;
LABEL_171:
  v188 = [v8 objectForKeyedSubscript:{*MEMORY[0x1E698DBC8], v195}];
  if (v188)
  {
    v189 = [(SSAccount *)v7 passwordEquivalentToken];
    v190 = [v189 isEqualToString:v188];

    if ((v190 & 1) == 0)
    {
      [(SSAccount *)v7 setPasswordEquivalentToken:v188];
    }
  }

  v191 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  if (v191)
  {
    v192 = [(SSAccount *)v7 rawPassword];
    v193 = [v192 isEqualToString:v191];

    if ((v193 & 1) == 0)
    {
      [(SSAccount *)v7 setRawPassword:v191];
    }
  }

  return v7;
}

- (id)_optionsForProxiedAuthenticationWithVerifyCredentialsOptions:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SSAccountStoresProxiedDeviceFlagKey"];
  v5 = [MEMORY[0x1E698DD60] currentDevice];
  [v5 setLinkType:2];
  v6 = [v5 serializedData];
  if (v6)
  {
    v7 = SSVAppleAccountFramework();
    v8 = SSVWeakLinkedStringConstantForString("kAAErrorDetailsProxiedDeviceDataKey", v7);
    [v4 setObject:v6 forKeyedSubscript:v8];

    goto LABEL_15;
  }

  v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  [v3 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v23 = v22 = 138543362;
  LODWORD(v21) = 12;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v21}];
    free(v13);
    SSFileLog(v9, @"%@", v14, v15, v16, v17, v18, v19, v12);
LABEL_13:
  }

  v4 = 0;
LABEL_15:

  return v4;
}

- (id)_shouldCreateNewAccountForAccount:(id)a3 options:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountName];
  if (v8 || ([v6 altDSID], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *location = 138543618;
      *&location[4] = self;
      v78 = v77 = 2114;
      LODWORD(v72) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, location, v72}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }

    else
    {
    }

    v22 = [SSPromise promiseWithResult:&unk_1F507A168];
    goto LABEL_17;
  }

  v25 = [v6 uniqueIdentifier];

  if (v25)
  {
    goto LABEL_4;
  }

  v26 = [v7 objectForKeyedSubscript:SSVerifyCredentialsAccountScope];
  v27 = [v26 integerValue];

  if (v27 == 1)
  {
    v28 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    v29 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v31 = [v28 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v30;
    }

    else
    {
      v32 = v30 & 2;
    }

    if (!v32)
    {

      goto LABEL_75;
    }

    [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v78 = v77 = 2114;
    LODWORD(v72) = 22;
    v33 = _os_log_send_and_compose_impl();

    if (v33)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

  v34 = [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitCanCreateNewAccountKey"];
  v35 = [v34 BOOLValue];

  v36 = [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  v37 = [v36 BOOLValue];

  if (!v35 || v37)
  {
    v28 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    v51 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v52 = v51 | 2;
    }

    else
    {
      v52 = v51;
    }

    v53 = [v28 OSLogObject];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v52;
    }

    else
    {
      v54 = v52 & 2;
    }

    if (!v54)
    {

      goto LABEL_75;
    }

    [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v78 = v77 = 2114;
    LODWORD(v72) = 22;
    v33 = _os_log_send_and_compose_impl();

    if (v33)
    {
LABEL_47:
      v44 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:{4, location, v72}];
      free(v33);
      SSFileLog(v28, @"%@", v45, v46, v47, v48, v49, v50, v44);
    }

LABEL_75:

    v22 = [SSPromise promiseWithResult:&unk_1F507A180];
LABEL_17:
    v23 = v22;
    goto LABEL_18;
  }

  v38 = [objc_opt_class() _isBuddyRunning];
  v39 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v28 = v39;
  if (v38)
  {
    if (!v39)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    v40 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v41 = v40 | 2;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v28 OSLogObject];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v41;
    }

    else
    {
      v43 = v41 & 2;
    }

    if (!v43)
    {

      goto LABEL_75;
    }

    [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v78 = v77 = 2114;
    LODWORD(v72) = 22;
    v33 = _os_log_send_and_compose_impl();

    if (v33)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

  if (!v39)
  {
    v28 = +[SSLogConfig sharedConfig];
  }

  v55 = [v28 shouldLog];
  if ([v28 shouldLogToDisk])
  {
    v56 = v55 | 2;
  }

  else
  {
    v56 = v55;
  }

  v57 = [v28 OSLogObject];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = v56;
  }

  else
  {
    v58 = v56 & 2;
  }

  if (v58)
  {
    [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *location = 138543618;
    *&location[4] = self;
    v78 = v77 = 2114;
    LODWORD(v72) = 22;
    v59 = _os_log_send_and_compose_impl();

    if (v59)
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:{4, location, v72}];
      free(v59);
      SSFileLog(v28, @"%@", v61, v62, v63, v64, v65, v66, v60);
    }
  }

  else
  {
  }

  v67 = objc_alloc_init(SSPromise);
  v68 = SSViTunesStoreFramework();
  v69 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Iscreateaccoun.isa, v68));
  objc_initWeak(location, v69);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __60__SSAccountStore__shouldCreateNewAccountForAccount_options___block_invoke;
  v73[3] = &unk_1E84AD870;
  objc_copyWeak(&v75, location);
  v23 = v67;
  v74 = v23;
  [v69 setCompletionBlock:v73];
  v70 = SSViTunesStoreFramework();
  v71 = [SSVWeakLinkedClassForString(&cfstr_Isoperationque.isa v70)];
  [v71 addOperation:v69];

  objc_destroyWeak(&v75);
  objc_destroyWeak(location);

LABEL_18:

  return v23;
}

void __60__SSAccountStore__shouldCreateNewAccountForAccount_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(WeakRetained, "responseType")}];
  [v2 finishWithResult:v3];
}

+ (BOOL)_allowSilentPasswordAuthForAccount:(id)a3 withOptions:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 _isBuddyRunning])
  {
    goto LABEL_15;
  }

  if ([v6 isDemoAccount])
  {
    v8 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = v12;
      [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v27 = 138543618;
      v28 = v12;
      v30 = v29 = 2114;
      LODWORD(v26) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_14:

LABEL_15:
        v21 = 1;
        goto LABEL_16;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v27, v26}];
      free(v14);
      SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v11);
    }

    goto LABEL_14;
  }

  v23 = [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];
  v21 = [v23 BOOLValue];

  if (+[SSDevice deviceIsAppleWatch])
  {
    v24 = [v7 objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];
    v25 = v24;
    if (v24)
    {
      v21 = [v24 BOOLValue];
    }

    else
    {
      v21 = 1;
    }
  }

LABEL_16:

  return v21;
}

- (id)_updateAccountWithAuthKitViaPromptAuth:(id)a3 store:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [SSLazyPromise alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke;
  v16[3] = &unk_1E84AEBC0;
  objc_copyWeak(&v19, &location);
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v14 = [(SSLazyPromise *)v11 initWithBlock:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

void __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke(id *a1, void *a2)
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if ([objc_opt_class() _isBuddyRunning])
  {
    v5 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (!v9)
    {

      goto LABEL_49;
    }

    [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *(location + 4) = LODWORD(location[0]) = 138543362;
    LODWORD(v57) = 12;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

  v18 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    v5 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v20 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v5 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (!v23)
    {

      goto LABEL_49;
    }

    [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    *(location + 4) = LODWORD(location[0]) = 138543362;
    LODWORD(v57) = 12;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
LABEL_12:
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, location, v57}];
      free(v10);
      SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
    }

LABEL_49:

    v49 = SSError(@"SSErrorDomain", 132, 0, 0);
    [v3 finishWithError:v49];
    goto LABEL_54;
  }

  if (a1[6] || !SSRestrictionsShouldRestrictAccountModification())
  {
    v37 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    v38 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v39 = v38 | 2;
    }

    else
    {
      v39 = v38;
    }

    v40 = [v37 OSLogObject];
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v39 &= 2u;
    }

    if (v39)
    {
      [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *(location + 4) = LODWORD(location[0]) = 138543362;
      LODWORD(v57) = 12;
      v41 = _os_log_send_and_compose_impl();

      if (v41)
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:{4, location, v57}];
        free(v41);
        SSFileLog(v37, @"%@", v43, v44, v45, v46, v47, v48, v42);
      }
    }

    else
    {
    }

    v49 = [objc_opt_class() _createAuthenticationController];
    v50 = a1 + 6;
    v51 = a1 + 5;
    v52 = [objc_opt_class() _createAuthenticationContextForAccount:a1[6] silentAuthentication:0 options:a1[5]];
    v54 = a1[4];
    v53 = a1 + 4;
    [v49 setDelegate:v54];
    objc_initWeak(location, *v53);
    objc_initWeak(&from, v49);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke_363;
    v58[3] = &unk_1E84AEB98;
    objc_copyWeak(&v64, location);
    objc_copyWeak(&v65, &from);
    v55 = v52;
    v56 = *v53;
    v59 = v55;
    v60 = v56;
    v61 = *v50;
    v62 = *v51;
    v63 = v3;
    [v49 authenticateWithContext:v55 completion:v58];

    objc_destroyWeak(&v65);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v24 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (v28)
    {
      [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *(location + 4) = LODWORD(location[0]) = 138543362;
      LODWORD(v57) = 12;
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, location, v57}];
        free(v29);
        SSFileLog(v24, @"%@", v31, v32, v33, v34, v35, v36, v30);
      }
    }

    else
    {
    }

    v49 = SSError(@"SSErrorDomain", 107, 0, 0);
    [v3 finishWithError:v49];
  }

LABEL_54:
}

void __71__SSAccountStore__updateAccountWithAuthKitViaPromptAuth_store_options___block_invoke_363(uint64_t a1, void *a2, void *a3)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v44 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = objc_loadWeakRetained((a1 + 80));
  [v7 setDelegate:0];

  v8 = objc_alloc_init(SSMetricsDialogEvent);
  [(SSMetricsDialogEvent *)v8 setDialogType:@"SignIn"];
  [(SSMetricsMutableEvent *)v8 setEventType:@"dialog"];
  v42 = [*(a1 + 32) username];
  v9 = [v42 length];
  v10 = SSMetricsDialogEventIdPassword;
  if (!v9)
  {
    v10 = SSMetricsDialogEventIdUserNamePassword;
  }

  v41 = *v10;
  [(SSMetricsDialogEvent *)v8 setDialogId:?];
  if (v5)
  {
    if ([v5 code] == -7003)
    {
      [(SSMetricsDialogEvent *)v8 setActionType:@"cancel"];
      [(SSMetricsDialogEvent *)v8 setTargetId:@"Cancel"];
    }

    else
    {
      [(SSMetricsDialogEvent *)v8 setTargetId:@"Ok"];
      [(SSMetricsDialogEvent *)v8 setActionType:@"enterPassword"];
    }

    v11 = SSMetricsDialogEventResultFailure;
  }

  else
  {
    [(SSMetricsDialogEvent *)v8 setTargetId:@"Ok"];
    [(SSMetricsDialogEvent *)v8 setActionType:@"ok"];
    v11 = SSMetricsDialogEventResultSuccess;
  }

  [(SSMetricsDialogEvent *)v8 setResult:*v11];
  v12 = [*(a1 + 32) clientInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKey:@"metricsAuthenticationAttempts"];
    [(SSMetricsDialogEvent *)v8 setUserActions:v13];
  }

  v43 = WeakRetained;
  v14 = [v12 objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  v40 = v14;
  if (v14)
  {
    v15 = [v14 objectForKeyedSubscript:@"product"];
    v16 = v15;
    if (v15)
    {
      v53 = @"buyParams";
      v54[0] = v15;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      [(SSMetricsDialogEvent *)v8 setDetails:v17];

      v18 = [*(a1 + 40) _buyParamsForBuyParamsString:v16];
      v19 = [v18 objectForKeyedSubscript:@"mtTopic"];
      if (v19)
      {
        [(SSMetricsMutableEvent *)v8 setTopic:v19];
      }
    }

    else
    {
      v51 = @"buyParams";
      v52 = MEMORY[0x1E695E0F8];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      [(SSMetricsDialogEvent *)v8 setDetails:v18];
      v19 = 0;
    }
  }

  else
  {
    v49 = @"buyParams";
    v50 = MEMORY[0x1E695E0F8];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [(SSMetricsDialogEvent *)v8 setDetails:v16];
    v19 = 0;
  }

  v20 = [v12 objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
  if (v20)
  {
    [(SSMetricsMutableEvent *)v8 setProperty:v20 forBodyKey:@"userAgent"];
  }

  if (v8)
  {
    [*(a1 + 40) _recordAnalyticsForMetricsDialogEvent:v8 withTopic:v19];
  }

  v21 = [v44 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  if ([v21 length])
  {
    v22 = v43;
    v23 = [objc_opt_class() _createUpdatedAccount:*(a1 + 48) withAuthenticationResults:v44 options:*(a1 + 56)];
    v24 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:v23 credentialSource:1];
    [*(a1 + 64) finishWithResult:v24];

    goto LABEL_39;
  }

  v39 = v5;
  v25 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v25 OSLogObject];
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_34;
  }

  [*(a1 + 56) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v46 = v45 = 138543618;
  v47 = 2112;
  v48 = v39;
  LODWORD(v38) = 22;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v45, v38}];
    free(v29);
    SSFileLog(v25, @"%@", v30, v31, v32, v33, v34, v35, v28);
LABEL_34:
  }

  v36 = *(a1 + 64);
  v5 = v39;
  if (v39)
  {
    [*(a1 + 64) finishWithError:v39];
  }

  else
  {
    v37 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v36 finishWithError:v37];
  }

  v22 = v43;
LABEL_39:
}

- (id)_updateAccountWithAuthKitViaSilentAuth:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [SSLazyPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke;
  v13[3] = &unk_1E84AEC10;
  objc_copyWeak(&v16, &location);
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [(SSLazyPromise *)v8 initWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke(id *a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (a1[4])
  {
    v5 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];
    v6 = [v5 BOOLValue];

    if (+[SSDevice deviceIsAppleWatch])
    {
      v7 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];
      v8 = v7;
      if (v7)
      {
        v6 = [v7 BOOLValue];
      }

      else
      {
        v6 = 1;
      }
    }

    if ([objc_opt_class() _isBuddyRunning])
    {
      v23 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      v24 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        v25 = v24 | 2;
      }

      else
      {
        v25 = v24;
      }

      v26 = [v23 OSLogObject];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v69 = 138543362;
        v70 = v27;
        LODWORD(v63) = 12;
        v62 = &v69;
        v28 = _os_log_send_and_compose_impl();

        if (v28)
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v69, v63}];
          free(v28);
          SSFileLog(v23, @"%@", v30, v31, v32, v33, v34, v35, v29);
        }
      }

      else
      {
      }

LABEL_45:
      v49 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v49)
      {
        v49 = +[SSLogConfig sharedConfig];
      }

      v50 = [v49 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        v51 = v50 | 2;
      }

      else
      {
        v51 = v50;
      }

      v52 = [v49 OSLogObject];
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v51 &= 2u;
      }

      if (v51)
      {
        v53 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v69 = 138543362;
        v70 = v53;
        LODWORD(v63) = 12;
        v54 = _os_log_send_and_compose_impl();

        if (!v54)
        {
LABEL_56:

          v22 = [objc_opt_class() _createAuthenticationController];
          v61 = [objc_opt_class() _createAuthenticationContextForAccount:a1[4] silentAuthentication:1 options:a1[5]];
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke_369;
          v64[3] = &unk_1E84AEBE8;
          objc_copyWeak(&v68, a1 + 6);
          v65 = a1[5];
          v66 = a1[4];
          v67 = v3;
          [v22 authenticateWithContext:v61 completion:v64];

          objc_destroyWeak(&v68);
          goto LABEL_59;
        }

        v52 = [MEMORY[0x1E696AEC0] stringWithCString:v54 encoding:{4, &v69, v63}];
        free(v54);
        SSFileLog(v49, @"%@", v55, v56, v57, v58, v59, v60, v52);
      }

      goto LABEL_56;
    }

    if (v6)
    {
      goto LABEL_45;
    }

    v36 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v70 = v69 = 138543362;
      LODWORD(v63) = 12;
      v41 = _os_log_send_and_compose_impl();

      if (v41)
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:{4, &v69, v63}];
        free(v41);
        SSFileLog(v36, @"%@", v43, v44, v45, v46, v47, v48, v42);
      }
    }

    else
    {
    }

    v22 = SSError(@"SSErrorDomain", 106, 0, @"Silent authentication isn't allowed.");
    [v3 finishWithError:v22];
  }

  else
  {
    v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v70 = v69 = 138543362;
      LODWORD(v63) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v69, v63}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }

    else
    {
    }

    v22 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v3 finishWithError:v22];
  }

LABEL_59:
}

void __65__SSAccountStore__updateAccountWithAuthKitViaSilentAuth_options___block_invoke_369(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v9 = [v8 length];
  v10 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v37 = v36 = 138543362;
      LODWORD(v35) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        v22 = [objc_opt_class() _createUpdatedAccount:*(a1 + 40) withAuthenticationResults:v5 options:*(a1 + 32)];
        v23 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:v22 credentialSource:3];
        [*(a1 + 48) finishWithResult:v23];

        goto LABEL_14;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v36, v35}];
      free(v15);
      SSFileLog(v11, @"%@", v16, v17, v18, v19, v20, v21, v14);
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v24 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v11 OSLogObject];
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v25 &= 2u;
  }

  if (!v25)
  {
    goto LABEL_25;
  }

  [*(a1 + 32) objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  v37 = v36 = 138543618;
  v38 = 2112;
  v39 = v6;
  LODWORD(v35) = 22;
  v27 = _os_log_send_and_compose_impl();

  if (v27)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v36, v35}];
    free(v27);
    SSFileLog(v11, @"%@", v28, v29, v30, v31, v32, v33, v26);
LABEL_25:
  }

  v34 = *(a1 + 48);
  if (v6)
  {
    [v34 finishWithError:v6];
    goto LABEL_28;
  }

  v22 = SSError(@"SSErrorDomain", 100, 0, 0);
  [v34 finishWithError:v22];
LABEL_14:

LABEL_28:
}

- (id)_updateAccountWithAuthKitViaSilentPasswordAuth:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [SSLazyPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke;
  v13[3] = &unk_1E84AEBC0;
  objc_copyWeak(&v17, &location);
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = self;
  v11 = [(SSLazyPromise *)v8 initWithBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke(id *a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (a1[4])
  {
    if ([objc_opt_class() _allowSilentPasswordAuthForAccount:a1[4] withOptions:a1[5]])
    {
      v5 = [a1[4] rawPassword];
      v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      v7 = v6;
      if (v5)
      {
        if (!v6)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v9 = v8 | 2;
        }

        else
        {
          v9 = v8;
        }

        v10 = [v7 OSLogObject];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v9 &= 2u;
        }

        if (v9)
        {
          [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
          v68 = v67 = 138543362;
          LODWORD(v59) = 12;
          v11 = _os_log_send_and_compose_impl();

          if (v11)
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v67, v59}];
            free(v11);
            SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v12);
          }
        }

        else
        {
        }

        v57 = [a1[6] _convertPasswordToPET:v5 forAccount:a1[4] options:a1[5]];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_373;
        v62[3] = &unk_1E84AEC38;
        objc_copyWeak(&v66, a1 + 7);
        v63 = a1[4];
        v64 = a1[5];
        v58 = v3;
        v65 = v58;
        [v57 addSuccessBlock:v62];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_2;
        v60[3] = &unk_1E84AD730;
        v61 = v58;
        [v57 addErrorBlock:v60];

        objc_destroyWeak(&v66);
      }

      else
      {
        if (!v6)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v45 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v46 = v45 | 2;
        }

        else
        {
          v46 = v45;
        }

        v47 = [v7 OSLogObject];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v46;
        }

        else
        {
          v48 = v46 & 2;
        }

        if (v48)
        {
          [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
          v68 = v67 = 138543362;
          LODWORD(v59) = 12;
          v49 = _os_log_send_and_compose_impl();

          if (v49)
          {
            v50 = [MEMORY[0x1E696AEC0] stringWithCString:v49 encoding:{4, &v67, v59}];
            free(v49);
            SSFileLog(v7, @"%@", v51, v52, v53, v54, v55, v56, v50);
          }
        }

        else
        {
        }

        v57 = SSError(@"SSErrorDomain", 139, 0, 0);
        [v3 finishWithError:v57];
      }
    }

    else
    {
      v32 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v32)
      {
        v32 = +[SSLogConfig sharedConfig];
      }

      v33 = [v32 shouldLog];
      if ([v32 shouldLogToDisk])
      {
        v34 = v33 | 2;
      }

      else
      {
        v34 = v33;
      }

      v35 = [v32 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v34;
      }

      else
      {
        v36 = v34 & 2;
      }

      if (v36)
      {
        [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
        v68 = v67 = 138543362;
        LODWORD(v59) = 12;
        v37 = _os_log_send_and_compose_impl();

        if (v37)
        {
          v38 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v67, v59}];
          free(v37);
          SSFileLog(v32, @"%@", v39, v40, v41, v42, v43, v44, v38);
        }
      }

      else
      {
      }

      v5 = SSError(@"SSErrorDomain", 106, 0, @"Silent password authentication isn't allowed.");
      [v3 finishWithError:v5];
    }
  }

  else
  {
    v19 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      v68 = v67 = 138543362;
      LODWORD(v59) = 12;
      v24 = _os_log_send_and_compose_impl();

      if (v24)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v67, v59}];
        free(v24);
        SSFileLog(v19, @"%@", v26, v27, v28, v29, v30, v31, v25);
      }
    }

    else
    {
    }

    v5 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v3 finishWithError:v5];
  }
}

void __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_373(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [objc_opt_class() _createUpdatedAccount:*(a1 + 32) withAuthenticationResults:v3 options:*(a1 + 40)];

  v5 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:v4 credentialSource:5];
  [*(a1 + 48) finishWithResult:v5];
}

void __73__SSAccountStore__updateAccountWithAuthKitViaSilentPasswordAuth_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    [v2 finishWithError:v4];
  }
}

- (id)_updateAccountWithAuthKitViaSilentPETAuth:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [SSLazyPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SSAccountStore__updateAccountWithAuthKitViaSilentPETAuth_options___block_invoke;
  v13[3] = &unk_1E84AEC10;
  objc_copyWeak(&v16, &location);
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [(SSLazyPromise *)v8 initWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __68__SSAccountStore__updateAccountWithAuthKitViaSilentPETAuth_options___block_invoke(id *a1, void *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!a1[4])
  {
    v33 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    v34 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v35 = v34 | 2;
    }

    else
    {
      v35 = v34;
    }

    v36 = [v33 OSLogObject];
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v35 &= 2u;
    }

    if (v35)
    {
      [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *(&v102 + 4) = LODWORD(v102) = 138543362;
      LODWORD(v101) = 12;
      v37 = _os_log_send_and_compose_impl();

      if (!v37)
      {
LABEL_42:

        v44 = 100;
LABEL_43:
        v45 = 0;
LABEL_56:
        v6 = SSError(@"SSErrorDomain", v44, 0, v45);
        [v3 finishWithError:v6];
        goto LABEL_57;
      }

      v36 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v102, v101}];
      free(v37);
      SSFileLog(v33, @"%@", v38, v39, v40, v41, v42, v43, v36);
    }

    goto LABEL_42;
  }

  if (([objc_opt_class() _allowSilentPasswordAuthForAccount:a1[4] withOptions:a1[5]] & 1) == 0)
  {
    v46 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v46)
    {
      v46 = +[SSLogConfig sharedConfig];
    }

    v47 = [v46 shouldLog];
    if ([v46 shouldLogToDisk])
    {
      v48 = v47 | 2;
    }

    else
    {
      v48 = v47;
    }

    v49 = [v46 OSLogObject];
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v48 &= 2u;
    }

    if (v48)
    {
      [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      *(&v102 + 4) = LODWORD(v102) = 138543362;
      LODWORD(v101) = 12;
      v50 = _os_log_send_and_compose_impl();

      if (!v50)
      {
LABEL_55:

        v45 = @"Silent password authentication isn't allowed.";
        v44 = 106;
        goto LABEL_56;
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithCString:v50 encoding:{4, &v102, v101}];
      free(v50);
      SSFileLog(v46, @"%@", v51, v52, v53, v54, v55, v56, v49);
    }

    goto LABEL_55;
  }

  v5 = [a1[4] passwordEquivalentToken];
  if (!v5)
  {
    v57 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventSecondaryAccountPETLookup"];
    v58 = [v57 BOOLValue];

    v59 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v60 = v59;
    if (v58)
    {
      if (!v59)
      {
        v60 = +[SSLogConfig sharedConfig];
      }

      v61 = [v60 shouldLog];
      if ([v60 shouldLogToDisk])
      {
        v62 = v61 | 2;
      }

      else
      {
        v62 = v61;
      }

      v63 = [v60 OSLogObject];
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v62 &= 2u;
      }

      if (!v62)
      {
        goto LABEL_103;
      }

      v64 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v102) = 138543362;
      *(&v102 + 4) = v64;
      LODWORD(v101) = 12;
LABEL_101:
      v93 = _os_log_send_and_compose_impl();

      if (!v93)
      {
LABEL_104:

        v44 = 139;
        goto LABEL_43;
      }

      v63 = [MEMORY[0x1E696AEC0] stringWithCString:v93 encoding:{4, &v102, v101, v102}];
      free(v93);
      SSFileLog(v60, @"%@", v94, v95, v96, v97, v98, v99, v63);
LABEL_103:

      goto LABEL_104;
    }

    if (!v59)
    {
      v60 = +[SSLogConfig sharedConfig];
    }

    v65 = [v60 shouldLog];
    if ([v60 shouldLogToDisk])
    {
      v66 = v65 | 2;
    }

    else
    {
      v66 = v65;
    }

    v67 = [v60 OSLogObject];
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v66 &= 2u;
    }

    if (v66)
    {
      v68 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v102) = 138543362;
      *(&v102 + 4) = v68;
      LODWORD(v101) = 12;
      v100 = &v102;
      v69 = _os_log_send_and_compose_impl();

      if (!v69)
      {
        goto LABEL_79;
      }

      v67 = [MEMORY[0x1E696AEC0] stringWithCString:v69 encoding:{4, &v102, v101}];
      free(v69);
      SSFileLog(v60, @"%@", v70, v71, v72, v73, v74, v75, v67);
    }

LABEL_79:
    v76 = [a1[4] altDSID];
    v77 = [a1[4] uniqueIdentifier];
    v78 = [a1[4] accountName];
    v6 = [WeakRetained _passwordEquivalentTokenFromAlternateAccountWithAltDSID:v76 DSID:v77 username:v78];

    v79 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    v60 = v79;
    if (!v6)
    {
      if (!v79)
      {
        v60 = +[SSLogConfig sharedConfig];
      }

      v91 = [v60 shouldLog];
      if ([v60 shouldLogToDisk])
      {
        v92 = v91 | 2;
      }

      else
      {
        v92 = v91;
      }

      v63 = [v60 OSLogObject];
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v92 &= 2u;
      }

      if (!v92)
      {
        goto LABEL_103;
      }

      v64 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v102) = 138543362;
      *(&v102 + 4) = v64;
      LODWORD(v101) = 12;
      goto LABEL_101;
    }

    if (!v79)
    {
      v60 = +[SSLogConfig sharedConfig];
    }

    v80 = [v60 shouldLog];
    if ([v60 shouldLogToDisk])
    {
      v81 = v80 | 2;
    }

    else
    {
      v81 = v80;
    }

    v82 = [v60 OSLogObject];
    if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v81 &= 2u;
    }

    if (v81)
    {
      v83 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
      LODWORD(v102) = 138543362;
      *(&v102 + 4) = v83;
      LODWORD(v101) = 12;
      v100 = &v102;
      v84 = _os_log_send_and_compose_impl();

      if (!v84)
      {
LABEL_91:

        [a1[4] setPasswordEquivalentToken:v6];
        v19 = 2;
        goto LABEL_16;
      }

      v82 = [MEMORY[0x1E696AEC0] stringWithCString:v84 encoding:{4, &v102, v101}];
      free(v84);
      SSFileLog(v60, @"%@", v85, v86, v87, v88, v89, v90, v82);
    }

    goto LABEL_91;
  }

  v6 = v5;
  v7 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  LODWORD(v102) = 138543362;
  *(&v102 + 4) = v11;
  LODWORD(v101) = 12;
  v100 = &v102;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v102, v101}];
    free(v12);
    SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v10);
LABEL_14:
  }

  v19 = 4;
LABEL_16:
  if (!SSIsInternalBuild() || !NSStringIsNotPET(v6))
  {
    goto LABEL_30;
  }

  v20 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  v21 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v20 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_28;
  }

  v24 = [a1[5] objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
  LODWORD(v102) = 138543362;
  *(&v102 + 4) = v24;
  LODWORD(v101) = 12;
  v25 = _os_log_send_and_compose_impl();

  if (v25)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v102, v101}];
    free(v25);
    SSFileLog(v20, @"%@", v26, v27, v28, v29, v30, v31, v23);
LABEL_28:
  }

LABEL_30:
  v32 = [[SSUpdateAccountResponse alloc] initWithUpdatedAccount:a1[4] credentialSource:v19];
  [v3 finishWithResult:v32];

LABEL_57:
}

- (id)addAccount:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(SSAccountStore *)self saveAccount:v4 error:0])
  {
    v5 = [objc_opt_class() _refreshAccount:v4];
  }

  return v5;
}

- (BOOL)isExpiredForTokenType:(int64_t)a3
{
  v4 = objc_opt_class();

  return [v4 isExpiredForTokenType:a3];
}

- (void)setAccountCredits:(id)a3 forAccountWithUniqueIdentifier:(id)a4
{
  v8 = a3;
  v6 = [(SSAccountStore *)self accountWithUniqueIdentifier:a4];
  v7 = v6;
  if (v6)
  {
    [v6 setCreditsString:v8];
  }
}

- (id)setActiveAccount:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v42 = 138543362;
      v43 = objc_opt_class();
      v11 = v43;
      LODWORD(v40) = 12;
      v39 = &v42;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
        goto LABEL_15;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v42, v40}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v10);
    }

LABEL_15:
    v19 = [(SSAccountStore *)self activeAccount];
    v20 = v19;
    if (!v19)
    {
LABEL_30:

      v6 = 0;
      goto LABEL_31;
    }

    [v19 setActive:0];
    v41 = 0;
    v21 = [(SSAccountStore *)self saveAccount:v20 verifyCredentials:0 error:&v41];
    v22 = v41;
    if (v21)
    {
LABEL_29:

      goto LABEL_30;
    }

    v23 = +[SSLogConfig sharedAccountsConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v23 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [v20 accountName];
      v30 = SSHashIfNeeded(v29);
      v42 = 138543874;
      v43 = v27;
      v44 = 2114;
      v45 = v30;
      v46 = 2112;
      v47 = v22;
      LODWORD(v40) = 32;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_28:

        goto LABEL_29;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v42, v40}];
      free(v31);
      SSFileLog(v23, @"%@", v32, v33, v34, v35, v36, v37, v26);
    }

    goto LABEL_28;
  }

  [v4 setActive:1];
  v6 = 0;
  if ([(SSAccountStore *)self saveAccount:v5 error:0])
  {
    v6 = [objc_opt_class() _refreshAccount:v5];
  }

LABEL_31:

  return v6;
}

- (id)setActiveLockerAccount:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v42 = 138543362;
      v43 = objc_opt_class();
      v11 = v43;
      LODWORD(v40) = 12;
      v39 = &v42;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
        goto LABEL_15;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v42, v40}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v10);
    }

LABEL_15:
    v19 = [(SSAccountStore *)self activeLockerAccount];
    v20 = v19;
    if (!v19)
    {
LABEL_30:

      v6 = 0;
      goto LABEL_31;
    }

    [v19 setActiveLockerAccount:0];
    v41 = 0;
    v21 = [(SSAccountStore *)self saveAccount:v20 verifyCredentials:0 error:&v41];
    v22 = v41;
    if (v21)
    {
LABEL_29:

      goto LABEL_30;
    }

    v23 = +[SSLogConfig sharedAccountsConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v23 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [v20 accountName];
      v30 = SSHashIfNeeded(v29);
      v42 = 138543874;
      v43 = v27;
      v44 = 2114;
      v45 = v30;
      v46 = 2112;
      v47 = v22;
      LODWORD(v40) = 32;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_28:

        goto LABEL_29;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v42, v40}];
      free(v31);
      SSFileLog(v23, @"%@", v32, v33, v34, v35, v36, v37, v26);
    }

    goto LABEL_28;
  }

  [v4 setActiveLockerAccount:1];
  v6 = 0;
  if ([(SSAccountStore *)self saveAccount:v5 error:0])
  {
    v6 = [objc_opt_class() _refreshAccount:v5];
  }

LABEL_31:

  return v6;
}

- (void)signOutAllAccountsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(SSAccountStore *)self activeAccount];
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__SSAccountStore_signOutAllAccountsWithCompletionBlock___block_invoke;
    v6[3] = &unk_1E84AEC60;
    v7 = v4;
    [(SSAccountStore *)self signOutAccount:v5 completion:v6];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

uint64_t __56__SSAccountStore_signOutAllAccountsWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)repairAccountWithBrokenDSID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSAccountStore.m" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"account"}];
}

@end