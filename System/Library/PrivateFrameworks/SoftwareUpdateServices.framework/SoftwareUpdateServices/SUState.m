@interface SUState
+ (id)currentState;
+ (id)statePath;
+ (void)enableTesting;
- (BOOL)autoDownloadNeedsOneTimeRetry;
- (BOOL)mobileAssetSuspended;
- (BOOL)underExclusiveControl;
- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5;
- (NSArray)failedPatchBuildVersions;
- (NSDate)appliedTime;
- (NSDate)lastAutoDownloadDate;
- (NSDate)lastPendingSplatAlertDate;
- (NSDate)lastRecommendedUpdateDiscoveryDate;
- (NSDate)lastScanDate;
- (NSDate)lastSentOTAPostponedDate;
- (NSDate)scheduledAutoDownloadPolicyChangeTime;
- (NSDate)scheduledAutoDownloadWifiPeriodEndTime;
- (NSDate)scheduledManualDownloadWifiPeriodEndTime;
- (NSDictionary)mandatoryUpdateDict;
- (NSDictionary)unlockCallbacks;
- (NSDictionary)updateDiscoveryDates;
- (NSDictionary)updateFullyUnrampedDates;
- (NSError)failedToAutoInstallError;
- (NSMutableArray)rolledBackBuildVersions;
- (NSNumber)lastRecommendedUpdateInterval;
- (NSNumber)lastSpaceCleanupLevel;
- (NSString)description;
- (NSString)lastAssetAudience;
- (NSString)lastBuildWithStashKeybagCreated;
- (NSString)lastDeletedSUAssetID;
- (NSString)lastProductBuild;
- (NSString)lastProductType;
- (NSString)lastProductVersion;
- (NSString)lastProductVersionExtra;
- (NSString)lastRecommendedUpdateVersion;
- (NSString)lastReleaseType;
- (NSString)lastRollbackRecommendedBuildVersion;
- (NSString)lastSplatRestoreVersion;
- (SUCoreDescriptor)alternateLastScannedCoreDescriptor;
- (SUCoreDescriptor)preferredLastScannedCoreDescriptor;
- (SUDownload)lastDownload;
- (SUInstallPolicy)installPolicy;
- (SUManagedDeviceUpdateDelay)mdmDelay;
- (SURollbackDescriptor)lastRollbackDescriptor;
- (SUScanOptions)lastScannedDescriptorScanOptions;
- (SUState)init;
- (_SUAutoInstallOperationModel)lastAutoInstallOperationModel;
- (id)_stateAsDictionary;
- (void)_queue_addFailedPatchBuildVersion:(id)a3;
- (void)addFailedPatchBuildVersion:(id)a3;
- (void)addRolledBackBuildVersion:(id)a3;
- (void)load;
- (void)loadPersistedFailedPatchBuildVersions;
- (void)loadRolledBackBuildVersions;
- (void)persistFailedPatchBuildVersions;
- (void)persistRolledBackBuildVersions;
- (void)queue_addRolledBackBuildVersion:(id)a3;
- (void)resetAllHistory;
- (void)resetDownloadAndScanHistory;
- (void)save;
- (void)setAlternateLastScannedCoreDescriptor:(id)a3;
- (void)setAppliedTime:(id)a3;
- (void)setAutoDownloadNeedsOneTimeRetry:(BOOL)a3;
- (void)setDdmPersistedError:(id)a3;
- (void)setDdmPersistedErrorDescription:(id)a3;
- (void)setFailedPatchBuildVersions:(id)a3;
- (void)setFailedToAutoInstallError:(id)a3;
- (void)setInstallPolicy:(id)a3;
- (void)setLastAssetAudience:(id)a3;
- (void)setLastAutoDownloadDate:(id)a3;
- (void)setLastAutoInstallOperationModel:(id)a3;
- (void)setLastBuildWithStashKeybagCreated:(id)a3;
- (void)setLastDeletedSUAssetID:(id)a3;
- (void)setLastDownload:(id)a3;
- (void)setLastPendingSplatAlertDate:(id)a3;
- (void)setLastProductBuild:(id)a3;
- (void)setLastProductType:(id)a3;
- (void)setLastProductVersion:(id)a3;
- (void)setLastProductVersionExtra:(id)a3;
- (void)setLastRecommendedUpdateDiscoveryDate:(id)a3;
- (void)setLastRecommendedUpdateInterval:(id)a3;
- (void)setLastRecommendedUpdateVersion:(id)a3;
- (void)setLastReleaseType:(id)a3;
- (void)setLastRollbackDescriptor:(id)a3;
- (void)setLastRollbackRecommendedBuildVersion:(id)a3;
- (void)setLastScanDate:(id)a3;
- (void)setLastScannedDescriptorScanOptions:(id)a3;
- (void)setLastSentOTAPostponedDate:(id)a3;
- (void)setLastSpaceCleanupLevel:(id)a3;
- (void)setLastSplatRestoreVersion:(id)a3;
- (void)setMandatoryUpdateDict:(id)a3;
- (void)setMdmDelay:(id)a3;
- (void)setMobileAssetSuspended:(BOOL)a3;
- (void)setPreferredLastScannedCoreDescriptor:(id)a3;
- (void)setScheduledAutoDownloadPolicyChangeTime:(id)a3;
- (void)setScheduledAutoDownloadWifiPeriodEndTime:(id)a3;
- (void)setScheduledManualDownloadWifiPeriodEndTime:(id)a3;
- (void)setUnderExclusiveControl:(BOOL)a3;
- (void)setUnlockCallbacks:(id)a3;
- (void)setUpdateDiscoveryDates:(id)a3;
- (void)setUpdateFullyUnrampedDates:(id)a3;
@end

@implementation SUState

+ (void)enableTesting
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v3 = [v2 removeItemAtPath:@"/tmp/softwareupdateservicesd.plist" error:&v12];
  v4 = v12;

  SULogInfo(@"[SUState] removed the testing state file: %d (%@)", v5, v6, v7, v8, v9, v10, v11, v3);
  __TESTING = 1;
}

+ (id)statePath
{
  if (__TESTING == 1)
  {
    v8 = @"/tmp/softwareupdateservicesd.plist";
    SULogInfo(@"[SUState] (%s) TESTING!!! Using %@", a2, v2, v3, v4, v5, v6, v7, "+[SUState statePath]");
  }

  else
  {
    v9 = +[SUUtility systemContainerURL];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CCACA8];
      v20 = [v9 path];
      v8 = [v11 stringWithFormat:@"%@%@"];

      if (!v8)
      {
        SULogInfo(@"Failed to create state file path", v12, v13, v14, v15, v16, v17, v18, v20);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (SUState)init
{
  v50.receiver = self;
  v50.super_class = SUState;
  v2 = [(SUState *)&v50 init];
  v3 = v2;
  if (v2)
  {
    lastDownload = v2->_lastDownload;
    v2->_lastDownload = 0;

    lastScannedDescriptorScanOptions = v3->_lastScannedDescriptorScanOptions;
    v3->_lastScannedDescriptorScanOptions = 0;

    failedPatchBuildVersions = v3->_failedPatchBuildVersions;
    v3->_failedPatchBuildVersions = 0;

    scheduledManualDownloadWifiPeriodEndTime = v3->_scheduledManualDownloadWifiPeriodEndTime;
    v3->_scheduledManualDownloadWifiPeriodEndTime = 0;

    scheduledAutoDownloadPolicyChangeTime = v3->_scheduledAutoDownloadPolicyChangeTime;
    v3->_scheduledAutoDownloadPolicyChangeTime = 0;

    lastScanDate = v3->_lastScanDate;
    v3->_lastScanDate = 0;

    lastAutoDownloadDate = v3->_lastAutoDownloadDate;
    v3->_lastAutoDownloadDate = 0;

    scheduledAutoDownloadWifiPeriodEndTime = v3->_scheduledAutoDownloadWifiPeriodEndTime;
    v3->_scheduledAutoDownloadWifiPeriodEndTime = 0;

    v3->_autoDownloadNeedsOneTimeRetry = 0;
    lastProductVersion = v3->_lastProductVersion;
    v3->_lastProductVersion = 0;

    lastProductVersionExtra = v3->_lastProductVersionExtra;
    v3->_lastProductVersionExtra = 0;

    lastProductBuild = v3->_lastProductBuild;
    v3->_lastProductBuild = 0;

    lastProductType = v3->_lastProductType;
    v3->_lastProductType = 0;

    lastReleaseType = v3->_lastReleaseType;
    v3->_lastReleaseType = 0;

    unlockCallbacks = v3->_unlockCallbacks;
    v3->_unlockCallbacks = 0;

    lastAutoInstallOperationModel = v3->_lastAutoInstallOperationModel;
    v3->_lastAutoInstallOperationModel = 0;

    mdmDelay = v3->_mdmDelay;
    v3->_mdmDelay = 0;

    installPolicy = v3->_installPolicy;
    v3->_installPolicy = 0;

    mandatoryUpdateDict = v3->_mandatoryUpdateDict;
    v3->_mandatoryUpdateDict = 0;

    rolledBackBuildVersions = v3->_rolledBackBuildVersions;
    v3->_rolledBackBuildVersions = 0;

    lastRollbackRecommendedBuildVersion = v3->_lastRollbackRecommendedBuildVersion;
    v3->_lastRollbackRecommendedBuildVersion = 0;

    lastDeletedSUAssetID = v3->_lastDeletedSUAssetID;
    v3->_lastDeletedSUAssetID = 0;

    lastAssetAudience = v3->_lastAssetAudience;
    v3->_lastAssetAudience = 0;

    appliedTime = v3->_appliedTime;
    v3->_appliedTime = 0;

    updateDiscoveryDates = v3->_updateDiscoveryDates;
    v3->_updateDiscoveryDates = 0;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.softwareupdateservicesd.stateQueue", v28);
    stateQueue = v3->_stateQueue;
    v3->_stateQueue = v29;

    v31 = objc_alloc(MEMORY[0x277D64480]);
    v32 = v3->_stateQueue;
    v33 = +[SUState statePath];
    v34 = [v31 initWithDispatchQueue:v32 withPersistencePath:v33 forPolicyVersion:@"1.0"];
    persistedState = v3->_persistedState;
    v3->_persistedState = v34;

    preferredLastScannedCoreDescriptor = v3->_preferredLastScannedCoreDescriptor;
    v3->_preferredLastScannedCoreDescriptor = 0;

    alternateLastScannedCoreDescriptor = v3->_alternateLastScannedCoreDescriptor;
    v3->_alternateLastScannedCoreDescriptor = 0;

    ddmPersistedError = v3->_ddmPersistedError;
    v3->_ddmPersistedError = 0;

    v3->_underExclusiveControl = 0;
    lastSplatRestoreVersion = v3->_lastSplatRestoreVersion;
    v3->_lastSplatRestoreVersion = 0;

    lastRollbackDescriptor = v3->_lastRollbackDescriptor;
    v3->_lastRollbackDescriptor = 0;

    lastRecommendedUpdateVersion = v3->_lastRecommendedUpdateVersion;
    v3->_lastRecommendedUpdateVersion = 0;

    v42 = v3->_lastRecommendedUpdateVersion;
    v3->_lastRecommendedUpdateVersion = 0;

    lastRecommendedUpdateDiscoveryDate = v3->_lastRecommendedUpdateDiscoveryDate;
    v3->_lastRecommendedUpdateDiscoveryDate = 0;

    lastSentOTAPostponedDate = v3->_lastSentOTAPostponedDate;
    v3->_lastSentOTAPostponedDate = 0;

    lastBuildWithStashKeybagCreated = v3->_lastBuildWithStashKeybagCreated;
    v3->_lastBuildWithStashKeybagCreated = 0;

    v3->_mobileAssetSuspended = 0;
    failedToAutoInstallError = v3->_failedToAutoInstallError;
    v3->_failedToAutoInstallError = 0;

    lastSpaceCleanupLevel = v3->_lastSpaceCleanupLevel;
    v3->_lastSpaceCleanupLevel = 0;

    lastPendingSplatAlertDate = v3->_lastPendingSplatAlertDate;
    v3->_lastPendingSplatAlertDate = 0;

    [(SUState *)v3 load];
  }

  return v3;
}

+ (id)currentState
{
  if (currentState_pred != -1)
  {
    +[SUState currentState];
  }

  v3 = currentState___instance;

  return v3;
}

uint64_t __23__SUState_currentState__block_invoke()
{
  currentState___instance = objc_alloc_init(SUState);

  return MEMORY[0x2821F96F8]();
}

- (void)resetDownloadAndScanHistory
{
  [(SUState *)self setFailedPatchBuildVersions:0];
  [(SUState *)self setScheduledManualDownloadWifiPeriodEndTime:0];
  [(SUState *)self setScheduledAutoDownloadWifiPeriodEndTime:0];
  [(SUState *)self setScheduledAutoDownloadPolicyChangeTime:0];
  [(SUState *)self setLastScanDate:0];
  [(SUState *)self setLastAutoDownloadDate:0];
  [(SUState *)self setAutoDownloadNeedsOneTimeRetry:0];
  [(SUState *)self setLastDownload:0];
  [(SUState *)self setLastAutoInstallOperationModel:0];
  [(SUState *)self setUnlockCallbacks:0];
  [(SUState *)self setMdmDelay:0];
  [(SUState *)self setInstallPolicy:0];
  [(SUState *)self setMandatoryUpdateDict:0];
  [(SUState *)self setLastDeletedSUAssetID:0];
  [(SUState *)self setLastAssetAudience:0];
  [(SUState *)self setUpdateDiscoveryDates:0];
  [(SUState *)self setUpdateFullyUnrampedDates:0];
  [(SUState *)self setLastRecommendedUpdateVersion:0];
  [(SUState *)self setLastRecommendedUpdateInterval:0];
  [(SUState *)self setLastRecommendedUpdateDiscoveryDate:0];
  [(SUState *)self setLastSentOTAPostponedDate:0];
  [(SUState *)self setDdmPersistedError:0];
  [(SUState *)self setPreferredLastScannedCoreDescriptor:0];
  [(SUState *)self setAlternateLastScannedCoreDescriptor:0];
  [(SUState *)self setLastBuildWithStashKeybagCreated:0];
  [(SUState *)self setFailedToAutoInstallError:0];
  [(SUState *)self setLastSpaceCleanupLevel:0];

  [(SUState *)self setLastPendingSplatAlertDate:0];
}

- (void)resetAllHistory
{
  [(SUState *)self resetDownloadAndScanHistory];
  [(SUState *)self setLastProductVersion:0];
  [(SUState *)self setLastProductVersionExtra:0];
  [(SUState *)self setLastProductBuild:0];
  [(SUState *)self setLastProductType:0];
  [(SUState *)self setLastReleaseType:0];
  [(SUState *)self setAppliedTime:0];
  [(SUState *)self setLastRollbackDescriptor:0];

  [(SUState *)self setMobileAssetSuspended:0];
}

- (id)_stateAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setSafeObject:self->_lastDownload forKey:@"SULastDownload"];
  [v3 setSafeObject:self->_scheduledManualDownloadWifiPeriodEndTime forKey:@"SUManualDownloadWifiPeriodEndTime"];
  [v3 setSafeObject:self->_failedPatchBuildVersions forKey:@"SUFailedPatchBuildVersionsKey"];
  [v3 setSafeObject:self->_scheduledAutoDownloadWifiPeriodEndTime forKey:@"SUAutoDownloadWifiPeriodEndTime"];
  [v3 setSafeObject:self->_scheduledAutoDownloadPolicyChangeTime forKey:@"SUAutoDownloadPolicyChangeTime"];
  [v3 setSafeObject:self->_lastScanDate forKey:@"SULastScanDate"];
  [v3 setSafeObject:self->_lastAutoDownloadDate forKey:@"SULastAutoDownloadDate"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_autoDownloadNeedsOneTimeRetry];
  [v3 setSafeObject:v4 forKey:@"SUAutoDownloadNeedsOneTimeRetry"];

  [v3 setSafeObject:self->_lastProductVersion forKey:@"SULastProductVersionKey"];
  [v3 setSafeObject:self->_lastProductVersionExtra forKey:@"SULastProductVersionExtraKey"];
  [v3 setSafeObject:self->_lastProductBuild forKey:@"SULastProductBuildKey"];
  [v3 setSafeObject:self->_lastProductType forKey:@"SULastProductTypeKey"];
  [v3 setSafeObject:self->_lastReleaseType forKey:@"SULastReleaseTypeKey"];
  [v3 setSafeObject:self->_unlockCallbacks forKey:@"SUUnlockCallbacksKey"];
  [v3 setSafeObject:self->_lastAutoInstallOperationModel forKey:@"SULastAutoInstallOperationModel"];
  [v3 setSafeObject:self->_mdmDelay forKey:@"SUManagedDeviceDelay"];
  [v3 setSafeObject:self->_installPolicy forKey:@"SUInstallPolicy"];
  [v3 setSafeObject:self->_mandatoryUpdateDict forKey:@"SUMandatorUpdateDict"];
  [v3 setSafeObject:self->_lastRollbackRecommendedBuildVersion forKey:@"LastRollbackRecommendationBuildVersion"];
  [v3 setSafeObject:self->_rolledBackBuildVersions forKey:@"SURolledBackBuildVersions"];
  [v3 setSafeObject:self->_lastDeletedSUAssetID forKey:@"SULastDeletedSUAssetID"];
  [v3 setSafeObject:self->_lastAssetAudience forKey:@"SULastAssetAudience"];
  [v3 setSafeObject:self->_appliedTime forKey:@"SUAppliedTime"];
  [v3 setSafeObject:self->_updateDiscoveryDates forKey:@"SUDiscoveryDates"];
  [v3 setSafeObject:self->_updateFullyUnrampedDates forKey:@"SUFullyUnrampedDates"];
  [v3 setSafeObject:self->_ddmPersistedError forKey:@"SUDDMPersistedError"];
  [v3 setSafeObject:self->_preferredLastScannedCoreDescriptor forKey:@"SUPreferredLastScannedCoreDescriptor"];
  [v3 setSafeObject:self->_alternateLastScannedCoreDescriptor forKey:@"SUAlternateLastScannedCoreDescriptor"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_underExclusiveControl];
  [v3 setSafeObject:v5 forKey:@"SUUnderExclusiveControl"];

  [v3 setSafeObject:self->_lastSplatRestoreVersion forKey:@"SULastSplatRestoreVersion"];
  [v3 setSafeObject:self->_lastRollbackDescriptor forKey:@"SULastRollbackDescriptor"];
  [v3 setSafeObject:self->_lastRecommendedUpdateVersion forKey:@"LastRecommendedUpdateVersion"];
  [v3 setSafeObject:self->_lastRecommendedUpdateInterval forKey:@"LastRecommendedUpdateInterval"];
  [v3 setSafeObject:self->_lastRecommendedUpdateDiscoveryDate forKey:@"LastRecommendedUpdateDiscoveryDate"];
  [v3 setSafeObject:self->_lastSentOTAPostponedDate forKey:@"LastSentOTAPostponedDate"];
  [v3 setSafeObject:self->_lastBuildWithStashKeybagCreated forKey:@"LastBuildWithStashKeybagCreated"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_mobileAssetSuspended];
  [v3 setSafeObject:v6 forKey:@"MobileAssetSuspended"];

  [v3 setSafeObject:self->_lastSpaceCleanupLevel forKey:@"LastSpaceCleanupLevel"];
  [v3 setSafeObject:self->_lastPendingSplatAlertDate forKey:@"LastPendingSplatAlertDate"];

  return v3;
}

- (void)load
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __15__SUState_load__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __15__SUState_load__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 344) loadPersistedState];
  v2 = MEMORY[0x277D64400];
  v3 = [*(*(a1 + 32) + 344) persistedPolicyVersion];
  LOBYTE(v2) = [v2 stringIsEqual:v3 to:@"1.0"];

  if ((v2 & 1) == 0)
  {
    SULogInfo(@"Persisted state policy version does not match current policy, removing persisted state.", v4, v5, v6, v7, v8, v9, v10, v82);
    [*(*(a1 + 32) + 344) removePersistedState];
    [*(*(a1 + 32) + 344) loadPersistedState];
  }

  v11 = *(a1 + 32);
  v12 = [v11[43] secureCodedObjectForKey:@"SULastDownload" ofClass:objc_opt_class()];
  [v11 setLastDownload:v12];

  v13 = *(a1 + 32);
  v14 = [v13[43] dateForKey:@"SUManualDownloadWifiPeriodEndTime"];
  [v13 setScheduledManualDownloadWifiPeriodEndTime:v14];

  v15 = *(a1 + 32);
  v16 = [v15[43] dateForKey:@"SUAutoDownloadWifiPeriodEndTime"];
  [v15 setScheduledAutoDownloadWifiPeriodEndTime:v16];

  v17 = *(a1 + 32);
  v18 = [v17[43] dateForKey:@"SUAutoDownloadPolicyChangeTime"];
  [v17 setScheduledAutoDownloadPolicyChangeTime:v18];

  v19 = *(a1 + 32);
  v20 = [v19[43] dateForKey:@"SULastScanDate"];
  [v19 setLastScanDate:v20];

  v21 = *(a1 + 32);
  v22 = [v21[43] dateForKey:@"SULastAutoDownloadDate"];
  [v21 setLastAutoDownloadDate:v22];

  [*(a1 + 32) setAutoDownloadNeedsOneTimeRetry:{objc_msgSend(*(*(a1 + 32) + 344), "BOOLeanForKey:", @"SUAutoDownloadNeedsOneTimeRetry"}];
  v23 = *(a1 + 32);
  v24 = [v23[43] stringForKey:@"SULastProductVersionKey"];
  [v23 setLastProductVersion:v24];

  v25 = *(a1 + 32);
  v26 = [v25[43] stringForKey:@"SULastProductVersionExtraKey"];
  [v25 setLastProductVersionExtra:v26];

  v27 = *(a1 + 32);
  v28 = [v27[43] stringForKey:@"SULastProductBuildKey"];
  [v27 setLastProductBuild:v28];

  v29 = *(a1 + 32);
  v30 = [v29[43] stringForKey:@"SULastProductTypeKey"];
  [v29 setLastProductType:v30];

  v31 = *(a1 + 32);
  v32 = [v31[43] stringForKey:@"SULastReleaseTypeKey"];
  [v31 setLastReleaseType:v32];

  v33 = *(a1 + 32);
  v34 = [v33[43] dictionaryForKey:@"SUUnlockCallbacksKey"];
  [v33 setUnlockCallbacks:v34];

  v35 = *(a1 + 32);
  v36 = [v35[43] secureCodedObjectForKey:@"SULastAutoInstallOperationModel" ofClass:objc_opt_class()];
  [v35 setLastAutoInstallOperationModel:v36];

  v37 = *(a1 + 32);
  v38 = [v37[43] secureCodedObjectForKey:@"SUManagedDeviceDelay" ofClass:objc_opt_class()];
  [v37 setMdmDelay:v38];

  v39 = *(a1 + 32);
  v40 = [v39[43] secureCodedObjectForKey:@"SUInstallPolicy" ofClass:objc_opt_class()];
  [v39 setInstallPolicy:v40];

  v41 = *(a1 + 32);
  v42 = [v41[43] dictionaryForKey:@"SUMandatorUpdateDict"];
  [v41 setMandatoryUpdateDict:v42];

  v43 = *(a1 + 32);
  v44 = [v43[43] stringForKey:@"LastRollbackRecommendationBuildVersion"];
  [v43 setLastRollbackRecommendedBuildVersion:v44];

  [*(a1 + 32) loadRolledBackBuildVersions];
  v45 = *(a1 + 32);
  v46 = [v45[43] stringForKey:@"SULastDeletedSUAssetID"];
  [v45 setLastDeletedSUAssetID:v46];

  v47 = *(a1 + 32);
  v48 = [v47[43] stringForKey:@"SULastAssetAudience"];
  [v47 setLastAssetAudience:v48];

  v49 = *(a1 + 32);
  v50 = [v49[43] dateForKey:@"SUAppliedTime"];
  [v49 setAppliedTime:v50];

  [*(a1 + 32) loadPersistedFailedPatchBuildVersions];
  v51 = *(a1 + 32);
  v52 = [v51[43] dictionaryForKey:@"SUDiscoveryDates"];
  [v51 setUpdateDiscoveryDates:v52];

  v53 = *(a1 + 32);
  v54 = [v53[43] dictionaryForKey:@"SUFullyUnrampedDates"];
  [v53 setUpdateFullyUnrampedDates:v54];

  v55 = *(a1 + 32);
  v56 = [v55[43] dictionaryForKey:@"SUDDMPersistedError"];
  [v55 setDdmPersistedError:v56];

  v57 = *(a1 + 32);
  v58 = [v57[43] secureCodedObjectForKey:@"SUPreferredLastScannedCoreDescriptor" ofClass:objc_opt_class()];
  [v57 setPreferredLastScannedCoreDescriptor:v58];

  v59 = *(a1 + 32);
  v60 = [v59[43] secureCodedObjectForKey:@"SUAlternateLastScannedCoreDescriptor" ofClass:objc_opt_class()];
  [v59 setAlternateLastScannedCoreDescriptor:v60];

  v61 = *(a1 + 32);
  v62 = [v61[43] secureCodedObjectForKey:@"SULastScannedDescriptorScanOptionsKey" ofClass:objc_opt_class()];
  [v61 setLastScannedDescriptorScanOptions:v62];

  [*(a1 + 32) setUnderExclusiveControl:{objc_msgSend(*(*(a1 + 32) + 344), "BOOLeanForKey:", @"SUUnderExclusiveControl"}];
  v63 = *(a1 + 32);
  v64 = [v63[43] stringForKey:@"SULastSplatRestoreVersion"];
  [v63 setLastSplatRestoreVersion:v64];

  v65 = *(a1 + 32);
  v66 = [v65[43] secureCodedObjectForKey:@"SULastRollbackDescriptor" ofClass:objc_opt_class()];
  [v65 setLastRollbackDescriptor:v66];

  v67 = *(a1 + 32);
  v68 = [v67[43] stringForKey:@"LastRecommendedUpdateVersion"];
  [v67 setLastRecommendedUpdateVersion:v68];

  v69 = *(a1 + 32);
  v70 = [v69[43] secureCodedObjectForKey:@"LastRecommendedUpdateInterval" ofClass:objc_opt_class()];
  [v69 setLastRecommendedUpdateInterval:v70];

  v71 = *(a1 + 32);
  v72 = [v71[43] dateForKey:@"LastRecommendedUpdateDiscoveryDate"];
  [v71 setLastRecommendedUpdateDiscoveryDate:v72];

  v73 = *(a1 + 32);
  v74 = [v73[43] dateForKey:@"LastSentOTAPostponedDate"];
  [v73 setLastSentOTAPostponedDate:v74];

  v75 = *(a1 + 32);
  v76 = [v75[43] stringForKey:@"LastBuildWithStashKeybagCreated"];
  [v75 setLastBuildWithStashKeybagCreated:v76];

  [*(a1 + 32) setMobileAssetSuspended:{objc_msgSend(*(*(a1 + 32) + 344), "BOOLeanForKey:", @"MobileAssetSuspended"}];
  v77 = *(a1 + 32);
  v78 = [v77[43] secureCodedObjectForKey:@"SUFailedToAutoInstallError" ofClass:objc_opt_class()];
  [v77 setFailedToAutoInstallError:v78];

  v79 = *(a1 + 32);
  v80 = [v79[43] secureCodedObjectForKey:@"LastSpaceCleanupLevel" ofClass:objc_opt_class()];
  [v79 setLastSpaceCleanupLevel:v80];

  v81 = *(a1 + 32);
  v83 = [v81[43] dateForKey:@"LastPendingSplatAlertDate"];
  [v81 setLastPendingSplatAlertDate:v83];
}

- (void)save
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __15__SUState_save__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

void __15__SUState_save__block_invoke(uint64_t a1)
{
  if (+[SUUtility isDaemon])
  {
    v2 = +[SUState statePath];
    v25 = v2;
    if (v2)
    {
      v10 = [v2 stringByDeletingLastPathComponent];
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [v11 fileExistsAtPath:v10];
      v13 = MEMORY[0x277CCA180];
      if ((v12 & 1) == 0)
      {
        v24 = *MEMORY[0x277CCA180];
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:&unk_287B6F628];
        [v11 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:v14 error:0];
      }

      v15 = [v11 fileExistsAtPath:v25];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 8) forKey:@"SULastDownload" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 240) forKey:@"SUPreferredLastScannedCoreDescriptor" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 248) forKey:@"SUAlternateLastScannedCoreDescriptor" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 24) forKey:@"SULastScannedDescriptorScanOptionsKey" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 32) forKey:@"SUManualDownloadWifiPeriodEndTime" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 40) forKey:@"SUAutoDownloadWifiPeriodEndTime" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 48) forKey:@"SUAutoDownloadPolicyChangeTime" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 56) forKey:@"SULastScanDate" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 64) forKey:@"SULastAutoDownloadDate" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistBoolean:*(*(a1 + 32) + 72) forKey:@"SUAutoDownloadNeedsOneTimeRetry" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 80) forKey:@"SULastProductVersionKey" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 104) forKey:@"SULastProductVersionExtraKey" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 88) forKey:@"SULastProductBuildKey" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 96) forKey:@"SULastProductTypeKey" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 112) forKey:@"SULastReleaseTypeKey" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDictionary:*(*(a1 + 32) + 128) forKey:@"SUUnlockCallbacksKey" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 160) forKey:@"SULastAutoInstallOperationModel" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 168) forKey:@"SUManagedDeviceDelay" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 176) forKey:@"SUInstallPolicy" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDictionary:*(*(a1 + 32) + 136) forKey:@"SUMandatorUpdateDict" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 152) forKey:@"LastRollbackRecommendationBuildVersion" shouldPersist:0];
      [*(a1 + 32) persistRolledBackBuildVersions];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 184) forKey:@"SULastDeletedSUAssetID" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 192) forKey:@"SULastAssetAudience" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 200) forKey:@"SUAppliedTime" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistBoolean:*(*(a1 + 32) + 352) forKey:@"SUUnderExclusiveControl" shouldPersist:0];
      [*(a1 + 32) persistFailedPatchBuildVersions];
      [*(*(a1 + 32) + 344) persistDictionary:*(*(a1 + 32) + 216) forKey:@"SUDiscoveryDates" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDictionary:*(*(a1 + 32) + 224) forKey:@"SUFullyUnrampedDates" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 120) forKey:@"SULastSplatRestoreVersion" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 232) forKey:@"SULastRollbackDescriptor" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 272) forKey:@"LastRecommendedUpdateVersion" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 280) forKey:@"LastRecommendedUpdateInterval" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 288) forKey:@"LastRecommendedUpdateDiscoveryDate" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDictionary:*(*(a1 + 32) + 264) forKey:@"SUDDMPersistedError" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 296) forKey:@"LastSentOTAPostponedDate" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistString:*(*(a1 + 32) + 304) forKey:@"LastBuildWithStashKeybagCreated" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistBoolean:*(*(a1 + 32) + 312) forKey:@"MobileAssetSuspended" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 320) forKey:@"SUFailedToAutoInstallError" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistSecureCodedObject:*(*(a1 + 32) + 328) forKey:@"LastSpaceCleanupLevel" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistDate:*(*(a1 + 32) + 336) forKey:@"LastPendingSplatAlertDate" shouldPersist:0];
      [*(*(a1 + 32) + 344) persistState];
      if ((v15 & 1) == 0)
      {
        v24 = *v13;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:&unk_287B6F628];
        [v11 setAttributes:v23 ofItemAtPath:v25 error:0];
      }

      SULogDebug(@"Saved software update state", v16, v17, v18, v19, v20, v21, v22, v24);
    }

    else
    {
      SULogInfo(@"Unable to retrieve state file path", v3, v4, v5, v6, v7, v8, v9, v24);
    }
  }
}

- (void)persistFailedPatchBuildVersions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"SUFailedPatchBuildVersionOneKey";
  v13[1] = @"SUFailedPatchBuildVersionTwoKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  failedPatchBuildVersions = self->_failedPatchBuildVersions;
  if (failedPatchBuildVersions)
  {
    if ([(NSArray *)failedPatchBuildVersions count])
    {
      v5 = 0;
      do
      {
        if ([v3 count] <= v5)
        {
          break;
        }

        persistedState = self->_persistedState;
        v7 = [(NSArray *)self->_failedPatchBuildVersions objectAtIndexedSubscript:v5];
        v8 = [v3 objectAtIndexedSubscript:v5];
        [(SUCorePersistedState *)persistedState persistString:v7 forKey:v8 shouldPersist:0];

        ++v5;
      }

      while ([(NSArray *)self->_failedPatchBuildVersions count]> v5);
    }
  }

  else if ([v3 count])
  {
    v9 = 0;
    do
    {
      v10 = self->_persistedState;
      v11 = [v3 objectAtIndexedSubscript:v9];
      [(SUCorePersistedState *)v10 persistString:0 forKey:v11 shouldPersist:0];

      ++v9;
    }

    while ([v3 count] > v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)loadPersistedFailedPatchBuildVersions
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = @"SUFailedPatchBuildVersionOneKey";
  v22[1] = @"SUFailedPatchBuildVersionTwoKey";
  [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(SUCorePersistedState *)self->_persistedState stringForKey:*(*(&v17 + 1) + 8 * v7)];
        [(SUState *)self _queue_addFailedPatchBuildVersion:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  SULogInfo(@"Loaded failed patch build versions: %@", v9, v10, v11, v12, v13, v14, v15, self->_failedPatchBuildVersions);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)persistRolledBackBuildVersions
{
  v9[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"RolledBackBuildVersionsOne";
  v9[1] = @"RolledBackBuildVersionsTwo";
  v9[2] = @"RolledBackBuildVersionsThree";
  v9[3] = @"RolledBackBuildVersionsFour";
  v9[4] = @"RolledBackBuildVersionsFive";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];
  if ([(NSMutableArray *)self->_rolledBackBuildVersions count])
  {
    v4 = 0;
    do
    {
      if ([v3 count] <= v4)
      {
        break;
      }

      persistedState = self->_persistedState;
      v6 = [(NSMutableArray *)self->_rolledBackBuildVersions objectAtIndexedSubscript:v4];
      v7 = [v3 objectAtIndexedSubscript:v4];
      [(SUCorePersistedState *)persistedState persistString:v6 forKey:v7 shouldPersist:0];

      ++v4;
    }

    while ([(NSMutableArray *)self->_rolledBackBuildVersions count]> v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadRolledBackBuildVersions
{
  v24[5] = *MEMORY[0x277D85DE8];
  if (!self->_rolledBackBuildVersions)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rolledBackBuildVersions = self->_rolledBackBuildVersions;
    self->_rolledBackBuildVersions = v3;
  }

  v24[0] = @"RolledBackBuildVersionsOne";
  v24[1] = @"RolledBackBuildVersionsTwo";
  v24[2] = @"RolledBackBuildVersionsThree";
  v24[3] = @"RolledBackBuildVersionsFour";
  v24[4] = @"RolledBackBuildVersionsFive";
  [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SUCorePersistedState *)self->_persistedState stringForKey:*(*(&v19 + 1) + 8 * v9)];
        [(SUState *)self queue_addRolledBackBuildVersion:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  SULogInfo(@"Loaded rolled back build versions: %@", v11, v12, v13, v14, v15, v16, v17, self->_rolledBackBuildVersions);
  v18 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUState *)self preferredLastScannedCoreDescriptor];
  v53 = [v3 stringWithFormat:@"%@", v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(SUState *)self alternateLastScannedCoreDescriptor];
  v54 = [v5 stringWithFormat:@"%@", v6];

  v31 = MEMORY[0x277CCACA8];
  v50 = [(SUState *)self lastDownload];
  v52 = [(SUState *)self failedPatchBuildVersions];
  v7 = MEMORY[0x277CCA968];
  v37 = [(SUState *)self scheduledManualDownloadWifiPeriodEndTime];
  v51 = [v7 localizedStringFromDate:v37 dateStyle:1 timeStyle:1];
  v8 = MEMORY[0x277CCA968];
  v36 = [(SUState *)self scheduledAutoDownloadWifiPeriodEndTime];
  v49 = [v8 localizedStringFromDate:v36 dateStyle:1 timeStyle:1];
  v9 = MEMORY[0x277CCA968];
  v35 = [(SUState *)self scheduledAutoDownloadPolicyChangeTime];
  v46 = [v9 localizedStringFromDate:v35 dateStyle:1 timeStyle:1];
  v10 = MEMORY[0x277CCA968];
  v34 = [(SUState *)self lastScanDate];
  v48 = [v10 localizedStringFromDate:v34 dateStyle:1 timeStyle:1];
  v11 = MEMORY[0x277CCA968];
  v33 = [(SUState *)self lastAutoDownloadDate];
  v45 = [v11 localizedStringFromDate:v33 dateStyle:1 timeStyle:1];
  if ([(SUState *)self autoDownloadNeedsOneTimeRetry])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v30 = v12;
  v41 = [(SUState *)self lastProductVersion];
  v47 = [(SUState *)self lastProductVersionExtra];
  v44 = [(SUState *)self lastProductBuild];
  v39 = [(SUState *)self lastProductType];
  v43 = [(SUState *)self lastReleaseType];
  v28 = [(SUState *)self lastSplatRestoreVersion];
  v27 = [(SUState *)self lastAutoInstallOperationModel];
  v42 = [(SUState *)self mdmDelay];
  v40 = [(SUState *)self installPolicy];
  v26 = [(SUState *)self mandatoryUpdateDict];
  v38 = [(SUState *)self lastRollbackRecommendedBuildVersion];
  v25 = [(SUState *)self rolledBackBuildVersions];
  v13 = [(SUState *)self lastDeletedSUAssetID];
  v14 = [(SUState *)self lastAssetAudience];
  v15 = MEMORY[0x277CCA968];
  v29 = [(SUState *)self appliedTime];
  v16 = [v15 localizedStringFromDate:v29 dateStyle:1 timeStyle:1];
  if ([(SUState *)self underExclusiveControl])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [(SUState *)self lastRecommendedUpdateVersion];
  v24 = [(SUState *)self lastRecommendedUpdateInterval];
  v19 = [(SUState *)self lastRecommendedUpdateDiscoveryDate];
  v20 = [(SUState *)self updateDiscoveryDates];
  v21 = [(SUState *)self lastSpaceCleanupLevel];
  v22 = [(SUState *)self lastPendingSplatAlertDate];
  v32 = [v31 stringWithFormat:@"LastDownload: %@            \npreferredLastScannedCoreDescriptor: %@            \nalternateLastScannedCoreDescriptor: %@            \nFailedPatchBuildVersions: %@            \nScheduledManualDownloadWifiPeriodEndTime: %@            \nScheduledAutoDownloadWifiPeriodEndTime: %@            \nScheduledAutoDownloadPolicyChangeTime: %@            \nLastScanDate: %@            \nLastAutoDownloadDate: %@            \nNeedsOneTimeAutoDownloadRetry: %@            \nLastProductVersion: %@            \nLastProductVersionExtra: %@            \nLastProductBuild: %@            \nLastProductType: %@            \nLastReleaseType: %@            \nLastSplatRestoreVersion: %@            \nLastAutoInstallOperationModel: %@            \nManagedDeviceDelay: %@            \nInstallPolicy: %@            \nMandatoryUpdateDict: %@            \nLastRollbackRecommendedBuildVersion: %@            \rolledBackBuildVersions: %@            \nlastDeletedAssetID: %@            \nlastAssetAudience: %@            \nappliedSate: %@            \nunderExclusiveControl: %@            \nLastRecommendedUpdateVersion: %@            \nLastRecommendedUpdateInterval: %@            \nLastRecommendedUpdateDiscoveryDate: %@            \nUpdateDiscoveryDates: %@            \nLastSpaceCleanupLevel: %@            \nLastPendingSplatAlertDate: %@", v50, v53, v54, v52, v51, v49, v46, v48, v45, v30, v41, v47, v44, v39, v43, v28, v27, v42, v40, v26, v38, v25, v13, v14, v16, v17, v18, v24, v19, v20, v21, v22];

  return v32;
}

- (void)setLastDownload:(id)a3
{
  v4 = [a3 copy];
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__SUState_setLastDownload___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (SUDownload)lastDownload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__SUState_lastDownload__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastRecommendedUpdateVersion:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUState_setLastRecommendedUpdateVersion___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastRecommendedUpdateVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SUState_lastRecommendedUpdateVersion__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastRecommendedUpdateInterval:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SUState_setLastRecommendedUpdateInterval___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSNumber)lastRecommendedUpdateInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SUState_lastRecommendedUpdateInterval__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastRecommendedUpdateDiscoveryDate:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUState_setLastRecommendedUpdateDiscoveryDate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)lastRecommendedUpdateDiscoveryDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SUState_lastRecommendedUpdateDiscoveryDate__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastSentOTAPostponedDate:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUState_setLastSentOTAPostponedDate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)lastSentOTAPostponedDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SUState_lastSentOTAPostponedDate__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPreferredLastScannedCoreDescriptor:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUState_setPreferredLastScannedCoreDescriptor___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (SUCoreDescriptor)preferredLastScannedCoreDescriptor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SUState_preferredLastScannedCoreDescriptor__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAlternateLastScannedCoreDescriptor:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUState_setAlternateLastScannedCoreDescriptor___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (SUCoreDescriptor)alternateLastScannedCoreDescriptor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SUState_alternateLastScannedCoreDescriptor__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setUpdateDiscoveryDates:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUState_setUpdateDiscoveryDates___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDictionary)updateDiscoveryDates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SUState_updateDiscoveryDates__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setUpdateFullyUnrampedDates:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUState_setUpdateFullyUnrampedDates___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDictionary)updateFullyUnrampedDates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SUState_updateFullyUnrampedDates__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastScannedDescriptorScanOptions:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUState_setLastScannedDescriptorScanOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (SUScanOptions)lastScannedDescriptorScanOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SUState_lastScannedDescriptorScanOptions__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addFailedPatchBuildVersion:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUState_addFailedPatchBuildVersion___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)_queue_addFailedPatchBuildVersion:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v4 = v8;
  if (v8)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_failedPatchBuildVersions];
    [v5 addObject:v8];
    if ([v5 count] >= 3)
    {
      do
      {
        [v5 removeObjectAtIndex:0];
      }

      while ([v5 count] > 2);
    }

    v6 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    failedPatchBuildVersions = self->_failedPatchBuildVersions;
    self->_failedPatchBuildVersions = v6;

    v4 = v8;
  }
}

- (void)setFailedPatchBuildVersions:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUState_setFailedPatchBuildVersions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSArray)failedPatchBuildVersions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SUState_failedPatchBuildVersions__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setScheduledManualDownloadWifiPeriodEndTime:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SUState_setScheduledManualDownloadWifiPeriodEndTime___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)scheduledManualDownloadWifiPeriodEndTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SUState_scheduledManualDownloadWifiPeriodEndTime__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setScheduledAutoDownloadWifiPeriodEndTime:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SUState_setScheduledAutoDownloadWifiPeriodEndTime___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)scheduledAutoDownloadWifiPeriodEndTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SUState_scheduledAutoDownloadWifiPeriodEndTime__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setScheduledAutoDownloadPolicyChangeTime:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUState_setScheduledAutoDownloadPolicyChangeTime___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)scheduledAutoDownloadPolicyChangeTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SUState_scheduledAutoDownloadPolicyChangeTime__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastScanDate:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__SUState_setLastScanDate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)lastScanDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__SUState_lastScanDate__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastAutoDownloadDate:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUState_setLastAutoDownloadDate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)lastAutoDownloadDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SUState_lastAutoDownloadDate__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAutoDownloadNeedsOneTimeRetry:(BOOL)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SUState_setAutoDownloadNeedsOneTimeRetry___block_invoke;
  v4[3] = &unk_279CAAD00;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, v4);
}

- (BOOL)autoDownloadNeedsOneTimeRetry
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SUState_autoDownloadNeedsOneTimeRetry__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3] != 0;
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLastProductVersion:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SUState_setLastProductVersion___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastProductVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SUState_lastProductVersion__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastProductVersionExtra:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUState_setLastProductVersionExtra___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastProductVersionExtra
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SUState_lastProductVersionExtra__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastProductBuild:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SUState_setLastProductBuild___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastProductBuild
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__SUState_lastProductBuild__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastProductType:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SUState_setLastProductType___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastProductType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__SUState_lastProductType__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastReleaseType:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SUState_setLastReleaseType___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastReleaseType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__SUState_lastReleaseType__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setUnlockCallbacks:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a3];
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SUState_setUnlockCallbacks___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDictionary)unlockCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__SUState_unlockCallbacks__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setMandatoryUpdateDict:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUState_setMandatoryUpdateDict___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDictionary)mandatoryUpdateDict
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__SUState_mandatoryUpdateDict__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastRollbackRecommendedBuildVersion:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SUState_setLastRollbackRecommendedBuildVersion___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastRollbackRecommendedBuildVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SUState_lastRollbackRecommendedBuildVersion__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addRolledBackBuildVersion:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUState_addRolledBackBuildVersion___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)queue_addRolledBackBuildVersion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4 && ([(NSMutableArray *)self->_rolledBackBuildVersions containsObject:v4]& 1) == 0)
  {
    if ([(NSMutableArray *)self->_rolledBackBuildVersions count]>= 5)
    {
      do
      {
        [(NSMutableArray *)self->_rolledBackBuildVersions removeObjectAtIndex:0];
      }

      while ([(NSMutableArray *)self->_rolledBackBuildVersions count]> 4);
    }

    [(NSMutableArray *)self->_rolledBackBuildVersions addObject:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (NSMutableArray)rolledBackBuildVersions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SUState_rolledBackBuildVersions__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastAutoInstallOperationModel:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SUState_setLastAutoInstallOperationModel___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (_SUAutoInstallOperationModel)lastAutoInstallOperationModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SUState_lastAutoInstallOperationModel__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setMdmDelay:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__SUState_setMdmDelay___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (SUManagedDeviceUpdateDelay)mdmDelay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __19__SUState_mdmDelay__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setInstallPolicy:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SUState_setInstallPolicy___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (SUInstallPolicy)installPolicy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__SUState_installPolicy__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastDeletedSUAssetID:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUState_setLastDeletedSUAssetID___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastDeletedSUAssetID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SUState_lastDeletedSUAssetID__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastAssetAudience:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SUState_setLastAssetAudience___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastAssetAudience
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__SUState_lastAssetAudience__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAppliedTime:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__SUState_setAppliedTime___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)appliedTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__SUState_appliedTime__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setUnderExclusiveControl:(BOOL)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SUState_setUnderExclusiveControl___block_invoke;
  v4[3] = &unk_279CAAD00;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, v4);
}

- (BOOL)underExclusiveControl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__SUState_underExclusiveControl__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLastSplatRestoreVersion:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUState_setLastSplatRestoreVersion___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastSplatRestoreVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SUState_lastSplatRestoreVersion__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastRollbackDescriptor:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUState_setLastRollbackDescriptor___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSString)lastBuildWithStashKeybagCreated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SUState_lastBuildWithStashKeybagCreated__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastBuildWithStashKeybagCreated:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SUState_setLastBuildWithStashKeybagCreated___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (BOOL)mobileAssetSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SUState_mobileAssetSuspended__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setMobileAssetSuspended:(BOOL)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SUState_setMobileAssetSuspended___block_invoke;
  v4[3] = &unk_279CAAD00;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, v4);
}

- (void)setFailedToAutoInstallError:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUState_setFailedToAutoInstallError___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSError)failedToAutoInstallError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SUState_failedToAutoInstallError__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastSpaceCleanupLevel:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUState_setLastSpaceCleanupLevel___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSNumber)lastSpaceCleanupLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__SUState_lastSpaceCleanupLevel__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDdmPersistedError:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SUState_setDdmPersistedError___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)setDdmPersistedErrorDescription:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUState_setDdmPersistedErrorDescription___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

void __43__SUState_setDdmPersistedErrorDescription___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v3 = MEMORY[0x277D64400];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 stringFromDate:v4];
  [v2 setSafeObject:v5 forKey:*MEMORY[0x277D64350]];

  [v2 setSafeObject:*(a1 + 32) forKey:*MEMORY[0x277D64340]];
  [v2 setSafeObject:&unk_287B6F640 forKey:*MEMORY[0x277D64330]];
  v6 = *(a1 + 40);
  v7 = *(v6 + 264);
  *(v6 + 264) = v2;
}

- (SURollbackDescriptor)lastRollbackDescriptor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SUState_lastRollbackDescriptor__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastPendingSplatAlertDate:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SUState_setLastPendingSplatAlertDate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (NSDate)lastPendingSplatAlertDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__SUState_lastPendingSplatAlertDate__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5
{
  if ([a4 isEqualToString:@"SUDownloadInterfaceReport"])
  {
    SULogDebug(@"Skipping SUDownloadInterfaceReport in SUState (legacy).", v5, v6, v7, v8, v9, v10, v11, vars0);
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end