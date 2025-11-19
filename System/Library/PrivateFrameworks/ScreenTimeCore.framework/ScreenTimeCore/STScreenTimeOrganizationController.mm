@interface STScreenTimeOrganizationController
+ (id)keyPathsForValuesAffectingScreenTimeEnabled;
+ (id)keyPathsForValuesAffectingScreenTimeSyncingEnabled;
+ (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5;
+ (void)postDiagnosticsServiceMessage:(id)a3;
+ (void)restrictionsForUserDSID:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5;
- (BOOL)_writePlistForUser:(id)a3 url:(id)a4 error:(id *)a5;
- (BOOL)authenticateRestrictionsPasscode:(id)a3 error:(id *)a4;
- (BOOL)clearRestrictionsPasscodeWithError:(id *)a3;
- (BOOL)createMandatoryEntitiesIfNeeded;
- (BOOL)exportDatabaseToURL:(id)a3 error:(id *)a4;
- (BOOL)isLocalUserRemotelyManaged;
- (BOOL)isScreenTimeEnabled;
- (BOOL)isScreenTimeSyncingEnabled;
- (BOOL)performAppExceptionsMigration;
- (STAppMonitorStatus)appMonitorStatus;
- (STScreenTimeOrganizationController)initWithPersistenceController:(id)a3 askForTimeManager:(id)a4 mirroringMonitor:(id)a5 accountNotifier:(id)a6 capabilities:(id)a7;
- (id)fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:(id)a3 error:(id *)a4;
- (id)getIsExplicitContentRestrictedAndReturnError:(id *)a3;
- (id)getIsRestrictionsPasscodeSetAndReturnError:(id *)a3;
- (id)getIsWebContentRestrictedAndReturnError:(id *)a3;
- (id)getNeedsToSetRestrictionsPasscodeAndReturnError:(id *)a3;
- (id)getPrimaryiCloudCardDAVAccountIdentifierWithError:(id *)a3;
- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 error:(id *)a4;
- (id)shouldAllowOneMoreMinuteForWebDomain:(id)a3 error:(id *)a4;
- (void)_applyDefaultUserPoliciesWithCompletionHandler:(id)a3;
- (void)_applyImageGenerationRestrictionIfNeeded;
- (void)_applyManagedSettingsIfNeeded;
- (void)_didFailDMRegistration:(id)a3;
- (void)_removeProtoAccountManagedSettingsIfNeeded;
- (void)_startObservingManagedConfigurationEffectiveSettings;
- (void)_updateScreenTimeSettingsFromManagedConfigurationEffectiveSettingsWithScreenTimeSettings:(id)a3;
- (void)accountDidUpdateToState:(id)a3 initializing:(BOOL)a4;
- (void)applyIntroductionModel:(id)a3 forDSID:(id)a4 completionHandler:(id)a5;
- (void)attemptToAutomaticallyEnableScreenTimeSyncing;
- (void)cleanOrphanedDatabaseEntities;
- (void)clearNeedsUpdatePasscode;
- (void)communicationPoliciesForDSID:(id)a3 withCompletionHandler:(id)a4;
- (void)communicationPoliciesWithCompletionHandler:(id)a3;
- (void)contactManagementStateForDSID:(id)a3 completionHandler:(id)a4;
- (void)controllerDidChangeContent:(id)a3;
- (void)debouncer:(id)a3 didDebounce:(id)a4;
- (void)deleteAllLocalScreenTimeSettings;
- (void)deleteLocalUserBlueprintsFromManagedConfigurationEffectiveSettings;
- (void)didDisableCloudSync;
- (void)didDisableScreenTime;
- (void)didEnableCloudSync;
- (void)didEnableManagement;
- (void)didJoinFamily:(id)a3;
- (void)didLeaveFamily;
- (void)didReceiveBlueprintPayload:(id)a3;
- (void)didSignInToCloud:(id)a3;
- (void)didSignOutOfCloud:(id)a3;
- (void)didUpdateFamily:(id)a3;
- (void)enableRemoteManagementForDSID:(id)a3 completionHandler:(id)a4;
- (void)enableScreenTimeForDSID:(id)a3 completionHandler:(id)a4;
- (void)enableWebContentFilterWithCompletionHandler:(id)a3;
- (void)fetchMirroringMonitorStatusWithCompletionHandler:(id)a3;
- (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 completionHandler:(id)a4;
- (void)isContentPrivacyEnabledForDSID:(id)a3 completionHandler:(id)a4;
- (void)isLocationSharingModificationAllowedForDSID:(id)a3 completionHandler:(id)a4;
- (void)lastCommunicationLimitsModifcationDateForDSID:(id)a3 completionHandler:(id)a4;
- (void)lastModifcationDateForDSID:(id)a3 completionHandler:(id)a4;
- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)a3;
- (void)migrateLegacyRestrictionsIfNeededWithMCXSettings:(id)a3 completionHandler:(id)a4;
- (void)migrateOldDefaultsIfNeeded;
- (void)performCloudSync:(id)a3;
- (void)performWeeklyRollupWithCompletionHandler:(id)a3;
- (void)permitWebFilterURL:(id)a3 pageTitle:(id)a4 completionHandler:(id)a5;
- (void)postOrRemoveAppAndWebsiteActivityEnabledNotification:(BOOL)a3;
- (void)processBlueprintChanges;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)requestManager:(id)a3 didPrepareBlueprintPayloads:(id)a4;
- (void)requestManager:(id)a3 didPrepareRequestPayloads:(id)a4 reason:(id)a5;
- (void)restrictionsForUserDSID:(id)a3 completionHandler:(id)a4;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)a3;
- (void)resume;
- (void)rollupUsageDataWithCompletionHandler:(id)a3;
- (void)scheduleAppMonitorAppDiscovery;
- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)a3;
- (void)setAppAndWebsiteActivityEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setContactManagementState:(int64_t)a3 forDSID:(id)a4 completionHandler:(id)a5;
- (void)setLocationSharingModificationAllowed:(BOOL)a3 forDSID:(id)a4 completionHandler:(id)a5;
- (void)setNeedsUpdatePasscode;
- (void)setRestrictionsPasscode:(id)a3 error:(id *)a4;
- (void)setScreenTimeEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setScreenTimeSyncingEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)startMonitoringAccountChanges;
- (void)startObservingBlueprints;
- (void)startObservingOrganizationSettings;
- (void)startObservingScreenTimeSettings;
- (void)startupCloud;
- (void)startupCloudSync;
- (void)startupFamily:(id)a3;
- (void)startupScreenTime:(BOOL)a3;
- (void)stopObservingBlueprints;
- (void)triggerDowngradeMigrationWithCompletionHandler:(id)a3;
- (void)updateDeviceName;
- (void)updateEffectiveDeviceState:(BOOL)a3;
@end

@implementation STScreenTimeOrganizationController

- (STScreenTimeOrganizationController)initWithPersistenceController:(id)a3 askForTimeManager:(id)a4 mirroringMonitor:(id)a5 accountNotifier:(id)a6 capabilities:(id)a7
{
  v51 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v57.receiver = self;
  v57.super_class = STScreenTimeOrganizationController;
  v17 = [(STScreenTimeOrganizationController *)&v57 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_persistenceController, a3);
    v19 = +[NSOperationQueue mainQueue];
    operationQueue = v18->_operationQueue;
    v18->_operationQueue = v19;

    v21 = objc_opt_new();
    accessLock = v18->_accessLock;
    v18->_accessLock = v21;

    objc_storeStrong(&v18->_askForTimeManager, a4);
    objc_storeStrong(&v18->_mirroringMonitor, a5);
    objc_storeStrong(&v18->_accountNotifier, a6);
    objc_storeStrong(&v18->_capabilities, a7);
    if (_os_feature_enabled_impl())
    {
      v23 = 0.1;
    }

    else
    {
      v23 = 5.0;
    }

    v24 = [[STDebouncer alloc] initWithMinCoalescenceInterval:v23 maxCoalescenceInterval:5.0];
    blueprintDebouncer = v18->_blueprintDebouncer;
    v18->_blueprintDebouncer = v24;

    [(STDebouncer *)v18->_blueprintDebouncer setDelegate:v18];
    v26 = [[STDebouncer alloc] initWithMinCoalescenceInterval:v23 maxCoalescenceInterval:5.0];
    deviceStateDebouncer = v18->_deviceStateDebouncer;
    v18->_deviceStateDebouncer = v26;

    [(STDebouncer *)v18->_deviceStateDebouncer setDelegate:v18];
    v28 = [STRequestManager alloc];
    v29 = STOrganizationIdentifierScreenTime;
    v30 = [(STScreenTimeOrganizationController *)v18 persistenceController];
    v31 = [(STRequestManager *)v28 initWithOrganizationIdentifier:v29 persistenceController:v30];
    requestManager = v18->_requestManager;
    v18->_requestManager = v31;

    [(STRequestManager *)v18->_requestManager setDelegate:v18];
    v33 = [STFamilySettingsManager alloc];
    capabilities = v18->_capabilities;
    v35 = [(STScreenTimeOrganizationController *)v18 persistenceController];
    v36 = [(STFamilySettingsManager *)v33 initWithCapabilities:capabilities persistenceController:v35];

    v37 = [STConcreteOrganizationControllerConfigurationAdapter alloc];
    v38 = v18->_requestManager;
    v39 = [(STPersistenceControllerProtocol *)v18->_persistenceController persistentContainer];
    v40 = [(STConcreteOrganizationControllerConfigurationAdapter *)v37 initWithFamilySettingsManager:v36 requestManager:v38 persistentContainer:v39];
    configurationAdapter = v18->_configurationAdapter;
    v18->_configurationAdapter = v40;

    objc_initWeak(&location, v18);
    v42 = +[STXPCEventDispatcher notifydEventDispatcher];
    v43 = [v42 registerObserverWithIdentifier:@"Restrictions Passcode Update Keychain Unlock Observer"];
    keychainUnlockEventObserver = v18->_keychainUnlockEventObserver;
    v18->_keychainUnlockEventObserver = v43;

    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100077F68;
    v54[3] = &unk_1001A4990;
    objc_copyWeak(&v55, &location);
    [(STXPCEventObserver *)v18->_keychainUnlockEventObserver setHandler:v54];
    v45 = +[STXPCEventDispatcher notifydEventDispatcher];
    v46 = [v45 registerObserverWithIdentifier:@"com.apple.mobile.lockdown.device_name_changed"];
    deviceRenameEventObserver = v18->_deviceRenameEventObserver;
    v18->_deviceRenameEventObserver = v46;

    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100077FDC;
    v52[3] = &unk_1001A4990;
    objc_copyWeak(&v53, &location);
    [(STXPCEventObserver *)v18->_deviceRenameEventObserver setHandler:v52];
    v48 = objc_opt_new();
    watchSyncManager = v18->_watchSyncManager;
    v18->_watchSyncManager = v48;

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }

  return v18;
}

- (BOOL)performAppExceptionsMigration
{
  v3 = +[STLog appExceptions];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Migrating app exceptions - start", buf, 2u);
  }

  v4 = +[STLog persistence];
  v5 = os_signpost_id_generate(v4);

  v6 = +[STLog persistence];
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AppExceptions Migration", "", buf, 2u);
  }

  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v10 = [v8 viewContext];
  v11 = [v10 persistentStoreCoordinator];
  [v9 setPersistentStoreCoordinator:v11];

  [v9 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007833C;
  v19[3] = &unk_1001A58B8;
  v21 = buf;
  v12 = v9;
  v20 = v12;
  [v12 performBlockAndWait:v19];
  v13 = +[STLog persistence];
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v5, "AppExceptions Migration", "", v18, 2u);
  }

  v15 = +[STLog appExceptions];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Migrating app exceptions - end", v18, 2u);
  }

  v16 = v23[24];
  _Block_object_dispose(buf, 8);

  return v16;
}

- (void)resume
{
  v3 = +[STLog checkpoint];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(STScreenTimeOrganizationController *)self capabilities];
    LODWORD(buf.opaque[0]) = 138543362;
    *(buf.opaque + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScreenTimeOrganizationController resuming with capabilities: %{public}@", &buf, 0xCu);
  }

  v5 = _os_activity_create(&_mh_execute_header, "Resuming screen time organization controller", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v5, &buf);
  v6 = os_transaction_create();
  [(STScreenTimeOrganizationController *)self migrateOldDefaultsIfNeeded];
  if ([(STScreenTimeOrganizationController *)self createMandatoryEntitiesIfNeeded])
  {
    v7 = objc_opt_new();
    [v7 setOrganizationIdentifier:STOrganizationIdentifierScreenTime];
    [v7 setOrganizationDisplayName:@"ScreenTime Management"];
    [v7 setOrganizationType:DMFConfigurationOrganizationTypeScreenTime];
    v8 = +[DMFConnection systemConnection];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100078D3C;
    v17 = &unk_1001A58E0;
    v18 = self;
    v19 = v6;
    [v8 performRequest:v7 completion:&v14];

    v9 = [(STScreenTimeOrganizationController *)self capabilities:v14];
    v10 = [v9 supportedInfrastructure];

    if (v10)
    {
      [(STScreenTimeOrganizationController *)self startMonitoringAccountChanges];
    }

    else if ((v10 & 2) != 0)
    {
      [(STScreenTimeOrganizationController *)self applyDefaultUserPoliciesWithCompletionHandler:&stru_1001A5900];
    }

    [(STScreenTimeOrganizationController *)self startObservingScreenTimeSettings];
    [(STScreenTimeOrganizationController *)self startObservingOrganizationSettings];
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      [(STScreenTimeOrganizationController *)self _applyImageGenerationRestrictionIfNeeded];
    }

    [(STScreenTimeOrganizationController *)self startObservingBlueprints];
    [(STScreenTimeOrganizationController *)self cleanOrphanedDatabaseEntities];
    [(STScreenTimeOrganizationController *)self updateDeviceName];
    [(STScreenTimeOrganizationController *)self _startObservingManagedConfigurationEffectiveSettings];
    [(STScreenTimeOrganizationController *)self updateEffectiveDeviceState:1];
    v11 = +[STLog checkpoint];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *v20 = 138543362;
      v21 = v12;
      v13 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: resumed", v20, 0xCu);
    }
  }

  os_activity_scope_leave(&buf);
}

- (void)startupScreenTime:(BOOL)a3
{
  v3 = a3;
  v5 = +[STLog checkpoint];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = objc_opt_class();
    v6 = v26;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time", buf, 0xCu);
  }

  v7 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v7);
  v8 = [STAppMonitor alloc];
  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [(STAppMonitor *)v8 initWithPersistenceController:v9];
  [(STScreenTimeOrganizationController *)self setAppMonitor:v10];

  v11 = [(STScreenTimeOrganizationController *)self appMonitor];
  [v11 resume];

  v12 = +[NSUserDefaults standardUserDefaults];
  if (_os_feature_enabled_impl())
  {
    v13 = +[STLog screenTimeOrganizationController];
    v14 = !v3;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requesting internal FamilyControls authorization for %ld", buf, 0xCu);
    }

    v15 = +[FOAuthorizationCenter sharedCenter];
    [v15 requestInternalAuthorizationForMember:v14 completionHandler:&stru_1001A5940];
LABEL_11:

    goto LABEL_12;
  }

  if ([v12 BOOLForKey:@"RevokeFamilyControlsAuthorization"])
  {
    v16 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Revoking family controls authorization", buf, 2u);
    }

    v17 = +[FOAuthorizationCenter sharedCenter];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100079354;
    v23[3] = &unk_1001A5968;
    v24 = v12;
    [v17 revokeInternalAuthorizationWithCompletionHandler:v23];

    v15 = v24;
    goto LABEL_11;
  }

LABEL_12:
  v18 = [STUsageManager alloc];
  v19 = [(STScreenTimeOrganizationController *)self persistenceController];
  v20 = [(STUsageManager *)v18 initWithPersistenceController:v19];
  [(STScreenTimeOrganizationController *)self setUsageManager:v20];

  v21 = [(STScreenTimeOrganizationController *)self usageManager];
  [v21 resume];

  v22 = [(STScreenTimeOrganizationController *)self usageManager];
  [v22 setScreenTimeEnabled:1];

  objc_sync_exit(v7);
}

- (void)didDisableScreenTime
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v5 = v20;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Screen Time", buf, 0xCu);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"AutomaticSyncEnableOccurred"];

  if (_os_feature_enabled_impl())
  {
    v7 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Revoking family controls authorization", buf, 2u);
    }

    v8 = +[FOAuthorizationCenter sharedCenter];
    [v8 revokeInternalAuthorizationWithCompletionHandler:&stru_1001A5988];
  }

  v9 = [(STScreenTimeOrganizationController *)self usageManager];
  if (!v9)
  {
    v10 = [STUsageManager alloc];
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [(STUsageManager *)v10 initWithPersistenceController:v11];
  }

  [(STUsageManager *)v9 setScreenTimeEnabled:0];
  [(STScreenTimeOrganizationController *)self setUsageManager:0];
  [(STScreenTimeOrganizationController *)self setAppMonitor:0];
  v12 = [(STScreenTimeOrganizationController *)self persistenceController];
  v13 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v14 = [v12 viewContext];
  v15 = [v14 persistentStoreCoordinator];
  [v13 setPersistentStoreCoordinator:v15];

  [v13 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100079944;
  v17[3] = &unk_1001A3180;
  v16 = v13;
  v18 = v16;
  [v16 performBlock:v17];

  objc_sync_exit(v3);
}

- (void)attemptToAutomaticallyEnableScreenTimeSyncing
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to automatically enable Screen Time syncing", buf, 2u);
  }

  v5 = [(STScreenTimeOrganizationController *)self persistenceController];
  v6 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v7 = [v5 viewContext];
  v8 = [v7 persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator:v8];

  [v6 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100079DB0;
  v10[3] = &unk_1001A3180;
  v9 = v6;
  v11 = v9;
  [v9 performBlockAndWait:v10];

  objc_sync_exit(v3);
}

- (void)startupCloud
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v5 = v14;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time Cloud", buf, 0xCu);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v8 = [v6 viewContext];
  v9 = [v8 persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:v9];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007A314;
  v11[3] = &unk_1001A3180;
  v10 = v7;
  v12 = v10;
  [v10 performBlockAndWait:v11];
  [(STScreenTimeOrganizationController *)self applyDefaultUserPoliciesWithCompletionHandler:&stru_1001A59D0];

  objc_sync_exit(v3);
}

- (void)didSignInToCloud:(id)a3
{
  v5 = a3;
  v4 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v4);
  [(STScreenTimeOrganizationController *)self startupCloud];
  objc_sync_exit(v4);
}

- (void)didSignOutOfCloud:(id)a3
{
  v4 = a3;
  v5 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v5);
  v6 = +[STLog checkpoint];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v7 = v16;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Screen Time Cloud", buf, 0xCu);
  }

  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v10 = [v8 viewContext];
  v11 = [v10 persistentStoreCoordinator];
  [v9 setPersistentStoreCoordinator:v11];

  [v9 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007A778;
  v13[3] = &unk_1001A3180;
  v12 = v9;
  v14 = v12;
  [v12 performBlock:v13];

  objc_sync_exit(v5);
}

- (void)startupCloudSync
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = objc_opt_class();
    v5 = v15;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time Cloud Sync", buf, 0xCu);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v8 = [v6 viewContext];
  v9 = [v8 persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:v9];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007AD08;
  v11[3] = &unk_1001A3020;
  v10 = v7;
  v12 = v10;
  v13 = self;
  [v10 performBlockAndWait:v11];

  objc_sync_exit(v3);
}

- (void)didEnableCloudSync
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  [(STScreenTimeOrganizationController *)self startupCloudSync];
  v4 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enabling deviceActivity.shareAcrossDevices setting", v8, 2u);
  }

  v5 = [MOLocalSettingsStore alloc];
  v6 = [v5 initWithSharedContainer:STManagedSettingsContainer];
  v7 = [v6 deviceActivity];
  [v7 setShareAcrossDevices:&__kCFBooleanTrue];

  objc_sync_exit(v3);
}

- (void)didDisableCloudSync
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    v5 = v22;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Screen Time Cloud Sync", buf, 0xCu);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v8 = [v6 viewContext];
  v9 = [v8 persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:v9];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10007B3CC;
  v18 = &unk_1001A3020;
  v19 = self;
  v10 = v7;
  v20 = v10;
  [v10 performBlock:&v15];
  v11 = [STLog screenTimeOrganizationController:v15];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disabling deviceActivity.shareAcrossDevices setting", buf, 2u);
  }

  v12 = [MOLocalSettingsStore alloc];
  v13 = [v12 initWithSharedContainer:STManagedSettingsContainer];
  v14 = [v13 deviceActivity];
  [v14 setShareAcrossDevices:&__kCFBooleanFalse];

  objc_sync_exit(v3);
}

- (void)startupFamily:(id)a3
{
  v4 = a3;
  v5 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v5);
  v6 = +[STLog checkpoint];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v7 = v17;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time family", buf, 0xCu);
  }

  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [v8 viewContext];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007B748;
  v12[3] = &unk_1001A42E0;
  v10 = v9;
  v13 = v10;
  v14 = self;
  v11 = v4;
  v15 = v11;
  [v10 performBlockAndWait:v12];

  objc_sync_exit(v5);
}

- (void)didJoinFamily:(id)a3
{
  v6 = a3;
  v4 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v4);
  [(STScreenTimeOrganizationController *)self startupFamily:v6];
  v5 = [(STScreenTimeOrganizationController *)self familyOrganizationController];
  [v5 sendCheckinRequest];

  [(STScreenTimeOrganizationController *)self _removeProtoAccountManagedSettingsIfNeeded];
  objc_sync_exit(v4);
}

- (void)_removeProtoAccountManagedSettingsIfNeeded
{
  v2 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing Proto Account Managed Settings if needed.", v3, 2u);
  }

  +[_TtC15ScreenTimeAgent25ManagedSettingsApplicator removeLegacyProtoAccountSettingsIfNeeded];
}

- (void)didLeaveFamily
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Screen Time family", buf, 0xCu);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 viewContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007BDE0;
  v9[3] = &unk_1001A3020;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [v8 performBlockAndWait:v9];

  objc_sync_exit(v3);
}

- (void)didUpdateFamily:(id)a3
{
  v5 = a3;
  v4 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v4);
  [(STScreenTimeOrganizationController *)self startupFamily:v5];
  objc_sync_exit(v4);
}

- (void)didEnableManagement
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  if (_os_feature_enabled_impl())
  {
    v4 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting internal FamilyControls authorization for child", v7, 2u);
    }

    v5 = +[FOAuthorizationCenter sharedCenter];
    [v5 requestInternalAuthorizationForMember:0 completionHandler:&stru_1001A59F0];
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"AutomaticSyncEnableOccurred"];

  [(STScreenTimeOrganizationController *)self attemptToAutomaticallyEnableScreenTimeSyncing];
  objc_sync_exit(v3);
}

- (void)updateDeviceName
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = [(STScreenTimeOrganizationController *)self persistenceController];
  v5 = STGetDeviceUUID();
  v6 = STGetDeviceName();
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v8 = [v4 viewContext];
  v9 = [v8 persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:v9];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007C234;
  v13[3] = &unk_1001A42E0;
  v10 = v5;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  [v11 performBlock:v13];

  objc_sync_exit(v3);
}

- (void)startMonitoringAccountChanges
{
  v3 = +[STLog checkpoint];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting account change observation", &v6, 0xCu);
  }

  v5 = [(STScreenTimeOrganizationController *)self accountNotifier];
  [v5 registerObserver:self];
}

- (void)startObservingScreenTimeSettings
{
  v3 = +[STLog checkpoint];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = objc_opt_class();
    v4 = v19;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time settings change observation", buf, 0xCu);
  }

  v5 = +[STScreenTimeSettings fetchRequest];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"screenTimeEnabled" ascending:1];
  v17 = v6;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  [v5 setSortDescriptors:v7];

  v8 = [NSFetchedResultsController alloc];
  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 viewContext];
  v11 = [v8 initWithFetchRequest:v5 managedObjectContext:v10 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setSettingsResultsController:v11];

  v12 = [(STScreenTimeOrganizationController *)self settingsResultsController];
  [v12 setDelegate:self];

  v13 = [(STScreenTimeOrganizationController *)self settingsResultsController];
  v16 = 0;
  LOBYTE(v9) = [v13 performFetch:&v16];
  v14 = v16;

  if ((v9 & 1) == 0)
  {
    v15 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10011DD60();
    }
  }
}

- (void)startObservingOrganizationSettings
{
  v3 = +[STLog checkpoint];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = objc_opt_class();
    v4 = v19;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting organization settings change observation", buf, 0xCu);
  }

  v5 = +[STCoreOrganizationSettings fetchRequest];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"uniqueIdentifier" ascending:1];
  v17 = v6;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  [v5 setSortDescriptors:v7];

  v8 = [NSFetchedResultsController alloc];
  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 viewContext];
  v11 = [v8 initWithFetchRequest:v5 managedObjectContext:v10 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setOrganizationSettingsResultsController:v11];

  v12 = [(STScreenTimeOrganizationController *)self organizationSettingsResultsController];
  [v12 setDelegate:self];

  v13 = [(STScreenTimeOrganizationController *)self organizationSettingsResultsController];
  v16 = 0;
  LOBYTE(v9) = [v13 performFetch:&v16];
  v14 = v16;

  if ((v9 & 1) == 0)
  {
    v15 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10011DD60();
    }
  }
}

- (void)startObservingBlueprints
{
  v3 = +[STLog checkpoint];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = objc_opt_class();
    v4 = v71;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting blueprint change observation", buf, 0xCu);
  }

  v5 = +[STBlueprint fetchRequest];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"uniqueIdentifier" ascending:1];
  v69 = v6;
  v7 = [NSArray arrayWithObjects:&v69 count:1];
  [v5 setSortDescriptors:v7];

  v8 = [NSFetchedResultsController alloc];
  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 viewContext];
  v11 = [v8 initWithFetchRequest:v5 managedObjectContext:v10 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setBlueprintsResultsController:v11];

  v12 = [(STScreenTimeOrganizationController *)self blueprintsResultsController];
  [v12 setDelegate:self];

  v13 = [(STScreenTimeOrganizationController *)self blueprintsResultsController];
  v64 = 0;
  LOBYTE(v10) = [v13 performFetch:&v64];
  v14 = v64;

  if ((v10 & 1) == 0)
  {
    v15 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10011DDC8();
    }
  }

  v16 = +[STCoreDowntimeOverride fetchRequest];

  v17 = [NSSortDescriptor sortDescriptorWithKey:@"downtime.uniqueIdentifier" ascending:1];
  v68 = v17;
  v18 = [NSArray arrayWithObjects:&v68 count:1];
  [v16 setSortDescriptors:v18];

  v19 = [NSFetchedResultsController alloc];
  v20 = [(STScreenTimeOrganizationController *)self persistenceController];
  v21 = [v20 viewContext];
  v22 = [v19 initWithFetchRequest:v16 managedObjectContext:v21 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setDowntimeOverridesResultsController:v22];

  v23 = [(STScreenTimeOrganizationController *)self downtimeOverridesResultsController];
  [v23 setDelegate:self];

  v24 = [(STScreenTimeOrganizationController *)self downtimeOverridesResultsController];
  v63 = v14;
  LOBYTE(v21) = [v24 performFetch:&v63];
  v25 = v63;

  if ((v21 & 1) == 0)
  {
    v26 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_10011DE30();
    }
  }

  v27 = +[STBlueprintSchedule fetchRequest];

  v28 = [NSSortDescriptor sortDescriptorWithKey:@"calendarIdentifier" ascending:1];
  v67 = v28;
  v29 = [NSArray arrayWithObjects:&v67 count:1];
  [v27 setSortDescriptors:v29];

  v30 = [NSFetchedResultsController alloc];
  v31 = [(STScreenTimeOrganizationController *)self persistenceController];
  v32 = [v31 viewContext];
  v33 = [v30 initWithFetchRequest:v27 managedObjectContext:v32 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setSchedulesResultsController:v33];

  v34 = [(STScreenTimeOrganizationController *)self schedulesResultsController];
  [v34 setDelegate:self];

  v35 = [(STScreenTimeOrganizationController *)self schedulesResultsController];
  v62 = v25;
  LOBYTE(v32) = [v35 performFetch:&v62];
  v36 = v62;

  if ((v32 & 1) == 0)
  {
    v37 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      sub_10011DE98();
    }
  }

  v38 = +[STBlueprintUsageLimit fetchRequest];

  v39 = [NSSortDescriptor sortDescriptorWithKey:@"usageItemType" ascending:1];
  v66 = v39;
  v40 = [NSArray arrayWithObjects:&v66 count:1];
  [v38 setSortDescriptors:v40];

  v41 = [NSFetchedResultsController alloc];
  v42 = [(STScreenTimeOrganizationController *)self persistenceController];
  v43 = [v42 viewContext];
  v44 = [v41 initWithFetchRequest:v38 managedObjectContext:v43 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setUsageLimitsResultsController:v44];

  v45 = [(STScreenTimeOrganizationController *)self usageLimitsResultsController];
  [v45 setDelegate:self];

  v46 = [(STScreenTimeOrganizationController *)self usageLimitsResultsController];
  v61 = v36;
  LOBYTE(v43) = [v46 performFetch:&v61];
  v47 = v61;

  if ((v43 & 1) == 0)
  {
    v48 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      sub_10011DF00();
    }
  }

  v49 = +[STBlueprintConfiguration fetchRequest];

  v50 = [NSSortDescriptor sortDescriptorWithKey:@"identifier" ascending:1];
  v65 = v50;
  v51 = [NSArray arrayWithObjects:&v65 count:1];
  [v49 setSortDescriptors:v51];

  v52 = [NSFetchedResultsController alloc];
  v53 = [(STScreenTimeOrganizationController *)self persistenceController];
  v54 = [v53 viewContext];
  v55 = [v52 initWithFetchRequest:v49 managedObjectContext:v54 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setConfigurationsResultsController:v55];

  v56 = [(STScreenTimeOrganizationController *)self configurationsResultsController];
  [v56 setDelegate:self];

  v57 = [(STScreenTimeOrganizationController *)self configurationsResultsController];
  v60 = v47;
  LOBYTE(v53) = [v57 performFetch:&v60];
  v58 = v60;

  if ((v53 & 1) == 0)
  {
    v59 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_10011DF68();
    }
  }
}

- (void)stopObservingBlueprints
{
  [(STScreenTimeOrganizationController *)self setBlueprintsResultsController:0];
  [(STScreenTimeOrganizationController *)self setDowntimeOverridesResultsController:0];
  [(STScreenTimeOrganizationController *)self setSchedulesResultsController:0];
  [(STScreenTimeOrganizationController *)self setUsageLimitsResultsController:0];

  [(STScreenTimeOrganizationController *)self setConfigurationsResultsController:0];
}

- (void)_startObservingManagedConfigurationEffectiveSettings
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 registerObserver:self];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [STLog screentime:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Detected Managed Configuration effective settings change", buf, 2u);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v8 = [v6 viewContext];
  v9 = [v8 persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:v9];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D20C;
  v11[3] = &unk_1001A3020;
  v12 = v7;
  v13 = self;
  v10 = v7;
  [v10 performBlock:v11];
}

- (void)_updateScreenTimeSettingsFromManagedConfigurationEffectiveSettingsWithScreenTimeSettings:(id)a3
{
  v3 = a3;
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 effectiveBoolValueForSetting:MCFeatureEnablingRestrictionsAllowed];

  if (v5 == 2)
  {
    v6 = [v3 screenTimeEnabled];
    v7 = [v3 cloudSyncEnabled];
    v8 = v7;
    if ((v6 & 1) != 0 || v7)
    {
      v9 = +[STLog screentime];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Turning off Screen Time, restrictions now forbidden from being enabled due to MCFeatureEnablingRestrictionsAllowed", v10, 2u);
      }

      if (v6)
      {
        [v3 setScreenTimeEnabled:0];
      }

      if (v8)
      {
        [v3 setCloudSyncEnabled:0];
      }
    }
  }
}

- (void)deleteLocalUserBlueprintsFromManagedConfigurationEffectiveSettings
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:MCFeatureEnablingRestrictionsAllowed];

  if (v4 == 2)
  {
    v5 = [(STScreenTimeOrganizationController *)self accessLock];
    objc_sync_enter(v5);
    v6 = +[STLog screentime];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting local user blueprints. Restrictions now forbidden from being enabled due to MCFeatureEnablingRestrictionsAllowed.", buf, 2u);
    }

    v7 = [(STScreenTimeOrganizationController *)self persistenceController];
    v8 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    v9 = [v7 viewContext];
    v10 = [v9 persistentStoreCoordinator];
    [v8 setPersistentStoreCoordinator:v10];

    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007D61C;
    v12[3] = &unk_1001A3180;
    v11 = v8;
    v13 = v11;
    [v11 performBlock:v12];

    objc_sync_exit(v5);
  }
}

- (void)updateEffectiveDeviceState:(BOOL)a3
{
  v3 = a3;
  v5 = +[STLog checkpoint];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 138543362;
      v22 = objc_opt_class();
      v7 = v22;
      v8 = "%{public}@: Initializing effective device state";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    v7 = v22;
    v8 = "%{public}@: Updating effective device state";
    goto LABEL_6;
  }

  v9 = os_transaction_create();
  v10 = [(STScreenTimeOrganizationController *)self persistenceController];
  v11 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v12 = [v10 viewContext];
  v13 = [v12 persistentStoreCoordinator];
  [v11 setPersistentStoreCoordinator:v13];

  [v11 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007D9F4;
  v16[3] = &unk_1001A4358;
  v17 = v9;
  v18 = v11;
  v19 = self;
  v20 = v3;
  v14 = v11;
  v15 = v9;
  [v14 performBlockAndWait:v16];
}

- (void)_applyImageGenerationRestrictionIfNeeded
{
  v3 = [(STScreenTimeOrganizationController *)self userDefaults];
  v4 = [v3 BOOLForKey:@"InitialImageGenerationRestrictionApplied"];

  if ((v4 & 1) == 0)
  {
    v5 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Image Creation: restriction has not been applied yet. Applying all restrictions.", v7, 2u);
    }

    [(STScreenTimeOrganizationController *)self processBlueprintChanges];
    v6 = [(STScreenTimeOrganizationController *)self userDefaults];
    [v6 setBool:1 forKey:@"InitialImageGenerationRestrictionApplied"];
  }
}

- (void)_applyManagedSettingsIfNeeded
{
  v3 = [(STScreenTimeOrganizationController *)self userDefaults];
  v4 = [v3 BOOLForKey:@"InitialManagedSettingsApplied"];

  if ((v4 & 1) == 0)
  {
    v5 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Managed Settings have not been applied. Running processBlueprintChanges to trigger ManagedSettingsApplicator.", v7, 2u);
    }

    [(STScreenTimeOrganizationController *)self processBlueprintChanges];
    v6 = [(STScreenTimeOrganizationController *)self userDefaults];
    [v6 setBool:1 forKey:@"InitialManagedSettingsApplied"];
  }
}

- (void)processBlueprintChanges
{
  v3 = [(STScreenTimeOrganizationController *)self requestManager];
  [v3 processBlueprintChanges];

  v4 = [(STScreenTimeOrganizationController *)self persistenceController];
  v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v6 = [v4 viewContext];
  v7 = [v6 persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator:v7];

  [v5 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007E808;
  v9[3] = &unk_1001A3180;
  v10 = v5;
  v8 = v5;
  [v8 performBlockAndWait:v9];
}

- (void)deleteAllLocalScreenTimeSettings
{
  v3 = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(v3);
  v4 = +[STLog screentime];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleting local organization, local organization settings, and blueprints.", buf, 2u);
  }

  v5 = [(STScreenTimeOrganizationController *)self persistenceController];
  v6 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v7 = [v5 viewContext];
  v8 = [v7 persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator:v8];

  [v6 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007EB38;
  v10[3] = &unk_1001A3180;
  v9 = v6;
  v11 = v9;
  [v9 performBlock:v10];

  objc_sync_exit(v3);
}

- (void)fetchMirroringMonitorStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STScreenTimeOrganizationController *)self mirroringMonitor];
  v6 = [v5 fetchCurrentCloudKitSyncingStatus];
  v7 = [v6 then];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007EEBC;
  v12[3] = &unk_1001A5A18;
  v13 = v5;
  v14 = v4;
  v8 = v7[2];
  v9 = v5;
  v10 = v4;
  v11 = v8(v7, v12);
}

- (void)performCloudSync:(id)a3
{
  v4 = a3;
  v5 = [(STScreenTimeOrganizationController *)self mirroringMonitor];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 forceMirroringSync];
    v8 = 0;
  }

  else
  {
    v9 = [NSError alloc];
    v10 = STErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Cloud monitor does not exist";
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [v9 initWithDomain:v10 code:1 userInfo:v11];
  }

  v4[2](v4, v8);
}

- (void)postOrRemoveAppAndWebsiteActivityEnabledNotification:(BOOL)a3
{
  v3 = a3;
  v4 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"Removing";
    if (v3)
    {
      v5 = @"Posting";
    }

    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ App & Website Activity enabled notification", &v11, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = [NSNotification alloc];
  v8 = off_1001A6310;
  if (!v3)
  {
    v8 = off_1001A6318;
  }

  v9 = [v7 initWithName:*v8 object:v6 userInfo:0];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotification:v9];
}

- (void)_didFailDMRegistration:(id)a3
{
  v3 = a3;
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10011E378(v3);
  }

  xpc_transaction_exit_clean();
}

- (void)migrateOldDefaultsIfNeeded
{
  v2 = objc_opt_new();
  if ([v2 isMigrationNeeded])
  {
    [v2 migrateUserDefaults];
  }

  else
  {
    v3 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10011E408();
    }
  }
}

- (BOOL)createMandatoryEntitiesIfNeeded
{
  v2 = self;
  v3 = [(STScreenTimeOrganizationController *)self persistenceController];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v5 = [v3 viewContext];
  v6 = [v5 persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:v6];

  [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007F3E8;
  v9[3] = &unk_1001A5A40;
  v7 = v4;
  v10 = v7;
  v11 = v2;
  v12 = &v13;
  [v7 performBlockAndWait:v9];
  LOBYTE(v2) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v2;
}

- (void)cleanOrphanedDatabaseEntities
{
  v2 = [(STScreenTimeOrganizationController *)self persistenceController];
  v3 = [v2 newBackgroundContext];
  [v3 setName:@"cleanOrphanedDatabaseEntities"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007F7A0;
  v5[3] = &unk_1001A3180;
  v6 = v3;
  v4 = v3;
  [v4 performBlockAndWait:v5];
}

- (void)accountDidUpdateToState:(id)a3 initializing:(BOOL)a4
{
  v6 = a3;
  v7 = [(STScreenTimeOrganizationController *)self persistenceController];
  v8 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  v9 = [v7 viewContext];
  v10 = [v9 persistentStoreCoordinator];
  [v8 setPersistentStoreCoordinator:v10];

  [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008000C;
  v13[3] = &unk_1001A4358;
  v14 = v8;
  v15 = v6;
  v16 = self;
  v17 = a4;
  v11 = v6;
  v12 = v8;
  [v12 performBlockAndWait:v13];
}

- (void)performWeeklyRollupWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(STScreenTimeOrganizationController *)self usageManager];

  if (v4)
  {
    v5 = [(STScreenTimeOrganizationController *)self usageManager];
    [v5 performWeeklyRollupWithCompletionHandler:v7];
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = [NSError errorWithDomain:STErrorDomain code:7 userInfo:0];
    (*(v7 + 2))(v7, v5);
  }

  v6 = v7;
LABEL_6:
}

- (void)rollupUsageDataWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(STScreenTimeOrganizationController *)self usageManager];

  if (v4)
  {
    v5 = [(STScreenTimeOrganizationController *)self usageManager];
    [v5 rollupUsageForDuration:60 isBackgroundTask:0 isRecomputingUsage:0 completionHandler:v7];
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = [NSError errorWithDomain:STErrorDomain code:7 userInfo:0];
    (*(v7 + 2))(v7, v5);
  }

  v6 = v7;
LABEL_6:
}

- (STAppMonitorStatus)appMonitorStatus
{
  v2 = [(STScreenTimeOrganizationController *)self appMonitor];
  v3 = [STAppMonitorStatus alloc];
  v4 = [v2 running];
  if (v2)
  {
    v5 = [v2 cachedAppBundleIdentifiers];
    v6 = v3;
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = v3;
    v7 = 0;
  }

  v8 = [(STAppMonitorStatus *)v6 initWithInstanceExists:v7 instanceRunning:v4 cachedAppBundleIdentifiers:v5];

  return v8;
}

- (void)scheduleAppMonitorAppDiscovery
{
  v2 = [(STScreenTimeOrganizationController *)self appMonitor];
  [v2 _scheduleAppDiscoveryBackgroundActivity];
}

- (void)migrateLegacyRestrictionsIfNeededWithMCXSettings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setMcxSettings:v7];

  LOBYTE(v7) = [v8 hasMigratorRun];
  v9 = +[STLog screenTimeOrganizationController];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v10)
    {
      sub_10011E7C4();
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    if (v10)
    {
      sub_10011E788();
    }

    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    v13 = [v11 viewContext];
    v14 = [v13 persistentStoreCoordinator];
    [v12 setPersistentStoreCoordinator:v14];

    [v12 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100080B20;
    v16[3] = &unk_1001A5A90;
    v17 = v8;
    v18 = v12;
    v19 = v6;
    v15 = v12;
    [v15 performBlockAndWait:v16];
  }
}

- (void)_applyDefaultUserPoliciesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Default user policy applicator triggered", buf, 2u);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100080CF8;
  v8[3] = &unk_1001A5AB8;
  v9 = v4;
  v7 = v4;
  [v6 performBackgroundTaskAndWait:v8];
}

- (void)setNeedsUpdatePasscode
{
  v2 = [(STScreenTimeOrganizationController *)self keychainUnlockEventObserver];
  [v2 setConfiguration:&off_1001B25B0];
}

- (void)clearNeedsUpdatePasscode
{
  v2 = [(STScreenTimeOrganizationController *)self keychainUnlockEventObserver];
  [v2 setConfiguration:0];
}

+ (id)keyPathsForValuesAffectingScreenTimeEnabled
{
  v2 = [NSString stringWithFormat:@"%@.%@", @"userDefaults", @"ScreenTimeEnabled"];
  v3 = [NSSet setWithObjects:v2, 0];

  return v3;
}

- (BOOL)isScreenTimeEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ScreenTimeEnabled"];

  return v3;
}

- (void)setScreenTimeEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting Screen Time enabled: %d", buf, 8u);
  }

  if (v4)
  {
    [(STScreenTimeOrganizationController *)self setAppAndWebsiteActivityEnabled:1 completionHandler:v6];
  }

  else
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 hasStoreLoaded];

    if (v9)
    {
      v10 = [(STScreenTimeOrganizationController *)self persistenceController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100081138;
      v12[3] = &unk_1001A5AE0;
      v14 = 0;
      v12[4] = self;
      v13 = v6;
      [v10 performBackgroundTaskAndWait:v12];
    }

    else
    {
      v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
      (*(v6 + 2))(v6, v11);
    }
  }
}

- (void)setAppAndWebsiteActivityEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting App & Website Activity enabled: %d", buf, 8u);
  }

  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [v8 hasStoreLoaded];

  if (v9)
  {
    v10 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000815AC;
    v12[3] = &unk_1001A5B08;
    v13 = v6;
    v14 = v4;
    [v10 performBackgroundTaskAndWait:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v6 + 2))(v6, v11);
  }
}

- (void)enableScreenTimeForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EA44();
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000819D4;
    v13[3] = &unk_1001A3EE0;
    v14 = v6;
    v15 = v7;
    [v11 performBackgroundTaskAndWait:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, v12);
  }
}

- (void)enableRemoteManagementForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EAB4();
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100081CE0;
    v13[3] = &unk_1001A3EE0;
    v14 = v6;
    v15 = v7;
    [v11 performBackgroundTaskAndWait:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, v12);
  }
}

+ (id)keyPathsForValuesAffectingScreenTimeSyncingEnabled
{
  v2 = [NSString stringWithFormat:@"%@.%@", @"userDefaults", @"SyncEnabled"];
  v3 = [NSSet setWithObjects:v2, 0];

  return v3;
}

- (BOOL)isScreenTimeSyncingEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SyncEnabled"];

  return v3;
}

- (void)setScreenTimeSyncingEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EB8C();
  }

  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [v8 hasStoreLoaded];

  if (v9)
  {
    v10 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008209C;
    v12[3] = &unk_1001A5B08;
    v14 = a3;
    v13 = v6;
    [v10 performBackgroundTaskAndWait:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v6 + 2))(v6, v11);
  }
}

- (void)isContentPrivacyEnabledForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EC6C();
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12 = [v11 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100082378;
    v14[3] = &unk_1001A5A90;
    v15 = v6;
    v16 = v12;
    v17 = v7;
    v13 = v12;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (BOOL)clearRestrictionsPasscodeWithError:(id *)a3
{
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing restrictions passcode from daemon", buf, 2u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_10008281C;
  v18 = sub_10008282C;
  v19 = 0;
  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if ((v7 & 1) == 0)
  {
    if (!a3)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v10 = 0;
    goto LABEL_9;
  }

  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082834;
  v13[3] = &unk_1001A5B30;
  v13[4] = self;
  v13[5] = buf;
  [v8 performBackgroundTaskAndWait:v13];

  v9 = *(v15 + 5);
  v10 = v9 == 0;
  if (a3 && v9)
  {
    v11 = v9;
LABEL_9:
    *a3 = v11;
  }

LABEL_11:
  _Block_object_dispose(buf, 8);

  return v10;
}

- (id)getIsRestrictionsPasscodeSetAndReturnError:(id *)a3
{
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking for a restrictions passcode", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = sub_10008281C;
  v29 = sub_10008282C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10008281C;
  v23 = sub_10008282C;
  v24 = 0;
  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if (v7)
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000830D4;
    v15[3] = &unk_1001A5B58;
    v10 = v9;
    v16 = v10;
    v17 = &v19;
    v18 = buf;
    [v10 performBlockAndWait:v15];
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v10 = v20[5];
    v20[5] = v11;
  }

  v12 = *(v26 + 5);
  if (a3 && !v12)
  {
    *a3 = v20[5];
    v12 = *(v26 + 5);
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

- (id)getNeedsToSetRestrictionsPasscodeAndReturnError:(id *)a3
{
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if the restrictions passcode needs to be set", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = sub_10008281C;
  v29 = sub_10008282C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10008281C;
  v23 = sub_10008282C;
  v24 = 0;
  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if (v7)
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000833EC;
    v15[3] = &unk_1001A5B58;
    v10 = v9;
    v16 = v10;
    v17 = &v19;
    v18 = buf;
    [v10 performBlockAndWait:v15];
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v10 = v20[5];
    v20[5] = v11;
  }

  v12 = *(v26 + 5);
  if (a3 && !v12)
  {
    *a3 = v20[5];
    v12 = *(v26 + 5);
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

- (void)setRestrictionsPasscode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating restrictions passcode", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_10008281C;
  v22 = sub_10008282C;
  v23 = 0;
  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [v8 hasStoreLoaded];

  if (v9)
  {
    v10 = [(STScreenTimeOrganizationController *)self persistenceController];
    v11 = [v10 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100083690;
    v14[3] = &unk_1001A37C0;
    v12 = v11;
    v15 = v12;
    v17 = buf;
    v16 = v6;
    [v12 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v12 = *(v19 + 5);
    *(v19 + 5) = v13;
  }

  if (a4)
  {
    *a4 = *(v19 + 5);
  }

  _Block_object_dispose(buf, 8);
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Getting a restrictions passcode attempt count and timeout date", buf, 2u);
  }

  *buf = 0;
  v27 = buf;
  v28 = 0x3032000000;
  v29 = sub_10008281C;
  v30 = sub_10008282C;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10008281C;
  v24 = sub_10008282C;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10008281C;
  v18 = sub_10008282C;
  v19 = 0;
  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([v6 hasStoreLoaded])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100083A10;
    v9[3] = &unk_1001A5B80;
    v7 = [v6 newBackgroundContext];
    v10 = v7;
    v11 = &v14;
    v12 = buf;
    v13 = &v20;
    [v7 performBlockAndWait:v9];
  }

  else
  {
    v8 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v7 = v15[5];
    v15[5] = v8;
  }

  v4[2](v4, *(v27 + 5), v21[5], v15[5]);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(buf, 8);
}

- (BOOL)authenticateRestrictionsPasscode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authenticating a restrictions passcode", buf, 2u);
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_10008281C;
  v23 = sub_10008282C;
  v24 = 0;
  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([v8 hasStoreLoaded])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100083D34;
    v13[3] = &unk_1001A5BC8;
    v9 = [v8 newBackgroundContext];
    v14 = v9;
    v17 = buf;
    v18 = &v25;
    v15 = v6;
    v16 = self;
    [v9 performBlockAndWait:v13];
  }

  else
  {
    v10 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v9 = *(v20 + 5);
    *(v20 + 5) = v10;
  }

  if (a4)
  {
    *a4 = *(v20 + 5);
  }

  v11 = *(v26 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STScreenTimeOrganizationController *)self familyOrganizationController];
  [v5 sendPasscodeActivityToParentsWithCompletionHandler:v4];
}

- (BOOL)isLocalUserRemotelyManaged
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = [(STScreenTimeOrganizationController *)self persistenceController];
  v3 = [v2 newBackgroundContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100084090;
  v6[3] = &unk_1001A3C98;
  v4 = v3;
  v7 = v4;
  v8 = &v9;
  [v4 performBlockAndWait:v6];
  LOBYTE(v2) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v2;
}

- (void)communicationPoliciesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F0A8();
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if (v7)
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100084280;
    v11[3] = &unk_1001A4308;
    v12 = v9;
    v13 = v4;
    v10 = v9;
    [v10 performBlockAndWait:v11];
  }

  else
  {
    v10 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v4 + 2))(v4, 0, 0, v10);
  }
}

- (void)communicationPoliciesForDSID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F0E4();
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12 = [v11 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000844E4;
    v14[3] = &unk_1001A5A90;
    v15 = v6;
    v16 = v12;
    v17 = v7;
    v13 = v12;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v13);
  }
}

- (id)getPrimaryiCloudCardDAVAccountIdentifierWithError:(id *)a3
{
  v3 = objc_opt_new();
  v4 = [v3 aa_primaryAppleAccount];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 childCardDAVAccountIdentifier];
  }

  else
  {
    v7 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10011F154();
    }

    v6 = 0;
  }

  return v6;
}

- (void)setContactManagementState:(int64_t)a3 forDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F194();
  }

  v11 = [(STScreenTimeOrganizationController *)self persistenceController];
  v12 = [v11 hasStoreLoaded];

  if (v12)
  {
    v13 = [(STScreenTimeOrganizationController *)self persistenceController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000847DC;
    v15[3] = &unk_1001A5BF0;
    v16 = v8;
    v18 = a3;
    v17 = v9;
    [v13 performBackgroundTaskAndWait:v15];

    v14 = v16;
  }

  else
  {
    v14 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v9 + 2))(v9, v14);
  }
}

- (void)contactManagementStateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F280();
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12 = [v11 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100084ABC;
    v14[3] = &unk_1001A5A90;
    v15 = v6;
    v16 = v12;
    v17 = v7;
    v13 = v12;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (void)permitWebFilterURL:(id)a3 pageTitle:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding URL to web filter whitelist: %@", buf, 0xCu);
  }

  v12 = [(STScreenTimeOrganizationController *)self persistenceController];
  v13 = [v12 hasStoreLoaded];

  if (v13)
  {
    v14 = [(STScreenTimeOrganizationController *)self persistenceController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100084D84;
    v16[3] = &unk_1001A5C18;
    v19 = v10;
    v17 = v8;
    v18 = v9;
    [v14 performBackgroundTaskAndWait:v16];

    v15 = v19;
  }

  else
  {
    v15 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v10 + 2))(v10, v15);
  }
}

- (id)fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:(id)a3 error:(id *)a4
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10008281C;
  v25 = sub_10008282C;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10008281C;
  v19 = sub_10008282C;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008521C;
  v11[3] = &unk_1001A5B58;
  v5 = a3;
  v12 = v5;
  v13 = &v21;
  v14 = &v15;
  [v5 performBlockAndWait:v11];
  v6 = v16[5];
  if (!v6)
  {
    v7 = v22[5];
    v8 = STSafeErrorFromCoreDataError();
    *a4 = v8;

    v6 = v16[5];
  }

  v9 = v6;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([v7 hasStoreLoaded])
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v10 = [(STScreenTimeOrganizationController *)self fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:v9 error:a4];
    if (v10)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100085524;
      v14[3] = &unk_1001A5C40;
      v17 = &v18;
      v15 = v6;
      v16 = v10;
      [v9 performBlockAndWait:v14];
      v11 = [NSNumber numberWithBool:*(v19 + 24)];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v12 = *a4;
      STSafeErrorFromCoreDataError();
      *a4 = v11 = 0;
    }
  }

  else if (a4)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)shouldAllowOneMoreMinuteForWebDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([v7 hasStoreLoaded])
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v10 = [(STScreenTimeOrganizationController *)self fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:v9 error:a4];
    if (v10)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000857E8;
      v14[3] = &unk_1001A5C40;
      v17 = &v18;
      v15 = v6;
      v16 = v10;
      [v9 performBlockAndWait:v14];
      v11 = [NSNumber numberWithBool:*(v19 + 24)];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v12 = *a4;
      STSafeErrorFromCoreDataError();
      *a4 = v11 = 0;
    }
  }

  else if (a4)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([v7 hasStoreLoaded])
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v10 = [(STScreenTimeOrganizationController *)self fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:v9 error:a4];
    if (v10)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100085AAC;
      v14[3] = &unk_1001A5C40;
      v17 = &v18;
      v15 = v6;
      v16 = v10;
      [v9 performBlockAndWait:v14];
      v11 = [NSNumber numberWithBool:*(v19 + 24)];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v12 = *a4;
      STSafeErrorFromCoreDataError();
      *a4 = v11 = 0;
    }
  }

  else if (a4)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getIsExplicitContentRestrictedAndReturnError:(id *)a3
{
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F438();
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10008281C;
  v29 = sub_10008282C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10008281C;
  v23 = sub_10008282C;
  v24 = 0;
  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if (v7)
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100085DD8;
    v15[3] = &unk_1001A5B58;
    v10 = v9;
    v16 = v10;
    v17 = &v19;
    v18 = &v25;
    [v10 performBlockAndWait:v15];
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v10 = v20[5];
    v20[5] = v11;
  }

  v12 = v26[5];
  if (a3 && !v12)
  {
    *a3 = v20[5];
    v12 = v26[5];
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

- (id)getIsWebContentRestrictedAndReturnError:(id *)a3
{
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F4DC();
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10008281C;
  v29 = sub_10008282C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10008281C;
  v23 = sub_10008282C;
  v24 = 0;
  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if (v7)
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000864B0;
    v15[3] = &unk_1001A5B58;
    v10 = v9;
    v16 = v10;
    v17 = &v19;
    v18 = &v25;
    [v10 performBlockAndWait:v15];
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v10 = v20[5];
    v20[5] = v11;
  }

  v12 = v26[5];
  if (a3 && !v12)
  {
    *a3 = v20[5];
    v12 = v26[5];
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

- (void)enableWebContentFilterWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enabling web content filter for local user", buf, 2u);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if (v7)
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100086A9C;
    v10[3] = &unk_1001A5AB8;
    v11 = v4;
    [v8 performBackgroundTaskAndWait:v10];

    v9 = v11;
  }

  else
  {
    v9 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v4 + 2))(v4, v9);
  }
}

- (void)applyIntroductionModel:(id)a3 forDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Applying introduction model for dsid: %@", buf, 0xCu);
  }

  v12 = [(STScreenTimeOrganizationController *)self persistenceController];
  v13 = [v12 hasStoreLoaded];

  if (v13)
  {
    v14 = [(STScreenTimeOrganizationController *)self persistenceController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100086DB8;
    v16[3] = &unk_1001A2D58;
    v17 = v9;
    v18 = v8;
    v19 = v10;
    [v14 performBackgroundTaskAndWait:v16];

    v15 = v17;
  }

  else
  {
    v15 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v10 + 2))(v10, v15);
  }
}

- (void)isLocationSharingModificationAllowedForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F858();
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12 = [v11 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100087530;
    v14[3] = &unk_1001A5A90;
    v15 = v6;
    v16 = v12;
    v17 = v7;
    v13 = v12;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (void)setLocationSharingModificationAllowed:(BOOL)a3 forDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10011FA54();
  }

  v11 = [(STScreenTimeOrganizationController *)self persistenceController];
  v12 = [v11 hasStoreLoaded];

  if (v12)
  {
    v13 = [(STScreenTimeOrganizationController *)self persistenceController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100087C10;
    v15[3] = &unk_1001A5C68;
    v16 = v8;
    v17 = v9;
    v18 = a3;
    [v13 performBackgroundTaskAndWait:v15];

    v14 = v16;
  }

  else
  {
    v14 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v9 + 2))(v9, v14);
  }
}

- (void)triggerDowngradeMigrationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [(STScreenTimeOrganizationController *)self requestManager];
  v9 = 0;
  [v5 triggerMigrationWithPersistenceController:v6 andRequestManager:v7 outError:&v9];
  v8 = v9;

  v4[2](v4, v8);
}

- (void)restrictionsForUserDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  [v8 restrictionsForUserDSID:v7 persistenceController:v9 completionHandler:v6];
}

+ (void)restrictionsForUserDSID:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STLog screenTimeOrganizationController];
  v12 = os_signpost_id_generate(v11);

  v13 = +[STLog screenTimeOrganizationController];
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Fetch Restrictions User", "", buf, 2u);
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = sub_10008281C;
  v37 = sub_10008282C;
  v38 = 0;
  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x3032000000;
  v31[2] = sub_10008281C;
  v31[3] = sub_10008282C;
  v32 = 0;
  if ([v8 intValue])
  {
    objc_storeStrong(v34 + 5, a3);
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100088794;
    v29[3] = &unk_1001A5C90;
    v29[4] = buf;
    v29[5] = &v30;
    [v9 performBackgroundTaskAndWait:v29];
  }

  v15 = +[STLog screenTimeOrganizationController];
  v16 = v15;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v28 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v12, "Fetch Restrictions User", "", v28, 2u);
  }

  if (*(v34 + 5))
  {
    v17 = +[STLog screenTimeOrganizationController];
    v18 = os_signpost_id_generate(v17);

    v19 = +[STLog screenTimeOrganizationController];
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Fetch Restrictions", "", v28, 2u);
    }

    v21 = *(v34 + 5);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100088820;
    v23[3] = &unk_1001A5CB8;
    v24 = v8;
    v26 = buf;
    v27 = v18;
    v25 = v10;
    [STRestrictionsFetcher fetchRestrictionsForUserDSID:v21 persistenceController:v9 completionHandler:v23];
  }

  else
  {
    v22 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10011FBB0(v31);
    }

    (*(v10 + 2))(v10, 0, *(v31[0] + 40));
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(buf, 8);
}

- (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  [v8 isCommunicationSafetyEnabledForUserDSID:v7 persistenceController:v9 completionHandler:v6];
}

+ (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[STLog screenTimeOrganizationController];
  v11 = os_signpost_id_generate(v10);

  v12 = +[STLog screenTimeOrganizationController];
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Fetch Communication Safety", "", buf, 2u);
  }

  *buf = 0;
  v37 = buf;
  v38 = 0x3032000000;
  v39 = sub_10008281C;
  v40 = sub_10008282C;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10008281C;
  v34 = sub_10008282C;
  v35 = 0;
  v14 = +[STLog screenTimeOrganizationController];
  v15 = os_signpost_id_generate(v14);

  v16 = +[STLog screenTimeOrganizationController];
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v29 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Fetch Communication Safety CoreData Setup", "", v29, 2u);
  }

  v18 = [v8 newBackgroundContext];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100088D70;
  v23[3] = &unk_1001A5CE0;
  v28 = v15;
  v19 = v7;
  v24 = v19;
  v20 = v18;
  v25 = v20;
  v26 = &v30;
  v27 = buf;
  [v20 performBlockAndWait:v23];
  v21 = +[STLog screenTimeOrganizationController];
  v22 = v21;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v29 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v11, "Fetch Communication Safety", "", v29, 2u);
  }

  v9[2](v9, *(v37 + 5), v31[5]);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(buf, 8);
}

- (BOOL)exportDatabaseToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[STLog diagnostics];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10011FC84();
  }

  v8 = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [v8 hasStoreLoaded];

  if (v9)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10008281C;
    v22 = sub_10008282C;
    v23 = 0;
    v10 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000891CC;
    v13[3] = &unk_1001A5D08;
    v16 = &v18;
    v17 = &v24;
    v14 = v6;
    v15 = self;
    [v10 performBackgroundTaskAndWait:v13];

    v11 = *(v25 + 24);
    if (a4 && (v25[3] & 1) == 0)
    {
      *a4 = v19[5];
      v11 = *(v25 + 24);
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else if (a4)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)_writePlistForUser:(id)a3 url:(id)a4 error:(id *)a5
{
  v6 = a3;
  v74 = a4;
  v7 = objc_opt_new();
  v8 = [v6 dsid];
  [v7 setObject:v8 forKeyedSubscript:@"dsid"];

  v9 = [v6 altDSID];
  [v7 setObject:v9 forKeyedSubscript:@"altDSID"];

  v10 = [v6 appleID];
  [v7 setObject:v10 forKeyedSubscript:@"appleID"];

  v11 = [v6 givenName];
  [v7 setObject:v11 forKeyedSubscript:@"givenName"];

  v12 = [v6 familyName];
  [v7 setObject:v12 forKeyedSubscript:@"familyName"];

  v13 = [v6 familyMemberType];
  [v7 setObject:v13 forKeyedSubscript:@"familyMemberType"];

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isParent]);
  [v7 setObject:v14 forKeyedSubscript:@"isParent"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isFamilyOrganizer]);
  [v7 setObject:v15 forKeyedSubscript:@"isFamilyOrganizer"];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isManaged]);
  [v7 setObject:v16 forKeyedSubscript:@"isManaged"];

  v17 = [v6 isAppAndWebsiteActivityEnabled];
  [v7 setObject:v17 forKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];

  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 syncingEnabled]);
  [v7 setObject:v18 forKeyedSubscript:@"syncingEnabled"];

  v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 communicationPolicy]);
  [v7 setObject:v19 forKeyedSubscript:@"communicationPolicy"];

  v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 communicationWhileLimitedPolicy]);
  [v7 setObject:v20 forKeyedSubscript:@"communicationWhileLimitedPolicy"];

  v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isCommunicationSafetyReceivingRestricted]);
  [v7 setObject:v21 forKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isCommunicationSafetySendingRestricted]);
  [v7 setObject:v22 forKeyedSubscript:@"isCommunicationSafetySendingRestricted"];

  v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isCommunicationSafetyNotificationEnabled]);
  [v7 setObject:v23 forKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];

  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isCommunicationSafetyAnalyticsEnabled]);
  [v7 setObject:v24 forKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];

  v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isEyeReliefEnabled]);
  [v7 setObject:v25 forKeyedSubscript:@"isEyeReliefEnabled"];

  v26 = [v6 localSettings];
  v27 = [v26 dictionaryRepresentation];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v27, "count")}];
  v28 = v89;
  [v27 enumerateKeysAndObjectsUsingBlock:&v85];
  v29 = [v28 copy];

  [v7 setObject:v29 forKeyedSubscript:@"localSettings"];
  v30 = [v6 cloudSettings];
  v31 = [v30 dictionaryRepresentation];
  v32 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v31, "count")}];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = v32;
  v33 = v32;
  [v31 enumerateKeysAndObjectsUsingBlock:&v85];
  v34 = [v33 copy];

  [v7 setObject:v34 forKeyedSubscript:@"cloudSettings"];
  v35 = [v6 familySettings];
  v36 = [v35 dictionaryRepresentation];
  v37 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v36, "count")}];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = v37;
  v38 = v37;
  [v36 enumerateKeysAndObjectsUsingBlock:&v85];
  v39 = [v38 copy];

  [v7 setObject:v39 forKeyedSubscript:@"familySettings"];
  v40 = [v6 unmodeledManagingOrganizationSettings];
  v41 = [v40 dictionaryRepresentation];
  v42 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v41, "count")}];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = v42;
  v43 = v42;
  [v41 enumerateKeysAndObjectsUsingBlock:&v85];
  v44 = [v43 copy];

  v75 = v7;
  [v7 setObject:v44 forKeyedSubscript:@"unmodeledManagingOrganizationSettings"];

  v45 = [NSMutableArray alloc];
  v46 = [v6 userDeviceStates];
  v76 = [v45 initWithCapacity:{objc_msgSend(v46, "count")}];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v47 = [v6 userDeviceStates];
  v48 = [v47 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v82;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v82 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v81 + 1) + 8 * i);
        v53 = [v52 device];

        if (v53)
        {
          v54 = [v52 dictionaryRepresentation];
          v55 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v54, "count")}];
          v85 = _NSConcreteStackBlock;
          v86 = 3221225472;
          v87 = sub_10008B7B8;
          v88 = &unk_1001A5D80;
          v89 = v55;
          v56 = v55;
          [v54 enumerateKeysAndObjectsUsingBlock:&v85];
          v57 = [v56 copy];

          [v76 addObject:v57];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v49);
  }

  v58 = [v76 copy];
  [v75 setObject:v58 forKeyedSubscript:@"userDeviceStates"];

  v59 = [NSMutableArray alloc];
  v60 = [v6 blueprints];
  v61 = [v59 initWithCapacity:{objc_msgSend(v60, "count")}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v62 = [v6 blueprints];
  v63 = [v62 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v78;
    do
    {
      for (j = 0; j != v64; j = j + 1)
      {
        if (*v78 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = [*(*(&v77 + 1) + 8 * j) dictionaryRepresentation];
        v68 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v67, "count")}];
        v85 = _NSConcreteStackBlock;
        v86 = 3221225472;
        v87 = sub_10008B7B8;
        v88 = &unk_1001A5D80;
        v89 = v68;
        v69 = v68;
        [v67 enumerateKeysAndObjectsUsingBlock:&v85];
        v70 = [v69 copy];

        [v61 addObject:v70];
      }

      v64 = [v62 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v64);
  }

  v71 = [v61 copy];
  [v75 setObject:v71 forKeyedSubscript:@"blueprints"];

  LOBYTE(v71) = [v75 writeToURL:v74 error:a5];
  return v71;
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching last comm limits modification date for dsid: %{public}@", buf, 0xCu);
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008A100;
    v13[3] = &unk_1001A3EE0;
    v14 = v6;
    v15 = v7;
    [v11 performBackgroundTask:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)lastModifcationDateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching last modification date for dsid: %{public}@", buf, 0xCu);
  }

  v9 = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [v9 hasStoreLoaded];

  if (v10)
  {
    v11 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008A4E4;
    v13[3] = &unk_1001A3EE0;
    v14 = v6;
    v15 = v7;
    [v11 performBackgroundTask:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching managing guardian Apple IDs for the local user.", buf, 2u);
  }

  v6 = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [v6 hasStoreLoaded];

  if (v7)
  {
    v8 = [(STScreenTimeOrganizationController *)self persistenceController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008A958;
    v11[3] = &unk_1001A5AB8;
    v12 = v4;
    [v8 performBackgroundTaskAndWait:v11];

    v9 = v12;
  }

  else
  {
    v9 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v10 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10011FDC4();
    }

    (*(v4 + 2))(v4, 0, v9);
  }
}

- (void)didReceiveBlueprintPayload:(id)a3
{
  v4 = a3;
  v5 = [(STScreenTimeOrganizationController *)self requestManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008ADC0;
  v6[3] = &unk_1001A3A08;
  v6[4] = self;
  [v5 persistBlueprintsFromBlueprintPayload:v4 withCompletion:v6];
}

- (void)requestManager:(id)a3 didPrepareRequestPayloads:(id)a4 reason:(id)a5
{
  v6 = a4;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Declaration manager did prepare declaration request payloads: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [(STScreenTimeOrganizationController *)self requestManager];
        [v14 installFromRequest:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)requestManager:(id)a3 didPrepareBlueprintPayloads:(id)a4
{
  v5 = a4;
  v6 = [(STScreenTimeOrganizationController *)self familyOrganizationController];
  [v6 sendPayloads:v5];
}

- (void)controllerDidChangeContent:(id)a3
{
  v9 = a3;
  v4 = [(STScreenTimeOrganizationController *)self settingsResultsController];

  if (v4 == v9)
  {
    v6 = [(STScreenTimeOrganizationController *)self deviceStateDebouncer];
  }

  else
  {
    v5 = [(STScreenTimeOrganizationController *)self organizationSettingsResultsController];

    if (v5 == v9)
    {
      v7 = [(STScreenTimeOrganizationController *)self deviceStateDebouncer];
      [v7 bounce:0];
    }

    else
    {
      [(STScreenTimeOrganizationController *)self downtimeOverridesResultsController];
    }

    v6 = [(STScreenTimeOrganizationController *)self blueprintDebouncer];
  }

  v8 = v6;
  [v6 bounce:0];
}

- (void)debouncer:(id)a3 didDebounce:(id)a4
{
  v8 = a3;
  v5 = [(STScreenTimeOrganizationController *)self deviceStateDebouncer];

  if (v5 == v8)
  {
    if (os_variant_has_internal_content())
    {
      [STScreenTimeOrganizationController postDiagnosticsServiceMessage:@"Settings Change"];
    }

    notify_post(STSettingsDidChangeNotification);
    [(STScreenTimeOrganizationController *)self updateEffectiveDeviceState:0];
  }

  else
  {
    v6 = [(STScreenTimeOrganizationController *)self blueprintDebouncer];

    v7 = v8;
    if (v6 != v8)
    {
      goto LABEL_12;
    }

    if (os_variant_has_internal_content())
    {
      [STScreenTimeOrganizationController postDiagnosticsServiceMessage:@"Blueprint Change"];
    }

    if ([(STScreenTimeOrganizationController *)self performAppExceptionsMigration])
    {
      [(STDebouncer *)self->_blueprintDebouncer bounce:0];
    }

    else
    {
      [(STScreenTimeOrganizationController *)self processBlueprintChanges];
    }
  }

  v7 = v8;
LABEL_12:
}

+ (void)postDiagnosticsServiceMessage:(id)a3
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  v6 = @"type";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"DiagnosticsService-Generic" object:0 userInfo:v5];
}

@end