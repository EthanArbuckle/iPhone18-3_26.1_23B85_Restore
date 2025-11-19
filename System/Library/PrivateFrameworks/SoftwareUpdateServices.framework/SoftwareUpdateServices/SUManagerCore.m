@interface SUManagerCore
- (BOOL)_isUpdateDownloadable:(id)a3 downloadOptions:(id)a4 error:(id *)a5;
- (BOOL)isAutoUpdateEnabled;
- (BOOL)isClearingSpace;
- (BOOL)isDescriptorAutoDownloadable:(id)a3;
- (BOOL)isDescriptorAutoUpdatable:(id)a3;
- (BOOL)isDownloading;
- (BOOL)isForeground;
- (BOOL)isInstallTonight;
- (BOOL)isInstallTonightScheduled;
- (BOOL)isInstalled;
- (BOOL)isInstalling;
- (BOOL)isManaged;
- (BOOL)isRollingBack;
- (BOOL)isScanning;
- (BOOL)isSplatOnlyUpdateRollbackSuggested;
- (BOOL)isSplatRollbackAllowed:(id *)a3;
- (BOOL)isSplatRollbackEnabled;
- (BOOL)isUpdateDownloaded;
- (BOOL)shouldShowRollbackSuggestionAlert:(id)a3 error:(id *)a4;
- (BOOL)splatUpdatesAllowed;
- (MAAsset)alternateAssetToDownloadFromLastScan;
- (MAAsset)preferredAssetToDownloadFromLastScan;
- (NSDate)lastStashbagPersistedDate;
- (NSDictionary)mandatoryUpdateDictionary;
- (NSHashTable)observers;
- (NSString)sessionID;
- (SUAutoUpdatePasscodePolicy)passcodePolicy;
- (SUCoreDescriptor)alternateLastScannedDescriptor;
- (SUCoreDescriptor)preferredLastScannedDescriptor;
- (SUDDMManager)ddmManager;
- (SUInstallPolicy)installPolicy;
- (SUManagedDeviceManager)managedDeviceManager;
- (SUManagerCore)init;
- (SUManagerDelegate)delegate;
- (SUManagerEngine)engine;
- (SUSFollowUpController)followUpController;
- (SUScanOptions)lastScannedDescriptorScanOptions;
- (SUState)state;
- (id)_createCoreAnalyticsEventWithCurrentDownloadFor:(id)a3 error:(id)a4;
- (id)_getAmountDataAvailable;
- (id)_preallocatedSpaceMetricInfo;
- (id)coreDescriptorForBuildVersion:(id)a3 versionExtra:(id)a4 isSplombo:(BOOL)a5;
- (id)coreDescriptorForSUDescriptor:(id)a3;
- (id)delayEndDate;
- (id)discoveryDateForBuildVersion:(id)a3;
- (id)download;
- (id)downloadAsset;
- (id)eligibleRollbackWithOptions:(id)a3;
- (id)eventRecordingServiceURL:(id)a3;
- (id)fullyUnrampedDateForBuildVersion:(id)a3;
- (id)installTonightConfigDictionary;
- (id)newInstallTonightConfig;
- (id)previousRollbackWithOptions:(id)a3;
- (id)rollbackSuggestionReasonFromSUReason:(unint64_t)a3;
- (id)slaVersion;
- (id)softwareUpdateReserveSizes;
- (id)updateToAutoDownload;
- (unint64_t)softwareUpdatePathRestriction;
- (unint64_t)updatesDelayPeriodSeconds;
- (void)_augmentCoreAnalyticsEvent:(id)a3 withUpdate:(id)a4;
- (void)_checkAndPostSplatFollowUpIfNeeded;
- (void)_describeAndReportEvent:(id)a3 policy:(id)a4 primaryDescriptor:(id)a5 alternateDescriptor:(id)a6 additionalMetrics:(id)a7;
- (void)_loadBrainOnUnlockCallback;
- (void)_notifyEngineOnUnlock;
- (void)_persistStash;
- (void)_presentAutoUpdateBannerOnUnlock;
- (void)_reportOTAEvent:(id)a3 withStatus:(id)a4 policy:(id)a5 primaryDescriptor:(id)a6 alternateDescriptor:(id)a7 additionalMetrics:(id)a8 error:(id)a9;
- (void)_reportRollbackEvent:(id)a3 withInfo:(id)a4 buildVersion:(id)a5;
- (void)_resumeFromLastKnownState;
- (void)_submitCoreAnalyticsEvent:(id)a3;
- (void)activated:(BOOL)a3;
- (void)addUnlockCallback:(SEL)a3 forKey:(id)a4;
- (void)amendManagedScanOptions:(id)a3 withResponse:(id)a4;
- (void)assetAudienceChanged:(id)a3;
- (void)autoSUFailedWithError:(id)a3;
- (void)badgeSettingsForManualSoftwareUpdate:(id)a3;
- (void)cleanupPreviousDownloadState;
- (void)clearBadgeAndBanner;
- (void)clearKeybagStash;
- (void)clearUnlockCallbacks;
- (void)createInstallationKeybag:(id)a3 withResult:(id)a4;
- (void)deviceIsUpToDateForSU:(BOOL)a3 forSplat:(BOOL)a4;
- (void)dismissAutoUpdateBanner;
- (void)dismissInsufficientDiskSpaceFollowupForUpdate:(id)a3 orForce:(BOOL)a4;
- (void)dismissLegacyFollowUps;
- (void)doUnlockEvents;
- (void)donateSUErrorToBiome:(id)a3;
- (void)donateSuccessToBiomeFor:(id)a3;
- (void)downloadCompleted:(id)a3;
- (void)downloadCompleted:(id)a3 informClients:(BOOL)a4;
- (void)downloadProgress:(id)a3;
- (void)endAutoDownloadTasksAndResetState;
- (void)installCompleted:(id)a3;
- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4;
- (void)isUpdateReadyForInstallationWithOptions:(id)a3 replyHandler:(id)a4;
- (void)loadBrainOnUnlock;
- (void)loadSavedState;
- (void)managedInstallRequested;
- (void)networkMonitorDetectOverrides;
- (void)noteAutoDownloadFailedToStartWithError:(id)a3;
- (void)overrideSoftwareUpdateReserve:(id)a3 systemGrowthMarginSize:(id)a4;
- (void)persistStashOnUnlock;
- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5;
- (void)presentAutoUpdateBanner:(id)a3;
- (void)presentRollbackSuggestionAlertWithDescriptor:(id)a3 info:(id)a4;
- (void)presentRollbackSuggestionFollowUpWithCoreDescriptor:(id)a3 info:(id)a4;
- (void)presentRollbackSuggestionFollowUpWithRollbackDescriptor:(id)a3 info:(id)a4;
- (void)removeUnlockCallback:(id)a3;
- (void)reportCoreAnalyticsOTAAbandonedEvent:(id)a3;
- (void)reportCoreAnalyticsOTAAvailableEvent:(id)a3;
- (void)reportCoreAnalyticsOTADownloadedEvent;
- (void)reportCoreAnalyticsOTAStartedDownloadingEvent:(id)a3;
- (void)reportOTAAbandonedEventWithError:(id)a3 additionalMetrics:(id)a4;
- (void)reportOTAAutoTriggeredEvent;
- (void)reportOTAAvailableEvent:(id)a3;
- (void)reportOTADownloadedEvent:(id)a3;
- (void)reportOTAInstalledEvent;
- (void)reportOTAStartedDownloadingEvent:(id)a3;
- (void)reportOTASucceededEvent;
- (void)reportPostponedEvent:(id)a3 withStatus:(id)a4 withAdditionalMetrics:(id)a5;
- (void)reportRSRRollbackSuggestedEventWithDescriptor:(id)a3 rollbackSuggestionInfo:(id)a4;
- (void)reportRSRRollbackSuggestedEventWithRollbackDescriptor:(id)a3 rollbackSuggestionInfo:(id)a4;
- (void)reportSimulatedOTAAutoTriggeredEvent;
- (void)reporterFlushEvent;
- (void)resetDownloadState;
- (void)resumeOrDisableReserveSpace;
- (void)resumeOrResetIfNecessary;
- (void)revokedUpdateFound:(id)a3;
- (void)rollbackCompleted:(id)a3 withError:(id)a4;
- (void)rollbackReadyForReboot;
- (void)rollbackStarted:(id)a3;
- (void)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4;
- (void)scanForUpdates:(id)a3 complete:(id)a4;
- (void)scheduleSplatFollowUpDate:(id)a3;
- (void)securityResponseRollbackSuggested:(id)a3 withResult:(id)a4;
- (void)sendUnlockNotifications:(BOOL)a3;
- (void)setAlternateLastScannedDescriptor:(id)a3;
- (void)setInstallPolicy:(id)a3;
- (void)setLastStashbagPersistedDate:(id)a3;
- (void)setMandatoryUpdateDictionary:(id)a3;
- (void)setPasscodePolicy:(id)a3;
- (void)setPreferredLastScannedDescriptor:(id)a3;
- (void)showInsufficientDiskSpaceFollowupForUpdate:(id)a3;
- (void)startDownloadWithMetadata:(id)a3 withResult:(id)a4;
- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)suggestRollback:(id)a3 rollbackDescriptor:(id)a4 withResult:(id)a5;
- (void)tryAutoDownload;
- (void)unbadgeSettingsForManualSoftwareUpdate;
- (void)unscheduleRecommendedUpdateNotification;
- (void)updateDownloadMetadata:(id)a3 withResult:(id)a4;
- (void)updateDownloadOptions:(id)a3 withResult:(id)a4;
- (void)updateInstallPolicyType:(unint64_t)a3;
- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5;
@end

@implementation SUManagerCore

- (void)reportCoreAnalyticsOTAAvailableEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerCore *)self _getAmountDataAvailable];
  v6 = [(SUManagerCore *)self _preallocatedSpaceMetricInfo];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SUManagerCore_Analytics__reportCoreAnalyticsOTAAvailableEvent___block_invoke;
  v12[3] = &unk_279CAA6E0;
  v13 = v5;
  v14 = v6;
  v15 = self;
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x26D668B30](v12);
  v10 = [v4 preferredDescriptor];
  (v9)[2](v9, v10);

  v11 = [v4 alternateDescriptor];

  (v9)[2](v9, v11);
}

void __65__SUManagerCore_Analytics__reportCoreAnalyticsOTAAvailableEvent___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[SUAnalyticsEvent alloc] initWithEventName:@"com.apple.massStorage.SoftwareUpdate.OTAEvents_1"];
    [(SUAnalyticsEvent *)v4 setEventPayloadEntry:@"eventName" stringValue:*MEMORY[0x277D645E8]];
    [(SUAnalyticsEvent *)v4 setEventPayloadEntry:@"errorCode" numberValue:&unk_287B6F310];
    [(SUAnalyticsEvent *)v4 setEventPayloadEntry:@"autoDownload" BOOLValue:0];
    [(SUAnalyticsEvent *)v4 setEventPayloadEntry:@"DiskUsageAmountDataAvailable" numberValue:*(a1 + 32)];
    [(SUAnalyticsEvent *)v4 addEventPayloadEntries:*(a1 + 40)];
    [*(a1 + 48) _augmentCoreAnalyticsEvent:v4 withUpdate:v3];

    [*(a1 + 48) _submitCoreAnalyticsEvent:v4];
  }
}

- (void)reportCoreAnalyticsOTAStartedDownloadingEvent:(id)a3
{
  v4 = [(SUManagerCore *)self _createCoreAnalyticsEventWithCurrentDownloadFor:*MEMORY[0x277D64608] error:a3];
  if (v4)
  {
    [(SUManagerCore *)self _submitCoreAnalyticsEvent:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)reportCoreAnalyticsOTAAbandonedEvent:(id)a3
{
  v4 = [(SUManagerCore *)self _createCoreAnalyticsEventWithCurrentDownloadFor:*MEMORY[0x277D645D8] error:a3];
  if (v4)
  {
    [(SUManagerCore *)self _submitCoreAnalyticsEvent:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)reportCoreAnalyticsOTADownloadedEvent
{
  v3 = [(SUManagerCore *)self _createCoreAnalyticsEventWithCurrentDownloadFor:*MEMORY[0x277D645F0] error:0];
  if (v3)
  {
    [(SUManagerCore *)self _submitCoreAnalyticsEvent:v3];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_augmentCoreAnalyticsEvent:(id)a3 withUpdate:(id)a4
{
  v6 = *MEMORY[0x277D647C0];
  v7 = a4;
  v8 = a3;
  v9 = [(SUManagerCore *)self sessionID];
  [v8 setEventPayloadEntry:v6 stringValue:v9];

  [v8 setEventPayloadEntry:@"preSUStagingEnabled" BOOLValue:{objc_msgSend(v7, "enablePreSUStaging")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "preSUStagingOptionalSize") >> 20}];
  [v8 setEventPayloadEntry:@"preSUStagingOptionalSize" numberValue:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "preSUStagingRequiredSize") >> 20}];
  [v8 setEventPayloadEntry:@"preSUStagingRequiredSize" numberValue:v11];

  v12 = [v7 productBuildVersion];
  [v8 setEventPayloadEntry:@"targetOSVersion" stringValue:v12];

  v13 = [v7 updateTypeName];
  [v8 setEventPayloadEntry:@"updateType" stringValue:v13];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v7 totalRequiredFreeSpace];

  v16 = [v14 numberWithUnsignedLongLong:v15 >> 20];
  [v8 setEventPayloadEntry:@"totalRequiredFreeSpace" numberValue:v16];
}

- (id)_getAmountDataAvailable
{
  v2 = MGCopyAnswer();
  v10 = v2;
  if (v2)
  {
    v11 = [v2 objectForKey:*MEMORY[0x277D82398]];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "unsignedLongLongValue") >> 20}];
  }

  else
  {
    SULogError(@"%s: failed to get the disk usage dictionary", v3, v4, v5, v6, v7, v8, v9, "[SUManagerCore(Analytics) _getAmountDataAvailable]");
    v12 = &unk_287B6F310;
  }

  return v12;
}

- (id)_createCoreAnalyticsEventWithCurrentDownloadFor:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v16 = [(SUManagerCore *)self download];
  if (v16)
  {
    v17 = [[SUAnalyticsEvent alloc] initWithEventName:@"com.apple.massStorage.SoftwareUpdate.OTAEvents_1"];
    [(SUAnalyticsEvent *)v17 setEventPayloadEntry:@"eventName" stringValue:v6];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
    [(SUAnalyticsEvent *)v17 setEventPayloadEntry:@"errorCode" numberValue:v18];

    v19 = [v16 downloadOptions];
    v20 = [v16 descriptor];
    v21 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v20];

    -[SUAnalyticsEvent setEventPayloadEntry:BOOLValue:](v17, "setEventPayloadEntry:BOOLValue:", @"autoDownload", [v19 isAutoDownload]);
    [(SUManagerCore *)self _augmentCoreAnalyticsEvent:v17 withUpdate:v21];
    v22 = [(SUManagerCore *)self _getAmountDataAvailable];
    [(SUAnalyticsEvent *)v17 setEventPayloadEntry:@"DiskUsageAmountDataAvailable" numberValue:v22];
  }

  else
  {
    SULogError(@"%s: current download doesn't exist", v9, v10, v11, v12, v13, v14, v15, "[SUManagerCore(Analytics) _createCoreAnalyticsEventWithCurrentDownloadFor:error:]");
    v17 = 0;
  }

  return v17;
}

- (void)_submitCoreAnalyticsEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[SUAnalyticsManager sharedManager];
  [v6 setEvent:v4];

  v7 = +[SUAnalyticsManager sharedManager];
  [v7 submitEvent:v4];
}

- (void)donateSUErrorToBiome:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if (v6)
  {
    v7 = [(SUManagerCore *)self externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SUManagerCore_Analytics__donateSUErrorToBiome___block_invoke;
    block[3] = &unk_279CAA708;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __49__SUManagerCore_Analytics__donateSUErrorToBiome___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(*(a1 + 32), "code")];
  v1 = [MEMORY[0x277D64420] sharedDevice];
  v2 = [v1 buildVersion];

  v3 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.softwareupdateservices.error" context:v8 osBuild:v2 userInfo:0];
  v4 = BiomeLibrary();
  v5 = [v4 Discoverability];
  v6 = [v5 Signals];
  v7 = [v6 source];
  [v7 sendEvent:v3];
}

- (void)donateSuccessToBiomeFor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerCore *)self externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SUManagerCore_Analytics__donateSuccessToBiomeFor___block_invoke;
    block[3] = &unk_279CAA708;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __52__SUManagerCore_Analytics__donateSuccessToBiomeFor___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D64420] sharedDevice];
  v8 = [v2 buildVersion];

  v3 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.softwareupdateservices.succeeded" context:*(a1 + 32) osBuild:v8 userInfo:0];
  v4 = BiomeLibrary();
  v5 = [v4 Discoverability];
  v6 = [v5 Signals];
  v7 = [v6 source];
  [v7 sendEvent:v3];
}

- (void)reportOTAAvailableEvent:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v20 = *MEMORY[0x277D645A0];
  v6 = [(SUManagerCore *)self scanner];
  v7 = [v6 lastScannedDescriptorScanOptions];
  v8 = [v7 clientName];
  v9 = v8;
  v10 = @"None";
  if (v8)
  {
    v10 = v8;
  }

  v21[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v12 = [v11 mutableCopy];

  v13 = [(SUManagerCore *)self _preallocatedSpaceMetricInfo];
  [v12 addEntriesFromDictionary:v13];

  v14 = *MEMORY[0x277D645E8];
  v15 = [(SUManagerCore *)self engine];
  v16 = [v15 updatePolicy];
  v17 = [v4 preferredDescriptor];
  v18 = [v4 alternateDescriptor];

  [(SUManagerCore *)self _reportOTAEvent:v14 withStatus:0 policy:v16 primaryDescriptor:v17 alternateDescriptor:v18 additionalMetrics:v12 error:0];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)reportOTAStartedDownloadingEvent:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUManagerCore *)self downloader];
  v7 = [v6 download];
  v8 = [v7 descriptor];
  v9 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v8];

  v10 = +[SUNetworkMonitor sharedInstance];
  v11 = [v10 isCurrentNetworkTypeCellular];

  v22[0] = *MEMORY[0x277D645A0];
  v12 = [(SUManagerCore *)self downloader];
  v13 = [v12 download];
  v14 = [v13 downloadOptions];
  v15 = [v14 clientName];
  v16 = v15;
  v17 = @"None";
  if (v15)
  {
    v17 = v15;
  }

  v22[1] = *MEMORY[0x277D645C8];
  v18 = MEMORY[0x277D647B0];
  if (!v11)
  {
    v18 = MEMORY[0x277D64728];
  }

  v19 = *v18;
  v23[0] = v17;
  v23[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D64608] withStatus:0 policy:0 descriptor:v9 additionalMetrics:v20 error:v4];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)reportOTADownloadedEvent:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v21 = *MEMORY[0x277D645A0];
  v6 = [(SUManagerCore *)self downloader];
  v7 = [v6 download];
  v8 = [v7 downloadOptions];
  v9 = [v8 clientName];
  v10 = v9;
  v11 = @"None";
  if (v9)
  {
    v11 = v9;
  }

  v22[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v13 = [(SUManagerCore *)self downloader];
  v14 = [v13 download];
  v15 = [v14 descriptor];
  v16 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v15];

  v17 = *MEMORY[0x277D645F0];
  v18 = [(SUManagerCore *)self engine];
  v19 = [v18 updatePolicy];
  [(SUManagerCore *)self _reportOTAEvent:v17 withStatus:v4 policy:v19 descriptor:v16 additionalMetrics:v12 error:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)reportOTAInstalledEvent
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUManagerCore *)self downloader];
  v5 = [v4 download];
  v6 = [v5 descriptor];
  v10 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v6];

  v7 = *MEMORY[0x277D645F8];
  v8 = [(SUManagerCore *)self engine];
  v9 = [v8 updatePolicy];
  [(SUManagerCore *)self _reportOTAEvent:v7 withStatus:0 policy:v9 descriptor:v10 additionalMetrics:0 error:0];
}

- (void)reportOTASucceededEvent
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUManagerCore *)self downloader];
  v5 = [v4 download];
  v6 = [v5 descriptor];
  v7 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v6];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D64610] withStatus:0 policy:0 descriptor:v7 additionalMetrics:0 error:0];
}

- (void)reportOTAAutoTriggeredEvent
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUManagerCore *)self downloader];
  v5 = [v4 download];
  v6 = [v5 descriptor];
  v7 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v6];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D645E0] withStatus:0 policy:0 descriptor:v7 additionalMetrics:0 error:0];
}

- (void)reportOTAAbandonedEventWithError:(id)a3 additionalMetrics:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v22 = *MEMORY[0x277D645A0];
  v9 = [(SUManagerCore *)self downloader];
  v10 = [v9 download];
  v11 = [v10 downloadOptions];
  v12 = [v11 clientName];
  v13 = v12;
  v14 = @"None";
  if (v12)
  {
    v14 = v12;
  }

  v23[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v16 = [v15 mutableCopy];

  if (v6)
  {
    [v16 addEntriesFromDictionary:v6];
  }

  v17 = [(SUManagerCore *)self downloader];
  v18 = [v17 download];
  v19 = [v18 descriptor];
  v20 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v19];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D645D8] withStatus:0 policy:0 descriptor:v20 additionalMetrics:v16 error:v7];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)reportRSRRollbackSuggestedEventWithDescriptor:(id)a3 rollbackSuggestionInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = *MEMORY[0x277D64618];
  v10 = [v7 productBuildVersion];

  [(SUManagerCore *)self _reportRollbackEvent:v9 withInfo:v6 buildVersion:v10];
}

- (void)reportRSRRollbackSuggestedEventWithRollbackDescriptor:(id)a3 rollbackSuggestionInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = *MEMORY[0x277D64618];
  v10 = [v7 productBuildVersion];

  [(SUManagerCore *)self _reportRollbackEvent:v9 withInfo:v6 buildVersion:v10];
}

- (void)_reportRollbackEvent:(id)a3 withInfo:(id)a4 buildVersion:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_opt_new();
  v18 = v10;
  if (v10)
  {
    v51 = v7;
    [v10 setSafeObject:v7 forKey:*MEMORY[0x277D64738]];
    [v18 setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D645B0]];
    [v18 setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D64700]];
    v19 = [(SUManagerCore *)self sessionID];
    [v18 setSafeObject:v19 forKey:*MEMORY[0x277D647C0]];

    v20 = +[SUNetworkMonitor sharedInstance];
    v21 = [v20 operatorName];
    [v18 setSafeObject:v21 forKey:@"OperatorName"];

    v22 = +[SUNetworkMonitor sharedInstance];
    v23 = [v22 servingPlmn];
    [v18 setSafeObject:v23 forKey:@"ServingPlmn"];

    v24 = -[SUManagerCore rollbackSuggestionReasonFromSUReason:](self, "rollbackSuggestionReasonFromSUReason:", [v8 suggestionReason]);
    v25 = *MEMORY[0x277D646B0];
    v49 = v24;
    [v18 setSafeObject:? forKey:?];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50 = v8;
    obj = [v8 responsibleProcessesInfo];
    v26 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      LODWORD(v28) = 0;
      v54 = *v56;
      v53 = *MEMORY[0x277D646B8];
      v29 = *MEMORY[0x277D646A8];
      v30 = *MEMORY[0x277D646A0];
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v56 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v55 + 1) + 8 * i);
          v28 = (v28 + 1);
          v33 = [v32 processName];
          [(SUManagerCore *)self setRollbackValue:v33 forKey:v53 count:v28 event:v18];

          v34 = [v32 rollbackSuggestionError];
          v35 = [v34 domain];
          [(SUManagerCore *)self setRollbackValue:v35 forKey:v29 count:v28 event:v18];

          v36 = MEMORY[0x277CCABB0];
          v37 = [v32 rollbackSuggestionError];
          v38 = [v36 numberWithInteger:{objc_msgSend(v37, "code")}];
          [(SUManagerCore *)self setRollbackValue:v38 forKey:v30 count:v28 event:v18];
        }

        v27 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v27);
    }

    SULogInfo(@"reporting OTA event: %@", v39, v40, v41, v42, v43, v44, v45, v18);
    v46 = [(SUManagerCore *)self coreReporter];
    v47 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D64818]];
    [v46 sendEvent:v18 toServerURL:v47];

    v8 = v50;
    v7 = v51;
  }

  else
  {
    SULogInfo(@"failed to allocate event for %@ event so not reported", v11, v12, v13, v14, v15, v16, v17, v7);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (id)rollbackSuggestionReasonFromSUReason:(unint64_t)a3
{
  if (a3 <= 2)
  {
    self = **(&unk_279CAA728 + a3);
  }

  return self;
}

- (void)reportSimulatedOTAAutoTriggeredEvent
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUManagerCore *)self downloader];
  v5 = [v4 download];
  v6 = [v5 descriptor];
  v7 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v6];

  [(SUManagerCore *)self _reportOTAEvent:@"otaSimulatedAutoTriggered" withStatus:0 policy:0 primaryDescriptor:v7 alternateDescriptor:0 additionalMetrics:0 error:0];
}

- (void)reportPostponedEvent:(id)a3 withStatus:(id)a4 withAdditionalMetrics:(id)a5
{
  v49[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(SUManagerCore *)self state];
  v13 = [v12 lastSentOTAPostponedDate];

  if (v13 && ([v13 timeIntervalSinceNow], fabs(v21) < 43200.0))
  {
    SULogInfo(@"%s: Holding off on reporting otaPostponed event because previous event was recently emitted", v14, v15, v16, v17, v18, v19, v20, "[SUManagerCore(Analytics) reportPostponedEvent:withStatus:withAdditionalMetrics:]");
  }

  else
  {
    v22 = v9;
    v23 = v8;
    v48 = *MEMORY[0x277D645A0];
    v24 = [(SUManagerCore *)self downloader];
    v25 = [v24 download];
    v26 = [v25 downloadOptions];
    v27 = [v26 clientName];
    v28 = v27;
    v29 = @"None";
    if (v27)
    {
      v29 = v27;
    }

    v49[0] = v29;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v30 = v47 = v10;
    v31 = [v30 mutableCopy];

    if (v47)
    {
      [v31 addEntriesFromDictionary:v47];
    }

    v32 = [(SUManagerCore *)self lastStashbagPersistedDate];

    v8 = v23;
    v9 = v22;
    if (v32)
    {
      v33 = [(SUManagerCore *)self lastStashbagPersistedDate];
      [v33 timeIntervalSinceNow];
      v35 = v34;

      if (v35 < 0.0)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (v35 / -600.0)];
        if (v36)
        {
          [v31 setSafeObject:v36 forKey:*MEMORY[0x277D64650]];
        }
      }
    }

    v37 = [(SUManagerCore *)self downloader];
    v38 = [v37 download];
    v39 = [v38 descriptor];
    v40 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v39];

    v41 = *MEMORY[0x277D64600];
    v42 = [(SUManagerCore *)self engine];
    v43 = [v42 updatePolicy];
    [(SUManagerCore *)self _reportOTAEvent:v41 withStatus:v22 policy:v43 descriptor:v40 additionalMetrics:v31 error:v8];

    v44 = [(SUManagerCore *)self state];
    v45 = [MEMORY[0x277CBEAA8] date];
    [v44 setLastSentOTAPostponedDate:v45];

    v10 = v47;
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_reportOTAEvent:(id)a3 withStatus:(id)a4 policy:(id)a5 primaryDescriptor:(id)a6 alternateDescriptor:(id)a7 additionalMetrics:(id)a8 error:(id)a9
{
  v35 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a3;
  v21 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v21);

  v22 = objc_opt_new();
  v30 = v22;
  if (v22)
  {
    [v22 setSafeObject:v20 forKey:*MEMORY[0x277D64738]];

    [v30 setSafeObject:v35 forKey:*MEMORY[0x277D645A8]];
    v31 = +[SUNetworkMonitor sharedInstance];
    v20 = SUStringFromNetworkType([v31 currentNetworkType]);

    [v30 setSafeObject:v20 forKey:*MEMORY[0x277D64640]];
    v32 = +[SUNetworkMonitor sharedInstance];
    v33 = [v32 isCurrentNetworkTypeCellular];

    v34 = MEMORY[0x277D647B0];
    if (!v33)
    {
      v34 = MEMORY[0x277D64728];
    }

    [v30 setSafeObject:*v34 forKey:@"cellular"];
    if (v19)
    {
      [MEMORY[0x277D64440] augmentEvent:v30 withError:v19];
    }

    else
    {
      [v30 setSafeObject:*MEMORY[0x277D64758] forKey:*MEMORY[0x277D64750]];
    }

    [(SUManagerCore *)self _describeAndReportEvent:v30 policy:v15 primaryDescriptor:v16 alternateDescriptor:v17 additionalMetrics:v18];
  }

  else
  {
    SULogInfo(@"failed to allocate event for %@ event so not reported", v23, v24, v25, v26, v27, v28, v29, v20);
  }
}

- (void)_describeAndReportEvent:(id)a3 policy:(id)a4 primaryDescriptor:(id)a5 alternateDescriptor:(id)a6 additionalMetrics:(id)a7
{
  v35 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v17 = objc_alloc_init(MEMORY[0x277D64198]);
  [v17 setPolicy:v15];

  [v17 setPrimaryDescriptor:v12];
  [v17 setAlternateDescriptor:v14];

  [v17 augmentEvent:v35];
  [v35 setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D645B0]];
  [v35 setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D64700]];
  v18 = [(SUManagerCore *)self sessionID];
  [v35 setSafeObject:v18 forKey:*MEMORY[0x277D647C0]];

  v19 = [(SUManagerCore *)self reportStartedFromPersistedState];
  v20 = MEMORY[0x277D647B0];
  if (!v19)
  {
    v20 = MEMORY[0x277D64728];
  }

  [v35 setSafeObject:*v20 forKey:@"startedFromPersistedState"];
  v21 = +[SUNetworkMonitor sharedInstance];
  v22 = [v21 operatorName];
  [v35 setSafeObject:v22 forKey:@"OperatorName"];

  v23 = +[SUNetworkMonitor sharedInstance];
  v24 = [v23 servingPlmn];
  [v35 setSafeObject:v24 forKey:@"ServingPlmn"];

  v25 = [(SUManagerCore *)self installTonightConfigDictionary];
  [v35 addEntriesFromDictionary:v25];

  if (v13)
  {
    [v35 addEntriesFromDictionary:v13];
  }

  v33 = [(SUManagerCore *)self eventRecordingServiceURL:v12];
  if (v33)
  {
    SULogInfo(@"reporting OTA event: %@", v26, v27, v28, v29, v30, v31, v32, v35);
    v34 = [(SUManagerCore *)self coreReporter];
    [v34 sendEvent:v35 toServerURL:v33];
  }

  else
  {
    SULogInfo(@"Unable to create event reporting server URL. Not sending event: %@", v26, v27, v28, v29, v30, v31, v32, v35);
  }
}

- (id)eventRecordingServiceURL:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = *MEMORY[0x277D64818];
  v5 = a3;
  v6 = [v3 URLWithString:v4];
  v7 = [v5 getMASoftwareUpdateAsset];

  v8 = [v7 attributes];

  if (v8)
  {
    v9 = [v8 objectForKey:@"_EventRecordingServiceURL"];
    if (v9)
    {
      v10 = [MEMORY[0x277D64440] buildSplunkServerURLFromBase:v9];

      v6 = v10;
    }
  }

  return v6;
}

- (void)reporterFlushEvent
{
  v2 = [(SUManagerCore *)self coreReporter];
  [v2 flushEvent];
}

- (id)_preallocatedSpaceMetricInfo
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SUManagerCore *)self softwareUpdateReserveSizes];
  if (v4)
  {
    v5 = [v4 safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE_FILESYSTEM_AMOUNT" ofClass:objc_opt_class()];
    v6 = [v4 safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE" ofClass:objc_opt_class()];
    v7 = [v4 safeObjectForKey:@"CACHE_DELETE_ENTITLED_RESERVATION" ofClass:objc_opt_class()];
    v8 = [v4 safeObjectForKey:@"CACHE_DELETE_ENTITLED_RESERVATION_SECURED" ofClass:objc_opt_class()];
    v9 = [v4 safeObjectForKey:@"CACHE_DELETE_ENTITLED_RESERVATION_FREE" ofClass:objc_opt_class()];
    [v3 setSafeObject:v5 forKey:@"SUFSReserveSize"];
    [v3 setSafeObject:v6 forKey:@"SUFSReserveRequestedSize"];
    [v3 setSafeObject:v7 forKey:@"SUEntitledReservation"];
    [v3 setSafeObject:v8 forKey:@"SUEntitledReservationSecured"];
    [v3 setSafeObject:v9 forKey:@"SUEntitledReservationFree"];
  }

  return v3;
}

- (BOOL)isManaged
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[SUPreferences sharedInstance];
  v5 = [v4 disableManagedRequest];

  if (v5)
  {
    SULogInfo(@"%s: disableManagedRequest is set; device is considered not managed.", v6, v7, v8, v9, v10, v11, v12, "[SUManagerCore(MDM) isManaged]");
    return 0;
  }

  else
  {
    v14 = [(SUManagerCore *)self ddmManager];
    if ([v14 isManagedByDDM])
    {
      v13 = 1;
    }

    else
    {
      v15 = [(SUManagerCore *)self managedDeviceManager];
      v13 = [v15 isManagedByMDM];
    }
  }

  return v13;
}

- (void)amendManagedScanOptions:(id)a3 withResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    if (v6)
    {
      if (![(SUManagerCore *)self isManaged])
      {
        SULogInfo(@"%s: device is not managed. Unset managed scan options", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(MDM) amendManagedScanOptions:withResponse:]");
        [v6 setManagedScanOptions:0];
        v7[2](v7, v6, 0);
        goto LABEL_11;
      }

      v23 = [v6 managedScanOptions];

      if (!v23)
      {
        SULogError(@"%s: missing managed scan options", v24, v25, v26, v27, v28, v29, v30, "[SUManagerCore(MDM) amendManagedScanOptions:withResponse:]");
        v31 = objc_opt_new();
        [v6 setManagedScanOptions:v31];
      }

      v32 = [v6 managedScanOptions];
      v33 = [(SUManagerCore *)self ddmManager];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __59__SUManagerCore_MDM__amendManagedScanOptions_withResponse___block_invoke;
      v35[3] = &unk_279CAA770;
      v35[4] = self;
      v36 = v32;
      v37 = v6;
      v38 = v7;
      v34 = v32;
      [v33 getActiveDDMDeclarationEnforcedSUWithResponse:v35];
    }

    else
    {
      SULogError(@"%s: cannot amend nil scan options", v9, v10, v11, v12, v13, v14, v15, "[SUManagerCore(MDM) amendManagedScanOptions:withResponse:]");
      v34 = [SUUtility errorWithCode:22];
      (v7)[2](v7, 0, v34);
    }
  }

  else
  {
    SULogError(@"%s: no response provided", v9, v10, v11, v12, v13, v14, v15, "[SUManagerCore(MDM) amendManagedScanOptions:withResponse:]");
  }

LABEL_11:
}

void __59__SUManagerCore_MDM__amendManagedScanOptions_withResponse___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUManagerCore_MDM__amendManagedScanOptions_withResponse___block_invoke_2;
  block[3] = &unk_279CAA748;
  v13 = v3;
  v5 = a1[5];
  v6 = a1[6];
  v11 = a1[4];
  v7 = a1[7];
  *&v8 = v11;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

uint64_t __59__SUManagerCore_MDM__amendManagedScanOptions_withResponse___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v2 versionString];
    [v3 setRequestedProductMarketingVersion:v4];

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) buildVersionString];
    [v5 setRequestedBuildVersion:v6];

    [*(a1 + 40) setAllowSplat:1];
    [*(a1 + 40) setMDMSoftwareUpdatePath:0];
    [*(a1 + 40) setUseDelayPeriod:0];
    [*(a1 + 40) setDelayPeriodSeconds:0];
    [*(a1 + 48) setScanType:2];
  }

  else
  {
    if ([*(a1 + 40) useDelayPeriod] == 2)
    {
      v14 = [*(a1 + 56) updatesDelayPeriodSeconds];
      [*(a1 + 40) setDelayPeriodSeconds:v14];
      [*(a1 + 40) setUseDelayPeriod:v14 != 0];
    }

    if ([*(a1 + 40) MDMSoftwareUpdatePath] == 3)
    {
      [*(a1 + 40) setMDMSoftwareUpdatePath:{objc_msgSend(*(a1 + 56), "softwareUpdatePathRestriction")}];
    }

    if ([*(a1 + 40) allowSplat] == 2)
    {
      [*(a1 + 40) setAllowSplat:{objc_msgSend(*(a1 + 56), "splatUpdatesAllowed")}];
    }

    v15 = [*(a1 + 48) identifier];
    v16 = [v15 isEqualToString:@"com.apple.mdm"];

    if (v16)
    {
      [*(a1 + 40) setAllowSplat:1];
      SULogInfo(@"MDM initiated scan. Allowing splat scan", v17, v18, v19, v20, v21, v22, v23, v27);
    }
  }

  SULogDebug(@"managed scan options after amendment: %@", v7, v8, v9, v10, v11, v12, v13, *(a1 + 40));
  v24 = *(a1 + 48);
  v25 = *(*(a1 + 64) + 16);

  return v25();
}

- (unint64_t)softwareUpdatePathRestriction
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(SUManagerCore *)self isManaged])
  {
    v11 = +[SUPreferences sharedInstance];
    v12 = [v11 MDMSoftwareUpdatePath];

    if (v12)
    {
      v13 = +[SUPreferences sharedInstance];
      v14 = [v13 MDMSoftwareUpdatePath];
      v15 = [v14 unsignedIntegerValue];

      if (v15 < 3)
      {
        v23 = SUStringFromMDMSUPath(v15);
        SULogInfo(@"%s: SU path is %@ (set by SU preference)", v24, v25, v26, v27, v28, v29, v30, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
LABEL_13:

        return v15;
      }

      SULogError(@"%s: SU preference has an invalid value %lu; ignore it", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
    }

    v31 = [(SUManagerCore *)self ddmManager];
    v15 = [v31 recommendedCadence];

    if (v15 != 3)
    {
      v23 = SUStringFromMDMSUPath(v15);
      SULogInfo(@"%s: SU path is %@ (set by DDM global settings)", v40, v41, v42, v43, v44, v45, v46, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
      goto LABEL_13;
    }

    v32 = [(SUManagerCore *)self managedDeviceManager];
    v15 = [v32 softwareUpdatePathRestriction];

    if (v15 != 3)
    {
      v23 = SUStringFromMDMSUPath(v15);
      SULogInfo(@"%s: SU path is %@ (set by MDM restriction)", v47, v48, v49, v50, v51, v52, v53, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
      goto LABEL_13;
    }

    SULogInfo(@"%s: device is managed. SU path is default", v33, v34, v35, v36, v37, v38, v39, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
  }

  else
  {
    SULogInfo(@"%s: device is not managed. SU path is default", v4, v5, v6, v7, v8, v9, v10, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
  }

  return 0;
}

- (unint64_t)updatesDelayPeriodSeconds
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if (![(SUManagerCore *)self isManaged])
  {
    SULogInfo(@"%s: device is not managed. Updates are not delayed", v4, v5, v6, v7, v8, v9, v10, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    return 0;
  }

  v11 = +[SUPreferences sharedInstance];
  v12 = [v11 shouldDelayUpdates];

  if (v12)
  {
    v13 = +[SUPreferences sharedInstance];
    v14 = [v13 updateDelayInterval];
    v15 = [v14 unsignedIntegerValue];

    if (v15)
    {
      v23 = +[SUPreferences sharedInstance];
      v24 = [v23 shouldDelayInMinutes];

      v32 = 86400;
      if (v24)
      {
        v32 = 60;
      }

      v33 = v32 * v15;
      SULogInfo(@"%s: Updates are delayed by SU preferences for %lu seconds", v25, v26, v27, v28, v29, v30, v31, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
      return v33;
    }

    SULogError(@"%s: No delay period set, ignore SU preferences", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
  }

  v34 = [(SUManagerCore *)self ddmManager];
  v35 = [v34 isDealyingUpdates];

  if (v35)
  {
    v36 = [(SUManagerCore *)self ddmManager];
    v33 = 86400 * [v36 updateDeferralPeriodDays];

    if (!v33)
    {
      SULogError(@"%s: Updates are delayed by DDM but the delay period is 0", v37, v38, v39, v40, v41, v42, v43, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    }

    SULogInfo(@"%s: Updates are delayed by DDM global settings for %lu seconds", v37, v38, v39, v40, v41, v42, v43, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    return v33;
  }

  v44 = [(SUManagerCore *)self managedDeviceManager];
  v45 = [v44 isDelayingUpdates];

  if (!v45)
  {
    SULogInfo(@"%s: device is managed. Updates are not delayed", v46, v47, v48, v49, v50, v51, v52, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    return 0;
  }

  v53 = [(SUManagerCore *)self managedDeviceManager];
  v33 = 86400 * [v53 delayPeriodInDays];

  if (!v33)
  {
    SULogError(@"%s: Updates are delayed by MDM but the delay period is 0", v54, v55, v56, v57, v58, v59, v60, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
  }

  SULogInfo(@"%s: Updates are delayed by MDM restrictions for %lu seconds", v54, v55, v56, v57, v58, v59, v60, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
  return v33;
}

- (id)delayEndDate
{
  v2 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v2);

  return 0;
}

- (void)managedInstallRequested
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUManagerCore *)self installer];
  [v4 managedInstallRequested];
}

- (BOOL)isSplatRollbackEnabled
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[SUPreferences sharedInstance];
  v5 = [v4 disableRollback];

  if (v5)
  {
    LOBYTE(v13) = 0;
    v14 = @"%s: Disabling Splat rollback due to SU Preference";
  }

  else if ([(SUManagerCore *)self isManaged])
  {
    v15 = [(SUManagerCore *)self ddmManager];
    v16 = [v15 enableRapidSecurityResponseRollback];

    if (v16)
    {
      v17 = [(SUManagerCore *)self managedDeviceManager];
      v13 = [v17 allowSplatRollback];

      if (v13)
      {
        v14 = @"%s: device is managed. Splat rollback is enabled";
      }

      else
      {
        v14 = @"%s: Splat rollback is disabled by MDM restrictions";
      }
    }

    else
    {
      LOBYTE(v13) = 0;
      v14 = @"%s: Splat rollback is disabled by DDM global settings";
    }
  }

  else
  {
    LOBYTE(v13) = 1;
    v14 = @"%s: device is not managed. Splat rollback is enabled";
  }

  SULogInfo(v14, v6, v7, v8, v9, v10, v11, v12, "[SUManagerCore(Splat) isSplatRollbackEnabled]");
  return v13;
}

- (BOOL)splatUpdatesAllowed
{
  if ([(SUManagerCore *)self isManaged])
  {
    v10 = +[SUPreferences sharedInstance];
    v11 = [v10 allowSplatUpdate];

    if (v11)
    {
      v12 = [(SUManagerCore *)self ddmManager];
      v13 = [v12 enableRapidSecurityResponse];

      if (v13)
      {
        v14 = [(SUManagerCore *)self managedDeviceManager];
        v15 = [v14 allowSplat];

        if (v15)
        {
          v16 = @"%s: device is managed. Splat updates are allowed";
        }

        else
        {
          v16 = @"%s: Splat updates are disallowed by MDM restrictions";
        }
      }

      else
      {
        LOBYTE(v15) = 0;
        v16 = @"%s: Splat updates are disallowed by DDM global settings";
      }
    }

    else
    {
      LOBYTE(v15) = 0;
      v16 = @"%s: Splat updates are disallowed by SU preference";
    }
  }

  else
  {
    LOBYTE(v15) = 1;
    v16 = @"%s: device is not managed. Splat updates are allowed";
  }

  SULogInfo(v16, v3, v4, v5, v6, v7, v8, v9, "[SUManagerCore(Splat) splatUpdatesAllowed]");
  return v15;
}

- (BOOL)isSplatRollbackAllowed:(id *)a3
{
  v5 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[SUPreferences sharedInstance];
  v7 = [v6 fakeSplatInstalled];

  if (v7)
  {
    v15 = @"Fake splat installed, allowing rollback";
LABEL_5:
    SULogInfo(v15, v8, v9, v10, v11, v12, v13, v14, v52);
    goto LABEL_6;
  }

  v16 = [MEMORY[0x277D64420] sharedDevice];
  v17 = [v16 hasSemiSplatActive];

  if (v17)
  {
    v15 = @"Rollback already applied, allow rollback";
    goto LABEL_5;
  }

  if (!+[SUUtility isSplatOnlyUpdateInstalled])
  {
    SULogInfo(@"Splat-only update not installed. Unable to rollback update", v21, v22, v23, v24, v25, v26, v27, v52);
    v36 = 93;
    goto LABEL_15;
  }

  v28 = [(SUManagerCore *)self preferredLastScannedDescriptor];
  if (v28)
  {

LABEL_14:
    SULogInfo(@"Splat-only update installed, but new update available. Preventing rollback", v29, v30, v31, v32, v33, v34, v35, v52);
    v36 = 94;
    goto LABEL_15;
  }

  v37 = [(SUManagerCore *)self alternateLastScannedDescriptor];

  if (v37)
  {
    goto LABEL_14;
  }

  if (![(SUManagerCore *)self isSplatRollbackEnabled])
  {
    SULogInfo(@"Splat Rollback disabled", v38, v39, v40, v41, v42, v43, v44, v52);
    v36 = 88;
LABEL_15:
    v18 = [SUUtility errorWithCode:v36];
    v19 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!+[SUUtility isSplatRollbackDirectoryPresent])
  {
    SULogInfo(@"Splat Rollback disabled due to missing rollback objects", v45, v46, v47, v48, v49, v50, v51, v52);
    v36 = 99;
    goto LABEL_15;
  }

LABEL_6:
  v18 = 0;
  v19 = 1;
  if (a3)
  {
LABEL_7:
    v18 = v18;
    *a3 = v18;
  }

LABEL_8:

  return v19;
}

- (BOOL)isSplatOnlyUpdateRollbackSuggested
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(SUManagerCore *)self isSplatRollbackAllowed:0])
  {
    v11 = [(SUManagerCore *)self preferredLastScannedDescriptor];
    v12 = +[SUPreferences sharedInstance];
    v13 = [v12 suggestedRollbackSplatVersion];

    v14 = [v11 restoreVersion];
    v15 = [v14 isEqualToString:v13];

    if (v15)
    {
      SULogInfo(@"%s: Found suggested rollback for %@: %@", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(Splat) isSplatOnlyUpdateRollbackSuggested]");
    }

    else
    {
      SULogInfo(@"%s: No suggested rollback for %@.", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(Splat) isSplatOnlyUpdateRollbackSuggested]");
    }
  }

  else
  {
    SULogInfo(@"%s: Splat rollback is not allowed.", v4, v5, v6, v7, v8, v9, v10, "[SUManagerCore(Splat) isSplatOnlyUpdateRollbackSuggested]");
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)revokedUpdateFound:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  SULogInfo(@"Revoked update found: %@", v6, v7, v8, v9, v10, v11, v12, v4);
  v13 = [v4 productBuildVersion];
  v20 = 0;
  v14 = [(SUManagerCore *)self shouldShowRollbackSuggestionAlert:v13 error:&v20];

  if (v14)
  {
    v15 = objc_alloc_init(SURollbackSuggestionInfo);
    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 bundleIdentifier];
    [(SURollbackSuggestionInfo *)v15 setClientIdentifier:v17];

    [(SURollbackSuggestionInfo *)v15 setSuggestionReason:2];
    v18 = +[SUPreferences sharedInstance];
    v19 = [v4 restoreVersion];
    [v18 setSuggestedRollbackSplatVersion:v19];

    [(SUManagerCore *)self presentRollbackSuggestionFollowUpWithCoreDescriptor:v4 info:v15];
  }
}

- (id)eligibleRollbackWithOptions:(id)a3
{
  v4 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v28 = 0;
  v5 = [(SUManagerCore *)self isSplatRollbackAllowed:&v28];
  v6 = v28;
  v14 = v6;
  if (v5)
  {
    v15 = [(SUManagerCore *)self engine];
    v16 = [v15 availableRollback];

    v17 = +[SUPreferences sharedInstance];
    v18 = [v17 fakeSplatInstalled];

    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277D641D8]);

      SULogInfo(@"%s: Fake splat installed, generating a fake descriptor.", v20, v21, v22, v23, v24, v25, v26, "[SUManagerCore(Splat) eligibleRollbackWithOptions:]");
      v16 = v19;
    }
  }

  else
  {
    SULogInfo(@"Rollback not allowed. Returning nil rollback descriptor: %@", v7, v8, v9, v10, v11, v12, v13, v6);
    v16 = 0;
  }

  return v16;
}

- (void)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x277D64420] sharedDevice];
  v10 = [v9 hasSemiSplatActive];

  if (v10)
  {
    SULogInfo(@"Rollback already applied, just proceed to reboot", v11, v12, v13, v14, v15, v16, v17, v29);
    v18 = 0;
LABEL_4:
    v28 = [(SUManagerCore *)self rollback];
    [v28 rollbackUpdateWithOptions:v6 completion:v7];

    goto LABEL_5;
  }

  v30 = 0;
  v19 = [(SUManagerCore *)self isSplatRollbackAllowed:&v30];
  v20 = v30;
  v18 = v20;
  if (v19)
  {
    goto LABEL_4;
  }

  SULogInfo(@"Rollback not allowed. Preventing rollback request: %@", v21, v22, v23, v24, v25, v26, v27, v20);
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0, v18);
  }

LABEL_5:
}

- (id)previousRollbackWithOptions:(id)a3
{
  v4 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUManagerCore *)self engine];
  v6 = [v5 previousRollback];

  return v6;
}

- (BOOL)isRollingBack
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUManagerCore *)self rollback];
  LOBYTE(v3) = [v4 isRollingBack];

  return v3;
}

- (void)rollbackReadyForReboot
{
  v3 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(SUManagerCore *)self rollback];
  v4 = [(SUManagerCore *)self eligibleRollbackWithOptions:0];
  [v5 rollbackReadyForReboot:v4];
}

- (void)securityResponseRollbackSuggested:(id)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v10 = [(SUManagerCore *)self rollback];
  v9 = [v10 availableRollback];
  [(SUManagerCore *)self suggestRollback:v7 rollbackDescriptor:v9 withResult:v6];
}

- (void)suggestRollback:(id)a3 rollbackDescriptor:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(v11);

  SULogInfo(@"Rollback recommended. Info: %@ \nRollback Descriptor: %@", v12, v13, v14, v15, v16, v17, v18, v8);
  v19 = [v9 productBuildVersion];
  v24 = 0;
  v20 = [(SUManagerCore *)self shouldShowRollbackSuggestionAlert:v19 error:&v24];
  v21 = v24;

  if (v20)
  {
    v22 = +[SUPreferences sharedInstance];
    v23 = [v9 restoreVersion];
    [v22 setSuggestedRollbackSplatVersion:v23];

    [(SUManagerCore *)self presentRollbackSuggestionFollowUpWithRollbackDescriptor:v9 info:v8];
    if (v10)
    {
      v10[2](v10, 1, 0);
    }
  }

  else if (v10)
  {
    (v10)[2](v10, 0, v21);
  }
}

- (BOOL)shouldShowRollbackSuggestionAlert:(id)a3 error:(id *)a4
{
  v6 = a3;
  v38 = 0;
  v7 = [(SUManagerCore *)self isSplatRollbackAllowed:&v38];
  v8 = v38;
  v16 = v8;
  if (!v7)
  {
    SULogInfo(@"Rollback not allowed. Ignoring revoked update: %@", v9, v10, v11, v12, v13, v14, v15, v8);
    if (a4)
    {
      v25 = v16;
      v24 = 0;
      *a4 = v16;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (+[SUUtility isLockdownModeEnabled])
  {
    SULogInfo(@"Device is in Lockdown Mode. Ignoring revoked update", v17, v18, v19, v20, v21, v22, v23, v37);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:101 userInfo:0];
      *a4 = v24 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v24 = 0;
    goto LABEL_12;
  }

  v26 = [(SUManagerCore *)self state];
  v27 = [v26 lastRollbackRecommendedBuildVersion];

  v35 = [v27 isEqualToString:v6];
  if (v35)
  {
    SULogInfo(@"Rollback already recommended for %@, skipping follow-up", v28, v29, v30, v31, v32, v33, v34, v6);
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:100 userInfo:0];
    }
  }

  v24 = v35 ^ 1;

LABEL_12:
  return v24;
}

- (void)presentRollbackSuggestionFollowUpWithCoreDescriptor:(id)a3 info:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v7];
  [(SUManagerCore *)self presentRollbackSuggestionAlertWithDescriptor:v8 info:v6];
  [(SUManagerCore *)self reportRSRRollbackSuggestedEventWithDescriptor:v7 rollbackSuggestionInfo:v6];
}

- (void)presentRollbackSuggestionFollowUpWithRollbackDescriptor:(id)a3 info:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SUManagerEngine SUDescriptorFromRollbackDescriptor:v7];
  [(SUManagerCore *)self presentRollbackSuggestionAlertWithDescriptor:v8 info:v6];
  [(SUManagerCore *)self reportRSRRollbackSuggestedEventWithRollbackDescriptor:v7 rollbackSuggestionInfo:v6];
}

- (void)presentRollbackSuggestionAlertWithDescriptor:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerCore *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SUManagerCore *)self externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SUManagerCore_Splat__presentRollbackSuggestionAlertWithDescriptor_info___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  v11 = [v6 productBuildVersion];

  if (v11)
  {
    v19 = [(SUManagerCore *)self state];
    v20 = [v6 productBuildVersion];
    [v19 setLastRollbackRecommendedBuildVersion:v20];

    v21 = [(SUManagerCore *)self state];
    [v21 save];
  }

  else
  {
    SULogInfo(@"Warning: revoked update has no build version", v12, v13, v14, v15, v16, v17, v18, v22);
  }
}

void __74__SUManagerCore_Splat__presentRollbackSuggestionAlertWithDescriptor_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 rollbackSuggested:*(a1 + 40) info:*(a1 + 48)];
}

- (void)rollbackStarted:(id)a3
{
  v4 = a3;
  v5 = [(SUManagerCore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SUManagerCore_Splat__rollbackStarted___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__SUManagerCore_Splat__rollbackStarted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rollback];
  [v2 rollbackStarted:*(a1 + 40)];

  v3 = [*(a1 + 32) tracker];
  [v3 recordRollbackStarted:*(a1 + 40)];
}

- (void)rollbackCompleted:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUManagerCore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerCore_Splat__rollbackCompleted_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __52__SUManagerCore_Splat__rollbackCompleted_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rollback];
  [v2 rollbackCompleted:*(a1 + 40) withError:*(a1 + 48)];

  v3 = [*(a1 + 32) tracker];
  [v3 recordRollbackCompleted:*(a1 + 40) withError:*(a1 + 48)];
}

- (SUManagerCore)init
{
  v42.receiver = self;
  v42.super_class = SUManagerCore;
  v2 = [(SUManagerCore *)&v42 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_delegate, 0);
    v4 = dispatch_semaphore_create(0);
    resumeFromStateSemaphore = v3->_resumeFromStateSemaphore;
    v3->_resumeFromStateSemaphore = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.softwareupdateservices.workqueue", v6);
    workQueue = v3->_workQueue;
    v3->_workQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.softwareupdateservices.externWorkqueue", v9);
    externWorkQueue = v3->_externWorkQueue;
    v3->_externWorkQueue = v10;

    v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v3->_observers;
    v3->_observers = v12;

    v14 = +[SUState currentState];
    state = v3->_state;
    v3->_state = v14;

    mandatoryUpdateDictionary = v3->_mandatoryUpdateDictionary;
    v3->_mandatoryUpdateDictionary = 0;

    v17 = [MEMORY[0x277D644A8] UUIDForSoftwareUpdate];
    v18 = [v17 UUIDString];
    sessionID = v3->_sessionID;
    v3->_sessionID = v18;

    followUpController = v3->_followUpController;
    v3->_followUpController = 0;

    v21 = [objc_alloc(MEMORY[0x277D64440]) initStoringToPath:@"/var/mobile/Library/SoftwareUpdate"];
    coreReporter = v3->_coreReporter;
    v3->_coreReporter = v21;

    lastStashbagPersistedDate = v3->_lastStashbagPersistedDate;
    v3->_lastStashbagPersistedDate = 0;

    v3->_reportStartedFromPersistedState = 0;
    v24 = [[SUManagerEngine alloc] initWithDelegate:v3];
    engine = v3->_engine;
    v3->_engine = v24;

    if (!v3->_engine)
    {
      SULogInfo(@"Failed creating SUManagerEngine", v26, v27, v28, v29, v30, v31, v32, v39);
    }

    v33 = v3->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __21__SUManagerCore_init__block_invoke;
    block[3] = &unk_279CAA708;
    v34 = v3;
    v41 = v34;
    dispatch_sync(v33, block);
    v35 = +[SUManagedDeviceManager sharedInstance];
    managedDeviceManager = v34->_managedDeviceManager;
    v34->_managedDeviceManager = v35;

    [(SUManagedDeviceManager *)v34->_managedDeviceManager setDelegate:v34];
    updateOfCurrentStorageFollowup = v34->_updateOfCurrentStorageFollowup;
    v34->_updateOfCurrentStorageFollowup = 0;

    v34->_resetDownloadStateOnCleanActivation = 0;
  }

  return v3;
}

uint64_t __21__SUManagerCore_init__block_invoke(uint64_t a1)
{
  v2 = [[SUScanner alloc] initWithCore:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [[SUDownloader alloc] initWithCore:*(a1 + 32)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = [[SUInstaller alloc] initWithCore:*(a1 + 32)];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = [[SURollbackController alloc] initWithCore:*(a1 + 32)];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = +[SUSHistoryTracker sharedTracker];
  v15 = *(a1 + 32);
  v16 = *(v15 + 48);
  *(v15 + 48) = v14;

  v17 = *(a1 + 32);

  return [v17 loadSavedState];
}

- (void)loadSavedState
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUState *)self->_state unlockCallbacks];

  if (v3)
  {
    v4 = [(SUState *)self->_state unlockCallbacks];
    v5 = [v4 mutableCopy];
    unlockCallbacks = self->_unlockCallbacks;
    self->_unlockCallbacks = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = self->_unlockCallbacks;
    self->_unlockCallbacks = v7;
  }

  v8 = [(SUState *)self->_state installPolicy];

  if (v8)
  {
    v9 = [(SUState *)self->_state installPolicy];
    [(SUManagerCore *)self setInstallPolicy:v9];

    v10 = @"Found install policy: %@";
  }

  else
  {
    v10 = @"No install policy saved, using default: %@";
  }

  v11 = [(SUManagerCore *)self installPolicy];
  SULogDebug(v10, v12, v13, v14, v15, v16, v17, v18, v11);

  [(SUManagerCore *)self updateInstallPolicyAutoUpdateEnabled:[(SUManagerCore *)self isAutoUpdateEnabled]];
  v19 = [(SUManagerCore *)self installPolicy];
  SULogDebug(@"reset install policy to: %@", v20, v21, v22, v23, v24, v25, v26, v19);

  v27 = [(SUState *)self->_state mandatoryUpdateDict];

  if (v27)
  {
    v28 = [(SUState *)self->_state mandatoryUpdateDict];
    mandatoryUpdateDictionary = self->_mandatoryUpdateDictionary;
    self->_mandatoryUpdateDictionary = v28;

    MEMORY[0x2821F96F8](v28, mandatoryUpdateDictionary);
  }
}

- (void)resumeOrResetIfNecessary
{
  dispatch_assert_queue_V2(self->_workQueue);
  [(SUManagerCore *)self resumeOrDisableReserveSpace];
  v3 = [(SUState *)self->_state lastProductBuild];
  v4 = [(SUState *)self->_state lastProductVersion];
  v5 = [(SUState *)self->_state lastProductVersionExtra];
  v6 = [(SUState *)self->_state lastSplatRestoreVersion];
  v7 = [(SUState *)self->_state lastRollbackDescriptor];
  v153 = +[SUUtility currentProductType];
  v155 = +[SUUtility currentProductBuild];
  v8 = +[SUUtility currentProductVersion];
  v9 = +[SUUtility currentProductVersionExtra];
  v151 = +[SUUtility currentReleaseType];
  v10 = [MEMORY[0x277D64420] sharedDevice];
  v156 = [v10 splatRestoreVersion];

  [SUUtility setCacheable:1];
  v11 = +[SUKeybagInterface sharedInstance];
  [v11 addObserver:self];

  if (_os_feature_enabled_impl())
  {
    v12 = +[SUPreferences sharedInstance];
    [v12 addObserver:self];
  }

  v147 = v7;
  v154 = v8;
  if ([v4 isEqualToString:v8])
  {
    v13 = [v3 isEqualToString:v155] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [SUUtility compareRestoreVersion:v6 withRestoreVersion:v156];
  v149 = v5;
  v152 = v9;
  v15 = [SUUtility compareVersionExtra:v5 withVersionExtra:v9];
  v23 = v15;
  v25 = v14 != -1 && v15 != -1;
  v26 = v25 | v13;
  if (((v25 | v13) & 1) == 0)
  {
    SULogInfo(@"Splat RestoreVersion incremented", v16, v17, v18, v19, v20, v21, v22, v140);
  }

  v148 = v6;
  v28 = v14 != 1 && v23 != 1;
  v29 = v28 | v13;
  if (((v28 | v13) & 1) == 0)
  {
    SULogInfo(@"Splat RestoreVersion decremented", v16, v17, v18, v19, v20, v21, v22, v140);
  }

  v30 = v13 ^ v26 & v29;
  v31 = [(SUState *)self->_state appliedTime];
  v150 = v31;
  if (v31)
  {
    v39 = v31;
    v40 = +[SUUtility bootTime];
    if ([v40 compare:v39] != 1)
    {
      v55 = 0;
      goto LABEL_35;
    }

    v144 = v3;
    v145 = v4;
    v41 = [(SUState *)self->_state lastDownload];
    v42 = [v41 descriptor];

    v43 = [v42 productVersion];
    if ([v43 isEqualToString:v154])
    {
      v44 = [v42 productBuildVersion];
      v45 = [v44 isEqualToString:v155];

      if (v45)
      {
        v46 = [v42 productVersion];
        v47 = [v42 productBuildVersion];
        SULogInfo(@"Found update (%@.%@) applied at (%@) and then system reboot at (%@), considering as new OS", v48, v49, v50, v51, v52, v53, v54, v46);
        v3 = v144;
        goto LABEL_32;
      }
    }

    else
    {
    }

    if ((v30 & 1) == 0)
    {
      v55 = 0;
      v3 = v144;
      goto LABEL_34;
    }

    v46 = [v42 productVersion];
    v47 = [v42 productBuildVersion];
    v3 = v144;
    SULogInfo(@"Found update (%@.%@) applied at (%@) and then system reboot at (%@) to the previous OS (%@.%@), update was consumed, cleaning prior state", v56, v57, v58, v59, v60, v61, v62, v46);
LABEL_32:

    v55 = 1;
LABEL_34:

    v4 = v145;
LABEL_35:
    [(SUState *)self->_state setAppliedTime:0];
    [(SUState *)self->_state save];

    if (v55)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v55 = 0;
LABEL_36:
  if (((v30 ^ 1) & 1) == 0)
  {
    SULogInfo(@"Attempting to resume from last known state.", v32, v33, v34, v35, v36, v37, v38, v140);
    [(SUManagerCore *)self _resumeFromLastKnownState];
    v70 = v147;
    goto LABEL_61;
  }

LABEL_38:
  SULogInfo(@"New OS detected; resetting all prior state.", v32, v33, v34, v35, v36, v37, v38, v140);
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v71 = +[SUPreferences sharedInstance];
    [v71 setTestGetOffSampleRate:10];
  }

  if (v55)
  {
    [(SUManagerCore *)self reportOTASucceededEvent];
    [(SUManagerCore *)self donateSuccessToBiomeFor:@"Install"];
    v72 = objc_alloc_init(MEMORY[0x277D64190]);
    v80 = v72;
    if (v72)
    {
      v164[0] = 0;
      v81 = [v72 cleanupNonInstalledDocumentationWithError:v164];
      v82 = v164[0];
      v90 = v82;
      if ((v81 & 1) == 0)
      {
        SULogInfo(@"Failed to clean up stashed documentation data: %@", v83, v84, v85, v86, v87, v88, v89, v82);
      }
    }

    else
    {
      SULogInfo(@"Failed to init SUCoreDocumentationDataManager. Unable to clean up stashed documentation data", v73, v74, v75, v76, v77, v78, v79, v141);
    }
  }

  v146 = v4;
  [(SUManagerCore *)self clearBadgeAndBanner];
  [(SUManagerCore *)self removeUnlockCallback:@"unlockCallbackRecordDataForBrain"];
  SULogInfo(@"Removing previously stashed ControllerDataForBrain file", v91, v92, v93, v94, v95, v96, v97, v141);
  v142 = @"Controller/ControllerDataForBrain.plist";
  v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/MobileSoftwareUpdate/%@"];
  v99 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v99 fileExistsAtPath:v98])
  {
    v163 = 0;
    [v99 removeItemAtPath:v98 error:&v163];
    v107 = v163;
    if (v107)
    {
      SULogInfo(@"Failed to remove old controller data file at %@ : %@", v100, v101, v102, v103, v104, v105, v106, v98);
    }

    else
    {
      SULogInfo(@"Successfully removed old controller data file at %@", v100, v101, v102, v103, v104, v105, v106, v98);
    }
  }

  [(SUManagerEngine *)self->_engine activateLoadingPersisted:0];
  v108 = +[SUUtility currentReleaseType];
  v109 = [v108 isEqualToString:@"Internal"];

  if (v109)
  {
    v110 = xpc_array_create(0, 0);
    xpc_array_set_string(v110, 0xFFFFFFFFFFFFFFFFLL, "basejumper.apple.com");
    xpc_array_set_string(v110, 0xFFFFFFFFFFFFFFFFLL, "cheeserolling.apple.com");
    xpc_array_set_string(v110, 0xFFFFFFFFFFFFFFFFLL, "gdmf-staging-int.apple.com");
    xpc_array_set_string(v110, 0xFFFFFFFFFFFFFFFFLL, "locksmith.apple.com");
    NEHelperSettingsSetArray();
    SULogInfo(@"Allowing basejumper.apple.com, cheeserolling.apple.com, gdmf-staging-int.apple.com and locksmith.apple.com to trigger VPN On Demand (when installed)", v111, v112, v113, v114, v115, v116, v117, v142);
  }

  v118 = +[SUScheduler sharedInstance];
  [v118 cancelAllAutoInstallTasks];

  [(SUState *)self->_state setLastAutoInstallOperationModel:0];
  [(SUManagerCore *)self clearUnlockCallbacks];
  [(SUManagerCore *)self setMandatoryUpdateDictionary:0];
  [(SUManagerCore *)self setPreferredLastScannedDescriptor:0];
  [(SUManagerCore *)self setAlternateLastScannedDescriptor:0];
  [(SUState *)self->_state resetAllHistory];
  [(SUState *)self->_state setLastProductType:v153];
  [(SUState *)self->_state setLastProductBuild:v155];
  [(SUState *)self->_state setLastProductVersion:v154];
  [(SUState *)self->_state setLastProductVersionExtra:v152];
  [(SUState *)self->_state setLastReleaseType:v151];
  [(SUState *)self->_state setLastSplatRestoreVersion:v156];
  [(SUState *)self->_state setLastRecommendedUpdateVersion:0];
  [(SUState *)self->_state setLastRecommendedUpdateInterval:0];
  [(SUState *)self->_state setLastRecommendedUpdateDiscoveryDate:0];
  [(SUState *)self->_state save];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v120 = objc_opt_respondsToSelector();

  if (v120)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SUManagerCore_resumeOrResetIfNecessary__block_invoke;
    block[3] = &unk_279CAAE40;
    block[4] = self;
    v161 = v155;
    v162 = 0;
    dispatch_async(workQueue, block);
  }

  if ((v26 & 1) == 0)
  {
    v129 = self->_workQueue;
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = __41__SUManagerCore_resumeOrResetIfNecessary__block_invoke_2;
    v159[3] = &unk_279CAA708;
    v159[4] = self;
    dispatch_async(v129, v159);
  }

  v70 = v147;
  if ((v29 & 1) == 0)
  {
    v130 = self->_workQueue;
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = __41__SUManagerCore_resumeOrResetIfNecessary__block_invoke_3;
    v157[3] = &unk_279CAA7C0;
    v157[4] = self;
    v158 = v147;
    dispatch_async(v130, v157);
    +[SUUtility deleteKeepAliveFile];
  }

  SULogInfo(@"State reset complete.", v121, v122, v123, v124, v125, v126, v127, v142);

  v4 = v146;
LABEL_61:
  SULogInfo(@"waiting %d seconds to resume from last known state", v63, v64, v65, v66, v67, v68, v69, 2);
  v131 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(self->_resumeFromStateSemaphore, v131))
  {
    v139 = @"waiting for resume from last known state timed out, continue anyway";
  }

  else
  {
    v139 = @"done waiting for resume from last known state, continuing";
  }

  SULogInfo(v139, v132, v133, v134, v135, v136, v137, v138, v143);
}

void __41__SUManagerCore_resumeOrResetIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained newOSDetected:*(a1 + 40) deleteKeepAlive:*(a1 + 48)];
}

void __41__SUManagerCore_resumeOrResetIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained splatUpdateDetected];
}

void __41__SUManagerCore_resumeOrResetIfNecessary__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained splatRollbackDetected:*(a1 + 40)];
}

- (void)_resumeFromLastKnownState
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUState *)self->_state lastPendingSplatAlertDate];

  if (v3)
  {
    v4 = [(SUState *)self->_state lastPendingSplatAlertDate];
    [(SUManagerCore *)self scheduleSplatFollowUpDate:v4];
  }

  v5 = [(SUState *)self->_state lastDownload];
  v6 = [v5 copy];

  if (!v6 || ![v6 isValidDownload])
  {
    v15 = 0;
    v47 = @"No previous download recognized; cleaning up all software update assets.";
LABEL_10:
    SULogInfo(v47, v7, v8, v9, v10, v11, v12, v13, v77);
    [(SUManagerCore *)self resetDownloadState];
    [(SUManagerEngine *)self->_engine activateLoadingPersisted:0];
    v48 = 0;
    v87 = 0;
    goto LABEL_11;
  }

  v14 = [v6 descriptor];
  v15 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:v14];

  v87 = [v15 getMASoftwareUpdateAsset];
  v79 = [v6 descriptor];
  SULogInfo(@"Found last download: %@ with descriptor: %@ and matching core descriptor: %@ with asset: %@", v16, v17, v18, v19, v20, v21, v22, v6);

  if (!v87)
  {
    v47 = @"No last asset found; cleaning up all software update assets.";
    goto LABEL_10;
  }

  v23 = [v6 downloadOptions];
  v24 = [v6 descriptor];
  v25 = [SUDownloadPolicyFactory userDownloadPolicyForDescriptor:v24];
  [v23 setActiveDownloadPolicy:v25];

  v26 = [(SUManagerCore *)self downloader];
  [v26 setDownload:v6];

  v27 = [(SUManagerCore *)self downloader];
  [v27 setDownloadAsset:v87];

  v28 = [v6 progress];
  LODWORD(v25) = [v28 isDone];

  v86 = v15;
  if (v25)
  {
    v36 = [v6 progress];
    v37 = [v36 phase];
    v38 = [@"SUDownloadPhasePreparingForInstallation" isEqualToString:v37];

    if (v38)
    {
      SULogInfo(@"Last known state indicates update prepared. Re-registering for RecordDataForBrain unlock callback", v39, v40, v41, v42, v43, v44, v45, v77);
      [(SUManagerCore *)self removeUnlockCallback:@"unlockCallbackRecordDataForBrain"];
      [(SUManagerCore *)self addUnlockCallback:sel__recordLastUnlockTimePostPrepare forKey:@"unlockCallbackRecordDataForBrain"];
      v85 = 1;
      [(SUManagerCore *)self setResetDownloadStateOnCleanActivation:1];
      v46 = 5;
    }

    else
    {
      v59 = [v6 progress];
      v60 = [v59 phase];
      SULogInfo(@"Download progress is done, but phase is: %@", v61, v62, v63, v64, v65, v66, v67, v60);

      v46 = 0;
      v85 = 0;
    }
  }

  else
  {
    SULogInfo(@"Last known state indicates update was *not* downloaded and prepared. Unregistering unlock callback", v29, v30, v31, v32, v33, v34, v35, v77);
    [(SUManagerCore *)self removeUnlockCallback:@"unlockCallbackRecordDataForBrain"];
    [(SUManagerCore *)self setDownloading:1];
    [(SUManagerCore *)self setResetDownloadStateOnCleanActivation:1];
    v49 = [v6 progress];
    v50 = [v49 phase];
    v51 = [@"SUDownloadPhaseFetching" isEqualToString:v50];

    if (v51)
    {
      SULogInfo(@"Asset is installed, but prepare was interrupted", v52, v53, v54, v55, v56, v57, v58, v78);
      v85 = 0;
      v46 = 4;
    }

    else
    {
      v85 = 0;
      v46 = 2;
    }
  }

  v81 = [SUManagerEngineDownloadDescriptor alloc];
  v84 = [v6 descriptor];
  v83 = [v84 releaseDate];
  v68 = [v83 copy];
  v82 = [(SUManagerCore *)self sessionID];
  v69 = [v82 copy];
  v70 = [(SUState *)self->_state lastScannedDescriptorScanOptions];
  v71 = [v70 copy];
  v72 = [v6 downloadOptions];
  v73 = [(SUManagerCore *)self newInstallTonightConfig];
  v74 = [(SUState *)self->_state lastSpaceCleanupLevel];
  v80 = v46;
  v75 = v68;
  v48 = [(SUManagerEngineDownloadDescriptor *)v81 initWithAsset:v87 releaseDate:v68 sessionID:v69 scanOptions:v71 downloadOptions:v72 installTonightConfig:v73 coreDescriptor:v86 downloadAtPhase:v80 cleanupLevel:v74, v87];

  self->_reportStartedFromPersistedState = 1;
  [(SUManagerEngine *)self->_engine activateLoadingPersisted:v48];
  if (v85)
  {
    v76 = [(SUManagerCore *)self managedDeviceManager];
    [v76 refreshAssetAudience];
  }

  v15 = v86;
LABEL_11:
}

- (SUManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SUManagerEngine)engine
{
  dispatch_assert_queue_V2(self->_workQueue);
  engine = self->_engine;

  return engine;
}

- (SUManagedDeviceManager)managedDeviceManager
{
  dispatch_assert_queue_V2(self->_workQueue);
  managedDeviceManager = self->_managedDeviceManager;

  return managedDeviceManager;
}

- (SUDDMManager)ddmManager
{
  dispatch_assert_queue_V2(self->_workQueue);
  v2 = +[SUManagerServer sharedInstance];
  v3 = [v2 ddmManager];

  return v3;
}

- (SUState)state
{
  dispatch_assert_queue_V2(self->_workQueue);
  state = self->_state;

  return state;
}

- (NSHashTable)observers
{
  dispatch_assert_queue_V2(self->_workQueue);
  observers = self->_observers;

  return observers;
}

- (BOOL)isScanning
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  v4 = [v3 isScanning];

  return v4;
}

- (BOOL)isDownloading
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  v4 = [v3 isDownloading];

  return v4;
}

- (BOOL)isUpdateDownloaded
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  v4 = [v3 isUpdateDownloaded];

  return v4;
}

- (BOOL)isForeground
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  v4 = [v3 isForeground];

  return v4;
}

- (BOOL)isClearingSpace
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  v4 = [v3 isClearingSpace];

  return v4;
}

- (BOOL)isInstalling
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self installer];
  v4 = [v3 isInstalling];

  return v4;
}

- (BOOL)isInstalled
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self installer];
  v4 = [v3 isInstalled];

  return v4;
}

- (BOOL)isInstallTonight
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self installer];
  v4 = [v3 isInstallTonight];

  return v4;
}

- (BOOL)isInstallTonightScheduled
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self installer];
  v4 = [v3 isInstallTonightScheduled];

  return v4;
}

- (MAAsset)preferredAssetToDownloadFromLastScan
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  v4 = [v3 preferredLastScannedCoreDescriptor];
  v5 = [v4 getMASoftwareUpdateAsset];

  return v5;
}

- (MAAsset)alternateAssetToDownloadFromLastScan
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  v4 = [v3 alternateLastScannedCoreDescriptor];
  v5 = [v4 getMASoftwareUpdateAsset];

  return v5;
}

- (SUCoreDescriptor)preferredLastScannedDescriptor
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  v4 = [v3 preferredLastScannedCoreDescriptor];

  return v4;
}

- (void)setPreferredLastScannedDescriptor:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self scanner];
  [v6 setPreferredLastScannedCoreDescriptor:v5];
}

- (SUCoreDescriptor)alternateLastScannedDescriptor
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  v4 = [v3 alternateLastScannedCoreDescriptor];

  return v4;
}

- (void)setAlternateLastScannedDescriptor:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self scanner];
  [v6 setAlternateLastScannedCoreDescriptor:v5];
}

- (id)discoveryDateForBuildVersion:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self scanner];
  v7 = [v6 discoveryDateforBuildVersion:v5];

  return v7;
}

- (id)fullyUnrampedDateForBuildVersion:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self scanner];
  v7 = [v6 fullyUnrampedDateForBuildVersion:v5];

  return v7;
}

- (SUScanOptions)lastScannedDescriptorScanOptions
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  v4 = [v3 lastScannedDescriptorScanOptions];

  return v4;
}

- (NSDate)lastStashbagPersistedDate
{
  dispatch_assert_queue_V2(self->_workQueue);
  lastStashbagPersistedDate = self->_lastStashbagPersistedDate;

  return lastStashbagPersistedDate;
}

- (void)setLastStashbagPersistedDate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  lastStashbagPersistedDate = self->_lastStashbagPersistedDate;
  self->_lastStashbagPersistedDate = v4;
}

- (SUAutoUpdatePasscodePolicy)passcodePolicy
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self installer];
  v4 = [v3 passcodePolicy];

  return v4;
}

- (void)setPasscodePolicy:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self installer];
  [v6 setPasscodePolicy:v5];
}

- (SUInstallPolicy)installPolicy
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self installer];
  v4 = [v3 installPolicy];

  return v4;
}

- (void)setInstallPolicy:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self installer];
  [v6 setInstallPolicy:v5];
}

- (SUSFollowUpController)followUpController
{
  followUpController = self->_followUpController;
  if (!followUpController)
  {
    v4 = +[SUSFollowUpController sharedController];
    v5 = self->_followUpController;
    self->_followUpController = v4;

    followUpController = self->_followUpController;
  }

  return followUpController;
}

- (void)_presentAutoUpdateBannerOnUnlock
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerCore__presentAutoUpdateBannerOnUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __49__SUManagerCore__presentAutoUpdateBannerOnUnlock__block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeUnlockCallback:@"unlockCallbackPresentAutoUpdateBanner"];
  v2 = dispatch_time(0, 2000000000);
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerCore__presentAutoUpdateBannerOnUnlock__block_invoke_2;
  block[3] = &unk_279CAA708;
  block[4] = v3;
  dispatch_after(v2, v4, block);
}

void __49__SUManagerCore__recordLastUnlockTimePostPrepare__block_invoke()
{
  v17 = @"Controller/ControllerDataForBrain.plist";
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/MobileSoftwareUpdate/%@"];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  if (![v0 fileExistsAtPath:v18] || (SULogInfo(@"Existing ControllerDataForBrain file found", v1, v2, v3, v4, v5, v6, v7, @"Controller/ControllerDataForBrain.plist"), objc_msgSend(MEMORY[0x277CBEB38], "dictionaryWithContentsOfFile:", v18), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    SULogInfo(@"Existing ControllerDataForBrain file not found. Creating", v1, v2, v3, v4, v5, v6, v7, v17);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v8 setObject:v9 forKeyedSubscript:@"LastUnlockTimePostPrepare"];
  [v8 writeToFile:v18 atomically:1];
  SULogInfo(@"Wrote ControllerDataForBrain to disk %@", v10, v11, v12, v13, v14, v15, v16, v8);
}

- (void)_notifyEngineOnUnlock
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUManagerCore__notifyEngineOnUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __38__SUManagerCore__notifyEngineOnUnlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) engine];
  [v1 onUnlock];
}

- (void)doUnlockEvents
{
  v40 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = self->_unlockCallbacks;
  v4 = [(NSMutableDictionary *)v3 count];
  SULogInfo(@"callback count = %lu", v5, v6, v7, v8, v9, v10, v11, v4);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [(NSMutableDictionary *)v3 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(NSMutableDictionary *)v3 objectForKey:*(*(&v35 + 1) + 8 * v16)];
        SULogInfo(@"selector string = %@", v18, v19, v20, v21, v22, v23, v24, v17);
        if (v17)
        {
          v25 = NSSelectorFromString(v17);
          if (v25 && (v33 = v25, (objc_opt_respondsToSelector() & 1) != 0))
          {
            [(SUManagerCore *)self performSelector:v33];
          }

          else
          {
            SULogInfo(@"Unknown selector %@ for SUManagerCore", v26, v27, v28, v29, v30, v31, v32, v17);
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)addUnlockCallback:(SEL)a3 forKey:(id)a4
{
  v25 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  if (a3)
  {
    if (v25)
    {
      v13 = NSStringFromSelector(a3);
      if (v13)
      {
        v14 = v13;
        SULogInfo(@"Adding unlock callback %@ for key %@", v6, v7, v8, v9, v10, v11, v12, v13);
        [(NSMutableDictionary *)self->_unlockCallbacks setSafeObject:v14 forKey:v25];
        v15 = [(NSMutableDictionary *)self->_unlockCallbacks count];
        SULogInfo(@"unlock callback count = %lu", v16, v17, v18, v19, v20, v21, v22, v15);
        [(SUState *)self->_state setUnlockCallbacks:self->_unlockCallbacks];
        [(SUState *)self->_state save];

        goto LABEL_9;
      }

      v23 = @"Failed to create NSString from selector";
    }

    else
    {
      v23 = @"Cannot add unlock callbakc with nil unlockCallbackKey";
    }
  }

  else
  {
    v23 = @"Cannot add unlock callback with nil selector";
  }

  SULogInfo(v23, v6, v7, v8, v9, v10, v11, v12, v24);
LABEL_9:
}

- (void)removeUnlockCallback:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  SULogInfo(@"removing unlock callback for key %@", v6, v7, v8, v9, v10, v11, v12, v5);
  [(NSMutableDictionary *)self->_unlockCallbacks removeObjectForKey:v5];

  v13 = [(NSMutableDictionary *)self->_unlockCallbacks count];
  SULogInfo(@"unlock callback count = %lu", v14, v15, v16, v17, v18, v19, v20, v13);
  [(SUState *)self->_state setUnlockCallbacks:self->_unlockCallbacks];
  state = self->_state;

  [(SUState *)state save];
}

- (void)clearUnlockCallbacks
{
  dispatch_assert_queue_V2(self->_workQueue);
  SULogInfo(@"Clearing unlock callbacks", v3, v4, v5, v6, v7, v8, v9, v11);
  [(NSMutableDictionary *)self->_unlockCallbacks removeAllObjects];
  [(SUState *)self->_state setUnlockCallbacks:self->_unlockCallbacks];
  state = self->_state;

  [(SUState *)state save];
}

- (NSString)sessionID
{
  dispatch_assert_queue_V2(self->_workQueue);
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v3 = +[SUPreferences sharedInstance];
    v4 = [v3 overrideSessionIDRampingPortion];

    if (v4 && [v4 length] == 3)
    {
      SULogInfo(@"[PREFERENCES] session id ramping portion is set to %@", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = MEMORY[0x277CCACA8];
      v13 = [(NSString *)self->_sessionID substringToIndex:[(NSString *)self->_sessionID length]- 3];
      v14 = [v12 stringWithFormat:@"%@%@", v13, v4];

      goto LABEL_7;
    }
  }

  v14 = self->_sessionID;
LABEL_7:

  return v14;
}

- (BOOL)isAutoUpdateEnabled
{
  v2 = self;
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUState *)v2->_state lastDownload];
  v4 = [v3 descriptor];
  LOBYTE(v2) = [(SUManagerCore *)v2 isDescriptorAutoUpdatable:v4];

  return v2;
}

- (BOOL)isDescriptorAutoDownloadable:(id)a3
{
  v11 = a3;
  if (!v11)
  {
    v24 = @"nil update is not auto downloadable";
    goto LABEL_10;
  }

  v12 = +[SUPreferences sharedInstance];
  v13 = [v12 autoDownloadDeletedBuild];

  if (v13)
  {
LABEL_8:
    if (![v11 rampEnabled])
    {
      if ([v11 updateType] == 4)
      {
        v26 = [(SUState *)self->_state rolledBackBuildVersions];
        if (v26)
        {
          v27 = v26;
          v28 = [v11 productBuildVersion];
          if (v28)
          {
            v29 = v28;
            v30 = [(SUState *)self->_state rolledBackBuildVersions];
            v31 = [v11 productBuildVersion];
            v32 = [v30 containsObject:v31];

            if (v32)
            {
              v24 = @"Update not auto downloadable because it was rolled back";
              goto LABEL_10;
            }
          }

          else
          {
          }
        }
      }

      v25 = 1;
      goto LABEL_19;
    }

    v24 = @"Update not auto downloadable because ramp=YES";
LABEL_10:
    SULogInfo(v24, v4, v5, v6, v7, v8, v9, v10, v34);
    goto LABEL_11;
  }

  v14 = [(SUState *)self->_state lastDeletedSUAssetID];
  if (!v14 || ([v11 assetID], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", v14), v15, !v16))
  {

    goto LABEL_8;
  }

  SULogInfo(@"Update not auto downloadable because it was previously deleted by the user", v17, v18, v19, v20, v21, v22, v23, v34);

LABEL_11:
  v25 = 0;
LABEL_19:

  return v25;
}

- (BOOL)isDescriptorAutoUpdatable:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [v4 autoUpdateEnabled];
  if ([v4 updateType] != 4)
  {
    v13 = [v4 upgradeType];
    v14 = +[SUPreferences sharedInstance];
    v15 = [v14 isAutomaticUpdateV2Enabled];

    if (v13 == 1)
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = +[SUPreferences sharedInstance];
    v19 = [v18 autoUpdateForceOn];

    if ((v19 & 1) == 0)
    {
      v20 = +[SUPreferences sharedInstance];
      v21 = [v20 autoUpdateForceOff];

      v12 = (v21 ^ 1) & v17;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = +[SUPreferences sharedInstance];
  v7 = [v6 autoInstallSecurityResponse];

  v8 = +[SUPreferences sharedInstance];
  v9 = [v8 autoInstallSecurityResponseForceOn];

  if (v9)
  {
LABEL_11:
    v12 = 1;
    goto LABEL_13;
  }

  v10 = +[SUPreferences sharedInstance];
  v11 = [v10 autoInstallSecurityResponseForceOff];

  v12 = (v11 ^ 1) & v7 & v5;
LABEL_13:

  return v12;
}

- (void)_loadBrainOnUnlockCallback
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUManagerCore__loadBrainOnUnlockCallback__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __43__SUManagerCore__loadBrainOnUnlockCallback__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) downloader];
  [v1 _loadBrainOnUnlockCallback];
}

- (void)loadBrainOnUnlock
{
  dispatch_assert_queue_V2(self->_workQueue);
  v4 = [(SUManagerCore *)self downloader];
  v3 = [(SUManagerCore *)self updateToAutoDownload];
  [v4 loadBrainOnUnlockForDescriptor:v3];
}

- (void)tryAutoDownload
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  [v3 tryAutoDownload];
}

- (void)noteAutoDownloadFailedToStartWithError:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self downloader];
  [v6 noteAutoDownloadFailedToStartWithError:v5];
}

- (void)endAutoDownloadTasksAndResetState
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  [v3 endAutoDownloadTasksAndResetState];
}

- (void)scanForUpdates:(id)a3 complete:(id)a4
{
  workQueue = self->_workQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(workQueue);
  v9 = [(SUManagerCore *)self scanner];
  [v9 scanForUpdates:v8 complete:v7];

  v10 = [(SUManagerCore *)self tracker];
  [v10 recordScanForUpdates:v8 fromClient:0];
}

- (id)coreDescriptorForSUDescriptor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SUManagerCore *)self scanner];
    v6 = [v5 preferredLastScannedCoreDescriptor];

    if ([v4 matchesDescriptor:v6 comparisonFlags:0 reason:0])
    {
      v7 = v6;
    }

    else
    {
      v8 = [(SUManagerCore *)self scanner];
      v9 = [v8 alternateLastScannedCoreDescriptor];

      v7 = 0;
      if ([v4 matchesDescriptor:v9 comparisonFlags:0 reason:0])
      {
        v7 = v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)coreDescriptorForBuildVersion:(id)a3 versionExtra:(id)a4 isSplombo:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v10 = [(SUManagerCore *)self scanner];
  v11 = [v10 preferredLastScannedCoreDescriptor];

  v12 = [(SUManagerCore *)self scanner];
  v13 = [v12 alternateLastScannedCoreDescriptor];

  if (!v11)
  {
    goto LABEL_8;
  }

  v14 = MEMORY[0x277D64400];
  v15 = [v11 productVersionExtra];
  if (![v14 stringIsEqual:v15 to:v9])
  {
LABEL_7:

    goto LABEL_8;
  }

  v16 = [v11 productBuildVersion];
  if (([v16 isEqualToString:v8] & 1) == 0)
  {

    goto LABEL_7;
  }

  v17 = [v11 associatedSplatDescriptor];
  v18 = v17 == 0;

  if (v18 != v5)
  {
    v19 = v11;
LABEL_13:
    v25 = v19;
    goto LABEL_17;
  }

LABEL_8:
  if (!v13)
  {
    goto LABEL_16;
  }

  v20 = MEMORY[0x277D64400];
  v21 = [v13 productVersionExtra];
  if (([v20 stringIsEqual:v21 to:v9] & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v22 = [v13 productBuildVersion];
  if (([v22 isEqualToString:v8] & 1) == 0)
  {

    goto LABEL_15;
  }

  v23 = [v13 associatedSplatDescriptor];
  v24 = v23 == 0;

  if (v24 != v5)
  {
    v19 = v13;
    goto LABEL_13;
  }

LABEL_16:
  v25 = 0;
LABEL_17:

  return v25;
}

- (void)unscheduleRecommendedUpdateNotification
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  [v3 unscheduleRecommendedUpdateNotification];
}

- (void)resumeOrDisableReserveSpace
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[SUPreferences sharedInstance];
    v3 = [v2 softwareUpdateReserveDisabled];

    v4 = MEMORY[0x277D641E8];
    if ((v3 & 1) == 0)
    {

      [v4 cacheDeleteResumeReserveSpace];
      return;
    }
  }

  else
  {
    v4 = MEMORY[0x277D641E8];
  }

  [v4 cacheDeleteDisableReserveSpace];
}

- (void)overrideSoftwareUpdateReserve:(id)a3 systemGrowthMarginSize:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  if (v10 && [v10 unsignedLongLongValue])
  {
    v7 = +[SUPreferences sharedInstance];
    [v7 disableSoftwareUpdateReserve:1];

    v8 = +[SUPreferences sharedInstance];
    [v8 setSoftwareUpdateReserveSize:v10];

    v9 = +[SUPreferences sharedInstance];
    [v9 setSystemGrowthMarginSize:v6];

    [MEMORY[0x277D641E8] cacheDeleteSetReserveSpace:v10 systemGrowthMarginSize:v6];
  }

  else
  {
    [(SUManagerCore *)self disableReserveSpace:1];
  }
}

- (id)softwareUpdateReserveSizes
{
  dispatch_assert_queue_V2(self->_workQueue);
  v13 = 0;
  v14 = 0;
  v2 = [MEMORY[0x277D641E8] cacheDeleteGetReserveSpace:&v14 withError:&v13];
  v3 = v14;
  v11 = v13;
  if (v2)
  {
    SULogError(@"%s: unable to get reserve space info, Error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerCore softwareUpdateReserveSizes]");
  }

  return v3;
}

- (void)startDownloadWithMetadata:(id)a3 withResult:(id)a4
{
  workQueue = self->_workQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(workQueue);
  v9 = [(SUManagerCore *)self preferredLastScannedDescriptor];
  v18 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v9];

  v10 = [(SUManagerCore *)self alternateLastScannedDescriptor];
  v11 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v10];

  v12 = [[SUScanResults alloc] initWithPreferredDescriptor:v18 alternateDescriptor:v11];
  v13 = [SUDownloadOptions alloc];
  v14 = [(SUScanResults *)v12 latestUpdate];
  v15 = [(SUDownloadOptions *)v13 initWithMetadata:v8 andDescriptor:v14];

  [(SUManagerCore *)self startDownloadWithOptions:v15 withResult:v7];
  v16 = [(SUManagerCore *)self tracker];
  v17 = [(SUDownloadOptions *)v15 clientName];
  [v16 recordDownloadStarted:v15 fromClient:v17];
}

- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v6 = a4;
  workQueue = self->_workQueue;
  v8 = a3;
  dispatch_assert_queue_V2(workQueue);
  notify_post([*MEMORY[0x277D64250] UTF8String]);
  v9 = [(SUManagerCore *)self downloader];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __53__SUManagerCore_startDownloadWithOptions_withResult___block_invoke;
  v16 = &unk_279CAC8E8;
  v17 = self;
  v18 = v6;
  v10 = v6;
  [v9 startDownloadWithOptions:v8 withResult:&v13];

  v11 = [(SUManagerCore *)self tracker:v13];
  v12 = [v8 clientName];
  [v11 recordDownloadStarted:v8 fromClient:v12];
}

void __53__SUManagerCore_startDownloadWithOptions_withResult___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 128);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SUManagerCore_startDownloadWithOptions_withResult___block_invoke_2;
    block[3] = &unk_279CAADF0;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)updateDownloadOptions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v8 = [(SUManagerCore *)self downloader];
  v21 = 0;
  v9 = [v8 updateDownloadOptions:v6 error:&v21];
  v10 = v21;

  if (v7)
  {
    externWorkQueue = self->_externWorkQueue;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__SUManagerCore_updateDownloadOptions_withResult___block_invoke;
    v17 = &unk_279CAADF0;
    v19 = v7;
    v20 = v9;
    v18 = v10;
    dispatch_async(externWorkQueue, &v14);
  }

  v12 = [(SUManagerCore *)self tracker:v14];
  v13 = [v6 clientName];
  [v12 recordDownloadStarted:v6 fromClient:v13];
}

- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_workQueue);
  if (v10)
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
    v75[3] = &unk_279CAC4B0;
    v75[4] = self;
    v76 = v10;
    v60 = MEMORY[0x26D668B30](v75);
    v59 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:3 userInfo:0];
    v18 = [v8 descriptor];
    v19 = [v9 descriptor];
    if (v18)
    {
      v58 = v19;
      v20 = v19 != 0;
      v21 = 1;
    }

    else
    {
      v56 = v8;
      v57 = v9;
      v22 = v19;
      v23 = [(SUManagerCore *)self scanner];
      v24 = [v23 preferredLastScannedCoreDescriptor];
      v18 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v24];

      v25 = [(SUManagerCore *)self scanner];
      v26 = [v25 alternateLastScannedCoreDescriptor];
      v27 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v26];

      v21 = v18 != 0;
      v20 = v27 != 0;
      if (!(v18 | v27))
      {
        v45 = v59;
        v36 = v60;
        (v60)[2](v60, 0, 0, v59, v59);
        v8 = v56;
        v9 = v57;
        goto LABEL_26;
      }

      v58 = v27;
      v8 = v56;
      v9 = v57;
    }

    if (+[SUUtility isReturnToServiceModeActive])
    {
      SULogInfo(@"Not allowing download in RRTS mode", v28, v29, v30, v31, v32, v33, v34, v55);
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:31 userInfo:0];
      v36 = v60;
      (v60)[2](v60, 0, 0, v35, v35);
    }

    else
    {
      if ([(SUManagerCore *)self isDownloading])
      {
        SULogInfo(@"Not performing space check since there is an in-progress download", v37, v38, v39, v40, v41, v42, v43, v55);
        if (v21)
        {
          v44 = 0;
          v45 = v59;
          v36 = v60;
        }

        else
        {
          v45 = v59;
          v44 = v59;
          v36 = v60;
        }

        v49 = v9;
        if (v20)
        {
          v50 = 0;
        }

        else
        {
          v50 = v45;
        }

        (v36)[2](v36, v21, v20, v44, v50);

        v9 = v49;
        goto LABEL_26;
      }

      v46 = v9;
      v73[0] = 0;
      v73[1] = v73;
      v73[2] = 0x2020000000;
      v74 = 0;
      v71[0] = 0;
      v71[1] = v71;
      v71[2] = 0x3032000000;
      v71[3] = __Block_byref_object_copy__17;
      v71[4] = __Block_byref_object_dispose__17;
      v72 = 0;
      v47 = objc_alloc_init(SUSpacePurgeOptions);
      [(SUSpacePurgeOptions *)v47 setCompletionQueue:self->_workQueue];
      [(SUSpacePurgeOptions *)v47 setNeededBytes:[SUUtility totalDiskSpaceForUpdate:v18]];
      [(SUSpacePurgeOptions *)v47 setEnableCacheDelete:1];
      if ([v8 isAutoDownload])
      {
        v48 = 0;
      }

      else
      {
        v48 = [v8 isAppOffloadEnabled];
      }

      [(SUSpacePurgeOptions *)v47 setEnableAppOffload:v48];
      if ([v8 isAutoDownload])
      {
        v51 = 0;
      }

      else
      {
        v51 = [v8 isMASuspensionEnabled];
      }

      [(SUSpacePurgeOptions *)v47 setEnableMobileAssetSuspend:v51];
      [(SUSpacePurgeOptions *)v47 setCacheDeleteUrgency:4];
      [(SUSpacePurgeOptions *)v47 setAppOffloadUrgency:4];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_498;
      v61[3] = &unk_279CACE48;
      v69 = v73;
      v70 = v71;
      v61[4] = self;
      v52 = v18;
      v62 = v52;
      v63 = v8;
      v53 = v58;
      v64 = v53;
      v65 = v46;
      v54 = v47;
      v66 = v54;
      v68 = v60;
      v67 = v59;
      [SUSpace hasSufficientSpaceWithOptions:v54 withCompletion:v61];

      _Block_object_dispose(v71, 8);
      _Block_object_dispose(v73, 8);

      v9 = v46;
      v36 = v60;
    }

    v45 = v59;
LABEL_26:

    goto LABEL_27;
  }

  SULogError(@"%s: no reply handler, do nothing", v11, v12, v13, v14, v15, v16, v17, "[SUManagerCore updatesDownloadableWithOptions:alternateDownloadOptions:replyHandler:]");
LABEL_27:
}

void __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = *(a1 + 32);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a5;
  }

  v9 = a5;
  v10 = a4;
  [v7 donateSUErrorToBiome:v8];
  (*(*(a1 + 40) + 16))();
}

void __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_498(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 96) + 8) + 24) = [v5 hasSufficientFreeSpace];
  objc_storeStrong((*(*(a1 + 104) + 8) + 40), a3);
  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    v7 = *(*(a1 + 104) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v44 = 0;
      v13 = [v10 _isUpdateDownloadable:v11 downloadOptions:v12 error:&v44];
      objc_storeStrong(v8, v44);
      *(*(*(a1 + 96) + 8) + 24) = v13;
    }
  }

  if ([v5 hasSufficientFreeSpace])
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(v15 + 120);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_2;
    v42[3] = &unk_279CAA7C0;
    v42[4] = v15;
    v17 = &v43;
    v43 = v14;
    v18 = v42;
  }

  else
  {
    if (![*(a1 + 48) isAutoDownload])
    {
      goto LABEL_9;
    }

    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v16 = *(v20 + 120);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_3;
    block[3] = &unk_279CAA7C0;
    block[4] = v20;
    v17 = &v41;
    v41 = v19;
    v18 = block;
  }

  dispatch_async(v16, v18);

LABEL_9:
  if (*(a1 + 56))
  {
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__17;
    v36[4] = __Block_byref_object_dispose__17;
    v37 = 0;
    v21 = *(a1 + 64);
    if (!v21)
    {
      v21 = *(a1 + 48);
    }

    [*(a1 + 72) setNeededBytes:{+[SUUtility totalDiskSpaceForUpdate:](SUUtility, "totalDiskSpaceForUpdate:", *(a1 + 56))}];
    [*(a1 + 72) setEnableCacheDelete:1];
    if ([v21 isAutoDownload])
    {
      v22 = 0;
    }

    else
    {
      v22 = [v21 isAppOffloadEnabled];
    }

    [*(a1 + 72) setEnableAppOffload:v22];
    if ([v21 isAutoDownload])
    {
      v26 = 0;
    }

    else
    {
      v26 = [v21 isMASuspensionEnabled];
    }

    [*(a1 + 72) setEnableMobileAssetSuspend:v26];
    [*(a1 + 72) setCacheDeleteUrgency:4];
    [*(a1 + 72) setAppOffloadUrgency:4];
    v27 = *(a1 + 72);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_4;
    v29[3] = &unk_279CACE20;
    v33 = v38;
    v34 = v36;
    v29[4] = *(a1 + 32);
    v30 = *(a1 + 56);
    v28 = v21;
    v31 = v28;
    v32 = *(a1 + 88);
    v35 = *(a1 + 96);
    [SUSpace hasSufficientSpaceWithOptions:v27 withCompletion:v29];

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);
  }

  else
  {
    v23 = *(*(*(a1 + 96) + 8) + 24);
    v24 = *(*(*(a1 + 104) + 8) + 40);
    v25 = *(a1 + 80);
    (*(*(a1 + 88) + 16))();
  }
}

uint64_t __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isDownloading];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isUpdateDownloaded];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) isInstalling];
      if ((result & 1) == 0)
      {
        v3 = *(a1 + 32);
        v4 = *(a1 + 40);

        return [v3 showInsufficientDiskSpaceFollowupForUpdate:v4];
      }
    }
  }

  return result;
}

void __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(a1[8] + 8) + 24) = [v5 hasSufficientFreeSpace];
  objc_storeStrong((*(a1[9] + 8) + 40), a3);
  if (*(*(a1[8] + 8) + 24) == 1)
  {
    v7 = *(a1[9] + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      v10 = a1[4];
      v11 = a1[5];
      v12 = a1[6];
      obj = 0;
      v13 = [v10 _isUpdateDownloadable:v11 downloadOptions:v12 error:&obj];
      objc_storeStrong(v8, obj);
      *(*(a1[8] + 8) + 24) = v13;
    }
  }

  if ([v5 hasSufficientFreeSpace])
  {
    v15 = a1[4];
    v14 = a1[5];
    v16 = *(v15 + 120);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_5;
    block[3] = &unk_279CAA7C0;
    block[4] = v15;
    v22 = v14;
    dispatch_async(v16, block);
  }

  v17 = *(*(a1[10] + 8) + 24);
  v18 = *(*(a1[8] + 8) + 24);
  v19 = *(*(a1[11] + 8) + 40);
  v20 = *(*(a1[9] + 8) + 40);
  (*(a1[7] + 16))();
}

- (BOOL)_isUpdateDownloadable:(id)a3 downloadOptions:(id)a4 error:(id *)a5
{
  v13 = 0;
  v7 = a4;
  v8 = a3;
  v9 = +[SUDownloadPolicyFactory userDownloadPolicyForDescriptor:existingPolicy:allowCellularOverride:](SUDownloadPolicyFactory, "userDownloadPolicyForDescriptor:existingPolicy:allowCellularOverride:", v8, 0, [v7 allowUnrestrictedCellularDownload]);

  v10 = [v7 downloadFeeAgreementStatus];
  [v9 setCellularFeeAgreementStatus:v10];
  v11 = [v9 isDownloadableForCurrentNetworkConditions:&v13 cellularFeesApply:0];
  if (a5 && v13)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:v13 userInfo:0];
  }

  return v11;
}

- (void)updateDownloadMetadata:(id)a3 withResult:(id)a4
{
  workQueue = self->_workQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(workQueue);
  v9 = [SUDownloadOptions alloc];
  v10 = [(SUManagerCore *)self download];
  v11 = [v10 descriptor];
  v12 = [(SUDownloadOptions *)v9 initWithMetadata:v8 andDescriptor:v11];

  [(SUManagerCore *)self updateDownloadOptions:v12 withResult:v7];
}

- (id)download
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  v4 = [v3 download];

  return v4;
}

- (id)downloadAsset
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  v4 = [v3 downloadAsset];

  return v4;
}

- (void)deviceIsUpToDateForSU:(BOOL)a3 forSplat:(BOOL)a4
{
  dispatch_assert_queue_V2(self->_workQueue);
  v7 = [(SUManagerCore *)self downloader];
  v8 = [v7 isSplatDownload];

  if (v8)
  {
    if (!a4)
    {
      v16 = @"Got up to date report but not for current Splat download, keeping it";
LABEL_9:

      SULogInfo(v16, v9, v10, v11, v12, v13, v14, v15, v19);
      return;
    }
  }

  else if (!a3)
  {
    v16 = @"Got up to date report but not for current SU download, keeping it";
    goto LABEL_9;
  }

  [(SUManagerCore *)self clearBadgeAndBanner];
  v17 = [(SUManagerCore *)self downloader];
  [v17 deviceIsUpToDate];
}

- (id)updateToAutoDownload
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self scanner];
  v4 = [v3 descriptorToAutoDownload];

  return v4;
}

- (void)cleanupPreviousDownloadState
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  [v3 cleanupPreviousDownloadState:1];
}

- (void)resetDownloadState
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  [v3 resetDownloadStateOnStartup];
}

- (id)slaVersion
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(SUManagerCore *)self downloader];
  v4 = [v3 slaVersion];

  return v4;
}

- (void)updateInstallPolicyType:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [(SUManagerCore *)self installer];
  [v5 updateInstallPolicyType:a3];
}

- (id)newInstallTonightConfig
{
  v2 = [(SUManagerCore *)self isInstallTonight];
  v3 = MEMORY[0x277D647B0];
  if (!v2)
  {
    v3 = MEMORY[0x277D64728];
  }

  v4 = *v3;

  return v4;
}

- (id)installTonightConfigDictionary
{
  v25[7] = *MEMORY[0x277D85DE8];
  v24[0] = @"installTonightActive";
  v3 = [(SUManagerCore *)self isInstallTonight];
  v4 = *MEMORY[0x277D647B0];
  v5 = *MEMORY[0x277D64728];
  if (v3)
  {
    v6 = *MEMORY[0x277D647B0];
  }

  else
  {
    v6 = *MEMORY[0x277D64728];
  }

  v25[0] = v6;
  v24[1] = @"autoUpdateEnabledForDescriptor";
  v7 = [(SUManagerCore *)self download];
  v8 = [v7 descriptor];
  if ([v8 autoUpdateEnabled])
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v25[1] = v9;
  v24[2] = @"autoDownload";
  v10 = [(SUManagerCore *)self download];
  v11 = [v10 downloadOptions];
  if ([v11 isAutoDownload])
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  v25[2] = v12;
  v24[3] = @"autoUpdateToggleEnabled";
  v13 = +[SUPreferences sharedInstance];
  if ([v13 isAutomaticUpdateV2Enabled])
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  v25[3] = v14;
  v24[4] = @"autoDownloadToggleEnabled";
  v15 = +[SUPreferences sharedInstance];
  if ([v15 isAutomaticDownloadEnabled])
  {
    v16 = v4;
  }

  else
  {
    v16 = v5;
  }

  v25[4] = v16;
  v24[5] = @"autoInstallSystemAndDataFilesToggleEnabled";
  v17 = +[SUPreferences sharedInstance];
  if ([v17 autoInstallSystemAndDataFiles])
  {
    v18 = v4;
  }

  else
  {
    v18 = v5;
  }

  v25[5] = v18;
  v24[6] = @"autoInstallSecurityResponseToggleEnabled";
  v19 = +[SUPreferences sharedInstance];
  if ([v19 autoInstallSecurityResponse])
  {
    v20 = v4;
  }

  else
  {
    v20 = v5;
  }

  v25[6] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)isUpdateReadyForInstallationWithOptions:(id)a3 replyHandler:(id)a4
{
  workQueue = self->_workQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(workQueue);
  v9 = [(SUManagerCore *)self installer];
  [v9 isUpdateReadyForInstallationWithOptions:v8 replyHandler:v7];
}

- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4
{
  workQueue = self->_workQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(workQueue);
  v9 = [(SUManagerCore *)self installer];
  [v9 installUpdateWithInstallOptions:v8 withResult:v7];

  v12 = [(SUManagerCore *)self tracker];
  v10 = [(SUManagerCore *)self download];
  v11 = [v10 descriptor];
  [v12 recordInstallStarted:v8 withDownload:v11];
}

- (void)autoSUFailedWithError:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(SUManagerCore *)self installer];
  [v6 autoSUFailedWithError:v5];
}

- (void)_persistStash
{
  dispatch_assert_queue_V2(self->_workQueue);
  SULogInfo(@"entered _persistStash", v3, v4, v5, v6, v7, v8, v9, v30);
  v10 = +[SUKeybagInterface sharedInstance];
  v11 = [(SUManagerCore *)self download];
  v12 = [v11 descriptor];
  v13 = [v10 installationKeybagStateForDescriptor:v12];

  if (v13 == 2)
  {
    SULogInfo(@"Persist the stashbag", v14, v15, v16, v17, v18, v19, v20, v31);
    v21 = +[SUKeybagInterface sharedInstance];
    v22 = [v21 persistKeybagStash];

    if (v22)
    {
      SULogInfo(@"Stashbag persisted", v23, v24, v25, v26, v27, v28, v29, v32);
      v33 = [MEMORY[0x277CBEAA8] date];
      [(SUManagerCore *)self setLastStashbagPersistedDate:v33];
    }

    else
    {
      SULogInfo(@"Stashbag persist failed: %d", v23, v24, v25, v26, v27, v28, v29, 0);

      [(SUManagerCore *)self setLastStashbagPersistedDate:0];
    }
  }

  else
  {
    SULogInfo(@"installationKeybagState = %d", v14, v15, v16, v17, v18, v19, v20, v13);
  }
}

- (void)persistStashOnUnlock
{
  SULogInfo(@"Entering persistStashOnUnlock", a2, v2, v3, v4, v5, v6, v7, v19);
  v9 = +[SUKeybagInterface sharedInstance];
  v10 = [v9 isPasscodeLocked];

  SULogInfo(@"isPasscodeLocked = %d", v11, v12, v13, v14, v15, v16, v17, v10);
  if ((v10 & 1) == 0)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SUManagerCore_persistStashOnUnlock__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)createInstallationKeybag:(id)a3 withResult:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v8 = [v6 descriptor];
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = [(SUManagerCore *)self download];
  if (v9)
  {
    v10 = [(SUManagerCore *)self download];
    [v10 descriptor];
  }

  else
  {
    v10 = [(SUManagerCore *)self preferredLastScannedDescriptor];
    [SUManagerEngine SUDescriptorFromCoreDescriptor:v10];
  }
  v8 = ;

  if (v8)
  {
LABEL_6:
    v18 = [v6 passcode];
    if (v18)
    {
    }

    else
    {
      v19 = [v6 laContext];

      if (!v19)
      {
        SULogInfo(@"No passcode or LAContext provided for keybag. Unable to create installation keybag with null passcode and null LAContext", v20, v21, v22, v23, v24, v25, v26, v51);
        if (!v7)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }

    v34 = [v6 keybagType];
    if (!v34)
    {
      SULogInfo(@"createInstallationKeybag - asked to create attended keybag but will create unattended one anyway", v27, v28, v29, v30, v31, v32, v33, v51);
      v34 = 1;
    }

    v35 = [v6 laContext];

    v36 = +[SUKeybagInterface sharedInstance];
    if (v35)
    {
      v37 = [v6 laContext];
      v38 = [v36 createInstallationKeybagForDescriptor:v8 withLASecret:v37 forUnattendedInstall:v34 == 1];
    }

    else
    {
      v37 = [v6 passcode];
      v38 = [v36 createInstallationKeybagForDescriptor:v8 withSecret:v37 forUnattendedInstall:v34 == 1];
    }

    v39 = v38;

    [(SUManagerCore *)self setLastStashbagPersistedDate:0];
    if (v34 == 1 && v39)
    {
      v52 = v6;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v40 = [(NSHashTable *)self->_observers allObjects];
      v41 = [v40 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v55;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v55 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v54 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              externWorkQueue = self->_externWorkQueue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __53__SUManagerCore_createInstallationKeybag_withResult___block_invoke;
              block[3] = &unk_279CAA708;
              block[4] = v45;
              dispatch_async(externWorkQueue, block);
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v42);
      }

      v6 = v52;
    }

    if (v39)
    {
      v7[2](v7, 1, 0);
      goto LABEL_34;
    }

    v47 = [SUUtility errorWithCode:82];
    [(SUManagerCore *)self reportPostponedEvent:v47 withStatus:@"installNotReady"];

LABEL_29:
    v48 = [SUUtility errorWithCode:82];
    (v7)[2](v7, 0, v48);

    goto LABEL_34;
  }

  SULogInfo(@"No descriptor provided for keybag. Unable to create installation keybag with null descriptor", v11, v12, v13, v14, v15, v16, v17, v51);
  if (v7)
  {
    v49 = [SUUtility errorWithCode:82];
    (v7)[2](v7, 0, v49);
  }

  v8 = 0;
LABEL_34:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)clearKeybagStash
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[SUKeybagInterface sharedInstance];
  v4 = [v3 disableKeybagStash];

  v12 = @"failed";
  if (v4)
  {
    v12 = @"succeeded";
  }

  SULogInfo(@"destroying keybag stash %@", v5, v6, v7, v8, v9, v10, v11, v12);

  [(SUManagerCore *)self setLastStashbagPersistedDate:0];
}

- (void)presentAutoUpdateBanner:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = SULogBadging();
  SULogInfoForSubsystem(v5, @"Got request to present AutoUpdateBanner", v6, v7, v8, v9, v10, v11, v51[0]);

  v12 = [(SUManagerCore *)self download];
  if (v12)
  {
    v13 = v12;
    v14 = [(SUManagerCore *)self download];
    v15 = [v14 descriptor];

    if (v15)
    {
      v16 = [(SUManagerCore *)self download];
      v17 = [v16 descriptor];

      v18 = [(SUManagerCore *)self followUpController];
      v19 = [v18 isCurrentlyPresentingFollowUpType:2];

      if (v19)
      {
        v20 = SULogBadging();
        SULogInfoForSubsystem(v20, @"Not presenting banner since it is already being presented", v21, v22, v23, v24, v25, v26, v51[0]);
LABEL_5:

        goto LABEL_14;
      }

      if ([v17 isSplatOnly] && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "autoInstallSecurityResponse"), v36, v37))
      {
        v38 = [(SUState *)self->_state lastPendingSplatAlertDate];

        if (!v38)
        {
          state = self->_state;
          v40 = [MEMORY[0x277CBEAA8] date];
          v41 = [v40 dateByAddingTimeInterval:1.0];
          [(SUState *)state setLastPendingSplatAlertDate:v41];

          v20 = [(SUState *)self->_state lastPendingSplatAlertDate];
          [(SUManagerCore *)self scheduleSplatFollowUpDate:v20];
          goto LABEL_5;
        }
      }

      else
      {
        v42 = dispatch_time(0, 2000000000);
        workQueue = self->_workQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__SUManagerCore_presentAutoUpdateBanner___block_invoke;
        block[3] = &unk_279CAA7C0;
        block[4] = self;
        v55 = v17;
        dispatch_after(v42, workQueue, block);
        SULogInfo(@"Scheduled immediate follow-up for regular update", v44, v45, v46, v47, v48, v49, v50, v51[0]);
      }

LABEL_14:

      v34 = 1;
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v27 = SULogBadging();
  SULogInfoForSubsystem(v27, @"Download/descriptor object is null..Skipping banner", v28, v29, v30, v31, v32, v33, v51[0]);

  v34 = 0;
  if (v4)
  {
LABEL_7:
    externWorkQueue = self->_externWorkQueue;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __41__SUManagerCore_presentAutoUpdateBanner___block_invoke_2;
    v51[3] = &unk_279CACE70;
    v52 = v4;
    v53 = v34;
    dispatch_async(externWorkQueue, v51);
  }

LABEL_8:
}

void __41__SUManagerCore_presentAutoUpdateBanner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) followUpController];
  [v2 postFollowUpOfType:2 withUpdate:*(a1 + 40) userInfo:0];
}

- (void)scheduleSplatFollowUpDate:(id)a3
{
  v19 = a3;
  v3 = +[SUPreferences sharedInstance];
  v4 = [v3 splatFollowUpDelayOverride];

  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    v5 = 604800.0;
  }

  v6 = [v19 dateByAddingTimeInterval:v5];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 compare:v7];

  if (v8 == 1)
  {
    v9 = +[SUScheduler sharedInstance];
    [v9 cancelSplatFollowUpNotification];

    v10 = +[SUScheduler sharedInstance];
    [v10 scheduleSplatFollowUpNotification:v6];

    v11 = [SUUtility prettyPrintDate:v6];
    SULogInfo(@"Scheduled splat follow-up notification for %@ after daemon restart", v12, v13, v14, v15, v16, v17, v18, v11);
  }
}

- (void)_checkAndPostSplatFollowUpIfNeeded
{
  dispatch_assert_queue_V2(self->_workQueue);
  v36 = [(SUState *)self->_state lastPendingSplatAlertDate];
  if (v36)
  {
    v10 = [(SUManagerCore *)self download];
    if (!v10)
    {
      goto LABEL_7;
    }

    v18 = v10;
    v19 = [(SUManagerCore *)self download];
    v20 = [v19 descriptor];

    if (v20)
    {
      v21 = [(SUManagerCore *)self download];
      v22 = [v21 descriptor];

      if ([v22 isSplatOnly] && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "autoInstallSecurityResponse"), v30, v31))
      {
        SULogInfo(@"Posting scheduled splat follow-up notification", v23, v24, v25, v26, v27, v28, v29, v35);
        v32 = [(SUManagerCore *)self followUpController];
        [v32 postFollowUpOfType:2 withUpdate:v22 userInfo:0];
      }

      else
      {
        SULogInfo(@"Clearing lastPendingSplatAlertDate - update is no longer splat-only or security response disabled", v23, v24, v25, v26, v27, v28, v29, v35);
      }

      [(SUState *)self->_state setLastPendingSplatAlertDate:0];
      v34 = +[SUScheduler sharedInstance];
      [v34 cancelSplatFollowUpNotification];

      [(SUState *)self->_state save];
    }

    else
    {
LABEL_7:
      SULogInfo(@"Clearing lastPendingSplatAlertDate - no current download/descriptor available", v11, v12, v13, v14, v15, v16, v17, v35);
      [(SUState *)self->_state setLastPendingSplatAlertDate:0];
      v33 = +[SUScheduler sharedInstance];
      [v33 cancelSplatFollowUpNotification];

      [(SUState *)self->_state save];
    }
  }

  else
  {
    SULogInfo(@"No pending splat alert date set", v3, v4, v5, v6, v7, v8, v9, v35);
  }
}

- (void)clearBadgeAndBanner
{
  dispatch_assert_queue_V2(self->_workQueue);
  [(SUManagerCore *)self dismissAutoUpdateBanner];
  [(SUManagerCore *)self unbadgeSettingsForManualSoftwareUpdate];
  [(SUManagerCore *)self dismissLegacyFollowUps];

  [(SUManagerCore *)self dismissInsufficientDiskSpaceFollowupForUpdate:0 orForce:1];
}

- (void)dismissAutoUpdateBanner
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[SUScheduler sharedInstance];
  [v3 cancelPresentAutoUpdateBanner];

  v4 = +[SUScheduler sharedInstance];
  [v4 cancelSplatFollowUpNotification];

  [(SUState *)self->_state setLastPendingSplatAlertDate:0];
  [(SUState *)self->_state save];
  v5 = SULogBadging();
  SULogInfoForSubsystem(v5, @"Got request to dismiss AutoUpdateBanner", v6, v7, v8, v9, v10, v11, v12);

  v13 = [(SUManagerCore *)self followUpController];
  [v13 dismissFollowUpType:2];
}

- (void)unbadgeSettingsForManualSoftwareUpdate
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = SULogBadging();
  SULogInfoForSubsystem(v3, @"Removing settings badge set by manual update flow(if present)", v4, v5, v6, v7, v8, v9, v10);

  v11 = [(SUManagerCore *)self followUpController];
  [v11 dismissFollowUpTypes:&unk_287B6F880];
}

- (void)dismissLegacyFollowUps
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = SULogBadging();
  SULogInfoForSubsystem(v3, @"Removing legacy SU follow up (if present)", v4, v5, v6, v7, v8, v9, v10);

  v11 = [(SUManagerCore *)self followUpController];
  [v11 dismissLegacyFollowUps];
}

- (void)badgeSettingsForManualSoftwareUpdate:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = SULogBadging();
  SULogInfoForSubsystem(v6, @"Badging settings for manual update flow", v7, v8, v9, v10, v11, v12, v13);

  v14 = [(SUManagerCore *)self followUpController];
  [v14 postFollowUpOfType:1 withUpdate:v5 userInfo:0];
}

- (NSDictionary)mandatoryUpdateDictionary
{
  v21[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[SUPreferences sharedInstance];
  v4 = [v3 mandatorySUFlags];
  v5 = [v4 integerValue];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = +[SUPreferences sharedInstance];
    v8 = [v7 mandatorySUFlags];
    v9 = [v6 stringWithFormat:@"%d", objc_msgSend(v8, "integerValue")];

    v20 = @"SoftwareUpdateConfigurationFlags";
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    SULogInfo(@"Overriding mandatoryUpdateDictionary to %@", v11, v12, v13, v14, v15, v16, v17, v10);
  }

  else
  {
    v10 = self->_mandatoryUpdateDictionary;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setMandatoryUpdateDictionary:(id)a3
{
  v18 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  p_mandatoryUpdateDictionary = &self->_mandatoryUpdateDictionary;
  if (![(NSDictionary *)self->_mandatoryUpdateDictionary isEqualToDictionary:v18])
  {
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      objc_storeStrong(&self->_mandatoryUpdateDictionary, a3);
      v6 = [(NSDictionary *)*p_mandatoryUpdateDictionary objectForKey:@"DisableAutoUpdate"];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v6 BOOLValue])
          {
            SULogInfo(@"Mandatory update dictionary is disabling auto updates", v7, v8, v9, v10, v11, v12, v13, v17);
            v14 = +[SUPreferences sharedInstance];
            [v14 enableAutomaticUpdateV2:0];
          }
        }
      }
    }

    else
    {
      v6 = *p_mandatoryUpdateDictionary;
      *p_mandatoryUpdateDictionary = 0;
    }

    v15 = [(SUManagerCore *)self state];
    [v15 setMandatoryUpdateDict:v18];

    v16 = [(SUManagerCore *)self state];
    [v16 save];
  }

LABEL_10:
}

- (void)sendUnlockNotifications:(BOOL)a3
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SUManagerCore_sendUnlockNotifications___block_invoke;
  v4[3] = &unk_279CAAD00;
  v5 = a3;
  v4[4] = self;
  dispatch_async(workQueue, v4);
}

uint64_t __41__SUManagerCore_sendUnlockNotifications___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 addUnlockCallback:sel__notifyEngineOnUnlock forKey:@"unlockCallbackEngineUnlockNotification"];
  }

  else
  {
    return [v2 removeUnlockCallback:@"unlockCallbackEngineUnlockNotification"];
  }
}

- (void)activated:(BOOL)a3
{
  if (a3)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__SUManagerCore_activated___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  dispatch_semaphore_signal(self->_resumeFromStateSemaphore);
}

void __27__SUManagerCore_activated___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) downloader];
  if (([v12 isDownloading] & 1) != 0 || objc_msgSend(*(a1 + 32), "isUpdateDownloaded"))
  {
    v2 = [*(a1 + 32) resetDownloadStateOnCleanActivation];

    if (v2)
    {
      SULogInfo(@"Activated to clean state when already downloading, reset download state", v3, v4, v5, v6, v7, v8, v9, v11);
      [*(a1 + 32) setResetDownloadStateOnCleanActivation:0];
      v10 = *(a1 + 32);

      [v10 resetDownloadState];
    }
  }

  else
  {
  }
}

- (void)downloadProgress:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUManagerCore_downloadProgress___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __34__SUManagerCore_downloadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloader];
  [v2 downloadProgress:*(a1 + 40)];
}

- (void)downloadCompleted:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUManagerCore_downloadCompleted___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __35__SUManagerCore_downloadCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloader];
  [v2 downloadCompleted:*(a1 + 40)];

  v4 = [*(a1 + 32) tracker];
  v3 = [*(a1 + 32) download];
  [v4 recordDownloadCompleted:v3 withError:*(a1 + 40)];
}

- (void)downloadCompleted:(id)a3 informClients:(BOOL)a4
{
  v6 = a3;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerCore_downloadCompleted_informClients___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(workQueue, block);
}

void __49__SUManagerCore_downloadCompleted_informClients___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloader];
  [v2 downloadCompleted:*(a1 + 40) informClients:*(a1 + 48)];

  v4 = [*(a1 + 32) tracker];
  v3 = [*(a1 + 32) download];
  [v4 recordDownloadCompleted:v3 withError:*(a1 + 40)];
}

- (void)installCompleted:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUManagerCore_installCompleted___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __34__SUManagerCore_installCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) installer];
  [v2 installCompleted:*(a1 + 40)];

  v5 = [*(a1 + 32) tracker];
  v3 = [*(a1 + 32) download];
  v4 = [v3 descriptor];
  [v5 recordInstallCompleted:v4 withError:*(a1 + 40)];
}

- (void)assetAudienceChanged:(id)a3
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUManagerCore_assetAudienceChanged___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __38__SUManagerCore_assetAudienceChanged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"Asset audience changed. Kicking off background scan", a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 32);

  return [v9 autoScanAndDownloadIfAvailable:0 withResult:&__block_literal_global_637];
}

void __38__SUManagerCore_assetAudienceChanged___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    SULogInfo(@"Background scan resulted in error: %@", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  if (v21)
  {
    v13 = [v21 preferredDescriptor];
    SULogInfo(@"Background scan found preferred descriptor: %@", v14, v15, v16, v17, v18, v19, v20, v13);
  }
}

- (void)networkMonitorDetectOverrides
{
  v2 = +[SUNetworkMonitor sharedInstance];
  [v2 detectOverriddenNetwork];
}

- (void)showInsufficientDiskSpaceFollowupForUpdate:(id)a3
{
  v18 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [(SUDescriptor *)self->_updateOfCurrentStorageFollowup isEqual:v18];
  v6 = [(SUManagerCore *)self followUpController];
  v7 = [v6 isCurrentlyPresentingFollowUpType:3];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v16 = *&v15;
  if (v5 && v7 && vabdd_f64(v15, *&showInsufficientDiskSpaceFollowupForUpdate____LAST_FOLLOWUP_TIME) <= 86400.0)
  {
    SULogInfo(@"%s: Don't show the same followup again.", v8, v9, v10, v11, v12, v13, v14, "[SUManagerCore showInsufficientDiskSpaceFollowupForUpdate:]");
  }

  else
  {
    objc_storeStrong(&self->_updateOfCurrentStorageFollowup, a3);
    showInsufficientDiskSpaceFollowupForUpdate____LAST_FOLLOWUP_TIME = v16;
    v17 = [(SUManagerCore *)self followUpController];
    [v17 postFollowUpOfType:3 withUpdate:v18 userInfo:0];
  }
}

- (void)dismissInsufficientDiskSpaceFollowupForUpdate:(id)a3 orForce:(BOOL)a4
{
  v18 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if (a4 || [(SUDescriptor *)self->_updateOfCurrentStorageFollowup isEqual:v18])
  {
    updateOfCurrentStorageFollowup = self->_updateOfCurrentStorageFollowup;
    self->_updateOfCurrentStorageFollowup = 0;

    v7 = [(SUManagerCore *)self followUpController];
    v8 = [v7 isCurrentlyPresentingFollowUpType:3];

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(SUManagerCore *)self followUpController];
    [v9 dismissFollowUpType:3];
  }

  else
  {
    v9 = [(SUDescriptor *)self->_updateOfCurrentStorageFollowup productBuildVersion];
    v17 = [v18 productBuildVersion];
    SULogInfo(@"%s: Don't dismiss the followup. Current followup is for %@, not %@", v10, v11, v12, v13, v14, v15, v16, "[SUManagerCore dismissInsufficientDiskSpaceFollowupForUpdate:orForce:]");
  }

LABEL_7:
}

- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (_os_feature_enabled_impl())
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUManagerCore_preferences_didChangePreference_toValue___block_invoke;
    block[3] = &unk_279CAA798;
    v11 = v7;
    v12 = v8;
    v13 = self;
    dispatch_async(workQueue, block);
  }
}

uint64_t __57__SUManagerCore_preferences_didChangePreference_toValue___block_invoke(uint64_t result)
{
  if (*(result + 32) == @"SUDisableAutoDownload")
  {
    v2 = result;
    v3 = [*(result + 40) BOOLValue];
    v4 = *(v2 + 48);

    return [v4 disableReserveSpace:v3];
  }

  return result;
}

@end