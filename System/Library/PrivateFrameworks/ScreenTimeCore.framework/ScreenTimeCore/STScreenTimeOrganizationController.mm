@interface STScreenTimeOrganizationController
+ (id)keyPathsForValuesAffectingScreenTimeEnabled;
+ (id)keyPathsForValuesAffectingScreenTimeSyncingEnabled;
+ (void)isCommunicationSafetyEnabledForUserDSID:(id)d persistenceController:(id)controller completionHandler:(id)handler;
+ (void)postDiagnosticsServiceMessage:(id)message;
+ (void)restrictionsForUserDSID:(id)d persistenceController:(id)controller completionHandler:(id)handler;
- (BOOL)_writePlistForUser:(id)user url:(id)url error:(id *)error;
- (BOOL)authenticateRestrictionsPasscode:(id)passcode error:(id *)error;
- (BOOL)clearRestrictionsPasscodeWithError:(id *)error;
- (BOOL)createMandatoryEntitiesIfNeeded;
- (BOOL)exportDatabaseToURL:(id)l error:(id *)error;
- (BOOL)isLocalUserRemotelyManaged;
- (BOOL)isScreenTimeEnabled;
- (BOOL)isScreenTimeSyncingEnabled;
- (BOOL)performAppExceptionsMigration;
- (STAppMonitorStatus)appMonitorStatus;
- (STScreenTimeOrganizationController)initWithPersistenceController:(id)controller askForTimeManager:(id)manager mirroringMonitor:(id)monitor accountNotifier:(id)notifier capabilities:(id)capabilities;
- (id)fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:(id)moc error:(id *)error;
- (id)getIsExplicitContentRestrictedAndReturnError:(id *)error;
- (id)getIsRestrictionsPasscodeSetAndReturnError:(id *)error;
- (id)getIsWebContentRestrictedAndReturnError:(id *)error;
- (id)getNeedsToSetRestrictionsPasscodeAndReturnError:(id *)error;
- (id)getPrimaryiCloudCardDAVAccountIdentifierWithError:(id *)error;
- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier error:(id *)error;
- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier error:(id *)error;
- (id)shouldAllowOneMoreMinuteForWebDomain:(id)domain error:(id *)error;
- (void)_applyDefaultUserPoliciesWithCompletionHandler:(id)handler;
- (void)_applyImageGenerationRestrictionIfNeeded;
- (void)_applyManagedSettingsIfNeeded;
- (void)_didFailDMRegistration:(id)registration;
- (void)_removeProtoAccountManagedSettingsIfNeeded;
- (void)_startObservingManagedConfigurationEffectiveSettings;
- (void)_updateScreenTimeSettingsFromManagedConfigurationEffectiveSettingsWithScreenTimeSettings:(id)settings;
- (void)accountDidUpdateToState:(id)state initializing:(BOOL)initializing;
- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler;
- (void)attemptToAutomaticallyEnableScreenTimeSyncing;
- (void)cleanOrphanedDatabaseEntities;
- (void)clearNeedsUpdatePasscode;
- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler;
- (void)communicationPoliciesWithCompletionHandler:(id)handler;
- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler;
- (void)controllerDidChangeContent:(id)content;
- (void)debouncer:(id)debouncer didDebounce:(id)debounce;
- (void)deleteAllLocalScreenTimeSettings;
- (void)deleteLocalUserBlueprintsFromManagedConfigurationEffectiveSettings;
- (void)didDisableCloudSync;
- (void)didDisableScreenTime;
- (void)didEnableCloudSync;
- (void)didEnableManagement;
- (void)didJoinFamily:(id)family;
- (void)didLeaveFamily;
- (void)didReceiveBlueprintPayload:(id)payload;
- (void)didSignInToCloud:(id)cloud;
- (void)didSignOutOfCloud:(id)cloud;
- (void)didUpdateFamily:(id)family;
- (void)enableRemoteManagementForDSID:(id)d completionHandler:(id)handler;
- (void)enableScreenTimeForDSID:(id)d completionHandler:(id)handler;
- (void)enableWebContentFilterWithCompletionHandler:(id)handler;
- (void)fetchMirroringMonitorStatusWithCompletionHandler:(id)handler;
- (void)isCommunicationSafetyEnabledForUserDSID:(id)d completionHandler:(id)handler;
- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler;
- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler;
- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler;
- (void)migrateLegacyRestrictionsIfNeededWithMCXSettings:(id)settings completionHandler:(id)handler;
- (void)migrateOldDefaultsIfNeeded;
- (void)performCloudSync:(id)sync;
- (void)performWeeklyRollupWithCompletionHandler:(id)handler;
- (void)permitWebFilterURL:(id)l pageTitle:(id)title completionHandler:(id)handler;
- (void)postOrRemoveAppAndWebsiteActivityEnabledNotification:(BOOL)notification;
- (void)processBlueprintChanges;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)requestManager:(id)manager didPrepareBlueprintPayloads:(id)payloads;
- (void)requestManager:(id)manager didPrepareRequestPayloads:(id)payloads reason:(id)reason;
- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
- (void)resume;
- (void)rollupUsageDataWithCompletionHandler:(id)handler;
- (void)scheduleAppMonitorAppDiscovery;
- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)handler;
- (void)setAppAndWebsiteActivityEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler;
- (void)setLocationSharingModificationAllowed:(BOOL)allowed forDSID:(id)d completionHandler:(id)handler;
- (void)setNeedsUpdatePasscode;
- (void)setRestrictionsPasscode:(id)passcode error:(id *)error;
- (void)setScreenTimeEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setScreenTimeSyncingEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)startMonitoringAccountChanges;
- (void)startObservingBlueprints;
- (void)startObservingOrganizationSettings;
- (void)startObservingScreenTimeSettings;
- (void)startupCloud;
- (void)startupCloudSync;
- (void)startupFamily:(id)family;
- (void)startupScreenTime:(BOOL)time;
- (void)stopObservingBlueprints;
- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler;
- (void)updateDeviceName;
- (void)updateEffectiveDeviceState:(BOOL)state;
@end

@implementation STScreenTimeOrganizationController

- (STScreenTimeOrganizationController)initWithPersistenceController:(id)controller askForTimeManager:(id)manager mirroringMonitor:(id)monitor accountNotifier:(id)notifier capabilities:(id)capabilities
{
  controllerCopy = controller;
  managerCopy = manager;
  monitorCopy = monitor;
  notifierCopy = notifier;
  capabilitiesCopy = capabilities;
  v57.receiver = self;
  v57.super_class = STScreenTimeOrganizationController;
  v17 = [(STScreenTimeOrganizationController *)&v57 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_persistenceController, controller);
    v19 = +[NSOperationQueue mainQueue];
    operationQueue = v18->_operationQueue;
    v18->_operationQueue = v19;

    v21 = objc_opt_new();
    accessLock = v18->_accessLock;
    v18->_accessLock = v21;

    objc_storeStrong(&v18->_askForTimeManager, manager);
    objc_storeStrong(&v18->_mirroringMonitor, monitor);
    objc_storeStrong(&v18->_accountNotifier, notifier);
    objc_storeStrong(&v18->_capabilities, capabilities);
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
    persistenceController = [(STScreenTimeOrganizationController *)v18 persistenceController];
    v31 = [(STRequestManager *)v28 initWithOrganizationIdentifier:v29 persistenceController:persistenceController];
    requestManager = v18->_requestManager;
    v18->_requestManager = v31;

    [(STRequestManager *)v18->_requestManager setDelegate:v18];
    v33 = [STFamilySettingsManager alloc];
    capabilities = v18->_capabilities;
    persistenceController2 = [(STScreenTimeOrganizationController *)v18 persistenceController];
    v36 = [(STFamilySettingsManager *)v33 initWithCapabilities:capabilities persistenceController:persistenceController2];

    v37 = [STConcreteOrganizationControllerConfigurationAdapter alloc];
    v38 = v18->_requestManager;
    persistentContainer = [(STPersistenceControllerProtocol *)v18->_persistenceController persistentContainer];
    v40 = [(STConcreteOrganizationControllerConfigurationAdapter *)v37 initWithFamilySettingsManager:v36 requestManager:v38 persistentContainer:persistentContainer];
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

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v9 setPersistentStoreCoordinator:persistentStoreCoordinator];

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
    capabilities = [(STScreenTimeOrganizationController *)self capabilities];
    LODWORD(buf.opaque[0]) = 138543362;
    *(buf.opaque + 4) = capabilities;
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
    selfCopy = self;
    v19 = v6;
    [v8 performRequest:v7 completion:&v14];

    v9 = [(STScreenTimeOrganizationController *)self capabilities:v14];
    supportedInfrastructure = [v9 supportedInfrastructure];

    if (supportedInfrastructure)
    {
      [(STScreenTimeOrganizationController *)self startMonitoringAccountChanges];
    }

    else if ((supportedInfrastructure & 2) != 0)
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

- (void)startupScreenTime:(BOOL)time
{
  timeCopy = time;
  v5 = +[STLog checkpoint];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = objc_opt_class();
    v6 = v26;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time", buf, 0xCu);
  }

  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v8 = [STAppMonitor alloc];
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v10 = [(STAppMonitor *)v8 initWithPersistenceController:persistenceController];
  [(STScreenTimeOrganizationController *)self setAppMonitor:v10];

  appMonitor = [(STScreenTimeOrganizationController *)self appMonitor];
  [appMonitor resume];

  v12 = +[NSUserDefaults standardUserDefaults];
  if (_os_feature_enabled_impl())
  {
    v13 = +[STLog screenTimeOrganizationController];
    v14 = !timeCopy;
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
  persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
  v20 = [(STUsageManager *)v18 initWithPersistenceController:persistenceController2];
  [(STScreenTimeOrganizationController *)self setUsageManager:v20];

  usageManager = [(STScreenTimeOrganizationController *)self usageManager];
  [usageManager resume];

  usageManager2 = [(STScreenTimeOrganizationController *)self usageManager];
  [usageManager2 setScreenTimeEnabled:1];

  objc_sync_exit(accessLock);
}

- (void)didDisableScreenTime
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
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

  usageManager = [(STScreenTimeOrganizationController *)self usageManager];
  if (!usageManager)
  {
    v10 = [STUsageManager alloc];
    persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
    usageManager = [(STUsageManager *)v10 initWithPersistenceController:persistenceController];
  }

  [(STUsageManager *)usageManager setScreenTimeEnabled:0];
  [(STScreenTimeOrganizationController *)self setUsageManager:0];
  [(STScreenTimeOrganizationController *)self setAppMonitor:0];
  persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
  v13 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController2 viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v13 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v13 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100079944;
  v17[3] = &unk_1001A3180;
  v16 = v13;
  v18 = v16;
  [v16 performBlock:v17];

  objc_sync_exit(accessLock);
}

- (void)attemptToAutomaticallyEnableScreenTimeSyncing
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to automatically enable Screen Time syncing", buf, 2u);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v6 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v6 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100079DB0;
  v10[3] = &unk_1001A3180;
  v9 = v6;
  v11 = v9;
  [v9 performBlockAndWait:v10];

  objc_sync_exit(accessLock);
}

- (void)startupCloud
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v5 = v14;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time Cloud", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007A314;
  v11[3] = &unk_1001A3180;
  v10 = v7;
  v12 = v10;
  [v10 performBlockAndWait:v11];
  [(STScreenTimeOrganizationController *)self applyDefaultUserPoliciesWithCompletionHandler:&stru_1001A59D0];

  objc_sync_exit(accessLock);
}

- (void)didSignInToCloud:(id)cloud
{
  cloudCopy = cloud;
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  [(STScreenTimeOrganizationController *)self startupCloud];
  objc_sync_exit(accessLock);
}

- (void)didSignOutOfCloud:(id)cloud
{
  cloudCopy = cloud;
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v6 = +[STLog checkpoint];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v7 = v16;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Screen Time Cloud", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v9 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v9 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v9 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007A778;
  v13[3] = &unk_1001A3180;
  v12 = v9;
  v14 = v12;
  [v12 performBlock:v13];

  objc_sync_exit(accessLock);
}

- (void)startupCloudSync
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = objc_opt_class();
    v5 = v15;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time Cloud Sync", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007AD08;
  v11[3] = &unk_1001A3020;
  v10 = v7;
  v12 = v10;
  selfCopy = self;
  [v10 performBlockAndWait:v11];

  objc_sync_exit(accessLock);
}

- (void)didEnableCloudSync
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  [(STScreenTimeOrganizationController *)self startupCloudSync];
  v4 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enabling deviceActivity.shareAcrossDevices setting", v8, 2u);
  }

  v5 = [MOLocalSettingsStore alloc];
  v6 = [v5 initWithSharedContainer:STManagedSettingsContainer];
  deviceActivity = [v6 deviceActivity];
  [deviceActivity setShareAcrossDevices:&__kCFBooleanTrue];

  objc_sync_exit(accessLock);
}

- (void)didDisableCloudSync
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    v5 = v22;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Screen Time Cloud Sync", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10007B3CC;
  v18 = &unk_1001A3020;
  selfCopy = self;
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
  deviceActivity = [v13 deviceActivity];
  [deviceActivity setShareAcrossDevices:&__kCFBooleanFalse];

  objc_sync_exit(accessLock);
}

- (void)startupFamily:(id)family
{
  familyCopy = family;
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v6 = +[STLog checkpoint];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v7 = v17;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Screen Time family", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext = [persistenceController viewContext];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007B748;
  v12[3] = &unk_1001A42E0;
  v10 = viewContext;
  v13 = v10;
  selfCopy = self;
  v11 = familyCopy;
  v15 = v11;
  [v10 performBlockAndWait:v12];

  objc_sync_exit(accessLock);
}

- (void)didJoinFamily:(id)family
{
  familyCopy = family;
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  [(STScreenTimeOrganizationController *)self startupFamily:familyCopy];
  familyOrganizationController = [(STScreenTimeOrganizationController *)self familyOrganizationController];
  [familyOrganizationController sendCheckinRequest];

  [(STScreenTimeOrganizationController *)self _removeProtoAccountManagedSettingsIfNeeded];
  objc_sync_exit(accessLock);
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
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Screen Time family", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext = [persistenceController viewContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007BDE0;
  v9[3] = &unk_1001A3020;
  v9[4] = self;
  v8 = viewContext;
  v10 = v8;
  [v8 performBlockAndWait:v9];

  objc_sync_exit(accessLock);
}

- (void)didUpdateFamily:(id)family
{
  familyCopy = family;
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  [(STScreenTimeOrganizationController *)self startupFamily:familyCopy];
  objc_sync_exit(accessLock);
}

- (void)didEnableManagement
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
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
  objc_sync_exit(accessLock);
}

- (void)updateDeviceName
{
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v5 = STGetDeviceUUID();
  v6 = STGetDeviceName();
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

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

  objc_sync_exit(accessLock);
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

  accountNotifier = [(STScreenTimeOrganizationController *)self accountNotifier];
  [accountNotifier registerObserver:self];
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext = [persistenceController viewContext];
  v11 = [v8 initWithFetchRequest:v5 managedObjectContext:viewContext sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setSettingsResultsController:v11];

  settingsResultsController = [(STScreenTimeOrganizationController *)self settingsResultsController];
  [settingsResultsController setDelegate:self];

  settingsResultsController2 = [(STScreenTimeOrganizationController *)self settingsResultsController];
  v16 = 0;
  LOBYTE(persistenceController) = [settingsResultsController2 performFetch:&v16];
  v14 = v16;

  if ((persistenceController & 1) == 0)
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext = [persistenceController viewContext];
  v11 = [v8 initWithFetchRequest:v5 managedObjectContext:viewContext sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setOrganizationSettingsResultsController:v11];

  organizationSettingsResultsController = [(STScreenTimeOrganizationController *)self organizationSettingsResultsController];
  [organizationSettingsResultsController setDelegate:self];

  organizationSettingsResultsController2 = [(STScreenTimeOrganizationController *)self organizationSettingsResultsController];
  v16 = 0;
  LOBYTE(persistenceController) = [organizationSettingsResultsController2 performFetch:&v16];
  v14 = v16;

  if ((persistenceController & 1) == 0)
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext = [persistenceController viewContext];
  v11 = [v8 initWithFetchRequest:v5 managedObjectContext:viewContext sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setBlueprintsResultsController:v11];

  blueprintsResultsController = [(STScreenTimeOrganizationController *)self blueprintsResultsController];
  [blueprintsResultsController setDelegate:self];

  blueprintsResultsController2 = [(STScreenTimeOrganizationController *)self blueprintsResultsController];
  v64 = 0;
  LOBYTE(viewContext) = [blueprintsResultsController2 performFetch:&v64];
  v14 = v64;

  if ((viewContext & 1) == 0)
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
  persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext2 = [persistenceController2 viewContext];
  v22 = [v19 initWithFetchRequest:v16 managedObjectContext:viewContext2 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setDowntimeOverridesResultsController:v22];

  downtimeOverridesResultsController = [(STScreenTimeOrganizationController *)self downtimeOverridesResultsController];
  [downtimeOverridesResultsController setDelegate:self];

  downtimeOverridesResultsController2 = [(STScreenTimeOrganizationController *)self downtimeOverridesResultsController];
  v63 = v14;
  LOBYTE(viewContext2) = [downtimeOverridesResultsController2 performFetch:&v63];
  v25 = v63;

  if ((viewContext2 & 1) == 0)
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
  persistenceController3 = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext3 = [persistenceController3 viewContext];
  v33 = [v30 initWithFetchRequest:v27 managedObjectContext:viewContext3 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setSchedulesResultsController:v33];

  schedulesResultsController = [(STScreenTimeOrganizationController *)self schedulesResultsController];
  [schedulesResultsController setDelegate:self];

  schedulesResultsController2 = [(STScreenTimeOrganizationController *)self schedulesResultsController];
  v62 = v25;
  LOBYTE(viewContext3) = [schedulesResultsController2 performFetch:&v62];
  v36 = v62;

  if ((viewContext3 & 1) == 0)
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
  persistenceController4 = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext4 = [persistenceController4 viewContext];
  v44 = [v41 initWithFetchRequest:v38 managedObjectContext:viewContext4 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setUsageLimitsResultsController:v44];

  usageLimitsResultsController = [(STScreenTimeOrganizationController *)self usageLimitsResultsController];
  [usageLimitsResultsController setDelegate:self];

  usageLimitsResultsController2 = [(STScreenTimeOrganizationController *)self usageLimitsResultsController];
  v61 = v36;
  LOBYTE(viewContext4) = [usageLimitsResultsController2 performFetch:&v61];
  v47 = v61;

  if ((viewContext4 & 1) == 0)
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
  persistenceController5 = [(STScreenTimeOrganizationController *)self persistenceController];
  viewContext5 = [persistenceController5 viewContext];
  v55 = [v52 initWithFetchRequest:v49 managedObjectContext:viewContext5 sectionNameKeyPath:0 cacheName:0];
  [(STScreenTimeOrganizationController *)self setConfigurationsResultsController:v55];

  configurationsResultsController = [(STScreenTimeOrganizationController *)self configurationsResultsController];
  [configurationsResultsController setDelegate:self];

  configurationsResultsController2 = [(STScreenTimeOrganizationController *)self configurationsResultsController];
  v60 = v47;
  LOBYTE(persistenceController5) = [configurationsResultsController2 performFetch:&v60];
  v58 = v60;

  if ((persistenceController5 & 1) == 0)
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

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = [STLog screentime:notification];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Detected Managed Configuration effective settings change", buf, 2u);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D20C;
  v11[3] = &unk_1001A3020;
  v12 = v7;
  selfCopy = self;
  v10 = v7;
  [v10 performBlock:v11];
}

- (void)_updateScreenTimeSettingsFromManagedConfigurationEffectiveSettingsWithScreenTimeSettings:(id)settings
{
  settingsCopy = settings;
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 effectiveBoolValueForSetting:MCFeatureEnablingRestrictionsAllowed];

  if (v5 == 2)
  {
    screenTimeEnabled = [settingsCopy screenTimeEnabled];
    cloudSyncEnabled = [settingsCopy cloudSyncEnabled];
    v8 = cloudSyncEnabled;
    if ((screenTimeEnabled & 1) != 0 || cloudSyncEnabled)
    {
      v9 = +[STLog screentime];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Turning off Screen Time, restrictions now forbidden from being enabled due to MCFeatureEnablingRestrictionsAllowed", v10, 2u);
      }

      if (screenTimeEnabled)
      {
        [settingsCopy setScreenTimeEnabled:0];
      }

      if (v8)
      {
        [settingsCopy setCloudSyncEnabled:0];
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
    accessLock = [(STScreenTimeOrganizationController *)self accessLock];
    objc_sync_enter(accessLock);
    v6 = +[STLog screentime];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting local user blueprints. Restrictions now forbidden from being enabled due to MCFeatureEnablingRestrictionsAllowed.", buf, 2u);
    }

    persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
    v8 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    viewContext = [persistenceController viewContext];
    persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
    [v8 setPersistentStoreCoordinator:persistentStoreCoordinator];

    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007D61C;
    v12[3] = &unk_1001A3180;
    v11 = v8;
    v13 = v11;
    [v11 performBlock:v12];

    objc_sync_exit(accessLock);
  }
}

- (void)updateEffectiveDeviceState:(BOOL)state
{
  stateCopy = state;
  v5 = +[STLog checkpoint];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (stateCopy)
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v11 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v11 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v11 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007D9F4;
  v16[3] = &unk_1001A4358;
  v17 = v9;
  v18 = v11;
  selfCopy = self;
  v20 = stateCopy;
  v14 = v11;
  v15 = v9;
  [v14 performBlockAndWait:v16];
}

- (void)_applyImageGenerationRestrictionIfNeeded
{
  userDefaults = [(STScreenTimeOrganizationController *)self userDefaults];
  v4 = [userDefaults BOOLForKey:@"InitialImageGenerationRestrictionApplied"];

  if ((v4 & 1) == 0)
  {
    v5 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Image Creation: restriction has not been applied yet. Applying all restrictions.", v7, 2u);
    }

    [(STScreenTimeOrganizationController *)self processBlueprintChanges];
    userDefaults2 = [(STScreenTimeOrganizationController *)self userDefaults];
    [userDefaults2 setBool:1 forKey:@"InitialImageGenerationRestrictionApplied"];
  }
}

- (void)_applyManagedSettingsIfNeeded
{
  userDefaults = [(STScreenTimeOrganizationController *)self userDefaults];
  v4 = [userDefaults BOOLForKey:@"InitialManagedSettingsApplied"];

  if ((v4 & 1) == 0)
  {
    v5 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Managed Settings have not been applied. Running processBlueprintChanges to trigger ManagedSettingsApplicator.", v7, 2u);
    }

    [(STScreenTimeOrganizationController *)self processBlueprintChanges];
    userDefaults2 = [(STScreenTimeOrganizationController *)self userDefaults];
    [userDefaults2 setBool:1 forKey:@"InitialManagedSettingsApplied"];
  }
}

- (void)processBlueprintChanges
{
  requestManager = [(STScreenTimeOrganizationController *)self requestManager];
  [requestManager processBlueprintChanges];

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];

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
  accessLock = [(STScreenTimeOrganizationController *)self accessLock];
  objc_sync_enter(accessLock);
  v4 = +[STLog screentime];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleting local organization, local organization settings, and blueprints.", buf, 2u);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v6 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v6 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007EB38;
  v10[3] = &unk_1001A3180;
  v9 = v6;
  v11 = v9;
  [v9 performBlock:v10];

  objc_sync_exit(accessLock);
}

- (void)fetchMirroringMonitorStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mirroringMonitor = [(STScreenTimeOrganizationController *)self mirroringMonitor];
  fetchCurrentCloudKitSyncingStatus = [mirroringMonitor fetchCurrentCloudKitSyncingStatus];
  then = [fetchCurrentCloudKitSyncingStatus then];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007EEBC;
  v12[3] = &unk_1001A5A18;
  v13 = mirroringMonitor;
  v14 = handlerCopy;
  v8 = then[2];
  v9 = mirroringMonitor;
  v10 = handlerCopy;
  v11 = v8(then, v12);
}

- (void)performCloudSync:(id)sync
{
  syncCopy = sync;
  mirroringMonitor = [(STScreenTimeOrganizationController *)self mirroringMonitor];
  v6 = mirroringMonitor;
  if (mirroringMonitor)
  {
    forceMirroringSync = [mirroringMonitor forceMirroringSync];
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

  syncCopy[2](syncCopy, v8);
}

- (void)postOrRemoveAppAndWebsiteActivityEnabledNotification:(BOOL)notification
{
  notificationCopy = notification;
  v4 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"Removing";
    if (notificationCopy)
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
  if (!notificationCopy)
  {
    v8 = off_1001A6318;
  }

  v9 = [v7 initWithName:*v8 object:v6 userInfo:0];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotification:v9];
}

- (void)_didFailDMRegistration:(id)registration
{
  registrationCopy = registration;
  v4 = +[STLog checkpoint];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10011E378(registrationCopy);
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
  selfCopy = self;
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007F3E8;
  v9[3] = &unk_1001A5A40;
  v7 = v4;
  v10 = v7;
  v11 = selfCopy;
  v12 = &v13;
  [v7 performBlockAndWait:v9];
  LOBYTE(selfCopy) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return selfCopy;
}

- (void)cleanOrphanedDatabaseEntities
{
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  newBackgroundContext = [persistenceController newBackgroundContext];
  [newBackgroundContext setName:@"cleanOrphanedDatabaseEntities"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007F7A0;
  v5[3] = &unk_1001A3180;
  v6 = newBackgroundContext;
  v4 = newBackgroundContext;
  [v4 performBlockAndWait:v5];
}

- (void)accountDidUpdateToState:(id)state initializing:(BOOL)initializing
{
  stateCopy = state;
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v8 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
  viewContext = [persistenceController viewContext];
  persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
  [v8 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008000C;
  v13[3] = &unk_1001A4358;
  v14 = v8;
  v15 = stateCopy;
  selfCopy = self;
  initializingCopy = initializing;
  v11 = stateCopy;
  v12 = v8;
  [v12 performBlockAndWait:v13];
}

- (void)performWeeklyRollupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  usageManager = [(STScreenTimeOrganizationController *)self usageManager];

  if (usageManager)
  {
    usageManager2 = [(STScreenTimeOrganizationController *)self usageManager];
    [usageManager2 performWeeklyRollupWithCompletionHandler:handlerCopy];
  }

  else
  {
    v6 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    usageManager2 = [NSError errorWithDomain:STErrorDomain code:7 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, usageManager2);
  }

  v6 = handlerCopy;
LABEL_6:
}

- (void)rollupUsageDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  usageManager = [(STScreenTimeOrganizationController *)self usageManager];

  if (usageManager)
  {
    usageManager2 = [(STScreenTimeOrganizationController *)self usageManager];
    [usageManager2 rollupUsageForDuration:60 isBackgroundTask:0 isRecomputingUsage:0 completionHandler:handlerCopy];
  }

  else
  {
    v6 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    usageManager2 = [NSError errorWithDomain:STErrorDomain code:7 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, usageManager2);
  }

  v6 = handlerCopy;
LABEL_6:
}

- (STAppMonitorStatus)appMonitorStatus
{
  appMonitor = [(STScreenTimeOrganizationController *)self appMonitor];
  v3 = [STAppMonitorStatus alloc];
  running = [appMonitor running];
  if (appMonitor)
  {
    cachedAppBundleIdentifiers = [appMonitor cachedAppBundleIdentifiers];
    v6 = v3;
    v7 = 1;
  }

  else
  {
    cachedAppBundleIdentifiers = objc_opt_new();
    v6 = v3;
    v7 = 0;
  }

  v8 = [(STAppMonitorStatus *)v6 initWithInstanceExists:v7 instanceRunning:running cachedAppBundleIdentifiers:cachedAppBundleIdentifiers];

  return v8;
}

- (void)scheduleAppMonitorAppDiscovery
{
  appMonitor = [(STScreenTimeOrganizationController *)self appMonitor];
  [appMonitor _scheduleAppDiscoveryBackgroundActivity];
}

- (void)migrateLegacyRestrictionsIfNeededWithMCXSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  v8 = objc_opt_new();
  [v8 setMcxSettings:settingsCopy];

  LOBYTE(settingsCopy) = [v8 hasMigratorRun];
  v9 = +[STLog screenTimeOrganizationController];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (settingsCopy)
  {
    if (v10)
    {
      sub_10011E7C4();
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    if (v10)
    {
      sub_10011E788();
    }

    persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
    v12 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    viewContext = [persistenceController viewContext];
    persistentStoreCoordinator = [viewContext persistentStoreCoordinator];
    [v12 setPersistentStoreCoordinator:persistentStoreCoordinator];

    [v12 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100080B20;
    v16[3] = &unk_1001A5A90;
    v17 = v8;
    v18 = v12;
    v19 = handlerCopy;
    v15 = v12;
    [v15 performBlockAndWait:v16];
  }
}

- (void)_applyDefaultUserPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Default user policy applicator triggered", buf, 2u);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100080CF8;
  v8[3] = &unk_1001A5AB8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [persistenceController performBackgroundTaskAndWait:v8];
}

- (void)setNeedsUpdatePasscode
{
  keychainUnlockEventObserver = [(STScreenTimeOrganizationController *)self keychainUnlockEventObserver];
  [keychainUnlockEventObserver setConfiguration:&off_1001B25B0];
}

- (void)clearNeedsUpdatePasscode
{
  keychainUnlockEventObserver = [(STScreenTimeOrganizationController *)self keychainUnlockEventObserver];
  [keychainUnlockEventObserver setConfiguration:0];
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

- (void)setScreenTimeEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting Screen Time enabled: %d", buf, 8u);
  }

  if (enabledCopy)
  {
    [(STScreenTimeOrganizationController *)self setAppAndWebsiteActivityEnabled:1 completionHandler:handlerCopy];
  }

  else
  {
    persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
    hasStoreLoaded = [persistenceController hasStoreLoaded];

    if (hasStoreLoaded)
    {
      persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100081138;
      v12[3] = &unk_1001A5AE0;
      v14 = 0;
      v12[4] = self;
      v13 = handlerCopy;
      [persistenceController2 performBackgroundTaskAndWait:v12];
    }

    else
    {
      v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v11);
    }
  }
}

- (void)setAppAndWebsiteActivityEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting App & Website Activity enabled: %d", buf, 8u);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000815AC;
    v12[3] = &unk_1001A5B08;
    v13 = handlerCopy;
    v14 = enabledCopy;
    [persistenceController2 performBackgroundTaskAndWait:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (void)enableScreenTimeForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EA44();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000819D4;
    v13[3] = &unk_1001A3EE0;
    v14 = dCopy;
    v15 = handlerCopy;
    [persistenceController2 performBackgroundTaskAndWait:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

- (void)enableRemoteManagementForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EAB4();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100081CE0;
    v13[3] = &unk_1001A3EE0;
    v14 = dCopy;
    v15 = handlerCopy;
    [persistenceController2 performBackgroundTaskAndWait:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v12);
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

- (void)setScreenTimeSyncingEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EB8C();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008209C;
    v12[3] = &unk_1001A5B08;
    enabledCopy = enabled;
    v13 = handlerCopy;
    [persistenceController2 performBackgroundTaskAndWait:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EC6C();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100082378;
    v14[3] = &unk_1001A5A90;
    v15 = dCopy;
    v16 = newBackgroundContext;
    v17 = handlerCopy;
    v13 = newBackgroundContext;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (BOOL)clearRestrictionsPasscodeWithError:(id *)error
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if ((hasStoreLoaded & 1) == 0)
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v11 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v10 = 0;
    goto LABEL_9;
  }

  persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082834;
  v13[3] = &unk_1001A5B30;
  v13[4] = self;
  v13[5] = buf;
  [persistenceController2 performBackgroundTaskAndWait:v13];

  v9 = *(v15 + 5);
  v10 = v9 == 0;
  if (error && v9)
  {
    v11 = v9;
LABEL_9:
    *error = v11;
  }

LABEL_11:
  _Block_object_dispose(buf, 8);

  return v10;
}

- (id)getIsRestrictionsPasscodeSetAndReturnError:(id *)error
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000830D4;
    v15[3] = &unk_1001A5B58;
    v10 = newBackgroundContext;
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
  if (error && !v12)
  {
    *error = v20[5];
    v12 = *(v26 + 5);
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

- (id)getNeedsToSetRestrictionsPasscodeAndReturnError:(id *)error
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000833EC;
    v15[3] = &unk_1001A5B58;
    v10 = newBackgroundContext;
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
  if (error && !v12)
  {
    *error = v20[5];
    v12 = *(v26 + 5);
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

- (void)setRestrictionsPasscode:(id)passcode error:(id *)error
{
  passcodeCopy = passcode;
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100083690;
    v14[3] = &unk_1001A37C0;
    v12 = newBackgroundContext;
    v15 = v12;
    v17 = buf;
    v16 = passcodeCopy;
    [v12 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    v12 = *(v19 + 5);
    *(v19 + 5) = v13;
  }

  if (error)
  {
    *error = *(v19 + 5);
  }

  _Block_object_dispose(buf, 8);
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([persistenceController hasStoreLoaded])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100083A10;
    v9[3] = &unk_1001A5B80;
    newBackgroundContext = [persistenceController newBackgroundContext];
    v10 = newBackgroundContext;
    v11 = &v14;
    v12 = buf;
    v13 = &v20;
    [newBackgroundContext performBlockAndWait:v9];
  }

  else
  {
    v8 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    newBackgroundContext = v15[5];
    v15[5] = v8;
  }

  handlerCopy[2](handlerCopy, *(v27 + 5), v21[5], v15[5]);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(buf, 8);
}

- (BOOL)authenticateRestrictionsPasscode:(id)passcode error:(id *)error
{
  passcodeCopy = passcode;
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([persistenceController hasStoreLoaded])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100083D34;
    v13[3] = &unk_1001A5BC8;
    newBackgroundContext = [persistenceController newBackgroundContext];
    v14 = newBackgroundContext;
    v17 = buf;
    v18 = &v25;
    v15 = passcodeCopy;
    selfCopy = self;
    [newBackgroundContext performBlockAndWait:v13];
  }

  else
  {
    v10 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    newBackgroundContext = *(v20 + 5);
    *(v20 + 5) = v10;
  }

  if (error)
  {
    *error = *(v20 + 5);
  }

  v11 = *(v26 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  familyOrganizationController = [(STScreenTimeOrganizationController *)self familyOrganizationController];
  [familyOrganizationController sendPasscodeActivityToParentsWithCompletionHandler:handlerCopy];
}

- (BOOL)isLocalUserRemotelyManaged
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  newBackgroundContext = [persistenceController newBackgroundContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100084090;
  v6[3] = &unk_1001A3C98;
  v4 = newBackgroundContext;
  v7 = v4;
  v8 = &v9;
  [v4 performBlockAndWait:v6];
  LOBYTE(persistenceController) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return persistenceController;
}

- (void)communicationPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F0A8();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100084280;
    v11[3] = &unk_1001A4308;
    v12 = newBackgroundContext;
    v13 = handlerCopy;
    v10 = newBackgroundContext;
    [v10 performBlockAndWait:v11];
  }

  else
  {
    v10 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v10);
  }
}

- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F0E4();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000844E4;
    v14[3] = &unk_1001A5A90;
    v15 = dCopy;
    v16 = newBackgroundContext;
    v17 = handlerCopy;
    v13 = newBackgroundContext;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v13);
  }
}

- (id)getPrimaryiCloudCardDAVAccountIdentifierWithError:(id *)error
{
  v3 = objc_opt_new();
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  v5 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    childCardDAVAccountIdentifier = [aa_primaryAppleAccount childCardDAVAccountIdentifier];
  }

  else
  {
    v7 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10011F154();
    }

    childCardDAVAccountIdentifier = 0;
  }

  return childCardDAVAccountIdentifier;
}

- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F194();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000847DC;
    v15[3] = &unk_1001A5BF0;
    v16 = dCopy;
    stateCopy = state;
    v17 = handlerCopy;
    [persistenceController2 performBackgroundTaskAndWait:v15];

    v14 = v16;
  }

  else
  {
    v14 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F280();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100084ABC;
    v14[3] = &unk_1001A5A90;
    v15 = dCopy;
    v16 = newBackgroundContext;
    v17 = handlerCopy;
    v13 = newBackgroundContext;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)permitWebFilterURL:(id)l pageTitle:(id)title completionHandler:(id)handler
{
  lCopy = l;
  titleCopy = title;
  handlerCopy = handler;
  v11 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = lCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding URL to web filter whitelist: %@", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100084D84;
    v16[3] = &unk_1001A5C18;
    v19 = handlerCopy;
    v17 = lCopy;
    v18 = titleCopy;
    [persistenceController2 performBackgroundTaskAndWait:v16];

    v15 = v19;
  }

  else
  {
    v15 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (id)fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:(id)moc error:(id *)error
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
  mocCopy = moc;
  v12 = mocCopy;
  v13 = &v21;
  v14 = &v15;
  [mocCopy performBlockAndWait:v11];
  v6 = v16[5];
  if (!v6)
  {
    v7 = v22[5];
    v8 = STSafeErrorFromCoreDataError();
    *error = v8;

    v6 = v16[5];
  }

  v9 = v6;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([persistenceController hasStoreLoaded])
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v10 = [(STScreenTimeOrganizationController *)self fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:newBackgroundContext error:error];
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
      v15 = identifierCopy;
      v16 = v10;
      [newBackgroundContext performBlockAndWait:v14];
      v11 = [NSNumber numberWithBool:*(v19 + 24)];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v12 = *error;
      STSafeErrorFromCoreDataError();
      *error = v11 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)shouldAllowOneMoreMinuteForWebDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([persistenceController hasStoreLoaded])
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v10 = [(STScreenTimeOrganizationController *)self fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:newBackgroundContext error:error];
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
      v15 = domainCopy;
      v16 = v10;
      [newBackgroundContext performBlockAndWait:v14];
      v11 = [NSNumber numberWithBool:*(v19 + 24)];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v12 = *error;
      STSafeErrorFromCoreDataError();
      *error = v11 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  if ([persistenceController hasStoreLoaded])
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v10 = [(STScreenTimeOrganizationController *)self fetchUnexpiredOneMoreMinuteBlueprintsWithMoc:newBackgroundContext error:error];
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
      v15 = identifierCopy;
      v16 = v10;
      [newBackgroundContext performBlockAndWait:v14];
      v11 = [NSNumber numberWithBool:*(v19 + 24)];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v12 = *error;
      STSafeErrorFromCoreDataError();
      *error = v11 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getIsExplicitContentRestrictedAndReturnError:(id *)error
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100085DD8;
    v15[3] = &unk_1001A5B58;
    v10 = newBackgroundContext;
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
  if (error && !v12)
  {
    *error = v20[5];
    v12 = v26[5];
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

- (id)getIsWebContentRestrictedAndReturnError:(id *)error
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
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000864B0;
    v15[3] = &unk_1001A5B58;
    v10 = newBackgroundContext;
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
  if (error && !v12)
  {
    *error = v20[5];
    v12 = v26[5];
  }

  v13 = v12;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

- (void)enableWebContentFilterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enabling web content filter for local user", buf, 2u);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100086A9C;
    v10[3] = &unk_1001A5AB8;
    v11 = handlerCopy;
    [persistenceController2 performBackgroundTaskAndWait:v10];

    v9 = v11;
  }

  else
  {
    v9 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler
{
  modelCopy = model;
  dCopy = d;
  handlerCopy = handler;
  v11 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Applying introduction model for dsid: %@", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100086DB8;
    v16[3] = &unk_1001A2D58;
    v17 = dCopy;
    v18 = modelCopy;
    v19 = handlerCopy;
    [persistenceController2 performBackgroundTaskAndWait:v16];

    v15 = v17;
  }

  else
  {
    v15 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10011F858();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    newBackgroundContext = [persistenceController2 newBackgroundContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100087530;
    v14[3] = &unk_1001A5A90;
    v15 = dCopy;
    v16 = newBackgroundContext;
    v17 = handlerCopy;
    v13 = newBackgroundContext;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    v13 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)setLocationSharingModificationAllowed:(BOOL)allowed forDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10011FA54();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100087C10;
    v15[3] = &unk_1001A5C68;
    v16 = dCopy;
    v17 = handlerCopy;
    allowedCopy = allowed;
    [persistenceController2 performBackgroundTaskAndWait:v15];

    v14 = v16;
  }

  else
  {
    v14 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_new();
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  requestManager = [(STScreenTimeOrganizationController *)self requestManager];
  v9 = 0;
  [v5 triggerMigrationWithPersistenceController:persistenceController andRequestManager:requestManager outError:&v9];
  v8 = v9;

  handlerCopy[2](handlerCopy, v8);
}

- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = objc_opt_class();
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  [v8 restrictionsForUserDSID:dCopy persistenceController:persistenceController completionHandler:handlerCopy];
}

+ (void)restrictionsForUserDSID:(id)d persistenceController:(id)controller completionHandler:(id)handler
{
  dCopy = d;
  controllerCopy = controller;
  handlerCopy = handler;
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
  if ([dCopy intValue])
  {
    objc_storeStrong(v34 + 5, d);
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100088794;
    v29[3] = &unk_1001A5C90;
    v29[4] = buf;
    v29[5] = &v30;
    [controllerCopy performBackgroundTaskAndWait:v29];
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
    v24 = dCopy;
    v26 = buf;
    v27 = v18;
    v25 = handlerCopy;
    [STRestrictionsFetcher fetchRestrictionsForUserDSID:v21 persistenceController:controllerCopy completionHandler:v23];
  }

  else
  {
    v22 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10011FBB0(v31);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, *(v31[0] + 40));
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(buf, 8);
}

- (void)isCommunicationSafetyEnabledForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = objc_opt_class();
  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  [v8 isCommunicationSafetyEnabledForUserDSID:dCopy persistenceController:persistenceController completionHandler:handlerCopy];
}

+ (void)isCommunicationSafetyEnabledForUserDSID:(id)d persistenceController:(id)controller completionHandler:(id)handler
{
  dCopy = d;
  controllerCopy = controller;
  handlerCopy = handler;
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

  newBackgroundContext = [controllerCopy newBackgroundContext];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100088D70;
  v23[3] = &unk_1001A5CE0;
  v28 = v15;
  v19 = dCopy;
  v24 = v19;
  v20 = newBackgroundContext;
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

  handlerCopy[2](handlerCopy, *(v37 + 5), v31[5]);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(buf, 8);
}

- (BOOL)exportDatabaseToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = +[STLog diagnostics];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10011FC84();
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
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
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000891CC;
    v13[3] = &unk_1001A5D08;
    v16 = &v18;
    v17 = &v24;
    v14 = lCopy;
    selfCopy = self;
    [persistenceController2 performBackgroundTaskAndWait:v13];

    v11 = *(v25 + 24);
    if (error && (v25[3] & 1) == 0)
    {
      *error = v19[5];
      v11 = *(v25 + 24);
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else if (error)
  {
    [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)_writePlistForUser:(id)user url:(id)url error:(id *)error
{
  userCopy = user;
  urlCopy = url;
  v7 = objc_opt_new();
  dsid = [userCopy dsid];
  [v7 setObject:dsid forKeyedSubscript:@"dsid"];

  altDSID = [userCopy altDSID];
  [v7 setObject:altDSID forKeyedSubscript:@"altDSID"];

  appleID = [userCopy appleID];
  [v7 setObject:appleID forKeyedSubscript:@"appleID"];

  givenName = [userCopy givenName];
  [v7 setObject:givenName forKeyedSubscript:@"givenName"];

  familyName = [userCopy familyName];
  [v7 setObject:familyName forKeyedSubscript:@"familyName"];

  familyMemberType = [userCopy familyMemberType];
  [v7 setObject:familyMemberType forKeyedSubscript:@"familyMemberType"];

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isParent]);
  [v7 setObject:v14 forKeyedSubscript:@"isParent"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isFamilyOrganizer]);
  [v7 setObject:v15 forKeyedSubscript:@"isFamilyOrganizer"];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isManaged]);
  [v7 setObject:v16 forKeyedSubscript:@"isManaged"];

  isAppAndWebsiteActivityEnabled = [userCopy isAppAndWebsiteActivityEnabled];
  [v7 setObject:isAppAndWebsiteActivityEnabled forKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];

  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy syncingEnabled]);
  [v7 setObject:v18 forKeyedSubscript:@"syncingEnabled"];

  v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [userCopy communicationPolicy]);
  [v7 setObject:v19 forKeyedSubscript:@"communicationPolicy"];

  v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [userCopy communicationWhileLimitedPolicy]);
  [v7 setObject:v20 forKeyedSubscript:@"communicationWhileLimitedPolicy"];

  v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isCommunicationSafetyReceivingRestricted]);
  [v7 setObject:v21 forKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isCommunicationSafetySendingRestricted]);
  [v7 setObject:v22 forKeyedSubscript:@"isCommunicationSafetySendingRestricted"];

  v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isCommunicationSafetyNotificationEnabled]);
  [v7 setObject:v23 forKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];

  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isCommunicationSafetyAnalyticsEnabled]);
  [v7 setObject:v24 forKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];

  v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [userCopy isEyeReliefEnabled]);
  [v7 setObject:v25 forKeyedSubscript:@"isEyeReliefEnabled"];

  localSettings = [userCopy localSettings];
  dictionaryRepresentation = [localSettings dictionaryRepresentation];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dictionaryRepresentation, "count")}];
  v28 = v89;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:&v85];
  v29 = [v28 copy];

  [v7 setObject:v29 forKeyedSubscript:@"localSettings"];
  cloudSettings = [userCopy cloudSettings];
  dictionaryRepresentation2 = [cloudSettings dictionaryRepresentation];
  v32 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dictionaryRepresentation2, "count")}];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = v32;
  v33 = v32;
  [dictionaryRepresentation2 enumerateKeysAndObjectsUsingBlock:&v85];
  v34 = [v33 copy];

  [v7 setObject:v34 forKeyedSubscript:@"cloudSettings"];
  familySettings = [userCopy familySettings];
  dictionaryRepresentation3 = [familySettings dictionaryRepresentation];
  v37 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dictionaryRepresentation3, "count")}];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = v37;
  v38 = v37;
  [dictionaryRepresentation3 enumerateKeysAndObjectsUsingBlock:&v85];
  v39 = [v38 copy];

  [v7 setObject:v39 forKeyedSubscript:@"familySettings"];
  unmodeledManagingOrganizationSettings = [userCopy unmodeledManagingOrganizationSettings];
  dictionaryRepresentation4 = [unmodeledManagingOrganizationSettings dictionaryRepresentation];
  v42 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dictionaryRepresentation4, "count")}];
  v85 = _NSConcreteStackBlock;
  v86 = 3221225472;
  v87 = sub_10008B7B8;
  v88 = &unk_1001A5D80;
  v89 = v42;
  v43 = v42;
  [dictionaryRepresentation4 enumerateKeysAndObjectsUsingBlock:&v85];
  v44 = [v43 copy];

  v75 = v7;
  [v7 setObject:v44 forKeyedSubscript:@"unmodeledManagingOrganizationSettings"];

  v45 = [NSMutableArray alloc];
  userDeviceStates = [userCopy userDeviceStates];
  v76 = [v45 initWithCapacity:{objc_msgSend(userDeviceStates, "count")}];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  userDeviceStates2 = [userCopy userDeviceStates];
  v48 = [userDeviceStates2 countByEnumeratingWithState:&v81 objects:v91 count:16];
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
          objc_enumerationMutation(userDeviceStates2);
        }

        v52 = *(*(&v81 + 1) + 8 * i);
        device = [v52 device];

        if (device)
        {
          dictionaryRepresentation5 = [v52 dictionaryRepresentation];
          v55 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dictionaryRepresentation5, "count")}];
          v85 = _NSConcreteStackBlock;
          v86 = 3221225472;
          v87 = sub_10008B7B8;
          v88 = &unk_1001A5D80;
          v89 = v55;
          v56 = v55;
          [dictionaryRepresentation5 enumerateKeysAndObjectsUsingBlock:&v85];
          v57 = [v56 copy];

          [v76 addObject:v57];
        }
      }

      v49 = [userDeviceStates2 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v49);
  }

  v58 = [v76 copy];
  [v75 setObject:v58 forKeyedSubscript:@"userDeviceStates"];

  v59 = [NSMutableArray alloc];
  blueprints = [userCopy blueprints];
  v61 = [v59 initWithCapacity:{objc_msgSend(blueprints, "count")}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  blueprints2 = [userCopy blueprints];
  v63 = [blueprints2 countByEnumeratingWithState:&v77 objects:v90 count:16];
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
          objc_enumerationMutation(blueprints2);
        }

        dictionaryRepresentation6 = [*(*(&v77 + 1) + 8 * j) dictionaryRepresentation];
        v68 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dictionaryRepresentation6, "count")}];
        v85 = _NSConcreteStackBlock;
        v86 = 3221225472;
        v87 = sub_10008B7B8;
        v88 = &unk_1001A5D80;
        v89 = v68;
        v69 = v68;
        [dictionaryRepresentation6 enumerateKeysAndObjectsUsingBlock:&v85];
        v70 = [v69 copy];

        [v61 addObject:v70];
      }

      v64 = [blueprints2 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v64);
  }

  v71 = [v61 copy];
  [v75 setObject:v71 forKeyedSubscript:@"blueprints"];

  LOBYTE(v71) = [v75 writeToURL:urlCopy error:error];
  return v71;
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching last comm limits modification date for dsid: %{public}@", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008A100;
    v13[3] = &unk_1001A3EE0;
    v14 = dCopy;
    v15 = handlerCopy;
    [persistenceController2 performBackgroundTask:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching last modification date for dsid: %{public}@", buf, 0xCu);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008A4E4;
    v13[3] = &unk_1001A3EE0;
    v14 = dCopy;
    v15 = handlerCopy;
    [persistenceController2 performBackgroundTask:v13];

    v12 = v14;
  }

  else
  {
    v12 = [NSError errorWithDomain:STErrorDomain code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching managing guardian Apple IDs for the local user.", buf, 2u);
  }

  persistenceController = [(STScreenTimeOrganizationController *)self persistenceController];
  hasStoreLoaded = [persistenceController hasStoreLoaded];

  if (hasStoreLoaded)
  {
    persistenceController2 = [(STScreenTimeOrganizationController *)self persistenceController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008A958;
    v11[3] = &unk_1001A5AB8;
    v12 = handlerCopy;
    [persistenceController2 performBackgroundTaskAndWait:v11];

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

    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

- (void)didReceiveBlueprintPayload:(id)payload
{
  payloadCopy = payload;
  requestManager = [(STScreenTimeOrganizationController *)self requestManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008ADC0;
  v6[3] = &unk_1001A3A08;
  v6[4] = self;
  [requestManager persistBlueprintsFromBlueprintPayload:payloadCopy withCompletion:v6];
}

- (void)requestManager:(id)manager didPrepareRequestPayloads:(id)payloads reason:(id)reason
{
  payloadsCopy = payloads;
  v7 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = payloadsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Declaration manager did prepare declaration request payloads: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = payloadsCopy;
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
        requestManager = [(STScreenTimeOrganizationController *)self requestManager];
        [requestManager installFromRequest:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)requestManager:(id)manager didPrepareBlueprintPayloads:(id)payloads
{
  payloadsCopy = payloads;
  familyOrganizationController = [(STScreenTimeOrganizationController *)self familyOrganizationController];
  [familyOrganizationController sendPayloads:payloadsCopy];
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  settingsResultsController = [(STScreenTimeOrganizationController *)self settingsResultsController];

  if (settingsResultsController == contentCopy)
  {
    deviceStateDebouncer = [(STScreenTimeOrganizationController *)self deviceStateDebouncer];
  }

  else
  {
    organizationSettingsResultsController = [(STScreenTimeOrganizationController *)self organizationSettingsResultsController];

    if (organizationSettingsResultsController == contentCopy)
    {
      deviceStateDebouncer2 = [(STScreenTimeOrganizationController *)self deviceStateDebouncer];
      [deviceStateDebouncer2 bounce:0];
    }

    else
    {
      [(STScreenTimeOrganizationController *)self downtimeOverridesResultsController];
    }

    deviceStateDebouncer = [(STScreenTimeOrganizationController *)self blueprintDebouncer];
  }

  v8 = deviceStateDebouncer;
  [deviceStateDebouncer bounce:0];
}

- (void)debouncer:(id)debouncer didDebounce:(id)debounce
{
  debouncerCopy = debouncer;
  deviceStateDebouncer = [(STScreenTimeOrganizationController *)self deviceStateDebouncer];

  if (deviceStateDebouncer == debouncerCopy)
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
    blueprintDebouncer = [(STScreenTimeOrganizationController *)self blueprintDebouncer];

    v7 = debouncerCopy;
    if (blueprintDebouncer != debouncerCopy)
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

  v7 = debouncerCopy;
LABEL_12:
}

+ (void)postDiagnosticsServiceMessage:(id)message
{
  messageCopy = message;
  v4 = +[NSNotificationCenter defaultCenter];
  v6 = @"type";
  v7 = messageCopy;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"DiagnosticsService-Generic" object:0 userInfo:v5];
}

@end