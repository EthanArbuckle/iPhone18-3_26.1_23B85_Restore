@interface BRCAccountsManager
+ (id)sharedManager;
- (BOOL)_cleanupAccountSupportDataWithPersona:(id)persona;
- (BOOL)_isDeviceUnlocked;
- (BOOL)_maintainExistingFileProviderDomainsWithAccounts:(id)accounts withError:(id *)error;
- (BOOL)_readkeepDataLocalOnSignOutForCurrentPersona;
- (BOOL)_waitUntilFileProviderIsReady:(id *)ready;
- (BOOL)cleanupAccountDataForLoggedOutAccountWithPersona:(id)persona;
- (BOOL)destroySessionWithACAccountID:(id)d;
- (BOOL)retrySyncBubbleLaterIfNeededWithError:(id)error;
- (BOOL)waitForAccountLoadingSynchronouslyIfPossible:(id)possible;
- (BOOL)waitForInitialAccountLoadingSynchronouslyIfPossible;
- (BRCAccountsManager)init;
- (id)_createAccountHandlerForAccountID:(id)d;
- (id)_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona;
- (id)accountForCurrentPersona;
- (id)accountForPersona:(id)persona;
- (id)accountHandlerForACAccountID:(id)d;
- (id)accountHandlerForCurrentPersona;
- (id)getOrCreateAccountHandlerForACAccount:(id)account;
- (id)personaIdentifierForACAccountID:(id)d;
- (void)_createSyncBubbleTasksIfNecessary;
- (void)_isDeviceUnlocked;
- (void)_maintainExistingFileProviderDomainsIfNeededWithAccounts:(id)accounts;
- (void)_scheduleExistingFileProviderDomainsMaintenanceWithAccounts:(id)accounts;
- (void)createAndLoadSessionWithACAccountID:(id)d createBlock:(id)block;
- (void)createSessionWithACAccountID:(id)d dsid:(id)dsid completionHandler:(id)handler;
- (void)enumerateAccountHandlerIfFinishedLoading:(id)loading;
- (void)enumerateAccountHandlers:(id)handlers;
- (void)keepDataLocalOnSignOutForCurrentPersona:(BOOL)persona;
- (void)loadAccounts;
- (void)updateAccountDisplayName:(id)name completionHandler:(id)handler;
- (void)uploadContent;
- (void)waitUntilDeviceIsUnlocked;
- (void)willSwitchUser;
@end

@implementation BRCAccountsManager

+ (id)sharedManager
{
  if (sharedManager_once_0 != -1)
  {
    +[BRCAccountsManager sharedManager];
  }

  v3 = sharedManager_instance;

  return v3;
}

- (BOOL)_isDeviceUnlocked
{
  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2 < 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountsManager _isDeviceUnlocked];
    }

    return 0;
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountsManager _isDeviceUnlocked];
    }

    return v2 == 1;
  }
}

- (id)accountHandlerForCurrentPersona
{
  v34 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  v5 = [(BRCAccountsManager *)self accountForPersona:currentPersona];
  v23 = v5;
  if (v5)
  {
    identifier = [v5 identifier];
    v7 = [(BRCAccountsManager *)self accountHandlerForACAccountID:identifier];
  }

  else
  {
    v22 = self->_accountHandlersByACAccountID;
    objc_sync_enter(v22);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectEnumerator];
    v9 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v33 count:16];
    obj = objectEnumerator;
    if (v9)
    {
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          session = [v12 session];
          if (([session isDataSeparated] & 1) == 0 && (objc_msgSend(currentPersona, "isDataSeparatedPersona") & 1) == 0)
          {

LABEL_15:
            v18 = brc_bread_crumbs();
            v19 = brc_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v30 = v12;
              v31 = 2112;
              v32 = v18;
              _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Found account handler %@ by persona match%@", buf, 0x16u);
            }

            v7 = v12;
            goto LABEL_18;
          }

          session2 = [v12 session];
          personaIdentifier = [session2 personaIdentifier];
          br_personaID = [currentPersona br_personaID];
          v17 = [personaIdentifier isEqualToString:br_personaID];

          if (v17)
          {
            goto LABEL_15;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_18:

    objc_sync_exit(v22);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)accountForCurrentPersona
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  br_accountForCurrentPersona = [defaultStore br_accountForCurrentPersona];

  return br_accountForCurrentPersona;
}

- (BOOL)waitForInitialAccountLoadingSynchronouslyIfPossible
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_finishedLoadingAccounts)
  {
    if (self->_loadAccountsRequested)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke;
      block[3] = &unk_2784FF450;
      block[4] = self;
      dispatch_sync(queue, block);
    }

    else
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v4;
        _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Not waiting for initial account loading synchronously since we did not yet kick loadAccounts request%@", buf, 0xCu);
      }

      v6 = +[BRCBuddyFlowObserver sharedBuddyFlowObserver];
      [v6 logStatus];
    }
  }

  result = self->_finishedLoadingAccounts;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __35__BRCAccountsManager_sharedManager__block_invoke()
{
  sharedManager_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BRCAccountsManager)init
{
  v16.receiver = self;
  v16.super_class = BRCAccountsManager;
  v2 = [(BRCAccountsManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("account-queue", v4);

    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("maintain-fp-domains", v8);

    maintainFPDomainsQueue = v2->_maintainFPDomainsQueue;
    v2->_maintainFPDomainsQueue = v9;

    v11 = objc_opt_new();
    accountHandlersByACAccountID = v2->_accountHandlersByACAccountID;
    v2->_accountHandlersByACAccountID = v11;

    v13 = [[BRCBarrier alloc] initWithName:@"accountsLoading"];
    accountsLoadingBarrier = v2->_accountsLoadingBarrier;
    v2->_accountsLoadingBarrier = v13;
  }

  return v2;
}

- (id)_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  br_accountForCurrentPersona = [defaultStore br_accountForCurrentPersona];

  br_dsid = [br_accountForCurrentPersona br_dsid];
  v5 = [@"com.apple.bird.keepDataLocalOnSignOutSetAtTime." stringByAppendingString:br_dsid];

  return v5;
}

- (BOOL)_readkeepDataLocalOnSignOutForCurrentPersona
{
  v16 = *MEMORY[0x277D85DE8];
  _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona = [(BRCAccountsManager *)self _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    v11 = _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Value of %@ user default is: %@%@", &v10, 0x20u);
  }

  v7 = time(0);
  LOBYTE(v7) = [v4 longValue] > v7 - 60;

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)keepDataLocalOnSignOutForCurrentPersona:(BOOL)persona
{
  personaCopy = persona;
  _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona = [(BRCAccountsManager *)self _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = standardUserDefaults;
  if (personaCopy)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLong:time(0)];
    [v5 setObject:v6 forKey:_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  }
}

- (BOOL)_cleanupAccountSupportDataWithPersona:(id)persona
{
  personaCopy = persona;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v4 = MEMORY[0x277CFAE80];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BRCAccountsManager__cleanupAccountSupportDataWithPersona___block_invoke;
  v7[3] = &unk_278500DA0;
  v5 = personaCopy;
  v8 = v5;
  v9 = &v10;
  [v4 performWithPersonaID:v5 block:v7];
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __60__BRCAccountsManager__cleanupAccountSupportDataWithPersona___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__BRCAccountsManager__cleanupAccountSupportDataWithPersona___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] br_currentSupportDir];
    v2 = [v5 stringByAppendingPathComponent:*MEMORY[0x277CFACE8]];

    v3 = [v2 stringByAppendingPathComponent:@"db"];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:v3];

    if (v7)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v12 = 138412802;
        v13 = v10;
        v14 = 2112;
        v15 = v2;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Found existing session directory on startup for account with no account handler (persona %@). Removing it %@%@", &v12, 0x20u);
      }

      *(*(*(a1 + 40) + 8) + 24) = [BRCFileSystemWrapper recursiveRemove:v2]== 0;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)cleanupAccountDataForLoggedOutAccountWithPersona:(id)persona
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  personaCopy = persona;
  BRPerformWithPersonaAndError();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    BRPostAccountTokenChangedNotification();
    goto LABEL_25;
  }

  v6 = [MEMORY[0x277D77C08] currentPersona];
  v7 = [v6 isDataSeparatedPersona];

  v8 = [*(a1 + 32) accountHandlerForCurrentPersona];
  v9 = [v8 session];
  v10 = [v9 fpDomain];
  v11 = [MEMORY[0x277CC64A8] br_getProviderManagerForDataSeparated:v7];
  if (v10)
  {
    v12 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
  }

  else
  {
    if (v9)
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_2();
    }

    v13 = [MEMORY[0x277CB8F48] defaultStore];
    v14 = [v13 br_accountForCurrentPersona];

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_3();
    }

    v42 = 0;
    v10 = [v11 br_getFPDomainForAccount:v14 withError:&v42];
    v12 = v42;

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    if (!v10)
    {
      if (v12)
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, 0x90u))
        {
          __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_4();
        }

        v19 = 0;
      }

      else
      {
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = [0 identifier];
          __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_5(v31, v29, buf);
        }

        v12 = 0;
        v19 = 0;
        *(v39 + 24) = 1;
      }

      goto LABEL_15;
    }
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v10 identifier];
    v32 = [v10 displayName];
    *buf = 138412802;
    v45 = v34;
    v46 = 2112;
    v47 = v32;
    v48 = 2112;
    v49 = v17;
    v33 = v32;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing domain: %@, display name: %@%@", buf, 0x20u);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23;
  v35[3] = &unk_278500DA0;
  v19 = v10;
  v36 = v19;
  v37 = &v38;
  [v11 br_removeDomain:v19 sync:1 completionHandler:v35];

LABEL_15:
  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v8 destroySessionSynchronously];
    if ((v39[3] & 1) == 0)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"Domain removal failed and we have an account session. Crashing to prevent inconsistent state"];
      objc_claimAutoreleasedReturnValue();
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = brc_append_system_info_to_message();
        __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_6(v22, v20, v43);
      }

      brc_append_system_info_to_message();
      v23 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountsManager cleanupAccountDataForLoggedOutAccountWithPersona:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/account/BRCAccountsManager.m", 306, v23);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _cleanupAccountSupportDataWithPersona:*(a1 + 40)];
  }

  v24 = *(*(a1 + 48) + 8);
  if (*(v24 + 24) == 1)
  {
    v25 = *(v39 + 24);
  }

  else
  {
    v25 = 0;
  }

  *(v24 + 24) = v25 & 1;
  _Block_object_dispose(&v38, 8);

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v9 = [*(a1 + 32) identifier];
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed to remove domain %@ - %@%@", &v10, 0x20u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23_cold_1(a1, v6, v7);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadAccounts
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Creating sync task%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34__BRCAccountsManager_loadAccounts__block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) waitUntilDeviceIsUnlocked];
  *MEMORY[0x277CFB010] = _BRBlockRememberPersona;
  v49 = [BRCUserDefaults defaultsForMangledID:0];
  v51 = [MEMORY[0x277CB8F48] defaultStore];
  v71 = 0;
  v52 = [v51 br_allEnabledAppleAccountsIncludingDataSeparated:1 withError:&v71];
  v50 = v71;
  memset(v70, 0, sizeof(v70));
  __brc_create_section(0, "[BRCAccountsManager loadAccounts]_block_invoke", 350, 0, v70);
  v1 = brc_bread_crumbs();
  v2 = brc_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v45 = v70[0];
    v46 = [v52 count];
    *buf = 134218754;
    v76 = v45;
    v77 = 2048;
    v78 = v46;
    v79 = 2112;
    v80 = v50;
    v81 = 2112;
    v82 = v1;
    _os_log_debug_impl(&dword_223E7A000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Loaded %lu system icloud accounts with error: %@%@", buf, 0x2Au);
  }

  if (!v52 || v50)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      __34__BRCAccountsManager_loadAccounts__block_invoke_cold_2();
    }

    [MEMORY[0x277CFAE88] exitProcess:0];
  }

  else
  {
    +[BRCUserDefaults loadCachedServerConfiguration];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v3 = v52;
    v4 = [v3 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v4)
    {
      v5 = *v67;
      v6 = 1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v67 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v66 + 1) + 8 * i);
          v9 = [v8 isDataSeparatedAccount];
          v10 = MEMORY[0x277CFAE80];
          v11 = [v8 br_personaIdentifier];
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __34__BRCAccountsManager_loadAccounts__block_invoke_40;
          v64[3] = &unk_278502620;
          v12 = *(a1 + 32);
          v64[4] = v8;
          v64[5] = v12;
          v13 = v3;
          v65 = v13;
          [v10 performWithPersonaID:v11 block:v64];

          v6 &= v9;
        }

        v4 = [v13 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 1;
    }

    [*(*(a1 + 32) + 48) signalBarrier];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v17)
    {
      v18 = *v61;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v60 + 1) + 8 * j);
          v21 = [v20 identifier];
          v22 = *(a1 + 32);
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __34__BRCAccountsManager_loadAccounts__block_invoke_41;
          v59[3] = &unk_278505AE8;
          v59[4] = v22;
          v59[5] = v20;
          [v22 createAndLoadSessionWithACAccountID:v21 createBlock:v59];
        }

        v17 = [v16 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v17);
    }

    if (v6)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v76 = v23;
        _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Cleaning up leftover primary account application support if exists%@", buf, 0xCu);
      }

      [*(a1 + 32) _cleanupAccountSupportDataWithPersona:@"__defaultPersonaID__"];
    }

    v25 = [v51 br_allEligibleAppleAccounts];
    v26 = v25;
    if (v25)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v27 = v25;
      v28 = [v27 countByEnumeratingWithState:&v55 objects:v72 count:16];
      if (v28)
      {
        v29 = *v56;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v56 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v55 + 1) + 8 * k);
            if ([v31 isDataSeparatedAccount] && (objc_msgSend(v31, "br_isEnabledForCloudDocs") & 1) == 0)
            {
              v32 = brc_bread_crumbs();
              v33 = brc_default_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v76 = v31;
                v77 = 2112;
                v78 = v32;
                _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEFAULT, "[WARNING] Cleaning up leftover enterprise account %@ application support if exists%@", buf, 0x16u);
              }

              v34 = *(a1 + 32);
              v35 = [v31 br_personaIdentifier];
              [v34 _cleanupAccountSupportDataWithPersona:v35];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v55 objects:v72 count:16];
        }

        while (v28);
      }
    }

    *(*(a1 + 32) + 33) = 1;
    if ([*(a1 + 32) isInSyncBubble])
    {
      v36 = *(a1 + 32);
      if (!v36[5])
      {
        v47 = brc_bread_crumbs();
        v48 = brc_default_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          __34__BRCAccountsManager_loadAccounts__block_invoke_cold_1();
        }

        v36 = *(a1 + 32);
      }

      [v36 _createSyncBubbleTasksIfNecessary];
      [*(*(a1 + 32) + 40) end];
      v37 = *(a1 + 32);
      v38 = *(v37 + 40);
      *(v37 + 40) = 0;
    }

    v39 = [v49 serverConfigurationURL];
    v40 = [MEMORY[0x277CBEBC0] URLWithString:v39];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = [MEMORY[0x277CBEBC0] fileURLWithPath:v39];
    }

    v43 = v42;

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __34__BRCAccountsManager_loadAccounts__block_invoke_48;
    v54[3] = &unk_2784FF450;
    v54[4] = *(a1 + 32);
    [BRCUserDefaults setServerConfigurationURL:v43 whenLoaded:v54];
    *(*(a1 + 32) + 32) = 0;
    [*(a1 + 32) _scheduleExistingFileProviderDomainsMaintenanceWithAccounts:v16];
  }

  __brc_leave_section(v70);

  v44 = *MEMORY[0x277D85DE8];
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __34__BRCAccountsManager_loadAccounts__block_invoke_40_cold_1(a1);
    }
  }

  else
  {
    [*(a1 + 40) _maintainExistingFileProviderDomainsIfNeededWithAccounts:*(a1 + 48)];
    v5 = [*(a1 + 40) getOrCreateAccountHandlerForACAccount:*(a1 + 32)];
  }
}

id __34__BRCAccountsManager_loadAccounts__block_invoke_41(uint64_t a1)
{
  v2 = [*(a1 + 32) getOrCreateAccountHandlerForACAccount:*(a1 + 40)];
  [v2 startAndLoadAccountSynchronously:*(a1 + 40)];

  return v2;
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 session];
  [v2 userDefaultsChanged];
}

- (BOOL)_maintainExistingFileProviderDomainsWithAccounts:(id)accounts withError:(id *)error
{
  v133 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  selfCopy = self;
  if ([(BRCAccountsManager *)self isInSyncBubble])
  {
    v5 = 1;
    goto LABEL_115;
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:];
  }

  _getEnterpriseProviderManager = [(BRCAccountsManager *)selfCopy _getEnterpriseProviderManager];
  v119 = 0;
  v120[0] = &v119;
  v120[1] = 0x3032000000;
  v120[2] = __Block_byref_object_copy__42;
  v120[3] = __Block_byref_object_dispose__42;
  v121 = 0;
  obj = 0;
  v8 = [_getEnterpriseProviderManager br_getFPDomainsWithError:&obj];
  objc_storeStrong(&v121, obj);
  if (*(v120[0] + 40))
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:v120 withError:?];
    }

    v11 = *(v120[0] + 40);
    v5 = v11 == 0;
    v12 = v11;
    if (v11)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v89 = "(passed to caller)";
        *buf = 136315906;
        v126 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
        v127 = 2080;
        if (!error)
        {
          v89 = "(ignored by caller)";
        }

        v128 = v89;
        v129 = 2112;
        v130 = v12;
        v131 = 2112;
        v132 = v13;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v15 = v12;
      *error = v12;
    }

    goto LABEL_114;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v114 objects:v124 count:16];
  v99 = v16;
  if (!v17)
  {
    goto LABEL_81;
  }

  v19 = *v115;
  v20 = "(ignored by caller)";
  if (error)
  {
    v20 = "(passed to caller)";
  }

  v93 = v20;
  v94 = *MEMORY[0x277CCA5B8];
  *&v18 = 138412802;
  v92 = v18;
  do
  {
    v21 = 0;
    do
    {
      if (*v115 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v114 + 1) + 8 * v21);
      if (BRIsDefaultDomain())
      {
        goto LABEL_69;
      }

      v113 = 0;
      v23 = [MEMORY[0x277CFAE00] matchDomainWithAccountAndStampDomainIfNeeded:v22 withAccounts:accountsCopy persistDomain:&v113];
      v24 = v23 == 0;

      if (!v24)
      {
        v16 = v99;
        if (v113 == 1)
        {
          personaIdentifier = [v22 personaIdentifier];
          v108[1] = MEMORY[0x277D85DD0];
          v108[2] = 3221225472;
          v108[3] = __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60;
          v108[4] = &unk_2784FFFA8;
          v108[5] = v22;
          v109 = _getEnterpriseProviderManager;
          BRPerformWithPersonaAndError();

          v16 = v99;
        }

        goto LABEL_69;
      }

      personaIdentifier2 = [v22 personaIdentifier];
      if ([personaIdentifier2 isEqualToString:@"__defaultPersonaID__"])
      {
      }

      else
      {
        personaIdentifier3 = [v22 personaIdentifier];

        if (personaIdentifier3)
        {
          v27 = 0;
          goto LABEL_31;
        }
      }

      if (_maintainExistingFileProviderDomainsWithAccounts_withError____personaOnceToken != -1)
      {
        [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:];
      }

      personaIdentifier3 = _maintainExistingFileProviderDomainsWithAccounts_withError____personalPersona;
      v27 = 1;
LABEL_31:
      mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
      currentPersona = [mEMORY[0x277D77BF8] currentPersona];

      v112 = 0;
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      v30 = userPersonaUniqueString;
      if (userPersonaUniqueString == personaIdentifier3 || ([userPersonaUniqueString isEqualToString:?] & 1) != 0)
      {
        v31 = 0;
        goto LABEL_34;
      }

      if (voucher_process_can_use_arbitrary_personas())
      {
        v111 = 0;
        v47 = [currentPersona copyCurrentPersonaContextWithError:&v111];
        v48 = v111;
        v49 = v112;
        v112 = v47;

        if (v48)
        {
          v50 = brc_bread_crumbs();
          v51 = brc_default_log();
          if (os_log_type_enabled(v51, 0x90u))
          {
            *buf = 138412546;
            v126 = v48;
            v127 = 2112;
            v128 = v50;
            _os_log_error_impl(&dword_223E7A000, v51, 0x90u, "[ERROR] won't restore persona: %@%@", buf, 0x16u);
          }
        }

        v31 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

        if (v31)
        {
          v52 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, 0x90u))
          {
            personaIdentifier4 = [v22 personaIdentifier];
            *buf = v92;
            v126 = personaIdentifier4;
            v127 = 2112;
            v128 = v31;
            v129 = 2112;
            v130 = v52;
            _os_log_error_impl(&dword_223E7A000, v53, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
          }

LABEL_79:
        }
      }

      else
      {
        if (v27 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
        {
          v52 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v126 = v52;
            _os_log_debug_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona but data-separatedness matches%@", buf, 0xCu);
          }

          v31 = 0;
          goto LABEL_79;
        }

        v61 = brc_bread_crumbs();
        v62 = brc_default_log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v126 = v61;
          _os_log_debug_impl(&dword_223E7A000, v62, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona - should fallback persona%@", buf, 0xCu);
        }

        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:v94 code:22 userInfo:0];
      }

LABEL_34:
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v126 = v22;
        v127 = 2112;
        v128 = v32;
        _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_INFO, "[INFO] Removing domain %@ since it doesn't have a backing AC account%@", buf, 0x16u);
      }

      v123[1] = 0;
      v123[0] = 0;
      identifier = [v22 identifier];
      v35 = _br_parseUUIDString();

      if ((v35 & 1) == 0)
      {
        if ([v22 br_isCiconiaDomain])
        {
          br_currentSupportDir = brc_bread_crumbs();
          v45 = brc_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [v22 identifier];
            *buf = 138412546;
            v126 = identifier2;
            v127 = 2112;
            v128 = br_currentSupportDir;
            _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEFAULT, "[WARNING] We are removing the ciconia domain %@, not removing account data%@", buf, 0x16u);
          }
        }

        else
        {
          br_currentSupportDir = brc_bread_crumbs();
          v45 = brc_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            identifier3 = [v22 identifier];
            *buf = 138412546;
            v126 = identifier3;
            v127 = 2112;
            v128 = br_currentSupportDir;
            _os_log_fault_impl(&dword_223E7A000, v45, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: domain identifier %@ isn't a UUID so not removing account data%@", buf, 0x16u);
          }
        }

        goto LABEL_57;
      }

      mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
      br_currentPersonaID = [mEMORY[0x277D77BF8]2 br_currentPersonaID];
      personaIdentifier5 = [v22 personaIdentifier];
      v39 = [br_currentPersonaID isEqualToString:personaIdentifier5];

      if (v39)
      {
        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v126 = v40;
          _os_log_debug_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] domain's persona still exists, removing account path%@", buf, 0xCu);
        }

        br_currentSupportDir = [MEMORY[0x277CCACA8] br_currentSupportDir];
        if (br_currentSupportDir)
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v44 = [defaultManager fileExistsAtPath:br_currentSupportDir];

          if (v44)
          {
            BRCRecursiveRemove(br_currentSupportDir);
          }
        }

LABEL_57:
      }

      if ([v22 isDataSeparatedDomain] & 1) != 0 || (objc_msgSend(v22, "isEnterpriseDomain"))
      {
        br_isCiconiaDomain = 1;
      }

      else
      {
        br_isCiconiaDomain = [v22 br_isCiconiaDomain];
      }

      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_59;
      v110[3] = &unk_278500DA0;
      v110[4] = v22;
      v110[5] = &v119;
      [_getEnterpriseProviderManager br_removeDomain:v22 sync:br_isCiconiaDomain ^ 1u completionHandler:v110];
      v56 = *(v120[0] + 40);
      if (v56)
      {
        v57 = v56;
        v58 = brc_bread_crumbs();
        v59 = brc_default_log();
        if (os_log_type_enabled(v59, 0x90u))
        {
          *buf = 136315906;
          v126 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
          v127 = 2080;
          v128 = v93;
          v129 = 2112;
          v130 = v57;
          v131 = 2112;
          v132 = v58;
          _os_log_error_impl(&dword_223E7A000, v59, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        if (error)
        {
          v60 = v57;
          *error = v57;
        }
      }

      _BRRestorePersona();
      v16 = v99;
      if (v56)
      {
        v5 = 0;
        v12 = v99;
        v8 = v99;
        goto LABEL_114;
      }

LABEL_69:
      ++v21;
    }

    while (v17 != v21);
    v64 = [v16 countByEnumeratingWithState:&v114 objects:v124 count:16];
    v17 = v64;
  }

  while (v64);
LABEL_81:

  _getPrimaryProviderManager = [(BRCAccountsManager *)selfCopy _getPrimaryProviderManager];

  v66 = (v120[0] + 40);
  v108[0] = *(v120[0] + 40);
  v8 = [_getPrimaryProviderManager br_getFPDomainsWithError:v108];
  objc_storeStrong(v66, v108[0]);

  if (*(v120[0] + 40))
  {
    v67 = brc_bread_crumbs();
    v68 = brc_default_log();
    if (os_log_type_enabled(v68, 0x90u))
    {
      [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:v120 withError:?];
    }

    v69 = *(v120[0] + 40);
    v5 = v69 == 0;
    v12 = v69;
    if (v69)
    {
      v70 = brc_bread_crumbs();
      v71 = brc_default_log();
      if (os_log_type_enabled(v71, 0x90u))
      {
        v90 = "(passed to caller)";
        *buf = 136315906;
        v126 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
        v127 = 2080;
        if (!error)
        {
          v90 = "(ignored by caller)";
        }

        v128 = v90;
        v129 = 2112;
        v130 = v12;
        v131 = 2112;
        v132 = v70;
        _os_log_error_impl(&dword_223E7A000, v71, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v72 = v12;
      *error = v12;
    }
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v73 = v8;
    v74 = [v73 countByEnumeratingWithState:&v104 objects:v122 count:16];
    if (v74)
    {
      v75 = *v105;
      while (2)
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v105 != v75)
          {
            objc_enumerationMutation(v73);
          }

          v77 = *(*(&v104 + 1) + 8 * i);
          if ([v77 isReplicated])
          {
            LOBYTE(v123[0]) = 0;
            v78 = [MEMORY[0x277CFAE00] matchDomainWithAccountAndStampDomainIfNeeded:v77 withAccounts:accountsCopy persistDomain:v123];
            v79 = v78 == 0;

            if (v79)
            {
              if ([v77 isDataSeparatedDomain] & 1) != 0 || (objc_msgSend(v77, "isEnterpriseDomain"))
              {
                br_isCiconiaDomain2 = 1;
              }

              else
              {
                br_isCiconiaDomain2 = [v77 br_isCiconiaDomain];
              }

              v103[0] = MEMORY[0x277D85DD0];
              v103[1] = 3221225472;
              v103[2] = __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_62;
              v103[3] = &unk_278500DA0;
              v103[4] = v77;
              v103[5] = &v119;
              [_getPrimaryProviderManager br_removeDomain:v77 sync:br_isCiconiaDomain2 ^ 1u completionHandler:v103];
              v82 = *(v120[0] + 40);
              if (v82)
              {
                v83 = v82;
                v84 = brc_bread_crumbs();
                v85 = brc_default_log();
                if (os_log_type_enabled(v85, 0x90u))
                {
                  v91 = "(passed to caller)";
                  *buf = 136315906;
                  v126 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
                  v127 = 2080;
                  if (!error)
                  {
                    v91 = "(ignored by caller)";
                  }

                  v128 = v91;
                  v129 = 2112;
                  v130 = v83;
                  v131 = 2112;
                  v132 = v84;
                  _os_log_error_impl(&dword_223E7A000, v85, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
                }

                if (error)
                {
                  v86 = v83;
                  *error = v83;
                }

                v5 = 0;
                goto LABEL_112;
              }
            }

            else if (LOBYTE(v123[0]) == 1)
            {
              personaIdentifier6 = [v77 personaIdentifier];
              v102 = _getPrimaryProviderManager;
              BRPerformWithPersonaAndError();
            }
          }
        }

        v74 = [v73 countByEnumeratingWithState:&v104 objects:v122 count:16];
        v5 = 1;
        if (v74)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_112:
    v12 = v73;
    v8 = v73;
  }

  _getEnterpriseProviderManager = _getPrimaryProviderManager;
LABEL_114:

  _Block_object_dispose(&v119, 8);
LABEL_115:

  v87 = *MEMORY[0x277D85DE8];
  return v5;
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _maintainExistingFileProviderDomainsWithAccounts_withError____personalPersona;
  _maintainExistingFileProviderDomainsWithAccounts_withError____personalPersona = v0;
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_59(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Garbage Collected domain %@ with error - %@%@", &v10, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", buf, 0x20u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60_cold_1(a1);
    }

    v10 = *(a1 + 32);
    [*(a1 + 40) br_addDomain:? completionHandler:?];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_61(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", &v8, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_62(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Garbage Collected domain %@ with error - %@%@", &v10, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_63(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", buf, 0x20u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60_cold_1(a1);
    }

    v10 = *(a1 + 32);
    [*(a1 + 40) br_addDomain:? completionHandler:?];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_64(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", &v8, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_maintainExistingFileProviderDomainsIfNeededWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maintainedExistingFPDomains = selfCopy->_maintainedExistingFPDomains;
  selfCopy->_maintainedExistingFPDomains = 1;
  objc_sync_exit(selfCopy);

  if (!maintainedExistingFPDomains)
  {
    v11 = 0;
    v7 = [(BRCAccountsManager *)selfCopy _maintainExistingFileProviderDomainsWithAccounts:accountsCopy withError:&v11];
    v8 = v11;
    if (!v7)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountsManager _maintainExistingFileProviderDomainsIfNeededWithAccounts:];
      }
    }
  }
}

- (void)_scheduleExistingFileProviderDomainsMaintenanceWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maintainedExistingFPDomains = selfCopy->_maintainedExistingFPDomains;
  objc_sync_exit(selfCopy);

  if (!maintainedExistingFPDomains)
  {
    maintainFPDomainsQueue = selfCopy->_maintainFPDomainsQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke;
    v8[3] = &unk_2784FF478;
    v8[4] = selfCopy;
    v9 = accountsCopy;
    dispatch_async(maintainFPDomainsQueue, v8);
  }
}

void __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _waitUntilFileProviderIsReady:&v12];
  v4 = v12;
  if (v3)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke_65;
    block[3] = &unk_2784FF478;
    block[4] = v6;
    v11 = v5;
    dispatch_sync(v7, block);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke_cold_1();
    }
  }
}

- (void)enumerateAccountHandlers:(id)handlers
{
  v28 = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__42;
  v25 = __Block_byref_object_dispose__42;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke;
  block[3] = &unk_278502208;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(queue, block);
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v22[5];
  v7 = [obj countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        acAccountID = [*(*(&v16 + 1) + 8 * i) acAccountID];
        v11 = [defaultStore accountWithIdentifier:acAccountID];

        br_personaIdentifier = [v11 br_personaIdentifier];
        v15 = handlersCopy;
        BRPerformWithPersonaAndError();
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke(uint64_t a1)
{
  obj = *(*(a1 + 32) + 8);
  objc_sync_enter(obj);
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_sync_exit(obj);
}

void __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);
    v7 = *(a1 + 40);

    v6(v7, v5);
  }
}

- (void)enumerateAccountHandlerIfFinishedLoading:(id)loading
{
  if (self->_finishedLoadingAccounts)
  {
    [(BRCAccountsManager *)self enumerateAccountHandlers:loading];
  }
}

- (BOOL)_waitUntilFileProviderIsReady:(id *)ready
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = +[BRCFileProviderDaemonUtils sharedInstance];
  v15 = 0;
  [v4 waitForFPToBeReadyToAcceptXPCWithError:&v15];
  v5 = v15;
  v6 = [v5 br_isCloudDocsErrorCode:114];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    if (!v5)
    {
      v7 = 0;
      v6 = 1;
      if (!ready)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (([v5 br_isPOSIXErrorCode:4] & 1) == 0)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        [BRCAccountsManager _waitUntilFileProviderIsReady:];
      }

      exit(1);
    }

    v7 = v5;
    v5 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v12 = "(passed to caller)";
      *buf = 136315906;
      v17 = "[BRCAccountsManager _waitUntilFileProviderIsReady:]";
      v18 = 2080;
      if (!ready)
      {
        v12 = "(ignored by caller)";
      }

      v19 = v12;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v5;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (ready)
  {
LABEL_8:
    v9 = v7;
    *ready = v7;
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)createAndLoadSessionWithACAccountID:(id)d createBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  if (!dCopy)
  {
    [BRCAccountsManager createAndLoadSessionWithACAccountID:createBlock:];
  }

  v8 = +[BRCFileProviderDaemonUtils sharedInstance];
  [v8 enableFileProviderBoosting];

  v27 = 0;
  v9 = [(BRCAccountsManager *)self _waitUntilFileProviderIsReady:&v27];
  v10 = v27;
  if (v9)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__42;
    v25 = __Block_byref_object_dispose__42;
    v26 = 0;
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [defaultStore accountWithIdentifier:dCopy];

    v13 = MEMORY[0x277CFAE80];
    br_personaIdentifier = [v12 br_personaIdentifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__BRCAccountsManager_createAndLoadSessionWithACAccountID_createBlock___block_invoke;
    v18[3] = &unk_278505B10;
    v20 = &v21;
    v19 = blockCopy;
    [v13 performWithPersonaID:br_personaIdentifier block:v18];

    v15 = self->_accountHandlersByACAccountID;
    objc_sync_enter(v15);
    [(NSMutableDictionary *)self->_accountHandlersByACAccountID setObject:v22[5] forKeyedSubscript:dCopy];
    objc_sync_exit(v15);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke_cold_1();
    }
  }
}

void __70__BRCAccountsManager_createAndLoadSessionWithACAccountID_createBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __70__BRCAccountsManager_createAndLoadSessionWithACAccountID_createBlock___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = (*(*(a1 + 32) + 16))();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x2821F96F8]();
  }
}

void __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 33) & 1) == 0)
  {
    __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke_cold_1();
  }
}

- (BOOL)waitForAccountLoadingSynchronouslyIfPossible:(id)possible
{
  v22 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  dispatch_assert_queue_not_V2(self->_queue);
  if (self->_finishedLoadingAccounts || self->_loadAccountsRequested)
  {
    goto LABEL_3;
  }

  v9 = +[BRCFileProviderDaemonUtils sharedInstance];
  boostFileProvider = [v9 boostFileProvider];

  if ((boostFileProvider & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      v13 = "[WARNING] We were unsuccessful in boosting FP during the startup flow%@";
      goto LABEL_13;
    }

LABEL_14:

    v7 = 0;
    goto LABEL_15;
  }

  if (!self->_finishedLoadingAccounts && !self->_loadAccountsRequested)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      v13 = "[WARNING] We still aren't in a state where load accounts was requested%@";
LABEL_13:
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, v13, &buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_3:
  v5 = [(BRCAccountsManager *)self accountHandlerForACAccountID:possibleCopy];
  finishedLoading = [v5 finishedLoading];

  if (finishedLoading)
  {
    v7 = 1;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__BRCAccountsManager_waitForAccountLoadingSynchronouslyIfPossible___block_invoke;
    block[3] = &unk_278500D08;
    p_buf = &buf;
    block[4] = self;
    v17 = possibleCopy;
    dispatch_sync(queue, block);
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void __67__BRCAccountsManager_waitForAccountLoadingSynchronouslyIfPossible___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = [*(a1 + 32) accountHandlerForACAccountID:*(a1 + 40)];
  *(*(v1[1] + 8) + 24) = [v2 finishedLoading];

  if ((*(*(v1[1] + 8) + 24) & 1) == 0)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __67__BRCAccountsManager_waitForAccountLoadingSynchronouslyIfPossible___block_invoke_cold_1(v1);
    }
  }
}

- (id)accountHandlerForACAccountID:(id)d
{
  dCopy = d;
  v5 = self->_accountHandlersByACAccountID;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectForKeyedSubscript:dCopy];
  objc_sync_exit(v5);

  return v6;
}

- (id)accountForPersona:(id)persona
{
  v3 = MEMORY[0x277CB8F48];
  personaCopy = persona;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore br_accountForPersona:personaCopy];

  return v6;
}

- (id)personaIdentifierForACAccountID:(id)d
{
  v3 = MEMORY[0x277CB8F48];
  dCopy = d;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore accountWithIdentifier:dCopy];

  br_personaIdentifier = [v6 br_personaIdentifier];

  return br_personaIdentifier;
}

- (id)_createAccountHandlerForAccountID:(id)d
{
  dCopy = d;
  v4 = [[BRCAccountHandler alloc] initWithACAccountID:dCopy];

  return v4;
}

- (id)getOrCreateAccountHandlerForACAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  if (identifier)
  {
    v6 = MEMORY[0x277CFAE80];
    br_personaIdentifier = [accountCopy br_personaIdentifier];
    LOBYTE(v6) = [v6 currentPersonaMatchesID:br_personaIdentifier];

    if (v6)
    {
      v8 = self->_accountHandlersByACAccountID;
      objc_sync_enter(v8);
      v9 = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectForKeyedSubscript:identifier];

      if (v9)
      {
        v10 = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectForKeyedSubscript:identifier];
      }

      else
      {
        v10 = [(BRCAccountsManager *)self _createAccountHandlerForAccountID:identifier];
        [(NSMutableDictionary *)self->_accountHandlersByACAccountID setObject:v10 forKeyedSubscript:identifier];
      }

      objc_sync_exit(v8);

      goto LABEL_11;
    }

    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountsManager getOrCreateAccountHandlerForACAccount:];
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)createSessionWithACAccountID:(id)d dsid:(id)dsid completionHandler:(id)handler
{
  dCopy = d;
  dsidCopy = dsid;
  handlerCopy = handler;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v12 = [defaultStore accountWithIdentifier:dCopy];

  maintainFPDomainsQueue = self->_maintainFPDomainsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke;
  block[3] = &unk_278502FF8;
  block[4] = self;
  v20 = dCopy;
  v21 = v12;
  v22 = dsidCopy;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = dsidCopy;
  v16 = v12;
  v17 = dCopy;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(maintainFPDomainsQueue, v18);
}

void __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v8 = *(a1 + 32);
  v2 = *(v8 + 16);
  block[2] = __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_2;
  block[3] = &unk_278502FF8;
  v3 = *(&v8 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v8;
  v11 = v6;
  v12 = *(a1 + 64);
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v2, v7);
}

void __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_2(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__42;
  v19 = __Block_byref_object_dispose__42;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_3;
  v6[3] = &unk_278505B38;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v9 = &v11;
  v8 = *(a1 + 56);
  v10 = &v15;
  [v2 createAndLoadSessionWithACAccountID:v3 createBlock:v6];
  v4 = *(v12 + 24);
  v5 = v16[5];
  (*(*(a1 + 64) + 16))();

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

id __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) getOrCreateAccountHandlerForACAccount:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 createAccountSessionWithDSID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [v2 startAndLoadAccountSynchronously:*(a1 + 40)];
  }

  return v2;
}

- (void)updateAccountDisplayName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  if (!nameCopy)
  {
    [BRCAccountsManager updateAccountDisplayName:completionHandler:];
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  [defaultStore invalidateAccountForPersonaCache];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke;
  block[3] = &unk_2784FF5B8;
  v13 = nameCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = nameCopy;
  dispatch_sync(queue, block);
}

void __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] Updating account %@%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__42;
  v19 = __Block_byref_object_dispose__42;
  v20 = 0;
  v5 = *(a1[5] + 8);
  objc_sync_enter(v5);
  v6 = [*(a1[5] + 8) objectForKeyedSubscript:a1[4]];
  objc_sync_exit(v5);

  v7 = [v6 session];
  v8 = [v7 isDataSeparated];

  if (v8)
  {
    v9 = [v6 session];
    v10 = [v9 personaIdentifier];
    v16 = v6;
    BRPerformWithPersonaAndError();

    v11 = v16;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke_cold_1();
    }
  }

  (*(a1[6] + 16))(a1[6], *(*&buf[8] + 40), v13, v14);
  _Block_object_dispose(buf, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v4 = [*(a1 + 32) session];
    [v4 fixFileProviderDomainDecorations];

    BRPostAccountTokenChangedNotification();
  }
}

- (BOOL)destroySessionWithACAccountID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [BRCAccountsManager destroySessionWithACAccountID:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = dispatch_group_create();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke;
  block[3] = &unk_278502B88;
  v11 = dCopy;
  selfCopy = self;
  v13 = &v14;
  v7 = dCopy;
  dispatch_sync(queue, block);
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v15 = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] Logging out account %@%@", &v15, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  objc_sync_enter(v5);
  v6 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 32)];
  objc_sync_exit(v5);

  v7 = [v6 session];

  if (v7)
  {
    v8 = [v6 session];
    v9 = [v8 personaIdentifier];
  }

  else
  {
    v8 = [MEMORY[0x277CB8F48] defaultStore];
    v10 = [v8 accountWithIdentifier:*(a1 + 32)];
    v9 = [v10 br_personaIdentifier];
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) cleanupAccountDataForLoggedOutAccountWithPersona:v9];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = *(*(a1 + 40) + 8);
    objc_sync_enter(v11);
    [*(*(a1 + 40) + 8) removeObjectForKey:*(a1 + 32)];
    objc_sync_exit(v11);

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke_cold_2();
    }
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke_cold_1();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)waitUntilDeviceIsUnlocked
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Notifying clients of account change because we could have denied xpc during lock%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if ([*(a1 + 40) _isDeviceUnlocked])
  {
    v2 = *(a1 + 48);

    dispatch_semaphore_signal(v2);
  }

  else
  {
    syslog(5, "Device is locked - waiting\n");
  }
}

uint64_t __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke_2(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke_76(uint64_t a1)
{
  result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

- (void)_createSyncBubbleTasksIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = self->_accountHandlersByACAccountID;
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->_accountHandlersByACAccountID allValues];
  objc_sync_exit(v3);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = allValues;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        session = [*(*(&v14 + 1) + 8 * v8) session];
        clientTruthWorkloop = [session clientTruthWorkloop];
        if (clientTruthWorkloop)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__BRCAccountsManager__createSyncBubbleTasksIfNecessary__block_invoke;
          block[3] = &unk_2784FF450;
          v13 = session;
          dispatch_async_and_wait(clientTruthWorkloop, block);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __55__BRCAccountsManager__createSyncBubbleTasksIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) enumeratePrivateClientZones:&__block_literal_global_79_0];
  [*(a1 + 32) enumerateSharedClientZones:&__block_literal_global_82];
  v2 = [*(a1 + 32) clientDB];
  [v2 flush];
}

- (void)uploadContent
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [self isInSyncBubble]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)willSwitchUser
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Notified of a user switch%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __36__BRCAccountsManager_willSwitchUser__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 33) == 1)
  {
    if (!*(v1 + 40))
    {
      __36__BRCAccountsManager_willSwitchUser__block_invoke_cold_1(v2, &v4);
      v1 = v4;
    }

    [v1 _createSyncBubbleTasksIfNecessary];
    [*(*v2 + 40) end];
    v3 = *(*v2 + 40);
    *(*v2 + 40) = 0;
  }
}

- (BOOL)retrySyncBubbleLaterIfNeededWithError:(id)error
{
  errorCopy = error;
  if (-[BRCAccountsManager isInSyncBubble](self, "isInSyncBubble") && [errorCopy brc_shouldRetryLater])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke;
    v7[3] = &unk_2784FF478;
    v8 = errorCopy;
    selfCopy = self;
    if (retrySyncBubbleLaterIfNeededWithError__onceToken != -1)
    {
      dispatch_once(&retrySyncBubbleLaterIfNeededWithError__onceToken, v7);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke_cold_1(a1);
  }

  v4 = [MEMORY[0x277D77BF8] sharedManager];
  v5 = MEMORY[0x277CCACA8];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) domain];
  v8 = [v5 stringWithFormat:@"encountered error domain %@ code %ld", v7, objc_msgSend(*(a1 + 32), "code")];
  [v4 unregisterStakeHolder:v6 status:1 reason:v8];
}

void __60__BRCAccountsManager__cleanupAccountSupportDataWithPersona___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: failed to adopt persona%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Can't adopt session's persona, it must have already been deleted.%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !session%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] We don't have a domain in the account session, let's try to find a domain for account: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Got an error when trying to find a domain to remove: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_5(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] No domain to remove found for %@%@", v4, 0x16u);
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_6(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", v4, 0x16u);
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Removed domain %@%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: self->_checkNeedsBubbleTask%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] We got an error from account store, we can't continue our loading sequence%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_40_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_maintainExistingFileProviderDomainsWithAccounts:withError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Finding old domains. Current accounts: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_maintainExistingFileProviderDomainsWithAccounts:(uint64_t)a1 withError:.cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v2, v3, "[ERROR] Failed getting the list of enterprise FP domains: %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_maintainExistingFileProviderDomainsWithAccounts:(uint64_t)a1 withError:.cold.4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v2, v3, "[ERROR] Failed getting the list of FP domains: %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Persisting domain %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_maintainExistingFileProviderDomainsIfNeededWithAccounts:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Failed waiting for File Provider to be ready: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't adopt persona for the account handler. Skipping it%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_waitUntilFileProviderIsReady:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Waiting without success for FP to accept XPCs: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createAndLoadSessionWithACAccountID:createBlock:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: acAccountID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __70__BRCAccountsManager_createAndLoadSessionWithACAccountID_createBlock___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't create and load the session because we can't adopt the persona%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self->_finishedLoadingAccounts%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __67__BRCAccountsManager_waitForAccountLoadingSynchronouslyIfPossible___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Waited without success for %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getOrCreateAccountHandlerForACAccount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't create an account handler with the wrong persona%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAccountDisplayName:completionHandler:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: acAccountID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Updating display name is not supported on non EDS account%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)destroySessionWithACAccountID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: acAccountID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to destroy session during logout%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Destroyed session during logout successfully%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isDeviceUnlocked
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __36__BRCAccountsManager_willSwitchUser__block_invoke_cold_1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: self->_checkNeedsBubbleTask%@", &v7, 0xCu);
  }

  *a2 = *a1;
  v6 = *MEMORY[0x277D85DE8];
}

void __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Encountered an error forcing us to try to retry the sync bubble later - %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

@end