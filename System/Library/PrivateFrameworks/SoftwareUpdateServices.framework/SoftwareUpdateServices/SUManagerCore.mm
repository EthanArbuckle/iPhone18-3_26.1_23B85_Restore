@interface SUManagerCore
- (BOOL)_isUpdateDownloadable:(id)downloadable downloadOptions:(id)options error:(id *)error;
- (BOOL)isAutoUpdateEnabled;
- (BOOL)isClearingSpace;
- (BOOL)isDescriptorAutoDownloadable:(id)downloadable;
- (BOOL)isDescriptorAutoUpdatable:(id)updatable;
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
- (BOOL)isSplatRollbackAllowed:(id *)allowed;
- (BOOL)isSplatRollbackEnabled;
- (BOOL)isUpdateDownloaded;
- (BOOL)shouldShowRollbackSuggestionAlert:(id)alert error:(id *)error;
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
- (id)_createCoreAnalyticsEventWithCurrentDownloadFor:(id)for error:(id)error;
- (id)_getAmountDataAvailable;
- (id)_preallocatedSpaceMetricInfo;
- (id)coreDescriptorForBuildVersion:(id)version versionExtra:(id)extra isSplombo:(BOOL)splombo;
- (id)coreDescriptorForSUDescriptor:(id)descriptor;
- (id)delayEndDate;
- (id)discoveryDateForBuildVersion:(id)version;
- (id)download;
- (id)downloadAsset;
- (id)eligibleRollbackWithOptions:(id)options;
- (id)eventRecordingServiceURL:(id)l;
- (id)fullyUnrampedDateForBuildVersion:(id)version;
- (id)installTonightConfigDictionary;
- (id)newInstallTonightConfig;
- (id)previousRollbackWithOptions:(id)options;
- (id)rollbackSuggestionReasonFromSUReason:(unint64_t)reason;
- (id)slaVersion;
- (id)softwareUpdateReserveSizes;
- (id)updateToAutoDownload;
- (unint64_t)softwareUpdatePathRestriction;
- (unint64_t)updatesDelayPeriodSeconds;
- (void)_augmentCoreAnalyticsEvent:(id)event withUpdate:(id)update;
- (void)_checkAndPostSplatFollowUpIfNeeded;
- (void)_describeAndReportEvent:(id)event policy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor additionalMetrics:(id)metrics;
- (void)_loadBrainOnUnlockCallback;
- (void)_notifyEngineOnUnlock;
- (void)_persistStash;
- (void)_presentAutoUpdateBannerOnUnlock;
- (void)_reportOTAEvent:(id)event withStatus:(id)status policy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor additionalMetrics:(id)metrics error:(id)error;
- (void)_reportRollbackEvent:(id)event withInfo:(id)info buildVersion:(id)version;
- (void)_resumeFromLastKnownState;
- (void)_submitCoreAnalyticsEvent:(id)event;
- (void)activated:(BOOL)activated;
- (void)addUnlockCallback:(SEL)callback forKey:(id)key;
- (void)amendManagedScanOptions:(id)options withResponse:(id)response;
- (void)assetAudienceChanged:(id)changed;
- (void)autoSUFailedWithError:(id)error;
- (void)badgeSettingsForManualSoftwareUpdate:(id)update;
- (void)cleanupPreviousDownloadState;
- (void)clearBadgeAndBanner;
- (void)clearKeybagStash;
- (void)clearUnlockCallbacks;
- (void)createInstallationKeybag:(id)keybag withResult:(id)result;
- (void)deviceIsUpToDateForSU:(BOOL)u forSplat:(BOOL)splat;
- (void)dismissAutoUpdateBanner;
- (void)dismissInsufficientDiskSpaceFollowupForUpdate:(id)update orForce:(BOOL)force;
- (void)dismissLegacyFollowUps;
- (void)doUnlockEvents;
- (void)donateSUErrorToBiome:(id)biome;
- (void)donateSuccessToBiomeFor:(id)for;
- (void)downloadCompleted:(id)completed;
- (void)downloadCompleted:(id)completed informClients:(BOOL)clients;
- (void)downloadProgress:(id)progress;
- (void)endAutoDownloadTasksAndResetState;
- (void)installCompleted:(id)completed;
- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result;
- (void)isUpdateReadyForInstallationWithOptions:(id)options replyHandler:(id)handler;
- (void)loadBrainOnUnlock;
- (void)loadSavedState;
- (void)managedInstallRequested;
- (void)networkMonitorDetectOverrides;
- (void)noteAutoDownloadFailedToStartWithError:(id)error;
- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size;
- (void)persistStashOnUnlock;
- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value;
- (void)presentAutoUpdateBanner:(id)banner;
- (void)presentRollbackSuggestionAlertWithDescriptor:(id)descriptor info:(id)info;
- (void)presentRollbackSuggestionFollowUpWithCoreDescriptor:(id)descriptor info:(id)info;
- (void)presentRollbackSuggestionFollowUpWithRollbackDescriptor:(id)descriptor info:(id)info;
- (void)removeUnlockCallback:(id)callback;
- (void)reportCoreAnalyticsOTAAbandonedEvent:(id)event;
- (void)reportCoreAnalyticsOTAAvailableEvent:(id)event;
- (void)reportCoreAnalyticsOTADownloadedEvent;
- (void)reportCoreAnalyticsOTAStartedDownloadingEvent:(id)event;
- (void)reportOTAAbandonedEventWithError:(id)error additionalMetrics:(id)metrics;
- (void)reportOTAAutoTriggeredEvent;
- (void)reportOTAAvailableEvent:(id)event;
- (void)reportOTADownloadedEvent:(id)event;
- (void)reportOTAInstalledEvent;
- (void)reportOTAStartedDownloadingEvent:(id)event;
- (void)reportOTASucceededEvent;
- (void)reportPostponedEvent:(id)event withStatus:(id)status withAdditionalMetrics:(id)metrics;
- (void)reportRSRRollbackSuggestedEventWithDescriptor:(id)descriptor rollbackSuggestionInfo:(id)info;
- (void)reportRSRRollbackSuggestedEventWithRollbackDescriptor:(id)descriptor rollbackSuggestionInfo:(id)info;
- (void)reportSimulatedOTAAutoTriggeredEvent;
- (void)reporterFlushEvent;
- (void)resetDownloadState;
- (void)resumeOrDisableReserveSpace;
- (void)resumeOrResetIfNecessary;
- (void)revokedUpdateFound:(id)found;
- (void)rollbackCompleted:(id)completed withError:(id)error;
- (void)rollbackReadyForReboot;
- (void)rollbackStarted:(id)started;
- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result;
- (void)scanForUpdates:(id)updates complete:(id)complete;
- (void)scheduleSplatFollowUpDate:(id)date;
- (void)securityResponseRollbackSuggested:(id)suggested withResult:(id)result;
- (void)sendUnlockNotifications:(BOOL)notifications;
- (void)setAlternateLastScannedDescriptor:(id)descriptor;
- (void)setInstallPolicy:(id)policy;
- (void)setLastStashbagPersistedDate:(id)date;
- (void)setMandatoryUpdateDictionary:(id)dictionary;
- (void)setPasscodePolicy:(id)policy;
- (void)setPreferredLastScannedDescriptor:(id)descriptor;
- (void)showInsufficientDiskSpaceFollowupForUpdate:(id)update;
- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result;
- (void)startDownloadWithOptions:(id)options withResult:(id)result;
- (void)suggestRollback:(id)rollback rollbackDescriptor:(id)descriptor withResult:(id)result;
- (void)tryAutoDownload;
- (void)unbadgeSettingsForManualSoftwareUpdate;
- (void)unscheduleRecommendedUpdateNotification;
- (void)updateDownloadMetadata:(id)metadata withResult:(id)result;
- (void)updateDownloadOptions:(id)options withResult:(id)result;
- (void)updateInstallPolicyType:(unint64_t)type;
- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler;
@end

@implementation SUManagerCore

- (void)reportCoreAnalyticsOTAAvailableEvent:(id)event
{
  eventCopy = event;
  _getAmountDataAvailable = [(SUManagerCore *)self _getAmountDataAvailable];
  _preallocatedSpaceMetricInfo = [(SUManagerCore *)self _preallocatedSpaceMetricInfo];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SUManagerCore_Analytics__reportCoreAnalyticsOTAAvailableEvent___block_invoke;
  v12[3] = &unk_279CAA6E0;
  v13 = _getAmountDataAvailable;
  v14 = _preallocatedSpaceMetricInfo;
  selfCopy = self;
  v7 = _preallocatedSpaceMetricInfo;
  v8 = _getAmountDataAvailable;
  v9 = MEMORY[0x26D668B30](v12);
  preferredDescriptor = [eventCopy preferredDescriptor];
  (v9)[2](v9, preferredDescriptor);

  alternateDescriptor = [eventCopy alternateDescriptor];

  (v9)[2](v9, alternateDescriptor);
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

- (void)reportCoreAnalyticsOTAStartedDownloadingEvent:(id)event
{
  v4 = [(SUManagerCore *)self _createCoreAnalyticsEventWithCurrentDownloadFor:*MEMORY[0x277D64608] error:event];
  if (v4)
  {
    [(SUManagerCore *)self _submitCoreAnalyticsEvent:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)reportCoreAnalyticsOTAAbandonedEvent:(id)event
{
  v4 = [(SUManagerCore *)self _createCoreAnalyticsEventWithCurrentDownloadFor:*MEMORY[0x277D645D8] error:event];
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

- (void)_augmentCoreAnalyticsEvent:(id)event withUpdate:(id)update
{
  v6 = *MEMORY[0x277D647C0];
  updateCopy = update;
  eventCopy = event;
  sessionID = [(SUManagerCore *)self sessionID];
  [eventCopy setEventPayloadEntry:v6 stringValue:sessionID];

  [eventCopy setEventPayloadEntry:@"preSUStagingEnabled" BOOLValue:{objc_msgSend(updateCopy, "enablePreSUStaging")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(updateCopy, "preSUStagingOptionalSize") >> 20}];
  [eventCopy setEventPayloadEntry:@"preSUStagingOptionalSize" numberValue:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(updateCopy, "preSUStagingRequiredSize") >> 20}];
  [eventCopy setEventPayloadEntry:@"preSUStagingRequiredSize" numberValue:v11];

  productBuildVersion = [updateCopy productBuildVersion];
  [eventCopy setEventPayloadEntry:@"targetOSVersion" stringValue:productBuildVersion];

  updateTypeName = [updateCopy updateTypeName];
  [eventCopy setEventPayloadEntry:@"updateType" stringValue:updateTypeName];

  v14 = MEMORY[0x277CCABB0];
  totalRequiredFreeSpace = [updateCopy totalRequiredFreeSpace];

  v16 = [v14 numberWithUnsignedLongLong:totalRequiredFreeSpace >> 20];
  [eventCopy setEventPayloadEntry:@"totalRequiredFreeSpace" numberValue:v16];
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

- (id)_createCoreAnalyticsEventWithCurrentDownloadFor:(id)for error:(id)error
{
  forCopy = for;
  errorCopy = error;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  download = [(SUManagerCore *)self download];
  if (download)
  {
    v17 = [[SUAnalyticsEvent alloc] initWithEventName:@"com.apple.massStorage.SoftwareUpdate.OTAEvents_1"];
    [(SUAnalyticsEvent *)v17 setEventPayloadEntry:@"eventName" stringValue:forCopy];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [(SUAnalyticsEvent *)v17 setEventPayloadEntry:@"errorCode" numberValue:v18];

    downloadOptions = [download downloadOptions];
    descriptor = [download descriptor];
    v21 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

    -[SUAnalyticsEvent setEventPayloadEntry:BOOLValue:](v17, "setEventPayloadEntry:BOOLValue:", @"autoDownload", [downloadOptions isAutoDownload]);
    [(SUManagerCore *)self _augmentCoreAnalyticsEvent:v17 withUpdate:v21];
    _getAmountDataAvailable = [(SUManagerCore *)self _getAmountDataAvailable];
    [(SUAnalyticsEvent *)v17 setEventPayloadEntry:@"DiskUsageAmountDataAvailable" numberValue:_getAmountDataAvailable];
  }

  else
  {
    SULogError(@"%s: current download doesn't exist", v9, v10, v11, v12, v13, v14, v15, "[SUManagerCore(Analytics) _createCoreAnalyticsEventWithCurrentDownloadFor:error:]");
    v17 = 0;
  }

  return v17;
}

- (void)_submitCoreAnalyticsEvent:(id)event
{
  eventCopy = event;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[SUAnalyticsManager sharedManager];
  [v6 setEvent:eventCopy];

  v7 = +[SUAnalyticsManager sharedManager];
  [v7 submitEvent:eventCopy];
}

- (void)donateSUErrorToBiome:(id)biome
{
  biomeCopy = biome;
  domain = [biomeCopy domain];
  v6 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if (v6)
  {
    externWorkQueue = [(SUManagerCore *)self externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SUManagerCore_Analytics__donateSUErrorToBiome___block_invoke;
    block[3] = &unk_279CAA708;
    v9 = biomeCopy;
    dispatch_async(externWorkQueue, block);
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

- (void)donateSuccessToBiomeFor:(id)for
{
  forCopy = for;
  if (forCopy)
  {
    externWorkQueue = [(SUManagerCore *)self externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SUManagerCore_Analytics__donateSuccessToBiomeFor___block_invoke;
    block[3] = &unk_279CAA708;
    v7 = forCopy;
    dispatch_async(externWorkQueue, block);
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

- (void)reportOTAAvailableEvent:(id)event
{
  v21[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v20 = *MEMORY[0x277D645A0];
  scanner = [(SUManagerCore *)self scanner];
  lastScannedDescriptorScanOptions = [scanner lastScannedDescriptorScanOptions];
  clientName = [lastScannedDescriptorScanOptions clientName];
  v9 = clientName;
  v10 = @"None";
  if (clientName)
  {
    v10 = clientName;
  }

  v21[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v12 = [v11 mutableCopy];

  _preallocatedSpaceMetricInfo = [(SUManagerCore *)self _preallocatedSpaceMetricInfo];
  [v12 addEntriesFromDictionary:_preallocatedSpaceMetricInfo];

  v14 = *MEMORY[0x277D645E8];
  engine = [(SUManagerCore *)self engine];
  updatePolicy = [engine updatePolicy];
  preferredDescriptor = [eventCopy preferredDescriptor];
  alternateDescriptor = [eventCopy alternateDescriptor];

  [(SUManagerCore *)self _reportOTAEvent:v14 withStatus:0 policy:updatePolicy primaryDescriptor:preferredDescriptor alternateDescriptor:alternateDescriptor additionalMetrics:v12 error:0];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)reportOTAStartedDownloadingEvent:(id)event
{
  v23[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];
  descriptor = [download descriptor];
  v9 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  v10 = +[SUNetworkMonitor sharedInstance];
  isCurrentNetworkTypeCellular = [v10 isCurrentNetworkTypeCellular];

  v22[0] = *MEMORY[0x277D645A0];
  downloader2 = [(SUManagerCore *)self downloader];
  download2 = [downloader2 download];
  downloadOptions = [download2 downloadOptions];
  clientName = [downloadOptions clientName];
  v16 = clientName;
  v17 = @"None";
  if (clientName)
  {
    v17 = clientName;
  }

  v22[1] = *MEMORY[0x277D645C8];
  v18 = MEMORY[0x277D647B0];
  if (!isCurrentNetworkTypeCellular)
  {
    v18 = MEMORY[0x277D64728];
  }

  v19 = *v18;
  v23[0] = v17;
  v23[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D64608] withStatus:0 policy:0 descriptor:v9 additionalMetrics:v20 error:eventCopy];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)reportOTADownloadedEvent:(id)event
{
  v22[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v21 = *MEMORY[0x277D645A0];
  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];
  downloadOptions = [download downloadOptions];
  clientName = [downloadOptions clientName];
  v10 = clientName;
  v11 = @"None";
  if (clientName)
  {
    v11 = clientName;
  }

  v22[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  downloader2 = [(SUManagerCore *)self downloader];
  download2 = [downloader2 download];
  descriptor = [download2 descriptor];
  v16 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  v17 = *MEMORY[0x277D645F0];
  engine = [(SUManagerCore *)self engine];
  updatePolicy = [engine updatePolicy];
  [(SUManagerCore *)self _reportOTAEvent:v17 withStatus:eventCopy policy:updatePolicy descriptor:v16 additionalMetrics:v12 error:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)reportOTAInstalledEvent
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];
  descriptor = [download descriptor];
  v10 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  v7 = *MEMORY[0x277D645F8];
  engine = [(SUManagerCore *)self engine];
  updatePolicy = [engine updatePolicy];
  [(SUManagerCore *)self _reportOTAEvent:v7 withStatus:0 policy:updatePolicy descriptor:v10 additionalMetrics:0 error:0];
}

- (void)reportOTASucceededEvent
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];
  descriptor = [download descriptor];
  v7 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D64610] withStatus:0 policy:0 descriptor:v7 additionalMetrics:0 error:0];
}

- (void)reportOTAAutoTriggeredEvent
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];
  descriptor = [download descriptor];
  v7 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D645E0] withStatus:0 policy:0 descriptor:v7 additionalMetrics:0 error:0];
}

- (void)reportOTAAbandonedEventWithError:(id)error additionalMetrics:(id)metrics
{
  v23[1] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  errorCopy = error;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v22 = *MEMORY[0x277D645A0];
  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];
  downloadOptions = [download downloadOptions];
  clientName = [downloadOptions clientName];
  v13 = clientName;
  v14 = @"None";
  if (clientName)
  {
    v14 = clientName;
  }

  v23[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v16 = [v15 mutableCopy];

  if (metricsCopy)
  {
    [v16 addEntriesFromDictionary:metricsCopy];
  }

  downloader2 = [(SUManagerCore *)self downloader];
  download2 = [downloader2 download];
  descriptor = [download2 descriptor];
  v20 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  [(SUManagerCore *)self _reportOTAEvent:*MEMORY[0x277D645D8] withStatus:0 policy:0 descriptor:v20 additionalMetrics:v16 error:errorCopy];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)reportRSRRollbackSuggestedEventWithDescriptor:(id)descriptor rollbackSuggestionInfo:(id)info
{
  infoCopy = info;
  descriptorCopy = descriptor;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = *MEMORY[0x277D64618];
  productBuildVersion = [descriptorCopy productBuildVersion];

  [(SUManagerCore *)self _reportRollbackEvent:v9 withInfo:infoCopy buildVersion:productBuildVersion];
}

- (void)reportRSRRollbackSuggestedEventWithRollbackDescriptor:(id)descriptor rollbackSuggestionInfo:(id)info
{
  infoCopy = info;
  descriptorCopy = descriptor;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = *MEMORY[0x277D64618];
  productBuildVersion = [descriptorCopy productBuildVersion];

  [(SUManagerCore *)self _reportRollbackEvent:v9 withInfo:infoCopy buildVersion:productBuildVersion];
}

- (void)_reportRollbackEvent:(id)event withInfo:(id)info buildVersion:(id)version
{
  v60 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  infoCopy = info;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_opt_new();
  v18 = v10;
  if (v10)
  {
    v51 = eventCopy;
    [v10 setSafeObject:eventCopy forKey:*MEMORY[0x277D64738]];
    [v18 setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D645B0]];
    [v18 setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D64700]];
    sessionID = [(SUManagerCore *)self sessionID];
    [v18 setSafeObject:sessionID forKey:*MEMORY[0x277D647C0]];

    v20 = +[SUNetworkMonitor sharedInstance];
    operatorName = [v20 operatorName];
    [v18 setSafeObject:operatorName forKey:@"OperatorName"];

    v22 = +[SUNetworkMonitor sharedInstance];
    servingPlmn = [v22 servingPlmn];
    [v18 setSafeObject:servingPlmn forKey:@"ServingPlmn"];

    v24 = -[SUManagerCore rollbackSuggestionReasonFromSUReason:](self, "rollbackSuggestionReasonFromSUReason:", [infoCopy suggestionReason]);
    v25 = *MEMORY[0x277D646B0];
    v49 = v24;
    [v18 setSafeObject:? forKey:?];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50 = infoCopy;
    obj = [infoCopy responsibleProcessesInfo];
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
          processName = [v32 processName];
          [(SUManagerCore *)self setRollbackValue:processName forKey:v53 count:v28 event:v18];

          rollbackSuggestionError = [v32 rollbackSuggestionError];
          domain = [rollbackSuggestionError domain];
          [(SUManagerCore *)self setRollbackValue:domain forKey:v29 count:v28 event:v18];

          v36 = MEMORY[0x277CCABB0];
          rollbackSuggestionError2 = [v32 rollbackSuggestionError];
          v38 = [v36 numberWithInteger:{objc_msgSend(rollbackSuggestionError2, "code")}];
          [(SUManagerCore *)self setRollbackValue:v38 forKey:v30 count:v28 event:v18];
        }

        v27 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v27);
    }

    SULogInfo(@"reporting OTA event: %@", v39, v40, v41, v42, v43, v44, v45, v18);
    coreReporter = [(SUManagerCore *)self coreReporter];
    v47 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D64818]];
    [coreReporter sendEvent:v18 toServerURL:v47];

    infoCopy = v50;
    eventCopy = v51;
  }

  else
  {
    SULogInfo(@"failed to allocate event for %@ event so not reported", v11, v12, v13, v14, v15, v16, v17, eventCopy);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (id)rollbackSuggestionReasonFromSUReason:(unint64_t)reason
{
  if (reason <= 2)
  {
    self = **(&unk_279CAA728 + reason);
  }

  return self;
}

- (void)reportSimulatedOTAAutoTriggeredEvent
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];
  descriptor = [download descriptor];
  v7 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  [(SUManagerCore *)self _reportOTAEvent:@"otaSimulatedAutoTriggered" withStatus:0 policy:0 primaryDescriptor:v7 alternateDescriptor:0 additionalMetrics:0 error:0];
}

- (void)reportPostponedEvent:(id)event withStatus:(id)status withAdditionalMetrics:(id)metrics
{
  v49[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  statusCopy = status;
  metricsCopy = metrics;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  state = [(SUManagerCore *)self state];
  lastSentOTAPostponedDate = [state lastSentOTAPostponedDate];

  if (lastSentOTAPostponedDate && ([lastSentOTAPostponedDate timeIntervalSinceNow], fabs(v21) < 43200.0))
  {
    SULogInfo(@"%s: Holding off on reporting otaPostponed event because previous event was recently emitted", v14, v15, v16, v17, v18, v19, v20, "[SUManagerCore(Analytics) reportPostponedEvent:withStatus:withAdditionalMetrics:]");
  }

  else
  {
    v22 = statusCopy;
    v23 = eventCopy;
    v48 = *MEMORY[0x277D645A0];
    downloader = [(SUManagerCore *)self downloader];
    download = [downloader download];
    downloadOptions = [download downloadOptions];
    clientName = [downloadOptions clientName];
    v28 = clientName;
    v29 = @"None";
    if (clientName)
    {
      v29 = clientName;
    }

    v49[0] = v29;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v30 = v47 = metricsCopy;
    v31 = [v30 mutableCopy];

    if (v47)
    {
      [v31 addEntriesFromDictionary:v47];
    }

    lastStashbagPersistedDate = [(SUManagerCore *)self lastStashbagPersistedDate];

    eventCopy = v23;
    statusCopy = v22;
    if (lastStashbagPersistedDate)
    {
      lastStashbagPersistedDate2 = [(SUManagerCore *)self lastStashbagPersistedDate];
      [lastStashbagPersistedDate2 timeIntervalSinceNow];
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

    downloader2 = [(SUManagerCore *)self downloader];
    download2 = [downloader2 download];
    descriptor = [download2 descriptor];
    v40 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

    v41 = *MEMORY[0x277D64600];
    engine = [(SUManagerCore *)self engine];
    updatePolicy = [engine updatePolicy];
    [(SUManagerCore *)self _reportOTAEvent:v41 withStatus:v22 policy:updatePolicy descriptor:v40 additionalMetrics:v31 error:eventCopy];

    state2 = [(SUManagerCore *)self state];
    date = [MEMORY[0x277CBEAA8] date];
    [state2 setLastSentOTAPostponedDate:date];

    metricsCopy = v47;
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_reportOTAEvent:(id)event withStatus:(id)status policy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor additionalMetrics:(id)metrics error:(id)error
{
  statusCopy = status;
  policyCopy = policy;
  descriptorCopy = descriptor;
  alternateDescriptorCopy = alternateDescriptor;
  metricsCopy = metrics;
  errorCopy = error;
  eventCopy = event;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v22 = objc_opt_new();
  v30 = v22;
  if (v22)
  {
    [v22 setSafeObject:eventCopy forKey:*MEMORY[0x277D64738]];

    [v30 setSafeObject:statusCopy forKey:*MEMORY[0x277D645A8]];
    v31 = +[SUNetworkMonitor sharedInstance];
    eventCopy = SUStringFromNetworkType([v31 currentNetworkType]);

    [v30 setSafeObject:eventCopy forKey:*MEMORY[0x277D64640]];
    v32 = +[SUNetworkMonitor sharedInstance];
    isCurrentNetworkTypeCellular = [v32 isCurrentNetworkTypeCellular];

    v34 = MEMORY[0x277D647B0];
    if (!isCurrentNetworkTypeCellular)
    {
      v34 = MEMORY[0x277D64728];
    }

    [v30 setSafeObject:*v34 forKey:@"cellular"];
    if (errorCopy)
    {
      [MEMORY[0x277D64440] augmentEvent:v30 withError:errorCopy];
    }

    else
    {
      [v30 setSafeObject:*MEMORY[0x277D64758] forKey:*MEMORY[0x277D64750]];
    }

    [(SUManagerCore *)self _describeAndReportEvent:v30 policy:policyCopy primaryDescriptor:descriptorCopy alternateDescriptor:alternateDescriptorCopy additionalMetrics:metricsCopy];
  }

  else
  {
    SULogInfo(@"failed to allocate event for %@ event so not reported", v23, v24, v25, v26, v27, v28, v29, eventCopy);
  }
}

- (void)_describeAndReportEvent:(id)event policy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor additionalMetrics:(id)metrics
{
  eventCopy = event;
  descriptorCopy = descriptor;
  metricsCopy = metrics;
  alternateDescriptorCopy = alternateDescriptor;
  policyCopy = policy;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = objc_alloc_init(MEMORY[0x277D64198]);
  [v17 setPolicy:policyCopy];

  [v17 setPrimaryDescriptor:descriptorCopy];
  [v17 setAlternateDescriptor:alternateDescriptorCopy];

  [v17 augmentEvent:eventCopy];
  [eventCopy setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D645B0]];
  [eventCopy setSafeObject:@"SUS-2.0" forKey:*MEMORY[0x277D64700]];
  sessionID = [(SUManagerCore *)self sessionID];
  [eventCopy setSafeObject:sessionID forKey:*MEMORY[0x277D647C0]];

  reportStartedFromPersistedState = [(SUManagerCore *)self reportStartedFromPersistedState];
  v20 = MEMORY[0x277D647B0];
  if (!reportStartedFromPersistedState)
  {
    v20 = MEMORY[0x277D64728];
  }

  [eventCopy setSafeObject:*v20 forKey:@"startedFromPersistedState"];
  v21 = +[SUNetworkMonitor sharedInstance];
  operatorName = [v21 operatorName];
  [eventCopy setSafeObject:operatorName forKey:@"OperatorName"];

  v23 = +[SUNetworkMonitor sharedInstance];
  servingPlmn = [v23 servingPlmn];
  [eventCopy setSafeObject:servingPlmn forKey:@"ServingPlmn"];

  installTonightConfigDictionary = [(SUManagerCore *)self installTonightConfigDictionary];
  [eventCopy addEntriesFromDictionary:installTonightConfigDictionary];

  if (metricsCopy)
  {
    [eventCopy addEntriesFromDictionary:metricsCopy];
  }

  v33 = [(SUManagerCore *)self eventRecordingServiceURL:descriptorCopy];
  if (v33)
  {
    SULogInfo(@"reporting OTA event: %@", v26, v27, v28, v29, v30, v31, v32, eventCopy);
    coreReporter = [(SUManagerCore *)self coreReporter];
    [coreReporter sendEvent:eventCopy toServerURL:v33];
  }

  else
  {
    SULogInfo(@"Unable to create event reporting server URL. Not sending event: %@", v26, v27, v28, v29, v30, v31, v32, eventCopy);
  }
}

- (id)eventRecordingServiceURL:(id)l
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = *MEMORY[0x277D64818];
  lCopy = l;
  v6 = [v3 URLWithString:v4];
  getMASoftwareUpdateAsset = [lCopy getMASoftwareUpdateAsset];

  attributes = [getMASoftwareUpdateAsset attributes];

  if (attributes)
  {
    v9 = [attributes objectForKey:@"_EventRecordingServiceURL"];
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
  coreReporter = [(SUManagerCore *)self coreReporter];
  [coreReporter flushEvent];
}

- (id)_preallocatedSpaceMetricInfo
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  softwareUpdateReserveSizes = [(SUManagerCore *)self softwareUpdateReserveSizes];
  if (softwareUpdateReserveSizes)
  {
    v5 = [softwareUpdateReserveSizes safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE_FILESYSTEM_AMOUNT" ofClass:objc_opt_class()];
    v6 = [softwareUpdateReserveSizes safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE" ofClass:objc_opt_class()];
    v7 = [softwareUpdateReserveSizes safeObjectForKey:@"CACHE_DELETE_ENTITLED_RESERVATION" ofClass:objc_opt_class()];
    v8 = [softwareUpdateReserveSizes safeObjectForKey:@"CACHE_DELETE_ENTITLED_RESERVATION_SECURED" ofClass:objc_opt_class()];
    v9 = [softwareUpdateReserveSizes safeObjectForKey:@"CACHE_DELETE_ENTITLED_RESERVATION_FREE" ofClass:objc_opt_class()];
    [dictionary setSafeObject:v5 forKey:@"SUFSReserveSize"];
    [dictionary setSafeObject:v6 forKey:@"SUFSReserveRequestedSize"];
    [dictionary setSafeObject:v7 forKey:@"SUEntitledReservation"];
    [dictionary setSafeObject:v8 forKey:@"SUEntitledReservationSecured"];
    [dictionary setSafeObject:v9 forKey:@"SUEntitledReservationFree"];
  }

  return dictionary;
}

- (BOOL)isManaged
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[SUPreferences sharedInstance];
  disableManagedRequest = [v4 disableManagedRequest];

  if (disableManagedRequest)
  {
    SULogInfo(@"%s: disableManagedRequest is set; device is considered not managed.", v6, v7, v8, v9, v10, v11, v12, "[SUManagerCore(MDM) isManaged]");
    return 0;
  }

  else
  {
    ddmManager = [(SUManagerCore *)self ddmManager];
    if ([ddmManager isManagedByDDM])
    {
      isManagedByMDM = 1;
    }

    else
    {
      managedDeviceManager = [(SUManagerCore *)self managedDeviceManager];
      isManagedByMDM = [managedDeviceManager isManagedByMDM];
    }
  }

  return isManagedByMDM;
}

- (void)amendManagedScanOptions:(id)options withResponse:(id)response
{
  optionsCopy = options;
  responseCopy = response;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (responseCopy)
  {
    if (optionsCopy)
    {
      if (![(SUManagerCore *)self isManaged])
      {
        SULogInfo(@"%s: device is not managed. Unset managed scan options", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(MDM) amendManagedScanOptions:withResponse:]");
        [optionsCopy setManagedScanOptions:0];
        responseCopy[2](responseCopy, optionsCopy, 0);
        goto LABEL_11;
      }

      managedScanOptions = [optionsCopy managedScanOptions];

      if (!managedScanOptions)
      {
        SULogError(@"%s: missing managed scan options", v24, v25, v26, v27, v28, v29, v30, "[SUManagerCore(MDM) amendManagedScanOptions:withResponse:]");
        v31 = objc_opt_new();
        [optionsCopy setManagedScanOptions:v31];
      }

      managedScanOptions2 = [optionsCopy managedScanOptions];
      ddmManager = [(SUManagerCore *)self ddmManager];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __59__SUManagerCore_MDM__amendManagedScanOptions_withResponse___block_invoke;
      v35[3] = &unk_279CAA770;
      v35[4] = self;
      v36 = managedScanOptions2;
      v37 = optionsCopy;
      v38 = responseCopy;
      v34 = managedScanOptions2;
      [ddmManager getActiveDDMDeclarationEnforcedSUWithResponse:v35];
    }

    else
    {
      SULogError(@"%s: cannot amend nil scan options", v9, v10, v11, v12, v13, v14, v15, "[SUManagerCore(MDM) amendManagedScanOptions:withResponse:]");
      v34 = [SUUtility errorWithCode:22];
      (responseCopy)[2](responseCopy, 0, v34);
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
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(SUManagerCore *)self isManaged])
  {
    v11 = +[SUPreferences sharedInstance];
    mDMSoftwareUpdatePath = [v11 MDMSoftwareUpdatePath];

    if (mDMSoftwareUpdatePath)
    {
      v13 = +[SUPreferences sharedInstance];
      mDMSoftwareUpdatePath2 = [v13 MDMSoftwareUpdatePath];
      unsignedIntegerValue = [mDMSoftwareUpdatePath2 unsignedIntegerValue];

      if (unsignedIntegerValue < 3)
      {
        v23 = SUStringFromMDMSUPath(unsignedIntegerValue);
        SULogInfo(@"%s: SU path is %@ (set by SU preference)", v24, v25, v26, v27, v28, v29, v30, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
LABEL_13:

        return unsignedIntegerValue;
      }

      SULogError(@"%s: SU preference has an invalid value %lu; ignore it", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
    }

    ddmManager = [(SUManagerCore *)self ddmManager];
    unsignedIntegerValue = [ddmManager recommendedCadence];

    if (unsignedIntegerValue != 3)
    {
      v23 = SUStringFromMDMSUPath(unsignedIntegerValue);
      SULogInfo(@"%s: SU path is %@ (set by DDM global settings)", v40, v41, v42, v43, v44, v45, v46, "[SUManagerCore(MDM) softwareUpdatePathRestriction]");
      goto LABEL_13;
    }

    managedDeviceManager = [(SUManagerCore *)self managedDeviceManager];
    unsignedIntegerValue = [managedDeviceManager softwareUpdatePathRestriction];

    if (unsignedIntegerValue != 3)
    {
      v23 = SUStringFromMDMSUPath(unsignedIntegerValue);
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
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(SUManagerCore *)self isManaged])
  {
    SULogInfo(@"%s: device is not managed. Updates are not delayed", v4, v5, v6, v7, v8, v9, v10, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    return 0;
  }

  v11 = +[SUPreferences sharedInstance];
  shouldDelayUpdates = [v11 shouldDelayUpdates];

  if (shouldDelayUpdates)
  {
    v13 = +[SUPreferences sharedInstance];
    updateDelayInterval = [v13 updateDelayInterval];
    unsignedIntegerValue = [updateDelayInterval unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v23 = +[SUPreferences sharedInstance];
      shouldDelayInMinutes = [v23 shouldDelayInMinutes];

      v32 = 86400;
      if (shouldDelayInMinutes)
      {
        v32 = 60;
      }

      v33 = v32 * unsignedIntegerValue;
      SULogInfo(@"%s: Updates are delayed by SU preferences for %lu seconds", v25, v26, v27, v28, v29, v30, v31, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
      return v33;
    }

    SULogError(@"%s: No delay period set, ignore SU preferences", v16, v17, v18, v19, v20, v21, v22, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
  }

  ddmManager = [(SUManagerCore *)self ddmManager];
  isDealyingUpdates = [ddmManager isDealyingUpdates];

  if (isDealyingUpdates)
  {
    ddmManager2 = [(SUManagerCore *)self ddmManager];
    v33 = 86400 * [ddmManager2 updateDeferralPeriodDays];

    if (!v33)
    {
      SULogError(@"%s: Updates are delayed by DDM but the delay period is 0", v37, v38, v39, v40, v41, v42, v43, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    }

    SULogInfo(@"%s: Updates are delayed by DDM global settings for %lu seconds", v37, v38, v39, v40, v41, v42, v43, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    return v33;
  }

  managedDeviceManager = [(SUManagerCore *)self managedDeviceManager];
  isDelayingUpdates = [managedDeviceManager isDelayingUpdates];

  if (!isDelayingUpdates)
  {
    SULogInfo(@"%s: device is managed. Updates are not delayed", v46, v47, v48, v49, v50, v51, v52, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
    return 0;
  }

  managedDeviceManager2 = [(SUManagerCore *)self managedDeviceManager];
  v33 = 86400 * [managedDeviceManager2 delayPeriodInDays];

  if (!v33)
  {
    SULogError(@"%s: Updates are delayed by MDM but the delay period is 0", v54, v55, v56, v57, v58, v59, v60, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
  }

  SULogInfo(@"%s: Updates are delayed by MDM restrictions for %lu seconds", v54, v55, v56, v57, v58, v59, v60, "[SUManagerCore(MDM) updatesDelayPeriodSeconds]");
  return v33;
}

- (id)delayEndDate
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return 0;
}

- (void)managedInstallRequested
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  installer = [(SUManagerCore *)self installer];
  [installer managedInstallRequested];
}

- (BOOL)isSplatRollbackEnabled
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[SUPreferences sharedInstance];
  disableRollback = [v4 disableRollback];

  if (disableRollback)
  {
    LOBYTE(allowSplatRollback) = 0;
    v14 = @"%s: Disabling Splat rollback due to SU Preference";
  }

  else if ([(SUManagerCore *)self isManaged])
  {
    ddmManager = [(SUManagerCore *)self ddmManager];
    enableRapidSecurityResponseRollback = [ddmManager enableRapidSecurityResponseRollback];

    if (enableRapidSecurityResponseRollback)
    {
      managedDeviceManager = [(SUManagerCore *)self managedDeviceManager];
      allowSplatRollback = [managedDeviceManager allowSplatRollback];

      if (allowSplatRollback)
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
      LOBYTE(allowSplatRollback) = 0;
      v14 = @"%s: Splat rollback is disabled by DDM global settings";
    }
  }

  else
  {
    LOBYTE(allowSplatRollback) = 1;
    v14 = @"%s: device is not managed. Splat rollback is enabled";
  }

  SULogInfo(v14, v6, v7, v8, v9, v10, v11, v12, "[SUManagerCore(Splat) isSplatRollbackEnabled]");
  return allowSplatRollback;
}

- (BOOL)splatUpdatesAllowed
{
  if ([(SUManagerCore *)self isManaged])
  {
    v10 = +[SUPreferences sharedInstance];
    allowSplatUpdate = [v10 allowSplatUpdate];

    if (allowSplatUpdate)
    {
      ddmManager = [(SUManagerCore *)self ddmManager];
      enableRapidSecurityResponse = [ddmManager enableRapidSecurityResponse];

      if (enableRapidSecurityResponse)
      {
        managedDeviceManager = [(SUManagerCore *)self managedDeviceManager];
        allowSplat = [managedDeviceManager allowSplat];

        if (allowSplat)
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
        LOBYTE(allowSplat) = 0;
        v16 = @"%s: Splat updates are disallowed by DDM global settings";
      }
    }

    else
    {
      LOBYTE(allowSplat) = 0;
      v16 = @"%s: Splat updates are disallowed by SU preference";
    }
  }

  else
  {
    LOBYTE(allowSplat) = 1;
    v16 = @"%s: device is not managed. Splat updates are allowed";
  }

  SULogInfo(v16, v3, v4, v5, v6, v7, v8, v9, "[SUManagerCore(Splat) splatUpdatesAllowed]");
  return allowSplat;
}

- (BOOL)isSplatRollbackAllowed:(id *)allowed
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[SUPreferences sharedInstance];
  fakeSplatInstalled = [v6 fakeSplatInstalled];

  if (fakeSplatInstalled)
  {
    v15 = @"Fake splat installed, allowing rollback";
LABEL_5:
    SULogInfo(v15, v8, v9, v10, v11, v12, v13, v14, v52);
    goto LABEL_6;
  }

  mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
  hasSemiSplatActive = [mEMORY[0x277D64420] hasSemiSplatActive];

  if (hasSemiSplatActive)
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

  preferredLastScannedDescriptor = [(SUManagerCore *)self preferredLastScannedDescriptor];
  if (preferredLastScannedDescriptor)
  {

LABEL_14:
    SULogInfo(@"Splat-only update installed, but new update available. Preventing rollback", v29, v30, v31, v32, v33, v34, v35, v52);
    v36 = 94;
    goto LABEL_15;
  }

  alternateLastScannedDescriptor = [(SUManagerCore *)self alternateLastScannedDescriptor];

  if (alternateLastScannedDescriptor)
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
    if (!allowed)
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
  if (allowed)
  {
LABEL_7:
    v18 = v18;
    *allowed = v18;
  }

LABEL_8:

  return v19;
}

- (BOOL)isSplatOnlyUpdateRollbackSuggested
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(SUManagerCore *)self isSplatRollbackAllowed:0])
  {
    preferredLastScannedDescriptor = [(SUManagerCore *)self preferredLastScannedDescriptor];
    v12 = +[SUPreferences sharedInstance];
    suggestedRollbackSplatVersion = [v12 suggestedRollbackSplatVersion];

    restoreVersion = [preferredLastScannedDescriptor restoreVersion];
    v15 = [restoreVersion isEqualToString:suggestedRollbackSplatVersion];

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

- (void)revokedUpdateFound:(id)found
{
  foundCopy = found;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  SULogInfo(@"Revoked update found: %@", v6, v7, v8, v9, v10, v11, v12, foundCopy);
  productBuildVersion = [foundCopy productBuildVersion];
  v20 = 0;
  v14 = [(SUManagerCore *)self shouldShowRollbackSuggestionAlert:productBuildVersion error:&v20];

  if (v14)
  {
    v15 = objc_alloc_init(SURollbackSuggestionInfo);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(SURollbackSuggestionInfo *)v15 setClientIdentifier:bundleIdentifier];

    [(SURollbackSuggestionInfo *)v15 setSuggestionReason:2];
    v18 = +[SUPreferences sharedInstance];
    restoreVersion = [foundCopy restoreVersion];
    [v18 setSuggestedRollbackSplatVersion:restoreVersion];

    [(SUManagerCore *)self presentRollbackSuggestionFollowUpWithCoreDescriptor:foundCopy info:v15];
  }
}

- (id)eligibleRollbackWithOptions:(id)options
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v28 = 0;
  v5 = [(SUManagerCore *)self isSplatRollbackAllowed:&v28];
  v6 = v28;
  v14 = v6;
  if (v5)
  {
    engine = [(SUManagerCore *)self engine];
    availableRollback = [engine availableRollback];

    v17 = +[SUPreferences sharedInstance];
    fakeSplatInstalled = [v17 fakeSplatInstalled];

    if (fakeSplatInstalled)
    {
      v19 = objc_alloc_init(MEMORY[0x277D641D8]);

      SULogInfo(@"%s: Fake splat installed, generating a fake descriptor.", v20, v21, v22, v23, v24, v25, v26, "[SUManagerCore(Splat) eligibleRollbackWithOptions:]");
      availableRollback = v19;
    }
  }

  else
  {
    SULogInfo(@"Rollback not allowed. Returning nil rollback descriptor: %@", v7, v8, v9, v10, v11, v12, v13, v6);
    availableRollback = 0;
  }

  return availableRollback;
}

- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
  hasSemiSplatActive = [mEMORY[0x277D64420] hasSemiSplatActive];

  if (hasSemiSplatActive)
  {
    SULogInfo(@"Rollback already applied, just proceed to reboot", v11, v12, v13, v14, v15, v16, v17, v29);
    v18 = 0;
LABEL_4:
    rollback = [(SUManagerCore *)self rollback];
    [rollback rollbackUpdateWithOptions:optionsCopy completion:resultCopy];

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
  if (resultCopy)
  {
    (*(resultCopy + 2))(resultCopy, 0, 0, v18);
  }

LABEL_5:
}

- (id)previousRollbackWithOptions:(id)options
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  engine = [(SUManagerCore *)self engine];
  previousRollback = [engine previousRollback];

  return previousRollback;
}

- (BOOL)isRollingBack
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  rollback = [(SUManagerCore *)self rollback];
  LOBYTE(workQueue) = [rollback isRollingBack];

  return workQueue;
}

- (void)rollbackReadyForReboot
{
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  rollback = [(SUManagerCore *)self rollback];
  v4 = [(SUManagerCore *)self eligibleRollbackWithOptions:0];
  [rollback rollbackReadyForReboot:v4];
}

- (void)securityResponseRollbackSuggested:(id)suggested withResult:(id)result
{
  resultCopy = result;
  suggestedCopy = suggested;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  rollback = [(SUManagerCore *)self rollback];
  availableRollback = [rollback availableRollback];
  [(SUManagerCore *)self suggestRollback:suggestedCopy rollbackDescriptor:availableRollback withResult:resultCopy];
}

- (void)suggestRollback:(id)rollback rollbackDescriptor:(id)descriptor withResult:(id)result
{
  rollbackCopy = rollback;
  descriptorCopy = descriptor;
  resultCopy = result;
  workQueue = [(SUManagerCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  SULogInfo(@"Rollback recommended. Info: %@ \nRollback Descriptor: %@", v12, v13, v14, v15, v16, v17, v18, rollbackCopy);
  productBuildVersion = [descriptorCopy productBuildVersion];
  v24 = 0;
  v20 = [(SUManagerCore *)self shouldShowRollbackSuggestionAlert:productBuildVersion error:&v24];
  v21 = v24;

  if (v20)
  {
    v22 = +[SUPreferences sharedInstance];
    restoreVersion = [descriptorCopy restoreVersion];
    [v22 setSuggestedRollbackSplatVersion:restoreVersion];

    [(SUManagerCore *)self presentRollbackSuggestionFollowUpWithRollbackDescriptor:descriptorCopy info:rollbackCopy];
    if (resultCopy)
    {
      resultCopy[2](resultCopy, 1, 0);
    }
  }

  else if (resultCopy)
  {
    (resultCopy)[2](resultCopy, 0, v21);
  }
}

- (BOOL)shouldShowRollbackSuggestionAlert:(id)alert error:(id *)error
{
  alertCopy = alert;
  v38 = 0;
  v7 = [(SUManagerCore *)self isSplatRollbackAllowed:&v38];
  v8 = v38;
  v16 = v8;
  if (!v7)
  {
    SULogInfo(@"Rollback not allowed. Ignoring revoked update: %@", v9, v10, v11, v12, v13, v14, v15, v8);
    if (error)
    {
      v25 = v16;
      v24 = 0;
      *error = v16;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (+[SUUtility isLockdownModeEnabled])
  {
    SULogInfo(@"Device is in Lockdown Mode. Ignoring revoked update", v17, v18, v19, v20, v21, v22, v23, v37);
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:101 userInfo:0];
      *error = v24 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v24 = 0;
    goto LABEL_12;
  }

  state = [(SUManagerCore *)self state];
  lastRollbackRecommendedBuildVersion = [state lastRollbackRecommendedBuildVersion];

  v35 = [lastRollbackRecommendedBuildVersion isEqualToString:alertCopy];
  if (v35)
  {
    SULogInfo(@"Rollback already recommended for %@, skipping follow-up", v28, v29, v30, v31, v32, v33, v34, alertCopy);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:100 userInfo:0];
    }
  }

  v24 = v35 ^ 1;

LABEL_12:
  return v24;
}

- (void)presentRollbackSuggestionFollowUpWithCoreDescriptor:(id)descriptor info:(id)info
{
  infoCopy = info;
  descriptorCopy = descriptor;
  v8 = [SUManagerEngine SUDescriptorFromCoreDescriptor:descriptorCopy];
  [(SUManagerCore *)self presentRollbackSuggestionAlertWithDescriptor:v8 info:infoCopy];
  [(SUManagerCore *)self reportRSRRollbackSuggestedEventWithDescriptor:descriptorCopy rollbackSuggestionInfo:infoCopy];
}

- (void)presentRollbackSuggestionFollowUpWithRollbackDescriptor:(id)descriptor info:(id)info
{
  infoCopy = info;
  descriptorCopy = descriptor;
  v8 = [SUManagerEngine SUDescriptorFromRollbackDescriptor:descriptorCopy];
  [(SUManagerCore *)self presentRollbackSuggestionAlertWithDescriptor:v8 info:infoCopy];
  [(SUManagerCore *)self reportRSRRollbackSuggestedEventWithRollbackDescriptor:descriptorCopy rollbackSuggestionInfo:infoCopy];
}

- (void)presentRollbackSuggestionAlertWithDescriptor:(id)descriptor info:(id)info
{
  descriptorCopy = descriptor;
  infoCopy = info;
  delegate = [(SUManagerCore *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    externWorkQueue = [(SUManagerCore *)self externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SUManagerCore_Splat__presentRollbackSuggestionAlertWithDescriptor_info___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v24 = descriptorCopy;
    v25 = infoCopy;
    dispatch_async(externWorkQueue, block);
  }

  productBuildVersion = [descriptorCopy productBuildVersion];

  if (productBuildVersion)
  {
    state = [(SUManagerCore *)self state];
    productBuildVersion2 = [descriptorCopy productBuildVersion];
    [state setLastRollbackRecommendedBuildVersion:productBuildVersion2];

    state2 = [(SUManagerCore *)self state];
    [state2 save];
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

- (void)rollbackStarted:(id)started
{
  startedCopy = started;
  workQueue = [(SUManagerCore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SUManagerCore_Splat__rollbackStarted___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = startedCopy;
  v6 = startedCopy;
  dispatch_async(workQueue, v7);
}

void __40__SUManagerCore_Splat__rollbackStarted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rollback];
  [v2 rollbackStarted:*(a1 + 40)];

  v3 = [*(a1 + 32) tracker];
  [v3 recordRollbackStarted:*(a1 + 40)];
}

- (void)rollbackCompleted:(id)completed withError:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  workQueue = [(SUManagerCore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUManagerCore_Splat__rollbackCompleted_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = completedCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = completedCopy;
  dispatch_async(workQueue, block);
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

    uUIDForSoftwareUpdate = [MEMORY[0x277D644A8] UUIDForSoftwareUpdate];
    uUIDString = [uUIDForSoftwareUpdate UUIDString];
    sessionID = v3->_sessionID;
    v3->_sessionID = uUIDString;

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
  unlockCallbacks = [(SUState *)self->_state unlockCallbacks];

  if (unlockCallbacks)
  {
    unlockCallbacks2 = [(SUState *)self->_state unlockCallbacks];
    v5 = [unlockCallbacks2 mutableCopy];
    unlockCallbacks = self->_unlockCallbacks;
    self->_unlockCallbacks = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    unlockCallbacks2 = self->_unlockCallbacks;
    self->_unlockCallbacks = v7;
  }

  installPolicy = [(SUState *)self->_state installPolicy];

  if (installPolicy)
  {
    installPolicy2 = [(SUState *)self->_state installPolicy];
    [(SUManagerCore *)self setInstallPolicy:installPolicy2];

    v10 = @"Found install policy: %@";
  }

  else
  {
    v10 = @"No install policy saved, using default: %@";
  }

  installPolicy3 = [(SUManagerCore *)self installPolicy];
  SULogDebug(v10, v12, v13, v14, v15, v16, v17, v18, installPolicy3);

  [(SUManagerCore *)self updateInstallPolicyAutoUpdateEnabled:[(SUManagerCore *)self isAutoUpdateEnabled]];
  installPolicy4 = [(SUManagerCore *)self installPolicy];
  SULogDebug(@"reset install policy to: %@", v20, v21, v22, v23, v24, v25, v26, installPolicy4);

  mandatoryUpdateDict = [(SUState *)self->_state mandatoryUpdateDict];

  if (mandatoryUpdateDict)
  {
    mandatoryUpdateDict2 = [(SUState *)self->_state mandatoryUpdateDict];
    mandatoryUpdateDictionary = self->_mandatoryUpdateDictionary;
    self->_mandatoryUpdateDictionary = mandatoryUpdateDict2;

    MEMORY[0x2821F96F8](mandatoryUpdateDict2, mandatoryUpdateDictionary);
  }
}

- (void)resumeOrResetIfNecessary
{
  dispatch_assert_queue_V2(self->_workQueue);
  [(SUManagerCore *)self resumeOrDisableReserveSpace];
  lastProductBuild = [(SUState *)self->_state lastProductBuild];
  lastProductVersion = [(SUState *)self->_state lastProductVersion];
  lastProductVersionExtra = [(SUState *)self->_state lastProductVersionExtra];
  lastSplatRestoreVersion = [(SUState *)self->_state lastSplatRestoreVersion];
  lastRollbackDescriptor = [(SUState *)self->_state lastRollbackDescriptor];
  v153 = +[SUUtility currentProductType];
  v155 = +[SUUtility currentProductBuild];
  v8 = +[SUUtility currentProductVersion];
  v9 = +[SUUtility currentProductVersionExtra];
  v151 = +[SUUtility currentReleaseType];
  mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
  splatRestoreVersion = [mEMORY[0x277D64420] splatRestoreVersion];

  [SUUtility setCacheable:1];
  v11 = +[SUKeybagInterface sharedInstance];
  [v11 addObserver:self];

  if (_os_feature_enabled_impl())
  {
    v12 = +[SUPreferences sharedInstance];
    [v12 addObserver:self];
  }

  v147 = lastRollbackDescriptor;
  v154 = v8;
  if ([lastProductVersion isEqualToString:v8])
  {
    v13 = [lastProductBuild isEqualToString:v155] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [SUUtility compareRestoreVersion:lastSplatRestoreVersion withRestoreVersion:splatRestoreVersion];
  v149 = lastProductVersionExtra;
  v152 = v9;
  v15 = [SUUtility compareVersionExtra:lastProductVersionExtra withVersionExtra:v9];
  v23 = v15;
  v25 = v14 != -1 && v15 != -1;
  v26 = v25 | v13;
  if (((v25 | v13) & 1) == 0)
  {
    SULogInfo(@"Splat RestoreVersion incremented", v16, v17, v18, v19, v20, v21, v22, v140);
  }

  v148 = lastSplatRestoreVersion;
  v28 = v14 != 1 && v23 != 1;
  v29 = v28 | v13;
  if (((v28 | v13) & 1) == 0)
  {
    SULogInfo(@"Splat RestoreVersion decremented", v16, v17, v18, v19, v20, v21, v22, v140);
  }

  v30 = v13 ^ v26 & v29;
  appliedTime = [(SUState *)self->_state appliedTime];
  v150 = appliedTime;
  if (appliedTime)
  {
    v39 = appliedTime;
    v40 = +[SUUtility bootTime];
    if ([v40 compare:v39] != 1)
    {
      v55 = 0;
      goto LABEL_35;
    }

    v144 = lastProductBuild;
    v145 = lastProductVersion;
    lastDownload = [(SUState *)self->_state lastDownload];
    descriptor = [lastDownload descriptor];

    productVersion = [descriptor productVersion];
    if ([productVersion isEqualToString:v154])
    {
      productBuildVersion = [descriptor productBuildVersion];
      v45 = [productBuildVersion isEqualToString:v155];

      if (v45)
      {
        productVersion2 = [descriptor productVersion];
        productBuildVersion2 = [descriptor productBuildVersion];
        SULogInfo(@"Found update (%@.%@) applied at (%@) and then system reboot at (%@), considering as new OS", v48, v49, v50, v51, v52, v53, v54, productVersion2);
        lastProductBuild = v144;
        goto LABEL_32;
      }
    }

    else
    {
    }

    if ((v30 & 1) == 0)
    {
      v55 = 0;
      lastProductBuild = v144;
      goto LABEL_34;
    }

    productVersion2 = [descriptor productVersion];
    productBuildVersion2 = [descriptor productBuildVersion];
    lastProductBuild = v144;
    SULogInfo(@"Found update (%@.%@) applied at (%@) and then system reboot at (%@) to the previous OS (%@.%@), update was consumed, cleaning prior state", v56, v57, v58, v59, v60, v61, v62, productVersion2);
LABEL_32:

    v55 = 1;
LABEL_34:

    lastProductVersion = v145;
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

  v146 = lastProductVersion;
  [(SUManagerCore *)self clearBadgeAndBanner];
  [(SUManagerCore *)self removeUnlockCallback:@"unlockCallbackRecordDataForBrain"];
  SULogInfo(@"Removing previously stashed ControllerDataForBrain file", v91, v92, v93, v94, v95, v96, v97, v141);
  v142 = @"Controller/ControllerDataForBrain.plist";
  v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/MobileSoftwareUpdate/%@"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v98])
  {
    v163 = 0;
    [defaultManager removeItemAtPath:v98 error:&v163];
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
  [(SUState *)self->_state setLastSplatRestoreVersion:splatRestoreVersion];
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

  lastProductVersion = v146;
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
  lastPendingSplatAlertDate = [(SUState *)self->_state lastPendingSplatAlertDate];

  if (lastPendingSplatAlertDate)
  {
    lastPendingSplatAlertDate2 = [(SUState *)self->_state lastPendingSplatAlertDate];
    [(SUManagerCore *)self scheduleSplatFollowUpDate:lastPendingSplatAlertDate2];
  }

  lastDownload = [(SUState *)self->_state lastDownload];
  v6 = [lastDownload copy];

  if (!v6 || ![v6 isValidDownload])
  {
    v15 = 0;
    v47 = @"No previous download recognized; cleaning up all software update assets.";
LABEL_10:
    SULogInfo(v47, v7, v8, v9, v10, v11, v12, v13, v77);
    [(SUManagerCore *)self resetDownloadState];
    [(SUManagerEngine *)self->_engine activateLoadingPersisted:0];
    v48 = 0;
    getMASoftwareUpdateAsset = 0;
    goto LABEL_11;
  }

  descriptor = [v6 descriptor];
  v15 = [(SUManagerCore *)self coreDescriptorForSUDescriptor:descriptor];

  getMASoftwareUpdateAsset = [v15 getMASoftwareUpdateAsset];
  descriptor2 = [v6 descriptor];
  SULogInfo(@"Found last download: %@ with descriptor: %@ and matching core descriptor: %@ with asset: %@", v16, v17, v18, v19, v20, v21, v22, v6);

  if (!getMASoftwareUpdateAsset)
  {
    v47 = @"No last asset found; cleaning up all software update assets.";
    goto LABEL_10;
  }

  downloadOptions = [v6 downloadOptions];
  descriptor3 = [v6 descriptor];
  v25 = [SUDownloadPolicyFactory userDownloadPolicyForDescriptor:descriptor3];
  [downloadOptions setActiveDownloadPolicy:v25];

  downloader = [(SUManagerCore *)self downloader];
  [downloader setDownload:v6];

  downloader2 = [(SUManagerCore *)self downloader];
  [downloader2 setDownloadAsset:getMASoftwareUpdateAsset];

  progress = [v6 progress];
  LODWORD(v25) = [progress isDone];

  v86 = v15;
  if (v25)
  {
    progress2 = [v6 progress];
    phase = [progress2 phase];
    v38 = [@"SUDownloadPhasePreparingForInstallation" isEqualToString:phase];

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
      progress3 = [v6 progress];
      phase2 = [progress3 phase];
      SULogInfo(@"Download progress is done, but phase is: %@", v61, v62, v63, v64, v65, v66, v67, phase2);

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
    progress4 = [v6 progress];
    phase3 = [progress4 phase];
    v51 = [@"SUDownloadPhaseFetching" isEqualToString:phase3];

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
  descriptor4 = [v6 descriptor];
  releaseDate = [descriptor4 releaseDate];
  v68 = [releaseDate copy];
  sessionID = [(SUManagerCore *)self sessionID];
  v69 = [sessionID copy];
  lastScannedDescriptorScanOptions = [(SUState *)self->_state lastScannedDescriptorScanOptions];
  v71 = [lastScannedDescriptorScanOptions copy];
  downloadOptions2 = [v6 downloadOptions];
  newInstallTonightConfig = [(SUManagerCore *)self newInstallTonightConfig];
  lastSpaceCleanupLevel = [(SUState *)self->_state lastSpaceCleanupLevel];
  v80 = v46;
  v75 = v68;
  v48 = [(SUManagerEngineDownloadDescriptor *)v81 initWithAsset:getMASoftwareUpdateAsset releaseDate:v68 sessionID:v69 scanOptions:v71 downloadOptions:downloadOptions2 installTonightConfig:newInstallTonightConfig coreDescriptor:v86 downloadAtPhase:v80 cleanupLevel:lastSpaceCleanupLevel, getMASoftwareUpdateAsset];

  self->_reportStartedFromPersistedState = 1;
  [(SUManagerEngine *)self->_engine activateLoadingPersisted:v48];
  if (v85)
  {
    managedDeviceManager = [(SUManagerCore *)self managedDeviceManager];
    [managedDeviceManager refreshAssetAudience];
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
  ddmManager = [v2 ddmManager];

  return ddmManager;
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
  scanner = [(SUManagerCore *)self scanner];
  isScanning = [scanner isScanning];

  return isScanning;
}

- (BOOL)isDownloading
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  isDownloading = [downloader isDownloading];

  return isDownloading;
}

- (BOOL)isUpdateDownloaded
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  isUpdateDownloaded = [downloader isUpdateDownloaded];

  return isUpdateDownloaded;
}

- (BOOL)isForeground
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  isForeground = [downloader isForeground];

  return isForeground;
}

- (BOOL)isClearingSpace
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  isClearingSpace = [downloader isClearingSpace];

  return isClearingSpace;
}

- (BOOL)isInstalling
{
  dispatch_assert_queue_V2(self->_workQueue);
  installer = [(SUManagerCore *)self installer];
  isInstalling = [installer isInstalling];

  return isInstalling;
}

- (BOOL)isInstalled
{
  dispatch_assert_queue_V2(self->_workQueue);
  installer = [(SUManagerCore *)self installer];
  isInstalled = [installer isInstalled];

  return isInstalled;
}

- (BOOL)isInstallTonight
{
  dispatch_assert_queue_V2(self->_workQueue);
  installer = [(SUManagerCore *)self installer];
  isInstallTonight = [installer isInstallTonight];

  return isInstallTonight;
}

- (BOOL)isInstallTonightScheduled
{
  dispatch_assert_queue_V2(self->_workQueue);
  installer = [(SUManagerCore *)self installer];
  isInstallTonightScheduled = [installer isInstallTonightScheduled];

  return isInstallTonightScheduled;
}

- (MAAsset)preferredAssetToDownloadFromLastScan
{
  dispatch_assert_queue_V2(self->_workQueue);
  scanner = [(SUManagerCore *)self scanner];
  preferredLastScannedCoreDescriptor = [scanner preferredLastScannedCoreDescriptor];
  getMASoftwareUpdateAsset = [preferredLastScannedCoreDescriptor getMASoftwareUpdateAsset];

  return getMASoftwareUpdateAsset;
}

- (MAAsset)alternateAssetToDownloadFromLastScan
{
  dispatch_assert_queue_V2(self->_workQueue);
  scanner = [(SUManagerCore *)self scanner];
  alternateLastScannedCoreDescriptor = [scanner alternateLastScannedCoreDescriptor];
  getMASoftwareUpdateAsset = [alternateLastScannedCoreDescriptor getMASoftwareUpdateAsset];

  return getMASoftwareUpdateAsset;
}

- (SUCoreDescriptor)preferredLastScannedDescriptor
{
  dispatch_assert_queue_V2(self->_workQueue);
  scanner = [(SUManagerCore *)self scanner];
  preferredLastScannedCoreDescriptor = [scanner preferredLastScannedCoreDescriptor];

  return preferredLastScannedCoreDescriptor;
}

- (void)setPreferredLastScannedDescriptor:(id)descriptor
{
  workQueue = self->_workQueue;
  descriptorCopy = descriptor;
  dispatch_assert_queue_V2(workQueue);
  scanner = [(SUManagerCore *)self scanner];
  [scanner setPreferredLastScannedCoreDescriptor:descriptorCopy];
}

- (SUCoreDescriptor)alternateLastScannedDescriptor
{
  dispatch_assert_queue_V2(self->_workQueue);
  scanner = [(SUManagerCore *)self scanner];
  alternateLastScannedCoreDescriptor = [scanner alternateLastScannedCoreDescriptor];

  return alternateLastScannedCoreDescriptor;
}

- (void)setAlternateLastScannedDescriptor:(id)descriptor
{
  workQueue = self->_workQueue;
  descriptorCopy = descriptor;
  dispatch_assert_queue_V2(workQueue);
  scanner = [(SUManagerCore *)self scanner];
  [scanner setAlternateLastScannedCoreDescriptor:descriptorCopy];
}

- (id)discoveryDateForBuildVersion:(id)version
{
  workQueue = self->_workQueue;
  versionCopy = version;
  dispatch_assert_queue_V2(workQueue);
  scanner = [(SUManagerCore *)self scanner];
  v7 = [scanner discoveryDateforBuildVersion:versionCopy];

  return v7;
}

- (id)fullyUnrampedDateForBuildVersion:(id)version
{
  workQueue = self->_workQueue;
  versionCopy = version;
  dispatch_assert_queue_V2(workQueue);
  scanner = [(SUManagerCore *)self scanner];
  v7 = [scanner fullyUnrampedDateForBuildVersion:versionCopy];

  return v7;
}

- (SUScanOptions)lastScannedDescriptorScanOptions
{
  dispatch_assert_queue_V2(self->_workQueue);
  scanner = [(SUManagerCore *)self scanner];
  lastScannedDescriptorScanOptions = [scanner lastScannedDescriptorScanOptions];

  return lastScannedDescriptorScanOptions;
}

- (NSDate)lastStashbagPersistedDate
{
  dispatch_assert_queue_V2(self->_workQueue);
  lastStashbagPersistedDate = self->_lastStashbagPersistedDate;

  return lastStashbagPersistedDate;
}

- (void)setLastStashbagPersistedDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_workQueue);
  lastStashbagPersistedDate = self->_lastStashbagPersistedDate;
  self->_lastStashbagPersistedDate = dateCopy;
}

- (SUAutoUpdatePasscodePolicy)passcodePolicy
{
  dispatch_assert_queue_V2(self->_workQueue);
  installer = [(SUManagerCore *)self installer];
  passcodePolicy = [installer passcodePolicy];

  return passcodePolicy;
}

- (void)setPasscodePolicy:(id)policy
{
  workQueue = self->_workQueue;
  policyCopy = policy;
  dispatch_assert_queue_V2(workQueue);
  installer = [(SUManagerCore *)self installer];
  [installer setPasscodePolicy:policyCopy];
}

- (SUInstallPolicy)installPolicy
{
  dispatch_assert_queue_V2(self->_workQueue);
  installer = [(SUManagerCore *)self installer];
  installPolicy = [installer installPolicy];

  return installPolicy;
}

- (void)setInstallPolicy:(id)policy
{
  workQueue = self->_workQueue;
  policyCopy = policy;
  dispatch_assert_queue_V2(workQueue);
  installer = [(SUManagerCore *)self installer];
  [installer setInstallPolicy:policyCopy];
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
  allKeys = [(NSMutableDictionary *)v3 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(allKeys);
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
      v14 = [allKeys countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)addUnlockCallback:(SEL)callback forKey:(id)key
{
  keyCopy = key;
  dispatch_assert_queue_V2(self->_workQueue);
  if (callback)
  {
    if (keyCopy)
    {
      v13 = NSStringFromSelector(callback);
      if (v13)
      {
        v14 = v13;
        SULogInfo(@"Adding unlock callback %@ for key %@", v6, v7, v8, v9, v10, v11, v12, v13);
        [(NSMutableDictionary *)self->_unlockCallbacks setSafeObject:v14 forKey:keyCopy];
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

- (void)removeUnlockCallback:(id)callback
{
  workQueue = self->_workQueue;
  callbackCopy = callback;
  dispatch_assert_queue_V2(workQueue);
  SULogInfo(@"removing unlock callback for key %@", v6, v7, v8, v9, v10, v11, v12, callbackCopy);
  [(NSMutableDictionary *)self->_unlockCallbacks removeObjectForKey:callbackCopy];

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
    overrideSessionIDRampingPortion = [v3 overrideSessionIDRampingPortion];

    if (overrideSessionIDRampingPortion && [overrideSessionIDRampingPortion length] == 3)
    {
      SULogInfo(@"[PREFERENCES] session id ramping portion is set to %@", v5, v6, v7, v8, v9, v10, v11, overrideSessionIDRampingPortion);
      v12 = MEMORY[0x277CCACA8];
      v13 = [(NSString *)self->_sessionID substringToIndex:[(NSString *)self->_sessionID length]- 3];
      v14 = [v12 stringWithFormat:@"%@%@", v13, overrideSessionIDRampingPortion];

      goto LABEL_7;
    }
  }

  v14 = self->_sessionID;
LABEL_7:

  return v14;
}

- (BOOL)isAutoUpdateEnabled
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_workQueue);
  lastDownload = [(SUState *)selfCopy->_state lastDownload];
  descriptor = [lastDownload descriptor];
  LOBYTE(selfCopy) = [(SUManagerCore *)selfCopy isDescriptorAutoUpdatable:descriptor];

  return selfCopy;
}

- (BOOL)isDescriptorAutoDownloadable:(id)downloadable
{
  downloadableCopy = downloadable;
  if (!downloadableCopy)
  {
    v24 = @"nil update is not auto downloadable";
    goto LABEL_10;
  }

  v12 = +[SUPreferences sharedInstance];
  autoDownloadDeletedBuild = [v12 autoDownloadDeletedBuild];

  if (autoDownloadDeletedBuild)
  {
LABEL_8:
    if (![downloadableCopy rampEnabled])
    {
      if ([downloadableCopy updateType] == 4)
      {
        rolledBackBuildVersions = [(SUState *)self->_state rolledBackBuildVersions];
        if (rolledBackBuildVersions)
        {
          v27 = rolledBackBuildVersions;
          productBuildVersion = [downloadableCopy productBuildVersion];
          if (productBuildVersion)
          {
            v29 = productBuildVersion;
            rolledBackBuildVersions2 = [(SUState *)self->_state rolledBackBuildVersions];
            productBuildVersion2 = [downloadableCopy productBuildVersion];
            v32 = [rolledBackBuildVersions2 containsObject:productBuildVersion2];

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

  lastDeletedSUAssetID = [(SUState *)self->_state lastDeletedSUAssetID];
  if (!lastDeletedSUAssetID || ([downloadableCopy assetID], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", lastDeletedSUAssetID), v15, !v16))
  {

    goto LABEL_8;
  }

  SULogInfo(@"Update not auto downloadable because it was previously deleted by the user", v17, v18, v19, v20, v21, v22, v23, v34);

LABEL_11:
  v25 = 0;
LABEL_19:

  return v25;
}

- (BOOL)isDescriptorAutoUpdatable:(id)updatable
{
  updatableCopy = updatable;
  dispatch_assert_queue_V2(self->_workQueue);
  autoUpdateEnabled = [updatableCopy autoUpdateEnabled];
  if ([updatableCopy updateType] != 4)
  {
    upgradeType = [updatableCopy upgradeType];
    v14 = +[SUPreferences sharedInstance];
    isAutomaticUpdateV2Enabled = [v14 isAutomaticUpdateV2Enabled];

    if (upgradeType == 1)
    {
      v16 = autoUpdateEnabled;
    }

    else
    {
      v16 = 0;
    }

    if (isAutomaticUpdateV2Enabled)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = +[SUPreferences sharedInstance];
    autoUpdateForceOn = [v18 autoUpdateForceOn];

    if ((autoUpdateForceOn & 1) == 0)
    {
      v20 = +[SUPreferences sharedInstance];
      autoUpdateForceOff = [v20 autoUpdateForceOff];

      v12 = (autoUpdateForceOff ^ 1) & v17;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = +[SUPreferences sharedInstance];
  autoInstallSecurityResponse = [v6 autoInstallSecurityResponse];

  v8 = +[SUPreferences sharedInstance];
  autoInstallSecurityResponseForceOn = [v8 autoInstallSecurityResponseForceOn];

  if (autoInstallSecurityResponseForceOn)
  {
LABEL_11:
    v12 = 1;
    goto LABEL_13;
  }

  v10 = +[SUPreferences sharedInstance];
  autoInstallSecurityResponseForceOff = [v10 autoInstallSecurityResponseForceOff];

  v12 = (autoInstallSecurityResponseForceOff ^ 1) & autoInstallSecurityResponse & autoUpdateEnabled;
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
  downloader = [(SUManagerCore *)self downloader];
  updateToAutoDownload = [(SUManagerCore *)self updateToAutoDownload];
  [downloader loadBrainOnUnlockForDescriptor:updateToAutoDownload];
}

- (void)tryAutoDownload
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  [downloader tryAutoDownload];
}

- (void)noteAutoDownloadFailedToStartWithError:(id)error
{
  workQueue = self->_workQueue;
  errorCopy = error;
  dispatch_assert_queue_V2(workQueue);
  downloader = [(SUManagerCore *)self downloader];
  [downloader noteAutoDownloadFailedToStartWithError:errorCopy];
}

- (void)endAutoDownloadTasksAndResetState
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  [downloader endAutoDownloadTasksAndResetState];
}

- (void)scanForUpdates:(id)updates complete:(id)complete
{
  workQueue = self->_workQueue;
  completeCopy = complete;
  updatesCopy = updates;
  dispatch_assert_queue_V2(workQueue);
  scanner = [(SUManagerCore *)self scanner];
  [scanner scanForUpdates:updatesCopy complete:completeCopy];

  tracker = [(SUManagerCore *)self tracker];
  [tracker recordScanForUpdates:updatesCopy fromClient:0];
}

- (id)coreDescriptorForSUDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    scanner = [(SUManagerCore *)self scanner];
    preferredLastScannedCoreDescriptor = [scanner preferredLastScannedCoreDescriptor];

    if ([descriptorCopy matchesDescriptor:preferredLastScannedCoreDescriptor comparisonFlags:0 reason:0])
    {
      v7 = preferredLastScannedCoreDescriptor;
    }

    else
    {
      scanner2 = [(SUManagerCore *)self scanner];
      alternateLastScannedCoreDescriptor = [scanner2 alternateLastScannedCoreDescriptor];

      v7 = 0;
      if ([descriptorCopy matchesDescriptor:alternateLastScannedCoreDescriptor comparisonFlags:0 reason:0])
      {
        v7 = alternateLastScannedCoreDescriptor;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)coreDescriptorForBuildVersion:(id)version versionExtra:(id)extra isSplombo:(BOOL)splombo
{
  splomboCopy = splombo;
  versionCopy = version;
  extraCopy = extra;
  dispatch_assert_queue_V2(self->_workQueue);
  scanner = [(SUManagerCore *)self scanner];
  preferredLastScannedCoreDescriptor = [scanner preferredLastScannedCoreDescriptor];

  scanner2 = [(SUManagerCore *)self scanner];
  alternateLastScannedCoreDescriptor = [scanner2 alternateLastScannedCoreDescriptor];

  if (!preferredLastScannedCoreDescriptor)
  {
    goto LABEL_8;
  }

  v14 = MEMORY[0x277D64400];
  productVersionExtra = [preferredLastScannedCoreDescriptor productVersionExtra];
  if (![v14 stringIsEqual:productVersionExtra to:extraCopy])
  {
LABEL_7:

    goto LABEL_8;
  }

  productBuildVersion = [preferredLastScannedCoreDescriptor productBuildVersion];
  if (([productBuildVersion isEqualToString:versionCopy] & 1) == 0)
  {

    goto LABEL_7;
  }

  associatedSplatDescriptor = [preferredLastScannedCoreDescriptor associatedSplatDescriptor];
  v18 = associatedSplatDescriptor == 0;

  if (v18 != splomboCopy)
  {
    v19 = preferredLastScannedCoreDescriptor;
LABEL_13:
    v25 = v19;
    goto LABEL_17;
  }

LABEL_8:
  if (!alternateLastScannedCoreDescriptor)
  {
    goto LABEL_16;
  }

  v20 = MEMORY[0x277D64400];
  productVersionExtra2 = [alternateLastScannedCoreDescriptor productVersionExtra];
  if (([v20 stringIsEqual:productVersionExtra2 to:extraCopy] & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  productBuildVersion2 = [alternateLastScannedCoreDescriptor productBuildVersion];
  if (([productBuildVersion2 isEqualToString:versionCopy] & 1) == 0)
  {

    goto LABEL_15;
  }

  associatedSplatDescriptor2 = [alternateLastScannedCoreDescriptor associatedSplatDescriptor];
  v24 = associatedSplatDescriptor2 == 0;

  if (v24 != splomboCopy)
  {
    v19 = alternateLastScannedCoreDescriptor;
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
  scanner = [(SUManagerCore *)self scanner];
  [scanner unscheduleRecommendedUpdateNotification];
}

- (void)resumeOrDisableReserveSpace
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[SUPreferences sharedInstance];
    softwareUpdateReserveDisabled = [v2 softwareUpdateReserveDisabled];

    v4 = MEMORY[0x277D641E8];
    if ((softwareUpdateReserveDisabled & 1) == 0)
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

- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size
{
  reserveCopy = reserve;
  sizeCopy = size;
  dispatch_assert_queue_V2(self->_workQueue);
  if (reserveCopy && [reserveCopy unsignedLongLongValue])
  {
    v7 = +[SUPreferences sharedInstance];
    [v7 disableSoftwareUpdateReserve:1];

    v8 = +[SUPreferences sharedInstance];
    [v8 setSoftwareUpdateReserveSize:reserveCopy];

    v9 = +[SUPreferences sharedInstance];
    [v9 setSystemGrowthMarginSize:sizeCopy];

    [MEMORY[0x277D641E8] cacheDeleteSetReserveSpace:reserveCopy systemGrowthMarginSize:sizeCopy];
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

- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result
{
  workQueue = self->_workQueue;
  resultCopy = result;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(workQueue);
  preferredLastScannedDescriptor = [(SUManagerCore *)self preferredLastScannedDescriptor];
  v18 = [SUManagerEngine SUDescriptorFromCoreDescriptor:preferredLastScannedDescriptor];

  alternateLastScannedDescriptor = [(SUManagerCore *)self alternateLastScannedDescriptor];
  v11 = [SUManagerEngine SUDescriptorFromCoreDescriptor:alternateLastScannedDescriptor];

  v12 = [[SUScanResults alloc] initWithPreferredDescriptor:v18 alternateDescriptor:v11];
  v13 = [SUDownloadOptions alloc];
  latestUpdate = [(SUScanResults *)v12 latestUpdate];
  v15 = [(SUDownloadOptions *)v13 initWithMetadata:metadataCopy andDescriptor:latestUpdate];

  [(SUManagerCore *)self startDownloadWithOptions:v15 withResult:resultCopy];
  tracker = [(SUManagerCore *)self tracker];
  clientName = [(SUDownloadOptions *)v15 clientName];
  [tracker recordDownloadStarted:v15 fromClient:clientName];
}

- (void)startDownloadWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  workQueue = self->_workQueue;
  optionsCopy = options;
  dispatch_assert_queue_V2(workQueue);
  notify_post([*MEMORY[0x277D64250] UTF8String]);
  downloader = [(SUManagerCore *)self downloader];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __53__SUManagerCore_startDownloadWithOptions_withResult___block_invoke;
  v16 = &unk_279CAC8E8;
  selfCopy = self;
  v18 = resultCopy;
  v10 = resultCopy;
  [downloader startDownloadWithOptions:optionsCopy withResult:&v13];

  v11 = [(SUManagerCore *)self tracker:v13];
  clientName = [optionsCopy clientName];
  [v11 recordDownloadStarted:optionsCopy fromClient:clientName];
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

- (void)updateDownloadOptions:(id)options withResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  v21 = 0;
  v9 = [downloader updateDownloadOptions:optionsCopy error:&v21];
  v10 = v21;

  if (resultCopy)
  {
    externWorkQueue = self->_externWorkQueue;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__SUManagerCore_updateDownloadOptions_withResult___block_invoke;
    v17 = &unk_279CAADF0;
    v19 = resultCopy;
    v20 = v9;
    v18 = v10;
    dispatch_async(externWorkQueue, &v14);
  }

  v12 = [(SUManagerCore *)self tracker:v14];
  clientName = [optionsCopy clientName];
  [v12 recordDownloadStarted:optionsCopy fromClient:clientName];
}

- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler
{
  optionsCopy = options;
  downloadOptionsCopy = downloadOptions;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_workQueue);
  if (handlerCopy)
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
    v75[3] = &unk_279CAC4B0;
    v75[4] = self;
    v76 = handlerCopy;
    v60 = MEMORY[0x26D668B30](v75);
    v59 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:3 userInfo:0];
    descriptor = [optionsCopy descriptor];
    descriptor2 = [downloadOptionsCopy descriptor];
    if (descriptor)
    {
      v58 = descriptor2;
      v20 = descriptor2 != 0;
      v21 = 1;
    }

    else
    {
      v56 = optionsCopy;
      v57 = downloadOptionsCopy;
      v22 = descriptor2;
      scanner = [(SUManagerCore *)self scanner];
      preferredLastScannedCoreDescriptor = [scanner preferredLastScannedCoreDescriptor];
      descriptor = [SUManagerEngine SUDescriptorFromCoreDescriptor:preferredLastScannedCoreDescriptor];

      scanner2 = [(SUManagerCore *)self scanner];
      alternateLastScannedCoreDescriptor = [scanner2 alternateLastScannedCoreDescriptor];
      v27 = [SUManagerEngine SUDescriptorFromCoreDescriptor:alternateLastScannedCoreDescriptor];

      v21 = descriptor != 0;
      v20 = v27 != 0;
      if (!(descriptor | v27))
      {
        v45 = v59;
        v36 = v60;
        (v60)[2](v60, 0, 0, v59, v59);
        optionsCopy = v56;
        downloadOptionsCopy = v57;
        goto LABEL_26;
      }

      v58 = v27;
      optionsCopy = v56;
      downloadOptionsCopy = v57;
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

        v49 = downloadOptionsCopy;
        if (v20)
        {
          v50 = 0;
        }

        else
        {
          v50 = v45;
        }

        (v36)[2](v36, v21, v20, v44, v50);

        downloadOptionsCopy = v49;
        goto LABEL_26;
      }

      v46 = downloadOptionsCopy;
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
      [(SUSpacePurgeOptions *)v47 setNeededBytes:[SUUtility totalDiskSpaceForUpdate:descriptor]];
      [(SUSpacePurgeOptions *)v47 setEnableCacheDelete:1];
      if ([optionsCopy isAutoDownload])
      {
        isAppOffloadEnabled = 0;
      }

      else
      {
        isAppOffloadEnabled = [optionsCopy isAppOffloadEnabled];
      }

      [(SUSpacePurgeOptions *)v47 setEnableAppOffload:isAppOffloadEnabled];
      if ([optionsCopy isAutoDownload])
      {
        isMASuspensionEnabled = 0;
      }

      else
      {
        isMASuspensionEnabled = [optionsCopy isMASuspensionEnabled];
      }

      [(SUSpacePurgeOptions *)v47 setEnableMobileAssetSuspend:isMASuspensionEnabled];
      [(SUSpacePurgeOptions *)v47 setCacheDeleteUrgency:4];
      [(SUSpacePurgeOptions *)v47 setAppOffloadUrgency:4];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __86__SUManagerCore_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_498;
      v61[3] = &unk_279CACE48;
      v69 = v73;
      v70 = v71;
      v61[4] = self;
      v52 = descriptor;
      v62 = v52;
      v63 = optionsCopy;
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

      downloadOptionsCopy = v46;
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

- (BOOL)_isUpdateDownloadable:(id)downloadable downloadOptions:(id)options error:(id *)error
{
  v13 = 0;
  optionsCopy = options;
  downloadableCopy = downloadable;
  v9 = +[SUDownloadPolicyFactory userDownloadPolicyForDescriptor:existingPolicy:allowCellularOverride:](SUDownloadPolicyFactory, "userDownloadPolicyForDescriptor:existingPolicy:allowCellularOverride:", downloadableCopy, 0, [optionsCopy allowUnrestrictedCellularDownload]);

  downloadFeeAgreementStatus = [optionsCopy downloadFeeAgreementStatus];
  [v9 setCellularFeeAgreementStatus:downloadFeeAgreementStatus];
  v11 = [v9 isDownloadableForCurrentNetworkConditions:&v13 cellularFeesApply:0];
  if (error && v13)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:v13 userInfo:0];
  }

  return v11;
}

- (void)updateDownloadMetadata:(id)metadata withResult:(id)result
{
  workQueue = self->_workQueue;
  resultCopy = result;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(workQueue);
  v9 = [SUDownloadOptions alloc];
  download = [(SUManagerCore *)self download];
  descriptor = [download descriptor];
  v12 = [(SUDownloadOptions *)v9 initWithMetadata:metadataCopy andDescriptor:descriptor];

  [(SUManagerCore *)self updateDownloadOptions:v12 withResult:resultCopy];
}

- (id)download
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  download = [downloader download];

  return download;
}

- (id)downloadAsset
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  downloadAsset = [downloader downloadAsset];

  return downloadAsset;
}

- (void)deviceIsUpToDateForSU:(BOOL)u forSplat:(BOOL)splat
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  isSplatDownload = [downloader isSplatDownload];

  if (isSplatDownload)
  {
    if (!splat)
    {
      v16 = @"Got up to date report but not for current Splat download, keeping it";
LABEL_9:

      SULogInfo(v16, v9, v10, v11, v12, v13, v14, v15, v19);
      return;
    }
  }

  else if (!u)
  {
    v16 = @"Got up to date report but not for current SU download, keeping it";
    goto LABEL_9;
  }

  [(SUManagerCore *)self clearBadgeAndBanner];
  downloader2 = [(SUManagerCore *)self downloader];
  [downloader2 deviceIsUpToDate];
}

- (id)updateToAutoDownload
{
  dispatch_assert_queue_V2(self->_workQueue);
  scanner = [(SUManagerCore *)self scanner];
  descriptorToAutoDownload = [scanner descriptorToAutoDownload];

  return descriptorToAutoDownload;
}

- (void)cleanupPreviousDownloadState
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  [downloader cleanupPreviousDownloadState:1];
}

- (void)resetDownloadState
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  [downloader resetDownloadStateOnStartup];
}

- (id)slaVersion
{
  dispatch_assert_queue_V2(self->_workQueue);
  downloader = [(SUManagerCore *)self downloader];
  slaVersion = [downloader slaVersion];

  return slaVersion;
}

- (void)updateInstallPolicyType:(unint64_t)type
{
  dispatch_assert_queue_V2(self->_workQueue);
  installer = [(SUManagerCore *)self installer];
  [installer updateInstallPolicyType:type];
}

- (id)newInstallTonightConfig
{
  isInstallTonight = [(SUManagerCore *)self isInstallTonight];
  v3 = MEMORY[0x277D647B0];
  if (!isInstallTonight)
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
  isInstallTonight = [(SUManagerCore *)self isInstallTonight];
  v4 = *MEMORY[0x277D647B0];
  v5 = *MEMORY[0x277D64728];
  if (isInstallTonight)
  {
    v6 = *MEMORY[0x277D647B0];
  }

  else
  {
    v6 = *MEMORY[0x277D64728];
  }

  v25[0] = v6;
  v24[1] = @"autoUpdateEnabledForDescriptor";
  download = [(SUManagerCore *)self download];
  descriptor = [download descriptor];
  if ([descriptor autoUpdateEnabled])
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v25[1] = v9;
  v24[2] = @"autoDownload";
  download2 = [(SUManagerCore *)self download];
  downloadOptions = [download2 downloadOptions];
  if ([downloadOptions isAutoDownload])
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

- (void)isUpdateReadyForInstallationWithOptions:(id)options replyHandler:(id)handler
{
  workQueue = self->_workQueue;
  handlerCopy = handler;
  optionsCopy = options;
  dispatch_assert_queue_V2(workQueue);
  installer = [(SUManagerCore *)self installer];
  [installer isUpdateReadyForInstallationWithOptions:optionsCopy replyHandler:handlerCopy];
}

- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result
{
  workQueue = self->_workQueue;
  resultCopy = result;
  optionsCopy = options;
  dispatch_assert_queue_V2(workQueue);
  installer = [(SUManagerCore *)self installer];
  [installer installUpdateWithInstallOptions:optionsCopy withResult:resultCopy];

  tracker = [(SUManagerCore *)self tracker];
  download = [(SUManagerCore *)self download];
  descriptor = [download descriptor];
  [tracker recordInstallStarted:optionsCopy withDownload:descriptor];
}

- (void)autoSUFailedWithError:(id)error
{
  workQueue = self->_workQueue;
  errorCopy = error;
  dispatch_assert_queue_V2(workQueue);
  installer = [(SUManagerCore *)self installer];
  [installer autoSUFailedWithError:errorCopy];
}

- (void)_persistStash
{
  dispatch_assert_queue_V2(self->_workQueue);
  SULogInfo(@"entered _persistStash", v3, v4, v5, v6, v7, v8, v9, v30);
  v10 = +[SUKeybagInterface sharedInstance];
  download = [(SUManagerCore *)self download];
  descriptor = [download descriptor];
  v13 = [v10 installationKeybagStateForDescriptor:descriptor];

  if (v13 == 2)
  {
    SULogInfo(@"Persist the stashbag", v14, v15, v16, v17, v18, v19, v20, v31);
    v21 = +[SUKeybagInterface sharedInstance];
    persistKeybagStash = [v21 persistKeybagStash];

    if (persistKeybagStash)
    {
      SULogInfo(@"Stashbag persisted", v23, v24, v25, v26, v27, v28, v29, v32);
      date = [MEMORY[0x277CBEAA8] date];
      [(SUManagerCore *)self setLastStashbagPersistedDate:date];
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
  isPasscodeLocked = [v9 isPasscodeLocked];

  SULogInfo(@"isPasscodeLocked = %d", v11, v12, v13, v14, v15, v16, v17, isPasscodeLocked);
  if ((isPasscodeLocked & 1) == 0)
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

- (void)createInstallationKeybag:(id)keybag withResult:(id)result
{
  v59 = *MEMORY[0x277D85DE8];
  keybagCopy = keybag;
  resultCopy = result;
  dispatch_assert_queue_V2(self->_workQueue);
  descriptor = [keybagCopy descriptor];
  if (descriptor)
  {
    goto LABEL_6;
  }

  download = [(SUManagerCore *)self download];
  if (download)
  {
    download2 = [(SUManagerCore *)self download];
    [download2 descriptor];
  }

  else
  {
    download2 = [(SUManagerCore *)self preferredLastScannedDescriptor];
    [SUManagerEngine SUDescriptorFromCoreDescriptor:download2];
  }
  descriptor = ;

  if (descriptor)
  {
LABEL_6:
    passcode = [keybagCopy passcode];
    if (passcode)
    {
    }

    else
    {
      laContext = [keybagCopy laContext];

      if (!laContext)
      {
        SULogInfo(@"No passcode or LAContext provided for keybag. Unable to create installation keybag with null passcode and null LAContext", v20, v21, v22, v23, v24, v25, v26, v51);
        if (!resultCopy)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }

    keybagType = [keybagCopy keybagType];
    if (!keybagType)
    {
      SULogInfo(@"createInstallationKeybag - asked to create attended keybag but will create unattended one anyway", v27, v28, v29, v30, v31, v32, v33, v51);
      keybagType = 1;
    }

    laContext2 = [keybagCopy laContext];

    v36 = +[SUKeybagInterface sharedInstance];
    if (laContext2)
    {
      laContext3 = [keybagCopy laContext];
      v38 = [v36 createInstallationKeybagForDescriptor:descriptor withLASecret:laContext3 forUnattendedInstall:keybagType == 1];
    }

    else
    {
      laContext3 = [keybagCopy passcode];
      v38 = [v36 createInstallationKeybagForDescriptor:descriptor withSecret:laContext3 forUnattendedInstall:keybagType == 1];
    }

    v39 = v38;

    [(SUManagerCore *)self setLastStashbagPersistedDate:0];
    if (keybagType == 1 && v39)
    {
      v52 = keybagCopy;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      allObjects = [(NSHashTable *)self->_observers allObjects];
      v41 = [allObjects countByEnumeratingWithState:&v54 objects:v58 count:16];
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
              objc_enumerationMutation(allObjects);
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

          v42 = [allObjects countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v42);
      }

      keybagCopy = v52;
    }

    if (v39)
    {
      resultCopy[2](resultCopy, 1, 0);
      goto LABEL_34;
    }

    v47 = [SUUtility errorWithCode:82];
    [(SUManagerCore *)self reportPostponedEvent:v47 withStatus:@"installNotReady"];

LABEL_29:
    v48 = [SUUtility errorWithCode:82];
    (resultCopy)[2](resultCopy, 0, v48);

    goto LABEL_34;
  }

  SULogInfo(@"No descriptor provided for keybag. Unable to create installation keybag with null descriptor", v11, v12, v13, v14, v15, v16, v17, v51);
  if (resultCopy)
  {
    v49 = [SUUtility errorWithCode:82];
    (resultCopy)[2](resultCopy, 0, v49);
  }

  descriptor = 0;
LABEL_34:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)clearKeybagStash
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[SUKeybagInterface sharedInstance];
  disableKeybagStash = [v3 disableKeybagStash];

  v12 = @"failed";
  if (disableKeybagStash)
  {
    v12 = @"succeeded";
  }

  SULogInfo(@"destroying keybag stash %@", v5, v6, v7, v8, v9, v10, v11, v12);

  [(SUManagerCore *)self setLastStashbagPersistedDate:0];
}

- (void)presentAutoUpdateBanner:(id)banner
{
  bannerCopy = banner;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = SULogBadging();
  SULogInfoForSubsystem(v5, @"Got request to present AutoUpdateBanner", v6, v7, v8, v9, v10, v11, v51[0]);

  download = [(SUManagerCore *)self download];
  if (download)
  {
    v13 = download;
    download2 = [(SUManagerCore *)self download];
    descriptor = [download2 descriptor];

    if (descriptor)
    {
      download3 = [(SUManagerCore *)self download];
      descriptor2 = [download3 descriptor];

      followUpController = [(SUManagerCore *)self followUpController];
      v19 = [followUpController isCurrentlyPresentingFollowUpType:2];

      if (v19)
      {
        lastPendingSplatAlertDate2 = SULogBadging();
        SULogInfoForSubsystem(lastPendingSplatAlertDate2, @"Not presenting banner since it is already being presented", v21, v22, v23, v24, v25, v26, v51[0]);
LABEL_5:

        goto LABEL_14;
      }

      if ([descriptor2 isSplatOnly] && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "autoInstallSecurityResponse"), v36, v37))
      {
        lastPendingSplatAlertDate = [(SUState *)self->_state lastPendingSplatAlertDate];

        if (!lastPendingSplatAlertDate)
        {
          state = self->_state;
          date = [MEMORY[0x277CBEAA8] date];
          v41 = [date dateByAddingTimeInterval:1.0];
          [(SUState *)state setLastPendingSplatAlertDate:v41];

          lastPendingSplatAlertDate2 = [(SUState *)self->_state lastPendingSplatAlertDate];
          [(SUManagerCore *)self scheduleSplatFollowUpDate:lastPendingSplatAlertDate2];
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
        v55 = descriptor2;
        dispatch_after(v42, workQueue, block);
        SULogInfo(@"Scheduled immediate follow-up for regular update", v44, v45, v46, v47, v48, v49, v50, v51[0]);
      }

LABEL_14:

      v34 = 1;
      if (!bannerCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v27 = SULogBadging();
  SULogInfoForSubsystem(v27, @"Download/descriptor object is null..Skipping banner", v28, v29, v30, v31, v32, v33, v51[0]);

  v34 = 0;
  if (bannerCopy)
  {
LABEL_7:
    externWorkQueue = self->_externWorkQueue;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __41__SUManagerCore_presentAutoUpdateBanner___block_invoke_2;
    v51[3] = &unk_279CACE70;
    v52 = bannerCopy;
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

- (void)scheduleSplatFollowUpDate:(id)date
{
  dateCopy = date;
  v3 = +[SUPreferences sharedInstance];
  splatFollowUpDelayOverride = [v3 splatFollowUpDelayOverride];

  if (splatFollowUpDelayOverride)
  {
    [splatFollowUpDelayOverride doubleValue];
  }

  else
  {
    v5 = 604800.0;
  }

  v6 = [dateCopy dateByAddingTimeInterval:v5];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 compare:date];

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
  lastPendingSplatAlertDate = [(SUState *)self->_state lastPendingSplatAlertDate];
  if (lastPendingSplatAlertDate)
  {
    download = [(SUManagerCore *)self download];
    if (!download)
    {
      goto LABEL_7;
    }

    v18 = download;
    download2 = [(SUManagerCore *)self download];
    descriptor = [download2 descriptor];

    if (descriptor)
    {
      download3 = [(SUManagerCore *)self download];
      descriptor2 = [download3 descriptor];

      if ([descriptor2 isSplatOnly] && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "autoInstallSecurityResponse"), v30, v31))
      {
        SULogInfo(@"Posting scheduled splat follow-up notification", v23, v24, v25, v26, v27, v28, v29, v35);
        followUpController = [(SUManagerCore *)self followUpController];
        [followUpController postFollowUpOfType:2 withUpdate:descriptor2 userInfo:0];
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

  followUpController = [(SUManagerCore *)self followUpController];
  [followUpController dismissFollowUpType:2];
}

- (void)unbadgeSettingsForManualSoftwareUpdate
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = SULogBadging();
  SULogInfoForSubsystem(v3, @"Removing settings badge set by manual update flow(if present)", v4, v5, v6, v7, v8, v9, v10);

  followUpController = [(SUManagerCore *)self followUpController];
  [followUpController dismissFollowUpTypes:&unk_287B6F880];
}

- (void)dismissLegacyFollowUps
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = SULogBadging();
  SULogInfoForSubsystem(v3, @"Removing legacy SU follow up (if present)", v4, v5, v6, v7, v8, v9, v10);

  followUpController = [(SUManagerCore *)self followUpController];
  [followUpController dismissLegacyFollowUps];
}

- (void)badgeSettingsForManualSoftwareUpdate:(id)update
{
  workQueue = self->_workQueue;
  updateCopy = update;
  dispatch_assert_queue_V2(workQueue);
  v6 = SULogBadging();
  SULogInfoForSubsystem(v6, @"Badging settings for manual update flow", v7, v8, v9, v10, v11, v12, v13);

  followUpController = [(SUManagerCore *)self followUpController];
  [followUpController postFollowUpOfType:1 withUpdate:updateCopy userInfo:0];
}

- (NSDictionary)mandatoryUpdateDictionary
{
  v21[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = +[SUPreferences sharedInstance];
  mandatorySUFlags = [v3 mandatorySUFlags];
  integerValue = [mandatorySUFlags integerValue];

  if (integerValue)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = +[SUPreferences sharedInstance];
    mandatorySUFlags2 = [v7 mandatorySUFlags];
    v9 = [v6 stringWithFormat:@"%d", objc_msgSend(mandatorySUFlags2, "integerValue")];

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

- (void)setMandatoryUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dispatch_assert_queue_V2(self->_workQueue);
  p_mandatoryUpdateDictionary = &self->_mandatoryUpdateDictionary;
  if (![(NSDictionary *)self->_mandatoryUpdateDictionary isEqualToDictionary:dictionaryCopy])
  {
    if (dictionaryCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      objc_storeStrong(&self->_mandatoryUpdateDictionary, dictionary);
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

    state = [(SUManagerCore *)self state];
    [state setMandatoryUpdateDict:dictionaryCopy];

    state2 = [(SUManagerCore *)self state];
    [state2 save];
  }

LABEL_10:
}

- (void)sendUnlockNotifications:(BOOL)notifications
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SUManagerCore_sendUnlockNotifications___block_invoke;
  v4[3] = &unk_279CAAD00;
  notificationsCopy = notifications;
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

- (void)activated:(BOOL)activated
{
  if (activated)
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

- (void)downloadProgress:(id)progress
{
  progressCopy = progress;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUManagerCore_downloadProgress___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  dispatch_async(workQueue, v7);
}

void __34__SUManagerCore_downloadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloader];
  [v2 downloadProgress:*(a1 + 40)];
}

- (void)downloadCompleted:(id)completed
{
  completedCopy = completed;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUManagerCore_downloadCompleted___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = completedCopy;
  v6 = completedCopy;
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

- (void)downloadCompleted:(id)completed informClients:(BOOL)clients
{
  completedCopy = completed;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUManagerCore_downloadCompleted_informClients___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = completedCopy;
  clientsCopy = clients;
  v8 = completedCopy;
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

- (void)installCompleted:(id)completed
{
  completedCopy = completed;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUManagerCore_installCompleted___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = completedCopy;
  v6 = completedCopy;
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

- (void)assetAudienceChanged:(id)changed
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

- (void)showInsufficientDiskSpaceFollowupForUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [(SUDescriptor *)self->_updateOfCurrentStorageFollowup isEqual:updateCopy];
  followUpController = [(SUManagerCore *)self followUpController];
  v7 = [followUpController isCurrentlyPresentingFollowUpType:3];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v16 = *&v15;
  if (v5 && v7 && vabdd_f64(v15, *&showInsufficientDiskSpaceFollowupForUpdate____LAST_FOLLOWUP_TIME) <= 86400.0)
  {
    SULogInfo(@"%s: Don't show the same followup again.", v8, v9, v10, v11, v12, v13, v14, "[SUManagerCore showInsufficientDiskSpaceFollowupForUpdate:]");
  }

  else
  {
    objc_storeStrong(&self->_updateOfCurrentStorageFollowup, update);
    showInsufficientDiskSpaceFollowupForUpdate____LAST_FOLLOWUP_TIME = v16;
    followUpController2 = [(SUManagerCore *)self followUpController];
    [followUpController2 postFollowUpOfType:3 withUpdate:updateCopy userInfo:0];
  }
}

- (void)dismissInsufficientDiskSpaceFollowupForUpdate:(id)update orForce:(BOOL)force
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_workQueue);
  if (force || [(SUDescriptor *)self->_updateOfCurrentStorageFollowup isEqual:updateCopy])
  {
    updateOfCurrentStorageFollowup = self->_updateOfCurrentStorageFollowup;
    self->_updateOfCurrentStorageFollowup = 0;

    followUpController = [(SUManagerCore *)self followUpController];
    v8 = [followUpController isCurrentlyPresentingFollowUpType:3];

    if (!v8)
    {
      goto LABEL_7;
    }

    followUpController2 = [(SUManagerCore *)self followUpController];
    [followUpController2 dismissFollowUpType:3];
  }

  else
  {
    followUpController2 = [(SUDescriptor *)self->_updateOfCurrentStorageFollowup productBuildVersion];
    productBuildVersion = [updateCopy productBuildVersion];
    SULogInfo(@"%s: Don't dismiss the followup. Current followup is for %@, not %@", v10, v11, v12, v13, v14, v15, v16, "[SUManagerCore dismissInsufficientDiskSpaceFollowupForUpdate:orForce:]");
  }

LABEL_7:
}

- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value
{
  preferenceCopy = preference;
  valueCopy = value;
  if (_os_feature_enabled_impl())
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUManagerCore_preferences_didChangePreference_toValue___block_invoke;
    block[3] = &unk_279CAA798;
    v11 = preferenceCopy;
    v12 = valueCopy;
    selfCopy = self;
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