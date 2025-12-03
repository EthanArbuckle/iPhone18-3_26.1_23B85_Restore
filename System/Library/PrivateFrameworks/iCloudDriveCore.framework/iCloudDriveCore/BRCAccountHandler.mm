@interface BRCAccountHandler
+ (id)currentiCloudAccount;
+ (id)currentiCloudAccountID;
+ (void)_migrateAccountIfNecessaryForAccountDSID:(id)d;
+ (void)currentiCloudAccount;
- (BOOL)_cleanupAPFSSnapshotWhenNoSessionExists;
- (BOOL)_createCurrentAccountSessionWithID:(id)d error:(id *)error;
- (BOOL)_loadOnDiskAccountSessionSecondTry:(id)try prevError:(id)error;
- (BOOL)_loadOnDiskAccountSessionWithError:(id *)error;
- (BOOL)_waitForSessionLoadingWhenNowStarting:(BOOL)starting;
- (BOOL)checkEnoughDiskSpaceToBeFunctional;
- (BOOL)createAccountSessionWithDSID:(id)d error:(id *)error;
- (BOOL)destroyCurrentAccountSynchronously;
- (BOOL)destroySessionSynchronously;
- (BOOL)setDBAccountDSID:(id)d;
- (BRCAccountHandler)initWithACAccountID:(id)d;
- (id)ubiquityTokenSalt;
- (id)waitForSessionDBLoadingBarrier;
- (int64_t)syncPolicyforSyncedFolderType:(unint64_t)type;
- (unsigned)_handleOpenError:(id)error;
- (unsigned)_tryToOpenSession:(id)session error:(id *)error;
- (void)__destroySession;
- (void)_cleanupPushAndActivitiesStatesWhenNoSessionExists;
- (void)_destroyCurrentSessionSynchronously;
- (void)_handleAccountDidChange;
- (void)_handleAccountWillChange;
- (void)_updateAccountToDSID:(id)d;
- (void)checkEnoughDiskSpaceToBeFunctional;
- (void)dealloc;
- (void)jetsamCloudDocsApps;
- (void)markMigrationCompletedForDSID:(id)d;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
- (void)reloadSyncedFolderPoliciesDisableiCloudDesktop:(BOOL)desktop;
- (void)setMigrationStatus:(char)status forDSID:(id)d shouldUpdateAccount:(BOOL)account shouldPostAccountChangedNotification:(BOOL)notification completion:(id)completion;
- (void)setSyncPolicy:(int64_t)policy forSyncedFolderType:(unint64_t)type;
- (void)startAndLoadAccountSynchronously:(id)synchronously;
- (void)ubiquityTokenSalt;
@end

@implementation BRCAccountHandler

+ (id)currentiCloudAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  br_accountForCurrentPersona = [defaultStore br_accountForCurrentPersona];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[BRCAccountHandler currentiCloudAccount];
  }

  if (br_accountForCurrentPersona)
  {
    if (([br_accountForCurrentPersona isEnabledForDataclass:*MEMORY[0x277CB91D8]] & 1) == 0)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        +[BRCAccountHandler currentiCloudAccount];
      }
    }

    if (([br_accountForCurrentPersona br_isEnabledForCloudDocs] & 1) == 0)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[BRCAccountHandler currentiCloudAccount];
      }
    }

    br_dsid = [br_accountForCurrentPersona br_dsid];
    [self _migrateAccountIfNecessaryForAccountDSID:br_dsid];
  }

  return br_accountForCurrentPersona;
}

- (id)ubiquityTokenSalt
{
  v50 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ubiquityTokenSalt = selfCopy->_ubiquityTokenSalt;
  if (ubiquityTokenSalt)
  {
    v4 = ubiquityTokenSalt;
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v5 = MEMORY[0x277CBEBC0];
  accountPath = [(BRCAccountHandler *)selfCopy accountPath];
  v7 = [v5 fileURLWithPath:accountPath isDirectory:1];

  ubiquityTokenSaltFilename = [MEMORY[0x277CCACA8] ubiquityTokenSaltFilename];
  v9 = [v7 URLByAppendingPathComponent:ubiquityTokenSaltFilename];

  v43 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v9 encoding:4 error:&v43];
  v11 = v43;
  v12 = selfCopy->_ubiquityTokenSalt;
  selfCopy->_ubiquityTokenSalt = v10;

  v13 = selfCopy->_ubiquityTokenSalt;
  if (v13)
  {
    v4 = v13;

    goto LABEL_5;
  }

  domain = [v11 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

    goto LABEL_15;
  }

  v18 = [v11 code] == 260;

  if (!v18)
  {
LABEL_15:
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      [BRCAccountHandler ubiquityTokenSalt];
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountHandler ubiquityTokenSalt];
    }
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v23;
    _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[NOTICE] generating new ubiquity token%@", buf, 0xCu);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v27 = selfCopy->_ubiquityTokenSalt;
  selfCopy->_ubiquityTokenSalt = uUIDString;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v42 = v11;
  v29 = [defaultManager createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v42];
  v4 = v42;

  if (v29)
  {
    v30 = selfCopy->_ubiquityTokenSalt;
    v41 = v4;
    v31 = [(NSString *)v30 writeToURL:v9 atomically:1 encoding:4 error:&v41];
    v32 = v41;

    if (v31)
    {
      v4 = dispatch_get_global_queue(0, 0);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __38__BRCAccountHandler_ubiquityTokenSalt__block_invoke;
      v39[3] = &unk_2784FF450;
      v40 = v9;
      v33 = v9;
      dispatch_async(v4, v39);
    }

    else
    {
      v4 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, 0x90u))
      {
        path = [v9 path];
        *buf = 138412802;
        v45 = path;
        v46 = 2112;
        v47 = v32;
        v48 = 2112;
        v49 = v4;
        _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] failed writing salt data to '%@': %@%@", buf, 0x20u);
      }
    }
  }

  else
  {
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, 0x90u))
    {
      path2 = [v7 path];
      *buf = 138412802;
      v45 = path2;
      v46 = 2112;
      v47 = v4;
      v48 = 2112;
      v49 = v34;
      _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] failed creating salt directory '%@': %@%@", buf, 0x20u);
    }
  }

  v14 = 1;
LABEL_6:
  objc_sync_exit(selfCopy);

  if (v14)
  {
    v4 = selfCopy->_ubiquityTokenSalt;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BRCAccountHandler)initWithACAccountID:(id)d
{
  dCopy = d;
  v36.receiver = self;
  v36.super_class = BRCAccountHandler;
  v6 = [(BRCAccountHandler *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_acAccountID, d);
    br_currentSupportDir = [MEMORY[0x277CCACA8] br_currentSupportDir];
    accountPath = v7->_accountPath;
    v7->_accountPath = br_currentSupportDir;

    if (!v7->_accountPath)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"Got a nil account path"];
      objc_claimAutoreleasedReturnValue();
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession(BRCDatabaseManager) _startWatcher];
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountHandler initWithACAccountID:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/notifs/BRCAccountHandler.m", 293, uTF8String);
    }

    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

    v12 = BRPersonaSpecificName();
    uTF8String2 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String2, v15);

    queue = v7->_queue;
    v7->_queue = v16;

    v18 = BRPersonaSpecificName();
    v19 = dispatch_workloop_create([v18 UTF8String]);
    pushWorkloop = v7->_pushWorkloop;
    v7->_pushWorkloop = v19;

    v21 = BRPersonaSpecificName();
    uTF8String3 = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(v23, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(uTF8String3, v24);

    migrationStatusSetterQueue = v7->_migrationStatusSetterQueue;
    v7->_migrationStatusSetterQueue = v25;

    v27 = [[BRCBarrier alloc] initWithName:@"accountLoading"];
    accountLoadingBarrier = v7->_accountLoadingBarrier;
    v7->_accountLoadingBarrier = v27;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    syncPolicyByFolderType = v7->_syncPolicyByFolderType;
    v7->_syncPolicyByFolderType = dictionary;

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] removeObserver:self];

  v4.receiver = self;
  v4.super_class = BRCAccountHandler;
  [(BRCAccountHandler *)&v4 dealloc];
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountHandler profileConnectionDidReceiveRestrictionChangedNotification:userInfo:];
  }

  v20 = infoCopy;

  v7 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
  allApplicationIdentifiers = [v7 allApplicationIdentifiers];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = allApplicationIdentifiers;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (([v14 isEqualToString:@"com.apple.Preferences"] & 1) == 0)
        {
          mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
          v16 = [mEMORY[0x277D262A0] isCloudSyncAllowed:v14];

          if ((v16 & 1) == 0)
          {
            v17 = brc_bread_crumbs();
            v18 = brc_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v26 = v14;
              v27 = 2112;
              v28 = v17;
              _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] jetsaming %@%@", buf, 0x16u);
            }

            BKSTerminateApplicationForReasonAndReportWithDescription();
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)setDBAccountDSID:(id)d
{
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = MEMORY[0x277CCACA8];
  accountPath = [(BRCAccountHandler *)self accountPath];
  v8 = [v6 brc_accountIDPathForAccountPath:accountPath];

  if (dCopy)
  {
    accountPath2 = [(BRCAccountHandler *)self accountPath];
    v24 = 0;
    v10 = [defaultManager createDirectoryAtPath:accountPath2 withIntermediateDirectories:1 attributes:0 error:&v24];
    v11 = v24;

    if ((v10 & 1) == 0)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        [BRCAccountHandler setDBAccountDSID:];
      }
    }

    v23 = v11;
    v14 = 1;
    v15 = [dCopy writeToFile:v8 atomically:1 encoding:4 error:&v23];
    v16 = v23;

    if ((v15 & 1) == 0)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        [BRCAccountHandler setDBAccountDSID:];
      }

      v14 = 0;
    }
  }

  else if ((BRCRecursiveRemove(v8) & 0x80000000) != 0)
  {
    v19 = *__error();
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      [BRCAccountHandler setDBAccountDSID:];
    }

    v16 = 0;
    v14 = 0;
    *__error() = v19;
  }

  else
  {
    v16 = 0;
    v14 = 1;
  }

  return v14;
}

- (BOOL)_cleanupAPFSSnapshotWhenNoSessionExists
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v8.f_mntonname[392], 0, 32);
  cloudDocsAppSupportURL = [MEMORY[0x277CFAE38] cloudDocsAppSupportURL];
  v4 = statfs([cloudDocsAppSupportURL fileSystemRepresentation], &v8);

  if ((v4 & 0x80000000) == 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8.f_mntonname];
    [BRCAnalyticsReporter cancelSyncConsistencyReportWithMountPath:v5 queue:self->_pushWorkloop];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 >= 0;
}

- (void)_cleanupPushAndActivitiesStatesWhenNoSessionExists
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__BRCAccountHandler__cleanupPushAndActivitiesStatesWhenNoSessionExists__block_invoke()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.bird.disabled-events", v1);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *MEMORY[0x277CEE9E8];
  v17[0] = *MEMORY[0x277CEE9F0];
  v17[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:{2, 0}];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = [objc_alloc(MEMORY[0x277CEEA10]) initWithEnvironmentName:*(*(&v13 + 1) + 8 * v10) namedDelegatePort:@"com.apple.bird.push" queue:v2];

        [v7 setEnabledTopics:v9 ignoredTopics:v9 opportunisticTopics:v9];
        [v7 shutdown];
        ++v10;
        v11 = v7;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startAndLoadAccountSynchronously:(id)synchronously
{
  synchronouslyCopy = synchronously;
  queue = self->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke;
  v11 = &unk_2784FF478;
  selfCopy = self;
  v13 = synchronouslyCopy;
  v6 = synchronouslyCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, &v8);
  dispatch_async(queue, v7);

  [(BRCAccountHandler *)self _waitForSessionLoadingWhenNowStarting:1, v8, v9, v10, v11, selfCopy];
}

void __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  *(*(a1 + 32) + 8) = 1;
  if ([BRCSystemSupportAnalyzer isCloudDocsSupportedWithError:0])
  {
    v3 = MEMORY[0x277CFAE30];
    v4 = [*(a1 + 32) accountPath];
    v5 = [v3 brc_dbAccountDSIDForPath:v4];

    if ([*(a1 + 40) isEnabledForDataclass:*MEMORY[0x277CB91D8]])
    {
      v6 = [*(a1 + 40) br_dsid];
      if (v6)
      {
        if ([*(a1 + 40) br_isEnabledForCloudDocs])
        {
          v7 = *(*v2 + 8);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_2;
          block[3] = &unk_2784FF450;
          v6 = v6;
          v50 = v6;
          dispatch_async(v7, block);
        }

        else
        {
          if (BRGetMigrationStatusForDSID() < 2)
          {
            v34 = brc_bread_crumbs();
            v35 = brc_default_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v6;
              *&buf[12] = 2112;
              *&buf[14] = v34;
              _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] migration is not accepted, not loading the account for %@%@", buf, 0x16u);
            }

            [*v2 _cleanupPushAndActivitiesStatesWhenNoSessionExists];
            goto LABEL_55;
          }

          v9 = brc_bread_crumbs();
          v10 = brc_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] setting the migration on the account because account is migrated - and waiting for ACAccountNotification plugin%@", buf, 0xCu);
          }

          [*v2 setMigrationStatus:2 forDSID:v6 shouldUpdateAccount:1 shouldPostAccountChangedNotification:0 completion:0];
        }

        v8 = 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }

    v48 = 0;
    v11 = [MEMORY[0x277CCACA8] br_currentPersonaIDWithIsDataSeparated:&v48];
    memset(v47, 0, sizeof(v47));
    __brc_create_section(0, "[BRCAccountHandler startAndLoadAccountSynchronously:]_block_invoke", 472, 0, v47);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v38 = v47[0];
      v44 = [*v2 accountPath];
      if (v48)
      {
        v39 = @"DS";
      }

      else
      {
        v39 = @"not DS";
      }

      v43 = v39;
      v40 = [*(a1 + 40) br_personaIdentifier];
      v41 = [*(a1 + 40) isDataSeparatedAccount];
      v42 = @"not DS";
      if (v41)
      {
        v42 = @"DS";
      }

      *buf = 134220290;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v52 = v5;
      v53 = 2112;
      v54 = 0;
      v55 = 2112;
      v56 = v44;
      v57 = 2112;
      v58 = v11;
      v59 = 2112;
      v60 = v43;
      v61 = 2112;
      v62 = v40;
      v63 = 2112;
      v64 = v42;
      v65 = 2112;
      v66 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx loaded system account ID: %@ (db ID: %@, disk ID: %@, path: %@, current persona: %@ (%@), account's persona: %@ (%@))%@", buf, 0x66u);
    }

    if (v5)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (v5)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8;
      }

      if (v15)
      {
        v16 = v6;
        goto LABEL_28;
      }

      if (!v5)
      {
        goto LABEL_34;
      }

      if ([v5 isEqualToString:v6])
      {
        v21 = 0;
LABEL_38:
        memset(v46, 0, sizeof(v46));
        __brc_create_section(0, "[BRCAccountHandler startAndLoadAccountSynchronously:]_block_invoke", 509, 0, v46);
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          *&buf[4] = v46[0];
          *&buf[12] = 2112;
          *&buf[14] = v5;
          *&buf[22] = 2112;
          v52 = v24;
          _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Loading current on-disk account: %@%@", buf, 0x20u);
        }

        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v26;
          _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEFAULT, "[NOTICE] using account %@%@", buf, 0x16u);
        }

        v28 = *v2;
        if (*(*v2 + 6))
        {
          if ([*(*v2 + 6) isEqualToString:v5])
          {
            goto LABEL_47;
          }

          v28 = *v2;
        }

        if ([v28 _loadOnDiskAccountSessionWithError:0])
        {
          objc_storeStrong(*v2 + 6, v5);
          goto LABEL_48;
        }

LABEL_47:
        if (!v21)
        {
LABEL_49:
          __brc_leave_section(v46);
          goto LABEL_50;
        }

LABEL_48:
        BRPostAccountTokenChangedNotification();
        goto LABEL_49;
      }

      v36 = brc_bread_crumbs();
      v37 = brc_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v52 = v36;
        _os_log_fault_impl(&dword_223E7A000, v37, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: disk account ID (%@) doesn't match system account ID (%@)%@", buf, 0x20u);
      }
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      __brc_create_section(0, "[BRCAccountHandler startAndLoadAccountSynchronously:]_block_invoke", 475, 0, buf);
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_cold_1(buf);
      }

      __brc_leave_section(buf);
    }

    [*v2 reloadSyncedFolderPoliciesDisableiCloudDesktop:1];
    v19 = [[BRCAccountSession alloc] initWithACAccountID:*(*v2 + 13) dbAccountDSID:v5 salt:0 accountHandler:0];
    [(BRCAccountSession *)v19 destroyLocalData];
    v20 = v6;

LABEL_28:
    if ([*v2 setDBAccountDSID:v6])
    {
      if (v6)
      {
        v21 = 1;
        v5 = v6;
        goto LABEL_38;
      }
    }

    else
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_cold_2();
      }
    }

LABEL_34:
    [*v2 _cleanupPushAndActivitiesStatesWhenNoSessionExists];
    v5 = 0;
LABEL_50:
    [*(*v2 + 4) resumeIfNecessary];
    *(*(a1 + 32) + 9) = 1;
    if (([*(a1 + 40) br_needsToVerifyTerms] & 1) == 0)
    {
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_cold_3(v2);
      }

      v32 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_176;
      v45[3] = &unk_2784FF540;
      v45[4] = *v2;
      [v32 signalErrorResolved:v29 completionHandler:v45];
    }

    __brc_leave_section(v47);

LABEL_55:
    goto LABEL_56;
  }

  *(*v2 + 9) = 1;
LABEL_56:
  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  result = BRGetMigrationStatusForDSID();
  if (result <= 1)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] setting the migration prefs because account is migrated%@", &v8, 0xCu);
    }

    v6 = *(a1 + 32);
    result = BRSetMigrationStatusForDSIDInPref();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_176(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(*(a1 + 32) + 104);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] signalErrorResolved for %@ finished - %@%@", &v8, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)jetsamCloudDocsApps
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)__destroySession
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] timed out waiting for %u seconds for account session to close!%@", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __37__BRCAccountHandler___destroySession__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containerMetadata];
  if ([v3 isInInitialState])
  {
    v4 = *(a1 + 32);
    v5 = [v3 identifier];
    [v4 addObject:v5];
  }

  return 1;
}

intptr_t __37__BRCAccountHandler___destroySession__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) close];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)_destroyCurrentSessionSynchronously
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__BRCAccountHandler_ubiquityTokenSalt__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CBE878];
  v11 = 0;
  v5 = [v3 setResourceValue:MEMORY[0x277CBEC38] forKey:v4 error:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v10 = [*(a1 + 32) path];
      *buf = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] failed excluding salt data at '%@' from backups: %@%@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkEnoughDiskSpaceToBeFunctional
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  br_currentSupportDir = [MEMORY[0x277CCACA8] br_currentSupportDir];
  v4 = [defaultManager attributesOfFileSystemForPath:br_currentSupportDir error:0];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountHandler checkEnoughDiskSpaceToBeFunctional];
  }

  v10 = 1;
  if (v5)
  {
    v8 = [BRCUserDefaults defaultsForMangledID:0];
    minimumDiskSpaceRequiredToBeFunctional = [v8 minimumDiskSpaceRequiredToBeFunctional];

    if ([v5 unsignedLongLongValue] < minimumDiskSpaceRequiredToBeFunctional)
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unsigned)_handleOpenError:(id)error
{
  v61 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (([errorCopy brc_isOutOfSpaceError] & 1) != 0 || (objc_msgSend(errorCopy, "br_isCloudDocsErrorCode:", 85) & 1) != 0 || !-[BRCAccountHandler checkEnoughDiskSpaceToBeFunctional](self, "checkEnoughDiskSpaceToBeFunctional"))
  {
    v8 = brc_bread_crumbs();
    v7 = 1;
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _handleOpenError:];
    }

    self->_doesNotHaveEnoughDiskSpaceToBeFunctional = 1;
    goto LABEL_11;
  }

  if ([errorCopy br_isCloudDocsErrorCode:121])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _handleOpenError:];
    }

    v7 = 1;
    goto LABEL_11;
  }

  if ([errorCopy br_isCloudDocsErrorCode:99])
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _handleOpenError:];
    }

    v7 = 5;
    goto LABEL_11;
  }

  if (([errorCopy br_isCloudDocsErrorCode:81] & 1) == 0 && !objc_msgSend(errorCopy, "br_isCloudDocsErrorCode:", 92))
  {
    goto LABEL_29;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  underlyingErrors = [errorCopy underlyingErrors];
  v15 = [underlyingErrors countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = v15;
  v17 = *v51;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v51 != v17)
      {
        objc_enumerationMutation(underlyingErrors);
      }

      v19 = *(*(&v50 + 1) + 8 * i);
      if ([v19 br_isPOSIXErrorCode:13])
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        v7 = 2;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountHandler _handleOpenError:];
        }

LABEL_50:

LABEL_51:
        goto LABEL_11;
      }

      if ([v19 br_isNSXPCConnectionError])
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountHandler _handleOpenError:];
        }

        goto LABEL_49;
      }

      if ([v19 fp_isFileProviderError:-2001])
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountHandler _handleOpenError:];
        }

LABEL_49:
        v7 = 5;
        goto LABEL_50;
      }
    }

    v16 = [underlyingErrors countByEnumeratingWithState:&v50 objects:v60 count:16];
  }

  while (v16);
LABEL_28:

LABEL_29:
  if ([errorCopy br_isCloudDocsErrorCode:116])
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = errorCopy;
      v58 = 2112;
      v59 = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[NOTICE] Got %@ while opening account. Exiting without an error%@", buf, 0x16u);
    }

    v7 = 2;
    goto LABEL_11;
  }

  if (![errorCopy br_isCloudDocsErrorCode:100])
  {
    goto LABEL_64;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  underlyingErrors = [errorCopy underlyingErrors];
  v22 = [underlyingErrors countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (!v22)
  {
    goto LABEL_63;
  }

  v23 = v22;
  v24 = *v47;
LABEL_36:
  v25 = 0;
  while (1)
  {
    if (*v47 != v24)
    {
      objc_enumerationMutation(underlyingErrors);
    }

    v26 = *(*(&v46 + 1) + 8 * v25);
    if ([v26 br_isCocoaErrorCode:4101])
    {
      break;
    }

    if (v23 == ++v25)
    {
      v23 = [underlyingErrors countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (!v23)
      {
        goto LABEL_63;
      }

      goto LABEL_36;
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v26 underlyingErrors];
  v29 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (!v29)
  {
    goto LABEL_62;
  }

  v30 = v29;
  v31 = *v43;
  v32 = *MEMORY[0x277D82C20];
  while (2)
  {
    v33 = 0;
    while (2)
    {
      if (*v43 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v42 + 1) + 8 * v33);
      if (([v34 fp_isFileProviderInternalError:12] & 1) != 0 || (objc_msgSend(v34, "domain"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", v32), v35, v36))
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountHandler _handleOpenError:];
        }

        v7 = 5;
        goto LABEL_71;
      }

      if ([v34 br_isPOSIXErrorCode:28])
      {
        v39 = brc_bread_crumbs();
        v7 = 1;
        v40 = brc_default_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountHandler _handleOpenError:];
        }

        self->_doesNotHaveEnoughDiskSpaceToBeFunctional = 1;
LABEL_71:

        goto LABEL_51;
      }

      if (v30 != ++v33)
      {
        continue;
      }

      break;
    }

    v30 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_62:

LABEL_63:
LABEL_64:
  v7 = 6;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)waitForSessionDBLoadingBarrier
{
  location = 0;
  [(BRCBarrier *)self->_accountLoadingBarrier waitForBarrier];
  v3 = self->_accountLoadingBarrier;
  objc_sync_enter(v3);
  WeakRetained = objc_loadWeakRetained(&self->_loadingSession);
  session = WeakRetained;
  if (!WeakRetained)
  {
    session = self->_session;
  }

  objc_storeWeak(&location, session);

  objc_sync_exit(v3);
  v6 = objc_loadWeakRetained(&location);
  dbLoadingBarrier = [v6 dbLoadingBarrier];
  [dbLoadingBarrier waitForBarrier];

  v8 = objc_loadWeakRetained(&location);
  objc_destroyWeak(&location);

  return v8;
}

- (unsigned)_tryToOpenSession:(id)session error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = self->_accountLoadingBarrier;
  objc_sync_enter(v7);
  objc_storeWeak(&self->_loadingSession, sessionCopy);
  objc_sync_exit(v7);

  [(BRCBarrier *)self->_accountLoadingBarrier signalBarrier];
  v19[0] = 0;
  v8 = [sessionCopy openWithError:v19 pushWorkloop:self->_pushWorkloop];
  v9 = v19[0];
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      [BRCAccountHandler _tryToOpenSession:error:];
    }

    v10 = [(BRCAccountHandler *)self _handleOpenError:v9];
    v9 = v9;
    if (v9)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v18 = "(passed to caller)";
        *buf = 136315906;
        v21 = "[BRCAccountHandler _tryToOpenSession:error:]";
        v22 = 2080;
        if (!error)
        {
          v18 = "(ignored by caller)";
        }

        v23 = v18;
        v24 = 2112;
        v25 = v9;
        v26 = 2112;
        v27 = v13;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v15 = v9;
      *error = v9;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_loadOnDiskAccountSessionWithError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [BRCAccountSession alloc];
  acAccountID = self->_acAccountID;
  v6 = MEMORY[0x277CFAE30];
  accountPath = [(BRCAccountHandler *)self accountPath];
  v8 = [v6 brc_dbAccountDSIDForPath:accountPath];
  ubiquityTokenSalt = [(BRCAccountHandler *)self ubiquityTokenSalt];
  v10 = [(BRCAccountSession *)v4 initWithACAccountID:acAccountID dbAccountDSID:v8 salt:ubiquityTokenSalt accountHandler:self];

  v33 = 0;
  v11 = [(BRCAccountHandler *)self _tryToOpenSession:v10 error:&v33];
  v12 = v33;
  if (!v11)
  {
    goto LABEL_4;
  }

  if (![(BRCAccountHandler *)self _shouldRetryOpenSession:v11])
  {
    if ([(BRCAccountHandler *)self _shouldResetLocalData:v12])
    {
      [(BRCAccountSession *)v10 closeAndResetLocalStateWithDescription:@"Reset Local State" error:v12];
    }

    else
    {
      [(BRCAccountSession *)v10 close];
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v12;
        v36 = 2112;
        v37 = v18;
        _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Capturing account session open error of the first try: %@%@", buf, 0x16u);
      }

      [(BRCAccountSession *)v10 captureSessionOpenFailedInfoWithError:v12];
    }

    if (v11 == 2)
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountHandler _loadOnDiskAccountSessionWithError:];
      }

      exit(0);
    }

    if (v11 == 3)
    {
      userInfo = [v12 userInfo];
      v21 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      userInfo2 = [v12 userInfo];
      v23 = [userInfo2 objectForKeyedSubscript:@"SqliteSQL"];

      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open account: %@ (underlying: %@, sql: %@)\n", v12, v21, v23];
      objc_claimAutoreleasedReturnValue();
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession(BRCDatabaseManager) _startWatcher];
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountHandler _loadOnDiskAccountSessionWithError:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/notifs/BRCAccountHandler.m", 924, uTF8String);
    }

    if (v11 != 1)
    {
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountHandler _loadOnDiskAccountSessionWithError:];
      }
    }

    goto LABEL_21;
  }

  if (![(BRCAccountHandler *)self _loadOnDiskAccountSessionSecondTry:v10 prevError:v12])
  {
LABEL_21:
    v15 = self->_accountLoadingBarrier;
    objc_sync_enter(v15);
    objc_storeWeak(&self->_loadingSession, 0);
    objc_sync_exit(v15);
    v17 = 0;
    goto LABEL_22;
  }

LABEL_4:
  v13 = self->_accountLoadingBarrier;
  objc_sync_enter(v13);
  objc_storeStrong(&self->_session, v10);
  objc_storeWeak(&self->_loadingSession, 0);
  objc_sync_exit(v13);

  ubiquityTokenSalt2 = [(BRCAccountHandler *)self ubiquityTokenSalt];
  [(BRCAccountHandler *)self reloadSyncedFolderPolicies];
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountHandler _loadOnDiskAccountSessionWithError:];
  }

  v17 = 1;
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_loadOnDiskAccountSessionSecondTry:(id)try prevError:(id)error
{
  tryCopy = try;
  errorCopy = error;
  if (!errorCopy)
  {
    [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
  }

  if ([errorCopy br_isCloudDocsErrorCode:81])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
    }

    v10 = 0;
    v11 = @"CreateFPFSDomain";
  }

  else if ([errorCopy br_isCloudDocsErrorCode:92])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
    }

    v10 = 0;
    v11 = @"ImportFPFSDomain";
  }

  else
  {
    [tryCopy closeAndResetLocalStateWithDescription:@"Cannot open account session" error:errorCopy];
    v8 = brc_bread_crumbs();
    v10 = 1;
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
    }

    v11 = 0;
  }

  v46 = 0;
  v12 = [(BRCAccountHandler *)self _tryToOpenSession:tryCopy error:&v46];
  v13 = v46;
  if (v12)
  {
    v43 = errorCopy;
    v44 = v11;
    v45 = tryCopy;
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
    }

    array = [MEMORY[0x277CBEB18] array];
    accountPath = [(BRCAccountHandler *)self accountPath];
    v18 = [accountPath stringByAppendingPathComponent:*MEMORY[0x277CFACE8]];

    for (i = 0; i != 5; ++i)
    {
      v20 = open([v18 fileSystemRepresentation], 4);
      v21 = MEMORY[0x277CCACA8];
      if ((v20 & 0x80000000) != 0)
      {
        v22 = __error();
        [v21 stringWithFormat:@"#%lu FAIL %s", i, strerror(*v22)];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"#%lu fd = %d", i, v20];
      }
      v23 = ;
      [array addObject:v23];
    }

    selfCopy2 = self;
    v25 = v44;
    if (v10)
    {
      if ([v13 br_isCloudDocsErrorCode:81])
      {
        v25 = @"CreateFPFSDomain";
      }

      else
      {
        if (![v13 br_isCloudDocsErrorCode:92])
        {
          goto LABEL_28;
        }

        v25 = @"ImportFPFSDomain";
      }
    }

    v26 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v26 captureLogsForOperationType:@"OpenAccountSession" ofSubtype:v25 forError:v13 underlyingError:0 waitForCompletion:1];

LABEL_28:
    userInfo = [v13 userInfo];
    v28 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    userInfo2 = [v13 userInfo];
    v30 = [userInfo2 objectForKeyedSubscript:@"SqliteSQL"];

    if ([(BRCAccountHandler *)self _shouldResetLocalData:v13])
    {
      [tryCopy closeAndResetLocalStateWithDescription:@"Reset Local State" error:v13];
    }

    else
    {
      [tryCopy close];
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, 0x90u))
      {
        [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
      }

      [tryCopy captureSessionOpenFailedInfoWithError:v13];
      selfCopy2 = self;
    }

    if (v12 <= 6)
    {
      if (((1 << v12) & 0x12) != 0)
      {
LABEL_40:
        if (selfCopy2->_doesNotHaveEnoughDiskSpaceToBeFunctional)
        {
          v35 = brc_bread_crumbs();
          v36 = brc_default_log();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
          }
        }

        errorCopy = v43;
        goto LABEL_45;
      }

      if (((1 << v12) & 0x24) != 0)
      {
        v38 = brc_bread_crumbs();
        v39 = brc_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountHandler _loadOnDiskAccountSessionWithError:];
        }

        exit(0);
      }

      if (((1 << v12) & 0x48) != 0)
      {
        abc_report_panic_with_signature();
        [MEMORY[0x277CCACA8] stringWithFormat:@"Still unable to open account after attempted reset: %@ (underlying: %@, sql: %@)\nopen result: %@", v13, v28, v30, array];
        objc_claimAutoreleasedReturnValue();
        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          [BRCAccountSession(BRCDatabaseManager) _startWatcher];
        }

        brc_append_system_info_to_message();
        uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
        __assert_rtn("[BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/notifs/BRCAccountHandler.m", 1020, uTF8String);
      }
    }

    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountHandler _loadOnDiskAccountSessionSecondTry:prevError:];
    }

    tryCopy = v45;
    goto LABEL_40;
  }

LABEL_45:

  return v12 == 0;
}

- (BOOL)_createCurrentAccountSessionWithID:(id)d error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  memset(v24, 0, sizeof(v24));
  __brc_create_section(0, "[BRCAccountHandler _createCurrentAccountSessionWithID:error:]", 1037, 0, v24);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v26 = v24[0];
    v27 = 2112;
    v28 = dCopy;
    v29 = 2112;
    v30 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx creating account session for %@%@", buf, 0x20u);
  }

  if (self->_session)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountHandler _createCurrentAccountSessionWithID:error:];
    }

    if (self->_session)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        session = self->_session;
        *buf = 138412546;
        v26 = session;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] we are already logged in %@%@", buf, 0x16u);
      }

      [(BRCAccountHandler *)self _destroyCurrentSessionSynchronously];
    }
  }

  v9 = MEMORY[0x277CFAE30];
  accountPath = [(BRCAccountHandler *)self accountPath];
  v11 = [v9 brc_dbAccountDSIDForPath:accountPath];
  if (v11)
  {
    v12 = MEMORY[0x277CFAE30];
    accountPath2 = [(BRCAccountHandler *)self accountPath];
    v14 = [v12 brc_dbAccountDSIDForPath:accountPath2];
    LOBYTE(v12) = [v14 isEqualToString:dCopy];

    if (v12)
    {
      goto LABEL_10;
    }

    accountPath = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountHandler _createCurrentAccountSessionWithID:error:];
    }
  }

LABEL_10:
  if ([(BRCAccountHandler *)self setDBAccountDSID:dCopy])
  {
    v16 = [(BRCAccountHandler *)self _loadOnDiskAccountSessionWithError:error];
  }

  else
  {
    v16 = 0;
  }

  __brc_leave_section(v24);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_handleAccountWillChange
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: [_dbAccountDSID isEqualToString:_session.accountFacade.accountDSID]%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccountDidChange
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] sending apps account change notification%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateAccountIfNecessaryForAccountDSID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (BRGetMigrationStatusForDSID() <= 1)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Asking account status for %@%@", &v11, 0x16u);
    }

    v6 = [(BRCAccountOnlinePerformer *)[BRCAccountMigrationChecker alloc] initWithDSID:dCopy];
    [(BRCAccountOnlinePerformer *)v6 resumeAndAutoClose];
  }

  if (BRGetMigrationStatusForDSID() == 2)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Triggering migration for %@%@", &v11, 0x16u);
    }

    v9 = [(BRCAccountOnlinePerformer *)[BRCAccountMigrator alloc] initWithDSID:dCopy];
    [(BRCAccountOnlinePerformer *)v9 resumeAndAutoClose];
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)currentiCloudAccountID
{
  currentiCloudAccount = [self currentiCloudAccount];
  br_dsid = [currentiCloudAccount br_dsid];

  return br_dsid;
}

- (BOOL)_waitForSessionLoadingWhenNowStarting:(BOOL)starting
{
  dispatch_assert_queue_not_V2(self->_queue);
  if (self->_finishedLoading)
  {
    return 1;
  }

  if (!starting && !self->_startedLoading)
  {
    return 0;
  }

  dispatch_sync(self->_queue, &__block_literal_global_233);
  if (self->_finishedLoading)
  {
    return 1;
  }

  [(BRCAccountHandler *)&self->_finishedLoading _waitForSessionLoadingWhenNowStarting:?];
  return v6;
}

- (BOOL)destroyCurrentAccountSynchronously
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFAE30] brc_dbAccountDSIDForPath:self->_accountPath];
  if (v3)
  {
    v4 = [[BRCAccountSession alloc] initWithACAccountID:self->_acAccountID dbAccountDSID:v3 salt:0 accountHandler:0];
    [(BRCAccountSession *)v4 preventDatabaseFromBeingReused];
    v5 = MEMORY[0x277CCACA8];
    accountPath = [(BRCAccountHandler *)self accountPath];
    v7 = [v5 brc_accountIDPathForAccountPath:accountPath];

    if ([v7 length] && (BRCRecursiveRemove(v7) & 0x80000000) != 0)
    {
      v9 = *__error();
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        v14 = 138413058;
        v15 = v3;
        v16 = 2112;
        v17 = v7;
        v18 = 1024;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] can't remove account belonging to account %@ at %@ %{errno}d%@", &v14, 0x26u);
      }

      v8 = 0;
      *__error() = v9;
    }

    else
    {
      [(BRCAccountSession *)v4 destroyLocalData];
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_updateAccountToDSID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dbAccountDSID = self->_dbAccountDSID;
  if (dbAccountDSID == dCopy || [(BRDSIDString *)dbAccountDSID isEqualToString:dCopy])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _updateAccountToDSID:];
    }
  }

  else
  {
    [(BRCAccountHandler *)self _handleAccountWillChange];
    v9 = MEMORY[0x277CFAE30];
    accountPath = [(BRCAccountHandler *)self accountPath];
    v7 = [v9 brc_dbAccountDSIDForPath:accountPath];

    if (!v7 || ([v7 isEqualToString:dCopy] & 1) != 0)
    {
      goto LABEL_14;
    }

    if (dCopy)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412802;
        v15 = v7;
        v16 = 2112;
        v17 = dCopy;
        v18 = 2112;
        v19 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Cleaning up previous session belonging to account %@, to make room for new account %@%@", &v14, 0x20u);
      }
    }

    else
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountHandler _updateAccountToDSID:];
      }
    }

    [(BRCAccountHandler *)self reloadSyncedFolderPoliciesDisableiCloudDesktop:1];
    if ([(BRCAccountHandler *)self destroyCurrentAccountSynchronously])
    {
LABEL_14:
      objc_storeStrong(&self->_dbAccountDSID, d);
      self->_hasSetMigrationComplete = 0;
      [(BRCAccountHandler *)self _handleAccountDidChange];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)destroySessionSynchronously
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BRCAccountHandler_destroySessionSynchronously__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(queue, v4);

  dispatch_sync(self->_queue, &__block_literal_global_235);
  return 1;
}

- (BOOL)createAccountSessionWithDSID:(id)d error:(id *)error
{
  dCopy = d;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__BRCAccountHandler_createAccountSessionWithDSID_error___block_invoke;
  v10[3] = &unk_2784FF478;
  v10[4] = self;
  v11 = dCopy;
  v7 = dCopy;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v10);
  dispatch_async(queue, v8);

  dispatch_sync(self->_queue, &__block_literal_global_237);
  return 1;
}

- (void)setMigrationStatus:(char)status forDSID:(id)d shouldUpdateAccount:(BOOL)account shouldPostAccountChangedNotification:(BOOL)notification completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v13 = dispatch_group_create();
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  [defaultStore invalidateAccountForPersonaCache];
  migrationStatusSetterQueue = self->_migrationStatusSetterQueue;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke;
  v36[3] = &unk_2784FFDA8;
  v40 = v43;
  v30 = dCopy;
  v37 = v30;
  statusCopy = status;
  accountCopy = account;
  v16 = defaultStore;
  v38 = v16;
  v39 = v13;
  v17 = v39;
  v18 = migrationStatusSetterQueue;
  v19 = v36;
  v20 = objc_autoreleasePoolPush();
  v45 = 0uLL;
  v46 = 0;
  __brc_create_section(0, "dispatch_group_async_with_logs", 314, 0, &v45);
  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v29 = v45;
    label = dispatch_queue_get_label(v18);
    *block = 134218498;
    *&block[4] = v29;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v48 = v21;
    _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v51 = v45;
  v52 = v46;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_group_async_with_logs_block_invoke;
  v48 = &unk_2784FF568;
  v23 = v18;
  v49 = v23;
  v24 = v19;
  v50 = v24;
  dispatch_group_async(v17, v23, block);

  objc_autoreleasePoolPop(v20);
  v25 = dispatch_get_global_queue(0, 0);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_240;
  v32[3] = &unk_2784FFDD0;
  v33 = completionCopy;
  v34 = v43;
  notificationCopy = notification;
  v32[4] = self;
  v26 = completionCopy;
  dispatch_group_notify(v17, v25, v32);

  _Block_object_dispose(v43, 8);
  v27 = *MEMORY[0x277D85DE8];
}

void __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = BRSetMigrationStatusForDSIDInPref() != 0;
  if (*(a1 + 65) == 1 && *(a1 + 64) >= 2)
  {
    v4 = [*(a1 + 40) br_accountForCurrentPersona];
    v5 = [v4 br_dsid];
    if ([v5 isEqualToString:*(a1 + 32)])
    {
      if ([v4 br_isCloudDocsMigrated])
      {
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_cold_1();
        }
      }

      else
      {
        [v4 br_setCloudDocsMigrated:1];
        *(*(*(a1 + 56) + 8) + 24) = 1;
        dispatch_group_enter(*(a1 + 48));
        v11 = *(a1 + 40);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_238;
        v14[3] = &unk_2784FFD80;
        v15 = v4;
        v16 = *(a1 + 48);
        [v11 saveVerifiedAccount:v15 withCompletionHandler:v14];

        v6 = v15;
      }
    }

    else
    {
      if (v4)
      {
        v6 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v9 = [v5 UTF8String];
          v10 = [*(a1 + 32) UTF8String];
          *buf = 136315650;
          v18 = v9;
          v19 = 2080;
          v20 = v10;
          v21 = 2112;
          v22 = v6;
          _os_log_fault_impl(&dword_223E7A000, v8, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: the main account (%s) doesn't match the one we have (%s)%@", buf, 0x20u);
        }
      }

      else
      {
        v6 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) UTF8String];
          *buf = 136315394;
          v18 = v12;
          v19 = 2112;
          v20 = v6;
          _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] we seem to have logged out while migrating account (%s)%@", buf, 0x16u);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_238(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_238_cold_1();
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] can't set the migrated bit on %@: %@%@", &v10, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_240(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(a1 + 56) == 1 && *(*(a1 + 32) + 32))
  {
    BRPostAccountTokenChangedNotification();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)markMigrationCompletedForDSID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dispatch_get_global_queue(0, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke;
  v17[3] = &unk_2784FF478;
  v17[4] = self;
  v6 = dCopy;
  v18 = v6;
  v7 = v5;
  v8 = v17;
  v9 = objc_autoreleasePoolPush();
  v19 = 0uLL;
  v20 = 0;
  __brc_create_section(0, "brc_dispatch_async_autorelease_with_logs", 297, 0, &v19);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = v19;
    label = dispatch_queue_get_label(v7);
    *block = 134218498;
    *&block[4] = v15;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v22 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v25 = v19;
  v26 = v20;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __brc_dispatch_async_autorelease_with_logs_block_invoke;
  v22 = &unk_2784FF568;
  v12 = v7;
  v23 = v12;
  v13 = v8;
  v24 = v13;
  dispatch_async(v12, block);

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

void __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = v2;
  if ((*(*(a1 + 32) + 72) & 1) == 0)
  {
    v4 = [v2 br_accountForCurrentPersona];
    v5 = [v4 br_dsid];
    if ([v5 isEqualToString:*(a1 + 40)])
    {
      if ([v4 br_isCloudDocsMigrationComplete] && objc_msgSend(v4, "br_isCloudDocsMigrated"))
      {
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke_cold_1();
        }

        *(*(a1 + 32) + 72) = 1;
        BRPostAccountTokenChangedNotification();
      }

      else
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v5;
          v24 = 2112;
          v25 = v10;
          _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] setting migration complete on %@%@", buf, 0x16u);
        }

        [v4 br_setCloudDocsMigrationComplete:1];
        [v4 br_setCloudDocsMigrated:1];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke_241;
        v19[3] = &unk_2784FFD80;
        v12 = *(a1 + 32);
        v20 = v4;
        v21 = v12;
        v4 = v4;
        [v3 saveVerifiedAccount:v4 withCompletionHandler:v19];
      }
    }

    else
    {
      if (!v4)
      {
        v13 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [*(a1 + 40) UTF8String];
          *buf = 136315394;
          v23 = v16;
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] we seem to have logged out while migrating account (%s)%@", buf, 0x16u);
        }

        goto LABEL_16;
      }

      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v17 = [v5 UTF8String];
        v18 = [*(a1 + 40) UTF8String];
        *buf = 136315650;
        v23 = v17;
        v24 = 2080;
        v25 = v18;
        v26 = 2112;
        v27 = v8;
        _os_log_fault_impl(&dword_223E7A000, v9, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: the main account (%s) doesn't match the one we have (%s)%@", buf, 0x20u);
      }
    }

    v13 = v5;
    v5 = v4;
LABEL_16:
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke_241(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 40) + 72) = 1;
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke_241_cold_1();
    }

    BRPostAccountTokenChangedNotification();
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v11 = *(a1 + 32);
      v12 = 138412802;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] can't set the migrated bit on %@: %@%@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reloadSyncedFolderPoliciesDisableiCloudDesktop:(BOOL)desktop
{
  [(BRCAccountHandler *)self setSyncPolicy:-1 forSyncedFolderType:1];

  BRPostAccountTokenChangedNotification();
}

- (int64_t)syncPolicyforSyncedFolderType:(unint64_t)type
{
  if (type != 1)
  {
    [BRCAccountHandler syncPolicyforSyncedFolderType:];
  }

  syncPolicyByFolderType = self->_syncPolicyByFolderType;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v7 = [(NSMutableDictionary *)syncPolicyByFolderType objectForKeyedSubscript:v6];

  if (!v7)
  {
    [BRCAccountHandler syncPolicyforSyncedFolderType:];
  }

  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSyncPolicy:(int64_t)policy forSyncedFolderType:(unint64_t)type
{
  if (policy != -1 && policy != 1)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountHandler setSyncPolicy:forSyncedFolderType:];
    }
  }

  if (type != 1)
  {
    [BRCAccountHandler setSyncPolicy:forSyncedFolderType:];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:policy];
  syncPolicyByFolderType = self->_syncPolicyByFolderType;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [(NSMutableDictionary *)syncPolicyByFolderType setObject:v9 forKeyedSubscript:v11];
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:userInfo:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDBAccountDSID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDBAccountDSID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDBAccountDSID:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: not loading account %@ because we cannot create set account id on disk%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __54__BRCAccountHandler_startAndLoadAccountSynchronously___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  v8 = *(v1 + 104);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)ubiquityTokenSalt
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't load salt, bad bug ahead%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkEnoughDiskSpaceToBeFunctional
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Volume not supported by FPFS%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenError:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] No space on disk%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tryToOpenSession:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tryToOpenSession:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tryToOpenSession:(uint64_t)a3 error:.cold.3(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] %@%@", v4, 0x16u);
}

- (void)_tryToOpenSession:(uint64_t)a3 error:.cold.4(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Your database is from the future, disabling iCloud Drive (%@)%@", v4, 0x16u);
}

- (void)_loadOnDiskAccountSessionWithError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Exit bird without panic%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionWithError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: errorHandlingOnFailure == BRCFail%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionWithError:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*v2 sessionDirPath];
  OUTLINED_FUNCTION_1_0();
  v6 = v1;
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Starting up at %@%@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: prevError%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Local session state has been resetted, try opening the session for the second time%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Failed import FPFS domain. Skipping database reset and trying to open again%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Failed adding FPFS domain. Skipping database reset and trying to open again%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to open account session second time%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: errorHandlingOnFailure == BRCRetryOrFail || errorHandlingOnFailure == BRCFail%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadOnDiskAccountSessionSecondTry:prevError:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Looks like we hit disk space issue on second try --> don't panic or exit%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createCurrentAccountSessionWithID:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _session == nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createCurrentAccountSessionWithID:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: [BRDSIDString brc_dbAccountDSIDForPath:self.accountPath] == nil || [[BRDSIDString brc_dbAccountDSIDForPath:self.accountPath] isEqualToString:accountID]%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)currentiCloudAccount
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_waitForSessionLoadingWhenNowStarting:(_BYTE *)a1 .cold.1(_BYTE *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _finishedLoading%@", &v7, 0xCu);
  }

  *a2 = *a1 & 1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountToDSID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountToDSID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Account hasn't really changed, do nothing%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] account property is already set%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__BRCAccountHandler_setMigrationStatus_forDSID_shouldUpdateAccount_shouldPostAccountChangedNotification_completion___block_invoke_238_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] saved the migration bit%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] migration already completed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__BRCAccountHandler_markMigrationCompletedForDSID___block_invoke_241_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] saved the bit%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncPolicyforSyncedFolderType:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: folderType >= BRCSyncedFolderTypeMin && folderType <= BRCSyncedFolderTypeMax%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)syncPolicyforSyncedFolderType:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: syncPolicy%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setSyncPolicy:forSyncedFolderType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: syncPolicy == BRCSyncedFolderPolicyEnabled || syncPolicy == BRCSyncedFolderPolicyDisabled%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSyncPolicy:forSyncedFolderType:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: folderType >= BRCSyncedFolderTypeMin && folderType <= BRCSyncedFolderTypeMax%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end