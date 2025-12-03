@interface SUScanner
+ (int)typeForCoreDescriptor:(id)descriptor;
- (BOOL)_coreDescriptorFailedPatching:(id)patching;
- (BOOL)isBuddyRunning;
- (BOOL)isScanning;
- (BOOL)lastScannedMatchScanOptions:(id)options;
- (BOOL)scanResultIsUpToDateWithAlternate:(id)alternate;
- (BOOL)scanResultsChangedSinceLastScan:(id)scan preferredUpdateNewlyDiscovered:(BOOL *)discovered alternateUpdateNewlyDiscovered:(BOOL *)newlyDiscovered preferredUpdateChanged:(BOOL *)changed alternateUpdateChanged:(BOOL *)updateChanged preferredWasAlternate:(BOOL *)alternate alternateWasPreferred:(BOOL *)preferred;
- (BOOL)shouldPresentUpdate:(id)update options:(id)options;
- (SUCoreDescriptor)alternateLastScannedCoreDescriptor;
- (SUCoreDescriptor)preferredLastScannedCoreDescriptor;
- (SUManagerCore)core;
- (SUScanOptions)lastScannedDescriptorScanOptions;
- (SUScanner)initWithCore:(id)core;
- (id)_handleDescriptor:(id)descriptor forRequestedBuild:(id)build;
- (id)defaultValuesForCoreDescriptor:(id)descriptor;
- (id)descriptorToAutoDownload;
- (id)descriptorToAutoDownload:(id)download;
- (id)discoveryDateforBuildVersion:(id)version;
- (id)fullyUnrampedDateForBuildVersion:(id)version;
- (id)recommendedDescriptor:(id)descriptor;
- (id)scanResultsForSUCoreScanResults:(id)results;
- (id)stringForScanPriority:(int64_t)priority;
- (void)_doScanForUpdates;
- (void)_handleScanError:(id)error;
- (void)_handleScannedPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor scanOptions:(id)options error:(id)error;
- (void)_queue_refreshLastScannedCoreDescriptors;
- (void)cancelTimerForRecommendedUpdateNotification;
- (void)handleActiveScanTaskDocumentationFor:(id)for withOptions:(id)options withSelectedDescriptorCompletion:(id)completion;
- (void)handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor:(id)descriptor preferredSecondaryDescriptor:(id)secondaryDescriptor alternatePrimaryDescriptor:(id)primaryDescriptor alternateSecondaryDescriptor:(id)alternateSecondaryDescriptor scanOptions:(id)options error:(id)error;
- (void)isBuddyRunning;
- (void)notifyClientForRecommendedUpdate:(id)update shouldPresent:(BOOL)present;
- (void)notifyScanDidComplete:(id)complete options:(id)options error:(id)error;
- (void)notifyScanRequestDidFinish:(id)finish results:(id)results error:(id)error;
- (void)notifyScanRequestDidStart:(id)start;
- (void)removeFullyUnrampedDateForBuildVersion:(id)version;
- (void)scanCompleted:(id)completed alternateDescriptor:(id)descriptor scanOptions:(id)options error:(id)error;
- (void)scanForUpdates:(id)updates complete:(id)complete;
- (void)scheduleRecommendedUpdateFromResults:(id)results;
- (void)scheduleRecommendedUpdateNotification:(id)notification;
- (void)setAlternateLastScannedCoreDescriptor:(id)descriptor;
- (void)setDiscoveryDate:(id)date forBuildVersion:(id)version;
- (void)setFullyUnrampedDate:(id)date forBuildVersion:(id)version;
- (void)setLastScannedDescriptorScanOptions:(id)options;
- (void)setPreferredLastScannedCoreDescriptor:(id)descriptor;
- (void)setupTimerForRecommendedUpdateNotification:(id)notification;
- (void)unscheduleRecommendedUpdateNotification;
@end

@implementation SUScanner

- (SUScanner)initWithCore:(id)core
{
  coreCopy = core;
  v26.receiver = self;
  v26.super_class = SUScanner;
  v5 = [(SUScanner *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_core, coreCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    scanRequests = v6->_scanRequests;
    v6->_scanRequests = v7;

    v6->_scanning = 0;
    activeScanTask = v6->_activeScanTask;
    v6->_activeScanTask = 0;

    recommendedUpdateTimer = v6->_recommendedUpdateTimer;
    v6->_recommendedUpdateTimer = 0;

    v11 = [SUUpdateDiscoveryDateManager alloc];
    state = [coreCopy state];
    updateDiscoveryDates = [state updateDiscoveryDates];
    v14 = [(SUUpdateDiscoveryDateManager *)v11 initWithDiscoveryDateDictionary:updateDiscoveryDates];
    discoveryDateManager = v6->_discoveryDateManager;
    v6->_discoveryDateManager = v14;

    v16 = [SUUpdateDiscoveryDateManager alloc];
    state2 = [coreCopy state];
    updateFullyUnrampedDates = [state2 updateFullyUnrampedDates];
    v19 = [(SUUpdateDiscoveryDateManager *)v16 initWithDiscoveryDateDictionary:updateFullyUnrampedDates];
    fullyUnrampedDateManager = v6->_fullyUnrampedDateManager;
    v6->_fullyUnrampedDateManager = v19;

    state3 = [coreCopy state];
    lastScannedDescriptorScanOptions = [state3 lastScannedDescriptorScanOptions];
    v23 = [lastScannedDescriptorScanOptions copy];
    lastScannedDescriptorScanOptions = v6->_lastScannedDescriptorScanOptions;
    v6->_lastScannedDescriptorScanOptions = v23;

    [(SUScanner *)v6 _queue_refreshLastScannedCoreDescriptors];
  }

  return v6;
}

- (BOOL)isScanning
{
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_scanning;
}

- (void)_queue_refreshLastScannedCoreDescriptors
{
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUScanner *)self core];
  state = [core2 state];
  preferredLastScannedCoreDescriptor = [state preferredLastScannedCoreDescriptor];

  core3 = [(SUScanner *)self core];
  state2 = [core3 state];
  alternateLastScannedCoreDescriptor = [state2 alternateLastScannedCoreDescriptor];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__12;
  v61 = __Block_byref_object_dispose__12;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__12;
  v55 = __Block_byref_object_dispose__12;
  v56 = 0;
  if (preferredLastScannedCoreDescriptor)
  {
    v11 = dispatch_semaphore_create(0);
    v12 = [(SUScanner *)self defaultValuesForCoreDescriptor:preferredLastScannedCoreDescriptor];
    v13 = MEMORY[0x277D641A0];
    requireSameAssetTypeAndAssetId = [MEMORY[0x277D289C8] requireSameAssetTypeAndAssetId];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __53__SUScanner__queue_refreshLastScannedCoreDescriptors__block_invoke;
    v48[3] = &unk_279CAC170;
    v50 = &v57;
    v15 = v11;
    v49 = v15;
    [v13 reloadDescriptor:preferredLastScannedCoreDescriptor allowingDifferences:requireSameAssetTypeAndAssetId forceReload:0 skipMSU:1 defaultValues:v12 completion:v48];

    v16 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v15, v16))
    {
      SULogInfo(@"TIME OUT waiting for reloadDescriptor for preferred update %@", v17, v18, v19, v20, v21, v22, v23, preferredLastScannedCoreDescriptor);
    }
  }

  if (alternateLastScannedCoreDescriptor)
  {
    v24 = dispatch_semaphore_create(0);
    v25 = [(SUScanner *)self defaultValuesForCoreDescriptor:alternateLastScannedCoreDescriptor];
    v26 = MEMORY[0x277D641A0];
    requireSameAssetTypeAndAssetId2 = [MEMORY[0x277D289C8] requireSameAssetTypeAndAssetId];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __53__SUScanner__queue_refreshLastScannedCoreDescriptors__block_invoke_2;
    v45[3] = &unk_279CAC170;
    v47 = &v51;
    v28 = v24;
    v46 = v28;
    [v26 reloadDescriptor:alternateLastScannedCoreDescriptor allowingDifferences:requireSameAssetTypeAndAssetId2 forceReload:0 defaultValues:v25 completion:v45];

    v29 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v28, v29))
    {
      SULogInfo(@"TIME OUT waiting for reloadDescriptor for alternate update %@", v30, v31, v32, v33, v34, v35, v36, preferredLastScannedCoreDescriptor);
    }
  }

  objc_storeStrong(&self->_preferredLastScannedCoreDescriptor, v58[5]);
  objc_storeStrong(&self->_alternateLastScannedCoreDescriptor, v52[5]);
  alternateLastScannedCoreDescriptor = self->_alternateLastScannedCoreDescriptor;
  SULogInfo(@"Fetched preferredLastScannedCoreDescriptor:%@ alternateLastScannedCoreDescriptor:%@", v37, v38, v39, v40, v41, v42, v43, self->_preferredLastScannedCoreDescriptor);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
}

void __53__SUScanner__queue_refreshLastScannedCoreDescriptors__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __53__SUScanner__queue_refreshLastScannedCoreDescriptors__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)defaultValuesForCoreDescriptor:(id)descriptor
{
  v30[19] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D28908];
  v3 = MEMORY[0x277CCABB0];
  descriptorCopy = descriptor;
  v28 = [v3 numberWithUnsignedLongLong:{objc_msgSend(descriptorCopy, "downloadSize")}];
  v30[0] = v28;
  v29[1] = *MEMORY[0x277D28920];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(descriptorCopy, "unarchivedSize")}];
  v30[1] = v27;
  v29[2] = *MEMORY[0x277D64260];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(descriptorCopy, "minimumSystemPartitionSize")}];
  v30[2] = v26;
  v29[3] = *MEMORY[0x277D28910];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "streamingZipCapable")}];
  v30[3] = v25;
  v29[4] = *MEMORY[0x277D64278];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "downloadAllowableOverCellular")}];
  v30[4] = v24;
  v29[5] = *MEMORY[0x277D64270];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "downloadable")}];
  v30[5] = v23;
  v29[6] = *MEMORY[0x277D64300];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "disableSiriVoiceDeletion")}];
  v30[6] = v22;
  v29[7] = *MEMORY[0x277D642F8];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "disableCDLevel4")}];
  v30[7] = v21;
  v29[8] = *MEMORY[0x277D642F0];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "disableAppDemotion")}];
  v30[8] = v20;
  v29[9] = *MEMORY[0x277D64308];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(descriptorCopy, "disableInstallTonight") ^ 1}];
  v30[9] = v19;
  v29[10] = *MEMORY[0x277D642E8];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "rampEnabled")}];
  v30[10] = v18;
  v29[11] = *MEMORY[0x277D64298];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "autoUpdateEnabled")}];
  v30[11] = v5;
  v29[12] = *MEMORY[0x277D64290];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(descriptorCopy, "autoInstallDelay")}];
  v30[12] = v6;
  v29[13] = *MEMORY[0x277D642E0];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "notifyAfter")}];
  v30[13] = v7;
  v29[14] = *MEMORY[0x277D642B0];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(descriptorCopy, "hideInstallAlert")}];
  v30[14] = v8;
  v29[15] = *MEMORY[0x277D64268];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "allowAutoDownloadOnBattery")}];
  v30[15] = v9;
  v29[16] = *MEMORY[0x277D64280];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(descriptorCopy, "autoDownloadOnBatteryDelay")}];
  v30[16] = v10;
  v29[17] = *MEMORY[0x277D64288];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(descriptorCopy, "autoDownloadOnBatteryMinBattery")}];
  v30[17] = v11;
  v29[18] = *MEMORY[0x277D642A0];
  v12 = MEMORY[0x277CCABB0];
  disableSplatCombo = [descriptorCopy disableSplatCombo];

  v14 = [v12 numberWithBool:disableSplatCombo];
  v30[18] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:19];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (SUCoreDescriptor)preferredLastScannedCoreDescriptor
{
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  preferredLastScannedCoreDescriptor = self->_preferredLastScannedCoreDescriptor;

  return preferredLastScannedCoreDescriptor;
}

- (void)setPreferredLastScannedCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  preferredLastScannedCoreDescriptor = self->_preferredLastScannedCoreDescriptor;
  self->_preferredLastScannedCoreDescriptor = descriptorCopy;
  v8 = descriptorCopy;

  core2 = [(SUScanner *)self core];
  state = [core2 state];
  [state setPreferredLastScannedCoreDescriptor:self->_preferredLastScannedCoreDescriptor];
}

- (SUCoreDescriptor)alternateLastScannedCoreDescriptor
{
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  alternateLastScannedCoreDescriptor = self->_alternateLastScannedCoreDescriptor;

  return alternateLastScannedCoreDescriptor;
}

- (void)setAlternateLastScannedCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  alternateLastScannedCoreDescriptor = self->_alternateLastScannedCoreDescriptor;
  self->_alternateLastScannedCoreDescriptor = descriptorCopy;
  v8 = descriptorCopy;

  core2 = [(SUScanner *)self core];
  state = [core2 state];
  [state setAlternateLastScannedCoreDescriptor:self->_alternateLastScannedCoreDescriptor];
}

- (void)setDiscoveryDate:(id)date forBuildVersion:(id)version
{
  dateCopy = date;
  versionCopy = version;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!versionCopy)
  {
    v21 = @"Unable to set discovery date for nil descriptor build version";
LABEL_8:
    SULogInfo(v21, v9, v10, v11, v12, v13, v14, v15, v22);
    goto LABEL_9;
  }

  v10 = dateCopy;
  if (!dateCopy)
  {
    v21 = @"Unable to set discovery date for descriptor with nil date";
    goto LABEL_8;
  }

  [(SUUpdateDiscoveryDateManager *)self->_discoveryDateManager setDiscoveryDate:dateCopy forBuildVersion:versionCopy];
  dictionaryRepresentation = [(SUUpdateDiscoveryDateManager *)self->_discoveryDateManager dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    core2 = [(SUScanner *)self core];
    state = [core2 state];
    [state setUpdateDiscoveryDates:dictionaryRepresentation];

    core3 = [(SUScanner *)self core];
    state2 = [core3 state];
    [state2 save];
  }

LABEL_9:
}

- (void)setFullyUnrampedDate:(id)date forBuildVersion:(id)version
{
  dateCopy = date;
  versionCopy = version;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!versionCopy)
  {
    v23 = @"Unable to set fully un-ramped date for nil descriptor build version";
LABEL_7:
    SULogInfo(v23, v9, v10, v11, v12, v13, v14, v15, v36);
    goto LABEL_8;
  }

  if (!dateCopy)
  {
    v23 = @"Unable to set fully un-ramped date for descriptor with nil date";
    goto LABEL_7;
  }

  if ([(SUUpdateDiscoveryDateManager *)self->_fullyUnrampedDateManager containsBuildVersion:versionCopy])
  {
    SULogInfo(@"Unable to set fully un-ramped date because it's already been set for %@", v16, v17, v18, v19, v20, v21, v22, versionCopy);
  }

  else
  {
    [(SUUpdateDiscoveryDateManager *)self->_fullyUnrampedDateManager setDiscoveryDate:dateCopy forBuildVersion:versionCopy];
    dictionaryRepresentation = [(SUUpdateDiscoveryDateManager *)self->_fullyUnrampedDateManager dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      core2 = [(SUScanner *)self core];
      state = [core2 state];
      [state setUpdateFullyUnrampedDates:dictionaryRepresentation];

      core3 = [(SUScanner *)self core];
      state2 = [core3 state];
      [state2 save];
    }

    SULogInfo(@"Succeeded to set fully un-ramped date %@ for %@", v24, v25, v26, v27, v28, v29, v30, dateCopy);
  }

LABEL_8:
}

- (void)removeFullyUnrampedDateForBuildVersion:(id)version
{
  versionCopy = version;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = versionCopy;
  if (!versionCopy)
  {
    v25 = @"Unable to remove fully un-ramped date for nil descriptor build version";
LABEL_8:
    SULogInfo(v25, v12, v6, v7, v8, v9, v10, v11, v26);
    goto LABEL_9;
  }

  if (![(SUUpdateDiscoveryDateManager *)self->_fullyUnrampedDateManager containsBuildVersion:versionCopy])
  {
    v26 = versionCopy;
    v25 = @"Unable to remove fully un-ramped date for %@ because we don't have it";
    goto LABEL_8;
  }

  [(SUUpdateDiscoveryDateManager *)self->_fullyUnrampedDateManager removeDiscoveryDateForBuildVersion:versionCopy];
  dictionaryRepresentation = [(SUUpdateDiscoveryDateManager *)self->_fullyUnrampedDateManager dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    core2 = [(SUScanner *)self core];
    state = [core2 state];
    [state setUpdateFullyUnrampedDates:dictionaryRepresentation];

    core3 = [(SUScanner *)self core];
    state2 = [core3 state];
    [state2 save];
  }

  SULogInfo(@"Succeeded to remove fully un-ramped date for %@", v13, v14, v15, v16, v17, v18, v19, versionCopy);

LABEL_9:
}

- (id)discoveryDateforBuildVersion:(id)version
{
  versionCopy = version;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = [(SUUpdateDiscoveryDateManager *)self->_discoveryDateManager discoveryDateforBuildVersion:versionCopy];

  return v7;
}

- (id)fullyUnrampedDateForBuildVersion:(id)version
{
  versionCopy = version;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = [(SUUpdateDiscoveryDateManager *)self->_fullyUnrampedDateManager discoveryDateforBuildVersion:versionCopy];

  return v7;
}

- (SUScanOptions)lastScannedDescriptorScanOptions
{
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  lastScannedDescriptorScanOptions = self->_lastScannedDescriptorScanOptions;

  return lastScannedDescriptorScanOptions;
}

- (void)setLastScannedDescriptorScanOptions:(id)options
{
  optionsCopy = options;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  lastScannedDescriptorScanOptions = self->_lastScannedDescriptorScanOptions;
  self->_lastScannedDescriptorScanOptions = optionsCopy;
  v8 = optionsCopy;

  core2 = [(SUScanner *)self core];
  state = [core2 state];
  [state setLastScannedDescriptorScanOptions:v8];
}

void __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) core];
  v8 = [v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_4;
  block[3] = &unk_279CAC198;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v18 = *(a1 + 64);
  v17 = *(a1 + 56);
  v15 = v6;
  v16 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) descriptorToAutoDownload:*(a1 + 40)];
  if (!v2)
  {
    if (*(a1 + 56))
    {
      SULogInfo(@"[Auto scan] Automatic scan failed with error: %@", v3, v4, v5, v6, v7, v8, v9, *(a1 + 56));
      v35 = [*(a1 + 56) code];
    }

    else
    {
      SULogInfo(@"[Auto scan] Automatic scan failed with error: No suitable update to auto download", v3, v4, v5, v6, v7, v8, v9, v110);
      v35 = 3;
    }

    if (*(a1 + 72))
    {
      v72 = [*(a1 + 32) core];
      v73 = [v72 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_7;
      block[3] = &unk_279CABC80;
      v114[1] = v35;
      v74 = v114;
      v114[0] = *(a1 + 72);
      dispatch_async(v73, block);

LABEL_29:
      v10 = 0;
      goto LABEL_30;
    }

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v10 = v2;
  v11 = [v2 humanReadableUpdateName];
  SULogInfo(@"[Auto scan] Automatic scan fouond an update: %@", v12, v13, v14, v15, v16, v17, v18, v11);

  if (([v10 isSplatOnly] & 1) != 0 || objc_msgSend(v10, "isEmergencyOrCritical"))
  {
    v19 = [v10 humanReadableUpdateName];
    SULogInfo(@"[Auto scan] Automatic scan found a splat or emergency update, immediately handle: %@", v20, v21, v22, v23, v24, v25, v26, v19);

    if (([*(a1 + 48) MDMShowRapidSecurityResponse] & 1) == 0 && objc_msgSend(v10, "isSplatOnly"))
    {
      v27 = [v10 humanReadableUpdateName];
      SULogInfo(@"[Auto scan] Splat scans are disabled, hiding splat: %@", v28, v29, v30, v31, v32, v33, v34, v27);

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v36 = +[SUScheduler sharedInstance];
  [v36 _autoDownloadTimeInterval];
  v38 = v37;

  v39 = [v10 humanReadableUpdateName];
  SULogInfo(@"[Auto scan] Automatic scan found a normal OS update, only auto download if last auto download was %f days ago: %@", v40, v41, v42, v43, v44, v45, v46, COERCE__INT64(v38 / 86400.0));

  v47 = [*(a1 + 32) core];
  v48 = [v47 state];
  v49 = [v48 lastScanDate];

  v50 = *(a1 + 32);
  v51 = [v10 productBuildVersion];
  v52 = [v50 discoveryDateforBuildVersion:v51];

  v53 = [*(a1 + 32) core];
  v54 = [v53 state];
  v55 = [v54 lastAutoDownloadDate];

  v56 = [SUUtility prettyPrintDate:v49];
  v57 = [SUUtility prettyPrintDate:v52];
  v112 = [SUUtility prettyPrintDate:v55];
  SULogInfo(@"[Auto scan] Last scan date: %@, Last discovery date: %@, Last auto download date: %@", v58, v59, v60, v61, v62, v63, v64, v56);

  if (*(a1 + 80) == 1)
  {
    SULogInfo(@"[Auto scan] downloadNow is set, auto download now", v65, v66, v67, v68, v69, v70, v71, v111);
    goto LABEL_24;
  }

  if ([v10 rampEnabled])
  {
    v75 = [v10 humanReadableUpdateName];
    SULogInfo(@"[Auto scan] %@ has rampEnabled set, do not auto download", v76, v77, v78, v79, v80, v81, v82, v75);

LABEL_16:
    v10 = 0;
    goto LABEL_24;
  }

  if ([v10 granularlyRamped])
  {
    v83 = [v10 humanReadableUpdateName];
    SULogInfo(@"[Auto scan] %@ has granularlyRamped set, auto download now", v84, v85, v86, v87, v88, v89, v90, v83);
  }

  else
  {
    if (v55)
    {
      [v55 timeIntervalSinceNow];
      if (fabs(v98) < v38)
      {
        SULogInfo(@"[Auto scan] Less than %f days have passed since last auto-download, do not auto download", v91, v92, v93, v94, v95, v96, v97, COERCE__INT64(v38 / 86400.0));
        goto LABEL_16;
      }
    }

    v83 = [v10 humanReadableUpdateName];
    SULogInfo(@"[Auto scan] Greater than %f days have passed since auto downloading for OS updates, consider %@ auto downloadable/updateable/presentable", v99, v100, v101, v102, v103, v104, v105, COERCE__INT64(v38 / 86400.0));
  }

LABEL_24:
  if (!v10)
  {
LABEL_27:
    if (*(a1 + 72))
    {
      v72 = [*(a1 + 32) core];
      v109 = [v72 externWorkQueue];
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_6;
      v115[3] = &unk_279CAB220;
      v74 = &v116;
      v116 = *(a1 + 72);
      dispatch_async(v109, v115);

      goto LABEL_29;
    }

    goto LABEL_31;
  }

LABEL_25:
  v106 = [*(a1 + 32) core];
  [v106 autoUpdateFound:v10 downloadNow:*(a1 + 80)];

  if (*(a1 + 72))
  {
    v107 = [*(a1 + 32) core];
    v108 = [v107 externWorkQueue];
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_5;
    v117[3] = &unk_279CAAF08;
    v74 = &v119;
    v119 = *(a1 + 72);
    v118 = *(a1 + 40);
    dispatch_async(v108, v117);

    v72 = v118;
LABEL_30:
  }

LABEL_32:
  [*(a1 + 64) endTransaction:@"auto-tryScan"];
}

void __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_6(uint64_t a1)
{
  v2 = [SUUtility errorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __67__SUScanner_autoScanAndDownloadIfAvailable_downloadNow_withResult___block_invoke_7(uint64_t a1)
{
  v2 = [SUUtility errorWithCode:*(a1 + 40)];
  (*(*(a1 + 32) + 16))();
}

- (void)notifyScanRequestDidStart:(id)start
{
  startCopy = start;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUScanner *)self core];
  delegate = [core2 delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    core3 = [(SUScanner *)self core];
    externWorkQueue = [core3 externWorkQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__SUScanner_notifyScanRequestDidStart___block_invoke;
    v12[3] = &unk_279CAA7C0;
    v12[4] = self;
    v13 = startCopy;
    dispatch_async(externWorkQueue, v12);
  }
}

void __39__SUScanner_notifyScanRequestDidStart___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) core];
  v2 = [v4 delegate];
  v3 = [*(a1 + 40) options];
  [v2 scanRequestDidStartForOptions:v3];
}

- (id)scanResultsForSUCoreScanResults:(id)results
{
  resultsCopy = results;
  preferredDescriptor = [resultsCopy preferredDescriptor];
  v5 = [SUManagerEngine SUDescriptorFromCoreDescriptor:preferredDescriptor];

  alternateDescriptor = [resultsCopy alternateDescriptor];

  v7 = [SUManagerEngine SUDescriptorFromCoreDescriptor:alternateDescriptor];

  if (v5)
  {
    v8 = [[SUScanResults alloc] initWithPreferredDescriptor:v5 alternateDescriptor:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)notifyScanRequestDidFinish:(id)finish results:(id)results error:(id)error
{
  finishCopy = finish;
  errorCopy = error;
  resultsCopy = results;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = [(SUScanner *)self scanResultsForSUCoreScanResults:resultsCopy];

  notify_post([*MEMORY[0x277D64258] UTF8String]);
  callback = [finishCopy callback];
  if (callback)
  {
    core2 = [(SUScanner *)self core];
    externWorkQueue = [core2 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SUScanner_notifyScanRequestDidFinish_results_error___block_invoke;
    block[3] = &unk_279CAB048;
    v38 = callback;
    v36 = v13;
    v37 = errorCopy;
    dispatch_async(externWorkQueue, block);
  }

  core3 = [(SUScanner *)self core];
  delegate = [core3 delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    core4 = [(SUScanner *)self core];
    externWorkQueue2 = [core4 externWorkQueue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __54__SUScanner_notifyScanRequestDidFinish_results_error___block_invoke_2;
    v31[3] = &unk_279CAB5B0;
    v31[4] = self;
    v32 = finishCopy;
    v33 = v13;
    v34 = errorCopy;
    dispatch_async(externWorkQueue2, v31);
  }

  core5 = [(SUScanner *)self core];
  delegate2 = [core5 delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    core6 = [(SUScanner *)self core];
    externWorkQueue3 = [core6 externWorkQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __54__SUScanner_notifyScanRequestDidFinish_results_error___block_invoke_3;
    v27[3] = &unk_279CAB5B0;
    v27[4] = self;
    v28 = finishCopy;
    v29 = v13;
    v30 = errorCopy;
    dispatch_async(externWorkQueue3, v27);
  }
}

void __54__SUScanner_notifyScanRequestDidFinish_results_error___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) core];
  v2 = [v5 delegate];
  v3 = [*(a1 + 40) options];
  v4 = [*(a1 + 48) latestUpdate];
  [v2 scanRequestDidFinishForOptions:v3 update:v4 error:*(a1 + 56)];
}

void __54__SUScanner_notifyScanRequestDidFinish_results_error___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) core];
  v2 = [v4 delegate];
  v3 = [*(a1 + 40) options];
  [v2 scanRequestDidFinishForOptions:v3 results:*(a1 + 48) error:*(a1 + 56)];
}

- (void)notifyScanDidComplete:(id)complete options:(id)options error:(id)error
{
  optionsCopy = options;
  errorCopy = error;
  completeCopy = complete;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = [(SUScanner *)self scanResultsForSUCoreScanResults:completeCopy];

  core2 = [(SUScanner *)self core];
  delegate = [core2 delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    core3 = [(SUScanner *)self core];
    externWorkQueue = [core3 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SUScanner_notifyScanDidComplete_options_error___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v29 = v13;
    v30 = errorCopy;
    dispatch_async(externWorkQueue, block);
  }

  core4 = [(SUScanner *)self core];
  delegate2 = [core4 delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    core5 = [(SUScanner *)self core];
    externWorkQueue2 = [core5 externWorkQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__SUScanner_notifyScanDidComplete_options_error___block_invoke_2;
    v24[3] = &unk_279CAB5B0;
    v24[4] = self;
    v25 = optionsCopy;
    v26 = v13;
    v27 = errorCopy;
    dispatch_async(externWorkQueue2, v24);
  }
}

void __49__SUScanner_notifyScanDidComplete_options_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) core];
  v2 = [v4 delegate];
  v3 = [*(a1 + 40) latestUpdate];
  [v2 scanDidCompleteWithNewUpdateAvailable:v3 error:*(a1 + 48)];
}

void __49__SUScanner_notifyScanDidComplete_options_error___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 scanDidCompleteForOptions:*(a1 + 40) results:*(a1 + 48) error:*(a1 + 56)];
}

- (void)_handleScanError:(id)error
{
  errorCopy = error;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  code = [errorCopy code];
  if (code == 40)
  {
    mEMORY[0x277CD9208] = [MEMORY[0x277CD9208] sharedSystemPathMonitor];
    isVPNActive = [mEMORY[0x277CD9208] isVPNActive];

    if (isVPNActive)
    {
      v17 = @"Asset query timed out but VPN is connected.";
    }

    else
    {
      v17 = @"Asset query timed out and VPN not connected.";
    }

    SULogInfo(v17, v10, v11, v12, v13, v14, v15, v16, v19);
  }
}

- (BOOL)shouldPresentUpdate:(id)update options:(id)options
{
  updateCopy = update;
  optionsCopy = options;
  v14 = [SUManagerEngine SUDescriptorFromCoreDescriptor:updateCopy];
  if (!v14)
  {
    v17 = @"No update provided to shouldPresentUpdate:options:";
    goto LABEL_12;
  }

  if (([optionsCopy isSplatOnlyScan] & 1) == 0 && (objc_msgSend(optionsCopy, "findsAnyUpdate") & 1) == 0 && (objc_msgSend(optionsCopy, "containsType:", objc_msgSend(v14, "updateType")) & 1) == 0)
  {
    types = [optionsCopy types];
    v21 = SUStringFromUpdateTypes(types);
    SULogInfo(@"Scanned for [%@] updates, but didn't find any.", v22, v23, v24, v25, v26, v27, v28, v21);

    goto LABEL_13;
  }

  if ([optionsCopy isSplatOnlyScan])
  {
    softwareUpdateAssetType = [updateCopy softwareUpdateAssetType];
    v16 = [softwareUpdateAssetType isEqualToString:*MEMORY[0x277D64318]];

    if ((v16 & 1) == 0)
    {
      v17 = @"Scanned for splat updates, but found non-splat update.";
      goto LABEL_12;
    }
  }

  if ([updateCopy isRevokedSplat])
  {
    v17 = @"Scan discovered revoked Splat. Not presenting update";
LABEL_12:
    SULogInfo(v17, v7, v8, v9, v10, v11, v12, v13, v29);
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  SULogInfo(@"Update found for scan options: %@", v7, v8, v9, v10, v11, v12, v13, v14);
  v18 = 1;
LABEL_14:

  return v18;
}

- (void)notifyClientForRecommendedUpdate:(id)update shouldPresent:(BOOL)present
{
  updateCopy = update;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [SUManagerEngine SUDescriptorFromCoreDescriptor:updateCopy];

  core2 = [(SUScanner *)self core];
  delegate = [core2 delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    core3 = [(SUScanner *)self core];
    externWorkQueue = [core3 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SUScanner_notifyClientForRecommendedUpdate_shouldPresent___block_invoke;
    block[3] = &unk_279CAAE40;
    block[4] = self;
    v16 = v9;
    presentCopy = present;
    dispatch_async(externWorkQueue, block);
  }
}

void __60__SUScanner_notifyClientForRecommendedUpdate_shouldPresent___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 presentingRecommendedUpdate:*(a1 + 40) shouldPresent:*(a1 + 48)];
}

- (id)recommendedDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  preferredDescriptor = [descriptorCopy preferredDescriptor];
  documentation = [preferredDescriptor documentation];
  if ([documentation recommendedUpdateApplicable])
  {
    alternateDescriptor = [descriptorCopy alternateDescriptor];
    documentation2 = [alternateDescriptor documentation];
    recommendedUpdateApplicable = [documentation2 recommendedUpdateApplicable];

    if (recommendedUpdateApplicable)
    {
      latestUpdate = [descriptorCopy latestUpdate];
      SULogInfo(@"Both updates are recommended, returning latest update:%@", v10, v11, v12, v13, v14, v15, v16, latestUpdate);
      goto LABEL_11;
    }
  }

  else
  {
  }

  preferredDescriptor2 = [descriptorCopy preferredDescriptor];
  documentation3 = [preferredDescriptor2 documentation];
  recommendedUpdateApplicable2 = [documentation3 recommendedUpdateApplicable];

  if (recommendedUpdateApplicable2)
  {
    SULogInfo(@"Preferred update is recommended", v20, v21, v22, v23, v24, v25, v26, v39);
    preferredDescriptor3 = [descriptorCopy preferredDescriptor];
LABEL_9:
    latestUpdate = preferredDescriptor3;
    goto LABEL_11;
  }

  alternateDescriptor2 = [descriptorCopy alternateDescriptor];
  documentation4 = [alternateDescriptor2 documentation];
  recommendedUpdateApplicable3 = [documentation4 recommendedUpdateApplicable];

  if (recommendedUpdateApplicable3)
  {
    SULogInfo(@"Alternate update is recommended", v31, v32, v33, v34, v35, v36, v37, v39);
    preferredDescriptor3 = [descriptorCopy alternateDescriptor];
    goto LABEL_9;
  }

  SULogInfo(@"No recommended update", v31, v32, v33, v34, v35, v36, v37, v39);
  latestUpdate = 0;
LABEL_11:

  return latestUpdate;
}

- (void)setupTimerForRecommendedUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (self->_recommendedUpdateTimer)
  {
    SULogInfo(@"Recommended update timer already exist", v4, v5, v6, v7, v8, v9, v10, v48);
  }

  else
  {
    core = [(SUScanner *)self core];
    state = [core state];
    lastRecommendedUpdateInterval = [state lastRecommendedUpdateInterval];
    [lastRecommendedUpdateInterval doubleValue];
    v16 = v15;

    v17 = +[SUPreferences sharedInstance];
    recommendedUpdateInterval = [v17 recommendedUpdateInterval];

    if (recommendedUpdateInterval)
    {
      v19 = +[SUPreferences sharedInstance];
      recommendedUpdateInterval2 = [v19 recommendedUpdateInterval];
      [recommendedUpdateInterval2 doubleValue];
      v22 = v21;

      v23 = +[SUPreferences sharedInstance];
      recommendedUpdateInterval3 = [v23 recommendedUpdateInterval];
      SULogInfo(@"Found preference override for recommended update interval: %@", v25, v26, v27, v28, v29, v30, v31, recommendedUpdateInterval3);
    }

    else
    {
      v22 = v16 * 60.0 * 60.0 * 24.0;
    }

    core2 = [(SUScanner *)self core];
    state2 = [core2 state];
    lastRecommendedUpdateDiscoveryDate = [state2 lastRecommendedUpdateDiscoveryDate];
    v35 = [lastRecommendedUpdateDiscoveryDate dateByAddingTimeInterval:v22];

    SULogInfo(@"Setting recommended update timer for %@", v36, v37, v38, v39, v40, v41, v42, v35);
    v43 = MEMORY[0x277CBEBB8];
    [v35 timeIntervalSinceNow];
    v45 = v44;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __56__SUScanner_setupTimerForRecommendedUpdateNotification___block_invoke;
    v50[3] = &unk_279CAC1E8;
    v50[4] = self;
    v51 = notificationCopy;
    v46 = [v43 timerWithTimeInterval:0 repeats:v50 block:v45];
    recommendedUpdateTimer = self->_recommendedUpdateTimer;
    self->_recommendedUpdateTimer = v46;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SUScanner_setupTimerForRecommendedUpdateNotification___block_invoke_3;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __56__SUScanner_setupTimerForRecommendedUpdateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  v3 = [v2 workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SUScanner_setupTimerForRecommendedUpdateNotification___block_invoke_2;
  v5[3] = &unk_279CAA7C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

uint64_t __56__SUScanner_setupTimerForRecommendedUpdateNotification___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"Recommended update timer triggered", a2, a3, a4, a5, a6, a7, a8, v21);
  v9 = [*(a1 + 32) core];
  v10 = [v9 state];
  v11 = [v10 lastRecommendedUpdateInterval];
  v12 = [v11 intValue];

  if (v12 == -1)
  {
    [*(a1 + 32) unscheduleRecommendedUpdateNotification];
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [*(a1 + 32) core];
    v15 = [v14 state];
    [v15 setLastRecommendedUpdateDiscoveryDate:v13];

    v16 = [*(a1 + 32) core];
    v17 = [v16 state];
    [v17 save];

    [*(a1 + 32) cancelTimerForRecommendedUpdateNotification];
    [*(a1 + 32) setupTimerForRecommendedUpdateNotification:*(a1 + 40)];
  }

  [*(a1 + 32) notifyClientForRecommendedUpdate:*(a1 + 40) shouldPresent:0];
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);

  return [v18 notifyClientForRecommendedUpdate:v19 shouldPresent:1];
}

void __56__SUScanner_setupTimerForRecommendedUpdateNotification___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v2 addTimer:*(*(a1 + 32) + 80) forMode:*MEMORY[0x277CBE640]];
}

- (void)cancelTimerForRecommendedUpdateNotification
{
  SULogInfo(@"Canceling recommended update timer", a2, v2, v3, v4, v5, v6, v7, v10);
  [(NSTimer *)self->_recommendedUpdateTimer invalidate];
  recommendedUpdateTimer = self->_recommendedUpdateTimer;
  self->_recommendedUpdateTimer = 0;
}

- (void)scheduleRecommendedUpdateNotification:(id)notification
{
  notificationCopy = notification;
  productVersion = [notificationCopy productVersion];
  core = [(SUScanner *)self core];
  state = [core state];
  [state setLastRecommendedUpdateVersion:productVersion];

  documentation = [notificationCopy documentation];
  recommendedUpdateNotificationFrequencyDays = [documentation recommendedUpdateNotificationFrequencyDays];
  core2 = [(SUScanner *)self core];
  state2 = [core2 state];
  [state2 setLastRecommendedUpdateInterval:recommendedUpdateNotificationFrequencyDays];

  v11 = [MEMORY[0x277CBEAA8] now];
  core3 = [(SUScanner *)self core];
  state3 = [core3 state];
  [state3 setLastRecommendedUpdateDiscoveryDate:v11];

  core4 = [(SUScanner *)self core];
  state4 = [core4 state];
  [state4 save];

  [(SUScanner *)self cancelTimerForRecommendedUpdateNotification];
  [(SUScanner *)self setupTimerForRecommendedUpdateNotification:notificationCopy];
}

- (void)unscheduleRecommendedUpdateNotification
{
  core = [(SUScanner *)self core];
  state = [core state];
  [state setLastRecommendedUpdateVersion:0];

  core2 = [(SUScanner *)self core];
  state2 = [core2 state];
  [state2 setLastRecommendedUpdateInterval:0];

  core3 = [(SUScanner *)self core];
  state3 = [core3 state];
  [state3 setLastRecommendedUpdateDiscoveryDate:0];

  core4 = [(SUScanner *)self core];
  state4 = [core4 state];
  [state4 save];

  [(SUScanner *)self cancelTimerForRecommendedUpdateNotification];

  [(SUScanner *)self notifyClientForRecommendedUpdate:0 shouldPresent:0];
}

- (void)scheduleRecommendedUpdateFromResults:(id)results
{
  v47 = [(SUScanner *)self recommendedDescriptor:results];
  core = [(SUScanner *)self core];
  state = [core state];
  lastRecommendedUpdateVersion = [state lastRecommendedUpdateVersion];

  core2 = [(SUScanner *)self core];
  state2 = [core2 state];
  lastRecommendedUpdateInterval = [state2 lastRecommendedUpdateInterval];

  if (v47)
  {
    productVersion = [v47 productVersion];
    v25 = productVersion;
    if (lastRecommendedUpdateVersion)
    {
      if ([lastRecommendedUpdateVersion isEqual:productVersion])
      {
        documentation = [v47 documentation];
        recommendedUpdateNotificationFrequencyDays = [documentation recommendedUpdateNotificationFrequencyDays];
        v28 = [lastRecommendedUpdateInterval isEqual:recommendedUpdateNotificationFrequencyDays];

        if (v28)
        {
          SULogInfo(@"Found same recommended update:%@", v29, v30, v31, v32, v33, v34, v35, lastRecommendedUpdateInterval);
          [(SUScanner *)self setupTimerForRecommendedUpdateNotification:v47];
          goto LABEL_13;
        }
      }

      else
      {
      }

      productVersion2 = [v47 productVersion];
      documentation2 = [v47 documentation];
      recommendedUpdateNotificationFrequencyDays2 = [documentation2 recommendedUpdateNotificationFrequencyDays];
      SULogInfo(@"Found a different recommended update. Old is %@ - %@, new is %@ - %@", v38, v39, v40, v41, v42, v43, v44, lastRecommendedUpdateVersion);

      [(SUScanner *)self unscheduleRecommendedUpdateNotification];
    }

    else
    {
      SULogInfo(@"Found new recommended update:%@", v18, v19, v20, v21, v22, v23, v24, productVersion);
    }

    [(SUScanner *)self scheduleRecommendedUpdateNotification:v47];
  }

  else if (lastRecommendedUpdateVersion)
  {
    SULogInfo(@"Last recommended update was:%@, but no recommended update found", v10, v11, v12, v13, v14, v15, v16, lastRecommendedUpdateVersion);
    [(SUScanner *)self unscheduleRecommendedUpdateNotification];
  }

  else
  {
    SULogInfo(@"No recommended update", v10, v11, v12, v13, v14, v15, v16, v45);
  }

LABEL_13:
}

+ (int)typeForCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy splatOnly])
  {
    v4 = 4;
  }

  else
  {
    updateType = [descriptorCopy updateType];
    if (updateType >= 6)
    {
      [descriptorCopy updateType];
      SULogInfo(@"%s: unknown update type:%ld", v6, v7, v8, v9, v10, v11, v12, "+[SUScanner typeForCoreDescriptor:]");
      v4 = 0;
    }

    else
    {
      v4 = dword_26ABF8EC0[updateType];
    }
  }

  return v4;
}

- (BOOL)lastScannedMatchScanOptions:(id)options
{
  optionsCopy = options;
  preferredLastScannedCoreDescriptor = [(SUScanner *)self preferredLastScannedCoreDescriptor];
  v6 = [SUScanner typeForCoreDescriptor:preferredLastScannedCoreDescriptor];

  alternateLastScannedCoreDescriptor = [(SUScanner *)self alternateLastScannedCoreDescriptor];
  v8 = [SUScanner typeForCoreDescriptor:alternateLastScannedCoreDescriptor];

  preferredLastScannedCoreDescriptor2 = [(SUScanner *)self preferredLastScannedCoreDescriptor];
  alternateLastScannedCoreDescriptor2 = [(SUScanner *)self alternateLastScannedCoreDescriptor];
  SULogInfo(@"%s: current scan options:%@ lastPreferred:%@ lastAlternate:%@", v10, v11, v12, v13, v14, v15, v16, "[SUScanner lastScannedMatchScanOptions:]");

  preferredLastScannedCoreDescriptor3 = [(SUScanner *)self preferredLastScannedCoreDescriptor];
  if (preferredLastScannedCoreDescriptor3)
  {
    v18 = preferredLastScannedCoreDescriptor3;
    v19 = [optionsCopy containsType:v6];

    if (!v19)
    {
      goto LABEL_6;
    }
  }

  alternateLastScannedCoreDescriptor3 = [(SUScanner *)self alternateLastScannedCoreDescriptor];
  if (alternateLastScannedCoreDescriptor3 && (v21 = alternateLastScannedCoreDescriptor3, v22 = [optionsCopy containsType:v8], v21, !v22))
  {
LABEL_6:
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)scanCompleted:(id)completed alternateDescriptor:(id)descriptor scanOptions:(id)options error:(id)error
{
  v287 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  descriptorCopy = descriptor;
  optionsCopy = options;
  errorCopy = error;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([completedCopy updateType] <= 2 && objc_msgSend(descriptorCopy, "updateType") < 3)
  {
    core2 = [(SUScanner *)self core];
    state = [core2 state];
    date = [MEMORY[0x277CBEAA8] date];
    [state setLastScanDate:date];
  }

  else
  {
    SULogInfo(@"Found emergency updates, not setting last scan date", v16, v17, v18, v19, v20, v21, v22, v258);
  }

  activeScanTask = [(SUScanner *)self activeScanTask];
  v27 = [activeScanTask didScanForType:4];

  activeScanTask2 = [(SUScanner *)self activeScanTask];
  v272 = completedCopy;
  if ([activeScanTask2 didScanForType:0])
  {
    v29 = 1;
  }

  else
  {
    activeScanTask3 = [(SUScanner *)self activeScanTask];
    if ([activeScanTask3 didScanForType:2])
    {
      v29 = 1;
    }

    else
    {
      [(SUScanner *)self activeScanTask];
      v31 = errorCopy;
      v33 = v32 = optionsCopy;
      v29 = [v33 didScanForType:1];

      optionsCopy = v32;
      errorCopy = v31;
    }

    completedCopy = v272;
  }

  [(SUScanner *)self setScanning:0];
  [(SUScanner *)self setActiveScanTask:0];
  if ([completedCopy isRevokedSplat])
  {
    SULogInfo(@"Found revoked splat update", v34, v35, v36, v37, v38, v39, v40, v258);
    v41 = [SUUtility errorWithCode:3];

    core3 = [(SUScanner *)self core];
    [core3 revokedUpdateFound:completedCopy];

    errorCopy = v41;
  }

  v269 = errorCopy;
  if (!errorCopy)
  {
    if ([(SUScanner *)self shouldPresentUpdate:completedCopy options:optionsCopy])
    {
      if (![(SUScanner *)self shouldPresentUpdate:descriptorCopy options:optionsCopy])
      {
LABEL_41:

        v75 = 0;
        if (!completedCopy)
        {
          v111 = 0;
          v121 = 1;
          descriptorCopy = 0;
          v112 = 0;
          goto LABEL_132;
        }

        v272 = completedCopy;
        descriptorCopy = 0;
LABEL_43:
        core4 = [(SUScanner *)self core];
        download = [core4 download];

        progress = [download progress];
        isDone = [progress isDone];

        progress2 = [download progress];
        phase = [progress2 phase];

        v271 = isDone;
        if (!download)
        {
          goto LABEL_60;
        }

        v89 = @"NO";
        if (isDone)
        {
          v89 = @"YES";
        }

        v261 = phase;
        SULogInfo(@"DownloadDone: %@ ProgressPhase: %@", v82, v83, v84, v85, v86, v87, v88, v89);
        if (isDone && [(__CFString *)phase isEqualToString:@"SUDownloadPhasePreparingForInstallation"])
        {
          SULogInfo(@"Scan found an update and a previously prepared update is present", v82, v83, v84, v85, v86, v87, v88, v258);
          if (+[SUUtility currentReleaseTypeIsInternal])
          {
            v263 = phase;
            v90 = +[SUPreferences sharedInstance];
            disablePurgeOnNewerUpdateFound = [v90 disablePurgeOnNewerUpdateFound];

            if (disablePurgeOnNewerUpdateFound)
            {
              preferredLastScannedCoreDescriptor = [(SUScanner *)self preferredLastScannedCoreDescriptor];
              alternateLastScannedCoreDescriptor = [(SUScanner *)self alternateLastScannedCoreDescriptor];
              v75 = [[SUCoreScanResults alloc] initWithPreferredDescriptor:preferredLastScannedCoreDescriptor alternateDescriptor:alternateLastScannedCoreDescriptor];
              SULogInfo(@"Ignoring update located by scan due to existing prepared update (disablePurgeOnNewerUpdateFound is set)", v94, v95, v96, v97, v98, v99, v100, v259);
              v108 = @"Present";
              if (preferredLastScannedCoreDescriptor)
              {
                v109 = @"Present";
              }

              else
              {
                v109 = @"nil";
              }

              if (alternateLastScannedCoreDescriptor)
              {
                v110 = @"Present";
              }

              else
              {
                v110 = @"nil";
              }

              if (!v75)
              {
                v108 = @"nil";
              }

              v261 = v110;
              v262 = v108;
              SULogInfo(@"lastPreferred: %@ lastAlternate: %@ results: %@", v101, v102, v103, v104, v105, v106, v107, v109);

              if (v75)
              {

                v111 = 1;
                v112 = v272;
LABEL_127:
                preferredDescriptor = [(SUCoreScanResults *)v75 preferredDescriptor];
                if (preferredDescriptor)
                {
                  v121 = 0;
                }

                else
                {
                  alternateDescriptor = [(SUCoreScanResults *)v75 alternateDescriptor];
                  v121 = alternateDescriptor == 0;
                }

                goto LABEL_132;
              }

              v113 = 1;
            }

            else
            {
              v113 = 0;
            }

            phase = v263;
LABEL_62:
            v112 = v272;
            v75 = [[SUCoreScanResults alloc] initWithPreferredDescriptor:v272 alternateDescriptor:descriptorCopy];
            if (!download || (v113 & 1) != 0 || ([download matchesScanResults:v75] & 1) != 0)
            {
              v279 = 0;
              v278 = 0;
              v277 = 0;
              if (v113)
              {
                v111 = 1;
LABEL_124:
                if ((v271 & 1) == 0)
                {
                  [(SUScanner *)self scheduleRecommendedUpdateFromResults:v75];
                }

                if (v75)
                {
                  goto LABEL_127;
                }

                v121 = 1;
LABEL_132:
                if (v29 & 1 | !v121 || [(SUScanner *)self lastScannedMatchScanOptions:optionsCopy])
                {
                  if ((v111 & 1) == 0)
                  {
                    [(SUScanner *)self setPreferredLastScannedCoreDescriptor:v112];
                    [(SUScanner *)self setAlternateLastScannedCoreDescriptor:descriptorCopy];
                    SULogInfo(@"%s: Setting last scan descriptors, preferred:%@, alternate:%@", v240, v241, v242, v243, v244, v245, v246, "[SUScanner scanCompleted:alternateDescriptor:scanOptions:error:]");
                  }
                }

                else
                {
                  SULogInfo(@"%s: scan for emergency or splat only update ended with no results and previous scan is not of the same type, ignore current scan result and keep the previous one", v233, v234, v235, v236, v237, v238, v239, "[SUScanner scanCompleted:alternateDescriptor:scanOptions:error:]");
                }

                v270 = descriptorCopy;
                v272 = v112;
                if (v121)
                {
                  v43 = [SUUtility errorWithCode:3];
                }

                else
                {
                  notify_post([@"com.apple.SoftwareUpdateServices.updateFound" UTF8String]);
                  v43 = 0;
                }

                goto LABEL_140;
              }
            }

            else
            {
              v131 = phase;
              SULogInfo(@"Update found was newer than curently download(ed|ing) update.  Attempting to cancel download.", v114, v115, v116, v117, v118, v119, v120, v259);
              core5 = [(SUScanner *)self core];
              v280 = 0;
              v133 = [core5 killDownload:0 userRequested:0 keepDocAssets:1 forUpdates:v75 error:&v280];
              v134 = v280;

              if (v133)
              {
                SULogInfo(@"Current download is successfully canceled.", v135, v136, v137, v138, v139, v140, v141, v260);
              }

              else
              {
                SULogInfo(@"Unable to cancel download: %@", v135, v136, v137, v138, v139, v140, v141, v134);
                core6 = [(SUScanner *)self core];
                [core6 cleanupPreviousDownloadState];
              }

              core7 = [(SUScanner *)self core];
              [core7 updateInstallPolicyType:0];

              v279 = 0;
              v278 = 0;
              v277 = 0;
              v112 = v272;
              phase = v131;
            }

            if (![(SUScanner *)self scanResultsChangedSinceLastScan:v75 preferredUpdateNewlyDiscovered:&v279 + 1 alternateUpdateNewlyDiscovered:&v279 preferredUpdateChanged:&v278 + 1 alternateUpdateChanged:&v278 preferredWasAlternate:&v277 + 1 alternateWasPreferred:&v277, v261, v262])
            {
LABEL_123:
              v111 = 0;
              goto LABEL_124;
            }

            [(SUScanner *)self setPreferredLastScannedCoreDescriptor:v112];
            [(SUScanner *)self setAlternateLastScannedCoreDescriptor:descriptorCopy];
            SULogInfo(@"%s: Setting last scan descriptors, preferred:%@, alternate:%@", v144, v145, v146, v147, v148, v149, v150, "[SUScanner scanCompleted:alternateDescriptor:scanOptions:error:]");
            if (HIBYTE(v278) == 1)
            {
              preferredDescriptor2 = [(SUCoreScanResults *)v75 preferredDescriptor];
              v152 = (preferredDescriptor2 != 0) & (HIBYTE(v277) ^ 1);

              if ((v278 & 1) == 0)
              {
                if ((v152 & 1) == 0)
                {
                  v153 = 0;
LABEL_91:
                  core10 = +[SUPreferences sharedInstance];
                  v266 = v153;
                  if ([core10 isAutoDownloadDisabled] && v153)
                  {
                    v163 = [(SUScanner *)self scanResultIsUpToDateWithAlternate:v75];

                    if (v163)
                    {
LABEL_96:
                      date2 = [MEMORY[0x277CBEAA8] date];
                      preferredDescriptor3 = [(SUCoreScanResults *)v75 preferredDescriptor];
                      v166 = HIBYTE(v279);

                      if (preferredDescriptor3 && (v166 & 1) != 0)
                      {
                        preferredDescriptor4 = [(SUCoreScanResults *)v75 preferredDescriptor];
                        [preferredDescriptor4 productBuildVersion];
                        v169 = v168 = phase;
                        [(SUScanner *)self setDiscoveryDate:date2 forBuildVersion:v169];

                        phase = v168;
                      }

                      alternateDescriptor2 = [(SUCoreScanResults *)v75 alternateDescriptor];
                      v171 = v279;

                      v112 = v272;
                      if (alternateDescriptor2 && (v171 & 1) != 0)
                      {
                        alternateDescriptor3 = [(SUCoreScanResults *)v75 alternateDescriptor];
                        [alternateDescriptor3 productBuildVersion];
                        v174 = v173 = phase;
                        [(SUScanner *)self setDiscoveryDate:date2 forBuildVersion:v174];

                        phase = v173;
                      }

                      preferredDescriptor5 = [(SUCoreScanResults *)v75 preferredDescriptor];
                      if (!preferredDescriptor5 || (v176 = HIBYTE(v279), v177 = HIBYTE(v278), preferredDescriptor5, (v176 & 1) == 0) && (v177 & 1) == 0)
                      {
LABEL_111:
                        alternateDescriptor4 = [(SUCoreScanResults *)v75 alternateDescriptor];
                        if (!alternateDescriptor4)
                        {
                          goto LABEL_120;
                        }

                        v203 = v279;
                        v204 = v278;

                        if ((v203 & 1) == 0 && (v204 & 1) == 0)
                        {
                          goto LABEL_120;
                        }

                        v265 = phase;
                        alternateDescriptor5 = [(SUCoreScanResults *)v75 alternateDescriptor];
                        v206 = optionsCopy;
                        if ([alternateDescriptor5 granularlyRamped])
                        {
                        }

                        else
                        {
                          alternateDescriptor6 = [(SUCoreScanResults *)v75 alternateDescriptor];
                          rampEnabled = [alternateDescriptor6 rampEnabled];

                          if ((rampEnabled & 1) == 0)
                          {
                            alternateDescriptor7 = [(SUCoreScanResults *)v75 alternateDescriptor];
                            productBuildVersion = [alternateDescriptor7 productBuildVersion];
                            SULogInfo(@"[scanCompleted] %@ is fully unramped!", v222, v223, v224, v225, v226, v227, v228, productBuildVersion);

                            alternateDescriptor8 = [(SUCoreScanResults *)v75 alternateDescriptor];
                            productBuildVersion2 = [alternateDescriptor8 productBuildVersion];
                            [(SUScanner *)self setFullyUnrampedDate:date2 forBuildVersion:productBuildVersion2];
                            goto LABEL_119;
                          }
                        }

                        alternateDescriptor9 = [(SUCoreScanResults *)v75 alternateDescriptor];
                        productBuildVersion3 = [alternateDescriptor9 productBuildVersion];
                        SULogInfo(@"[scanCompleted] %@ is not fully unramped.", v211, v212, v213, v214, v215, v216, v217, productBuildVersion3);

                        alternateDescriptor8 = [(SUCoreScanResults *)v75 alternateDescriptor];
                        productBuildVersion2 = [alternateDescriptor8 productBuildVersion];
                        [(SUScanner *)self removeFullyUnrampedDateForBuildVersion:productBuildVersion2];
LABEL_119:

                        optionsCopy = v206;
                        v112 = v272;
                        phase = v265;
LABEL_120:
                        [(SUScanner *)self setLastScannedDescriptorScanOptions:optionsCopy];
                        if (v266)
                        {
                          core8 = [(SUScanner *)self core];
                          [core8 reportOTAAvailableEvent:v75];

                          core9 = [(SUScanner *)self core];
                          [core9 reportCoreAnalyticsOTAAvailableEvent:v75];

                          notify_post([@"com.apple.SoftwareUpdateServices.newUpdateFound" UTF8String]);
                        }

                        goto LABEL_123;
                      }

                      v264 = phase;
                      preferredDescriptor6 = [(SUCoreScanResults *)v75 preferredDescriptor];
                      v179 = optionsCopy;
                      if ([preferredDescriptor6 granularlyRamped])
                      {
                      }

                      else
                      {
                        preferredDescriptor7 = [(SUCoreScanResults *)v75 preferredDescriptor];
                        rampEnabled2 = [preferredDescriptor7 rampEnabled];

                        if ((rampEnabled2 & 1) == 0)
                        {
                          preferredDescriptor8 = [(SUCoreScanResults *)v75 preferredDescriptor];
                          productBuildVersion4 = [preferredDescriptor8 productBuildVersion];
                          SULogInfo(@"[scanCompleted] %@ is fully unramped.", v195, v196, v197, v198, v199, v200, v201, productBuildVersion4);

                          preferredDescriptor9 = [(SUCoreScanResults *)v75 preferredDescriptor];
                          productBuildVersion5 = [preferredDescriptor9 productBuildVersion];
                          [(SUScanner *)self setFullyUnrampedDate:date2 forBuildVersion:productBuildVersion5];
                          goto LABEL_110;
                        }
                      }

                      preferredDescriptor10 = [(SUCoreScanResults *)v75 preferredDescriptor];
                      productBuildVersion6 = [preferredDescriptor10 productBuildVersion];
                      SULogInfo(@"[scanCompleted] %@ is not fully unramped.", v184, v185, v186, v187, v188, v189, v190, productBuildVersion6);

                      preferredDescriptor9 = [(SUCoreScanResults *)v75 preferredDescriptor];
                      productBuildVersion5 = [preferredDescriptor9 productBuildVersion];
                      [(SUScanner *)self removeFullyUnrampedDateForBuildVersion:productBuildVersion5];
LABEL_110:

                      optionsCopy = v179;
                      v112 = v272;
                      phase = v264;
                      goto LABEL_111;
                    }

                    core10 = [(SUScanner *)self core];
                    v164 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v272];
                    [core10 badgeSettingsForManualSoftwareUpdate:v164];
                  }

                  goto LABEL_96;
                }

                goto LABEL_84;
              }
            }

            else
            {
              v152 = 0;
              v153 = 0;
              if (v278 != 1)
              {
                goto LABEL_91;
              }
            }

            alternateDescriptor10 = [(SUCoreScanResults *)v75 alternateDescriptor];
            v153 = (alternateDescriptor10 != 0) & (v277 ^ 1);

            if ((v152 & 1) == 0)
            {
              goto LABEL_91;
            }

            if (v153)
            {
LABEL_85:
              core11 = [(SUScanner *)self core];
              if (([core11 isDownloading] & 1) == 0)
              {
                v156 = phase;
                core12 = [(SUScanner *)self core];
                isUpdateDownloaded = [core12 isUpdateDownloaded];

                if (isUpdateDownloaded)
                {
                  v153 = 1;
                  phase = v156;
                  goto LABEL_91;
                }

                core13 = [(SUScanner *)self core];
                [core13 endAutoDownloadTasksAndResetState];

                core14 = [(SUScanner *)self core];
                [core14 clearUnlockCallbacks];

                core15 = [(SUScanner *)self core];
                [core15 updateInstallPolicyType:0];

                core11 = [(SUScanner *)self core];
                [core11 clearKeybagStash];
                phase = v156;
              }

LABEL_90:

              v153 = 1;
              goto LABEL_91;
            }

LABEL_84:
            core11 = [(SUCoreScanResults *)v75 alternateDescriptor];
            if (core11)
            {
              goto LABEL_90;
            }

            goto LABEL_85;
          }
        }

        else
        {
LABEL_60:
          SULogInfo(@"Scan found an update and no previously prepared update is present", v82, v83, v84, v85, v86, v87, v88, v258);
        }

        v113 = 0;
        goto LABEL_62;
      }

      if (completedCopy)
      {
        goto LABEL_43;
      }
    }

    else
    {

      if (![(SUScanner *)self shouldPresentUpdate:descriptorCopy options:optionsCopy])
      {
        completedCopy = 0;
        goto LABEL_41;
      }
    }

    completedCopy = descriptorCopy;
    goto LABEL_41;
  }

  v43 = [SUUtility translateError:errorCopy];
  if ([optionsCopy isSplatOnlyScan] && objc_msgSend(v43, "isCatalogNotFound"))
  {
    SULogInfo(@"Scanning for splat update, catalog not found: %@", v44, v45, v46, v47, v48, v49, v50, v43);
    v51 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:3 userInfo:0];

    v43 = v51;
  }

  v270 = descriptorCopy;
  if ([v43 code] == 3)
  {
    if ([optionsCopy isEmergencyOnlyScan])
    {
      v66 = @"No emergency update found";
    }

    else
    {
      if (![optionsCopy ignoreNoUpdateFoundResult])
      {
        SULogInfo(@"Device is up to date", v59, v60, v61, v62, v63, v64, v65, v258);
        [(SUScanner *)self setPreferredLastScannedCoreDescriptor:0];
        [(SUScanner *)self setAlternateLastScannedCoreDescriptor:0];
        SULogInfo(@"%s: Setting last scan descriptors to nil", v122, v123, v124, v125, v126, v127, v128, "[SUScanner scanCompleted:alternateDescriptor:scanOptions:error:]");
        if (v29)
        {
          [(SUScanner *)self scheduleRecommendedUpdateFromResults:0];
        }

        core16 = [(SUScanner *)self core];
        [core16 deviceIsUpToDateForSU:v29 forSplat:v27];

        core17 = [(SUScanner *)self core];
        [core17 dismissInsufficientDiskSpaceFollowupForUpdate:0 orForce:1];

        goto LABEL_71;
      }

      v66 = @"Ignoring no update found result due to scan options";
    }

    SULogInfo(v66, v59, v60, v61, v62, v63, v64, v65, v258);
LABEL_71:
    v75 = 0;
    goto LABEL_140;
  }

  v267 = optionsCopy;
  SULogInfo(@"Error scanning for update: %@", v52, v53, v54, v55, v56, v57, v58, v43);
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v67 = self->_scanRequests;
  v68 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v281 objects:v286 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v282;
    while (2)
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v282 != v70)
        {
          objc_enumerationMutation(v67);
        }

        options = [*(*(&v281 + 1) + 8 * i) options];
        identifier = [options identifier];
        v74 = [identifier isEqualToString:@"com.apple.softwareupdate.autoscan"];

        if ((v74 & 1) == 0)
        {
          [(SUScanner *)self _handleScanError:v43];

          goto LABEL_34;
        }
      }

      v69 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v281 objects:v286 count:16];
      if (v69)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  v75 = 0;
  optionsCopy = v267;
LABEL_140:
  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v247 = self->_scanRequests;
  v248 = [(NSMutableArray *)v247 countByEnumeratingWithState:&v273 objects:v285 count:16];
  if (v248)
  {
    v249 = v248;
    v250 = *v274;
    do
    {
      for (j = 0; j != v249; ++j)
      {
        if (*v274 != v250)
        {
          objc_enumerationMutation(v247);
        }

        v252 = *(*(&v273 + 1) + 8 * j);
        [v252 setResults:v75];
        [v252 setError:v43];
        [(SUScanner *)self notifyScanRequestDidFinish:v252 results:v75 error:v43];
      }

      v249 = [(NSMutableArray *)v247 countByEnumeratingWithState:&v273 objects:v285 count:16];
    }

    while (v249);
  }

  [(SUScanner *)self notifyScanDidComplete:v75 options:optionsCopy error:v43];
  core18 = [(SUScanner *)self core];
  v254 = core18;
  if (v43)
  {
    [core18 donateSUErrorToBiome:v43];
  }

  else
  {
    [core18 donateSuccessToBiomeFor:@"Scan"];
  }

  core19 = [(SUScanner *)self core];
  state2 = [core19 state];
  [state2 save];

  [(NSMutableArray *)self->_scanRequests removeAllObjects];
  v257 = *MEMORY[0x277D85DE8];
}

- (BOOL)scanResultsChangedSinceLastScan:(id)scan preferredUpdateNewlyDiscovered:(BOOL *)discovered alternateUpdateNewlyDiscovered:(BOOL *)newlyDiscovered preferredUpdateChanged:(BOOL *)changed alternateUpdateChanged:(BOOL *)updateChanged preferredWasAlternate:(BOOL *)alternate alternateWasPreferred:(BOOL *)preferred
{
  scanCopy = scan;
  preferredDescriptor = [scanCopy preferredDescriptor];

  if (preferredDescriptor)
  {
    discoveryDateManager = self->_discoveryDateManager;
    preferredDescriptor2 = [scanCopy preferredDescriptor];
    productBuildVersion = [preferredDescriptor2 productBuildVersion];
    v23 = [(SUUpdateDiscoveryDateManager *)discoveryDateManager containsBuildVersion:productBuildVersion];

    if (!v23)
    {
      SULogInfo(@"scanResultsChangedSinceLastScan: Preferred update is newly discovered", v24, v25, v26, v27, v28, v29, v30, v65);
    }

    v31 = !v23;
    preferredDescriptor3 = [scanCopy preferredDescriptor];
    v33 = [preferredDescriptor3 isEqualToDescriptor:self->_preferredLastScannedCoreDescriptor];

    if (v33)
    {
      v34 = 0;
      LOBYTE(v35) = 0;
      goto LABEL_14;
    }

    preferredDescriptor4 = [scanCopy preferredDescriptor];
    v35 = [preferredDescriptor4 isEqualToDescriptor:self->_alternateLastScannedCoreDescriptor];

    if (v35)
    {
      v36 = @"scanResultsChangedSinceLastScan: Preferred update was previously the alternate update";
    }

    else
    {
      v36 = @"scanResultsChangedSinceLastScan: Preferred update has changed";
    }

    v34 = v35 ^ 1u;
    goto LABEL_12;
  }

  v31 = 0;
  if (self->_preferredLastScannedCoreDescriptor)
  {
    v34 = 1;
    v36 = @"scanResultsChangedSinceLastScan: Preferred update is newly null";
    LOBYTE(v35) = 0;
LABEL_12:
    SULogInfo(v36, v13, v14, v15, v16, v17, v18, v19, v65);
    goto LABEL_14;
  }

  v34 = 0;
  LOBYTE(v35) = 0;
LABEL_14:
  alternateDescriptor = [scanCopy alternateDescriptor];

  if (alternateDescriptor)
  {
    v46 = self->_discoveryDateManager;
    alternateDescriptor2 = [scanCopy alternateDescriptor];
    productBuildVersion2 = [alternateDescriptor2 productBuildVersion];
    v49 = [(SUUpdateDiscoveryDateManager *)v46 containsBuildVersion:productBuildVersion2];

    if (!v49)
    {
      SULogInfo(@"scanResultsChangedSinceLastScan: Alternate update is newly discovered", v50, v51, v52, v53, v54, v55, v56, v65);
    }

    v57 = !v49;
    alternateDescriptor3 = [scanCopy alternateDescriptor];
    v59 = [alternateDescriptor3 isEqualToDescriptor:self->_alternateLastScannedCoreDescriptor];

    if (v59)
    {
      v60 = 0;
      LOBYTE(v61) = 0;
      goto LABEL_27;
    }

    alternateDescriptor4 = [scanCopy alternateDescriptor];
    v61 = [alternateDescriptor4 isEqualToDescriptor:self->_preferredLastScannedCoreDescriptor];

    if (v61)
    {
      v62 = @"scanResultsChangedSinceLastScan: Alternate update was previously the preferred update";
    }

    else
    {
      v62 = @"scanResultsChangedSinceLastScan: Alternate update has changed";
    }

    v60 = v61 ^ 1;
    goto LABEL_25;
  }

  v57 = 0;
  if (self->_alternateLastScannedCoreDescriptor)
  {
    v60 = 1;
    v62 = @"scanResultsChangedSinceLastScan: Alternate update is newly null";
    LOBYTE(v61) = 0;
LABEL_25:
    SULogInfo(v62, v39, v40, v41, v42, v43, v44, v45, v65);
    goto LABEL_27;
  }

  v60 = 0;
  LOBYTE(v61) = 0;
LABEL_27:
  if (alternate)
  {
    *alternate = v35;
  }

  if (preferred)
  {
    *preferred = v61;
  }

  if (discovered)
  {
    *discovered = v31;
  }

  if (newlyDiscovered)
  {
    *newlyDiscovered = v57;
  }

  if (changed)
  {
    *changed = v34;
  }

  if (updateChanged)
  {
    *updateChanged = v60;
  }

  SULogInfo(@"scanResultsChangedSinceLastScan: pc=%d, ac=%d, pwa=%d, awp=%d, pnd=%d, and=%d", v39, v40, v41, v42, v43, v44, v45, v34);

  return (v61 | v35 | v34 | v60 | (v31 || v57)) & 1;
}

- (BOOL)scanResultIsUpToDateWithAlternate:(id)alternate
{
  alternateCopy = alternate;
  preferredDescriptor = [alternateCopy preferredDescriptor];
  if (preferredDescriptor)
  {
    alternateDescriptor = [alternateCopy alternateDescriptor];
    if (alternateDescriptor)
    {
      v6 = 0;
    }

    else
    {
      preferredDescriptor2 = [alternateCopy preferredDescriptor];
      if ([preferredDescriptor2 promoteAlternateUpdate])
      {
        preferredDescriptor3 = [alternateCopy preferredDescriptor];
        v6 = [preferredDescriptor3 descriptorAudienceType] == 1;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_doScanForUpdates
{
  activeScanTask = [(SUScanner *)self activeScanTask];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SUScanner__doScanForUpdates__block_invoke;
  v4[3] = &unk_279CAC210;
  v4[4] = self;
  [activeScanTask scanForSUAssetWithCompletion:v4];
}

- (void)scanForUpdates:(id)updates complete:(id)complete
{
  updatesCopy = updates;
  completeCopy = complete;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __37__SUScanner_scanForUpdates_complete___block_invoke;
  v71[3] = &unk_279CAC238;
  v71[4] = self;
  v10 = completeCopy;
  v72 = v10;
  v11 = MEMORY[0x26D668B30](v71);
  if (!updatesCopy)
  {
    v14 = 22;
    goto LABEL_12;
  }

  core2 = [(SUScanner *)self core];
  isInstalling = [core2 isInstalling];

  if (isInstalling)
  {
    v14 = 14;
LABEL_12:
    v29 = [SUUtility errorWithCode:v14];
    (v11)[2](v11, v29);
    goto LABEL_13;
  }

  if (([updatesCopy clientIsBuddy] & 1) != 0 || -[SUScanner isBuddyRunning](self, "isBuddyRunning"))
  {
    if ([updatesCopy isSplatOnlyScan])
    {
      SULogInfo(@"%s: don't scan for splats for buddy", v15, v16, v17, v18, v19, v20, v21, "[SUScanner scanForUpdates:complete:]");
      v14 = 3;
      goto LABEL_12;
    }

    SULogInfo(@"%s: client is buddy or buddy is running; disable splombo and psus for this scan", v15, v16, v17, v18, v19, v20, v21, "[SUScanner scanForUpdates:complete:]");
    [updatesCopy setDisableSplatCombo:1];
    [updatesCopy setDisablePreSoftwareUpdateStaging:1];
  }

  if (+[SUUtility isReturnToServiceModeActive])
  {
    SULogInfo(@"%s: Scans not allowed in RRTS mode", v22, v23, v24, v25, v26, v27, v28, "[SUScanner scanForUpdates:complete:]");
    v14 = 112;
    goto LABEL_12;
  }

  if ([updatesCopy clientIsInboxUpdaterd])
  {
    SULogInfo(@"%s: client is inboxupdaterd; disable splombo and psus for this scan", v30, v31, v32, v33, v34, v35, v36, "[SUScanner scanForUpdates:complete:]");
    [updatesCopy setDisableSplatCombo:1];
    [updatesCopy setDisablePreSoftwareUpdateStaging:1];
  }

  v37 = +[SUPreferences sharedInstance];
  disableSplombo = [v37 disableSplombo];

  if (disableSplombo)
  {
    SULogInfo(@"%s: Splombo is disabled", v39, v40, v41, v42, v43, v44, v45, "[SUScanner scanForUpdates:complete:]");
    [updatesCopy setDisableSplatCombo:1];
  }

  if ([updatesCopy clientIsBuddy])
  {
    SULogInfo(@"%s: skipping network check because this is buddy", v46, v47, v48, v49, v50, v51, v52, "[SUScanner scanForUpdates:complete:]");
  }

  else
  {
    v53 = +[SUNetworkMonitor sharedInstance];
    currentNetworkType = [v53 currentNetworkType];

    if (!currentNetworkType)
    {
      SULogInfo(@"network unavailable canceling scan", v55, v56, v57, v58, v59, v60, v61, v64);
      v14 = 26;
      goto LABEL_12;
    }
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __37__SUScanner_scanForUpdates_complete___block_invoke_3;
  v69[3] = &unk_279CAC260;
  v69[4] = self;
  v70 = v10;
  v62 = MEMORY[0x26D668B30](v69);
  if ([updatesCopy clientIsDDM])
  {
    (v62)[2](v62, updatesCopy);
  }

  else
  {
    core3 = [(SUScanner *)self core];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __37__SUScanner_scanForUpdates_complete___block_invoke_4;
    v65[3] = &unk_279CAC288;
    v66 = updatesCopy;
    v67 = v11;
    v68 = v62;
    [core3 amendManagedScanOptions:v66 withResponse:v65];
  }

  v29 = v70;
LABEL_13:
}

void __37__SUScanner_scanForUpdates_complete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) core];
  [v4 donateSUErrorToBiome:v3];

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) core];
    v6 = [v5 externWorkQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SUScanner_scanForUpdates_complete___block_invoke_2;
    v7[3] = &unk_279CAAF08;
    v9 = *(a1 + 40);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__SUScanner_scanForUpdates_complete___block_invoke_3(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = objc_alloc_init(SUManagerScanRequest);
  [(SUManagerScanRequest *)v3 setOptions:v49];
  [(SUManagerScanRequest *)v3 setCallback:*(a1 + 40)];
  [*(*(a1 + 32) + 24) addObject:v3];
  v4 = [*(a1 + 32) core];
  v5 = [v4 sessionID];
  [v49 setSessionID:v5];

  v6 = [[SUScanTask alloc] initWithOptions:v49];
  v7 = [*(a1 + 32) activeScanTask];

  if (!v7)
  {
    goto LABEL_4;
  }

  v15 = [*(a1 + 32) activeScanTask];
  v16 = [v15 scanPriority];
  v17 = [(SUScanTask *)v6 scanPriority];

  v18 = *(a1 + 32);
  if (v16 < v17)
  {
    v19 = [*(a1 + 32) activeScanTask];
    v20 = [v18 stringForScanPriority:{objc_msgSend(v19, "scanPriority")}];
    v47 = [*(a1 + 32) stringForScanPriority:{-[SUScanTask scanPriority](v6, "scanPriority")}];
    SULogInfo(@"Canceling active scan (%@) in favor of higher priority scan (%@)", v21, v22, v23, v24, v25, v26, v27, v20);

    v28 = [*(a1 + 32) activeScanTask];
    [v28 cancelTask];

LABEL_4:
    SULogInfo(@"Scanning for new OTA software update...", v8, v9, v10, v11, v12, v13, v14, v46);
    SULogInfo(@"Scan Options: %@", v29, v30, v31, v32, v33, v34, v35, v49);
    [*(a1 + 32) setScanning:1];
    [*(a1 + 32) setActiveScanTask:v6];
    [*(a1 + 32) notifyScanRequestDidStart:v3];
    [*(a1 + 32) _doScanForUpdates];
    goto LABEL_6;
  }

  v36 = [v18 stringForScanPriority:{-[SUScanTask scanPriority](v6, "scanPriority")}];
  v37 = *(a1 + 32);
  v38 = [v37 activeScanTask];
  v48 = [v37 stringForScanPriority:{objc_msgSend(v38, "scanPriority")}];
  SULogInfo(@"Coalescing scan %@ with %@ scan", v39, v40, v41, v42, v43, v44, v45, v36);

  [*(a1 + 32) notifyScanRequestDidStart:v3];
LABEL_6:
}

void __37__SUScanner_scanForUpdates_complete___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) isSplatOnlyScan] && (objc_msgSend(*(a1 + 32), "MDMShowRapidSecurityResponse") & 1) == 0)
  {
    SULogInfo(@"Splat-only asset scan disabled by device management", v2, v3, v4, v5, v6, v7, v8, v12);
    v11 = *(a1 + 40);
    v13 = [SUUtility errorWithCode:3];
    (*(v11 + 16))(v11, v13);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

- (void)handleActiveScanTaskDocumentationFor:(id)for withOptions:(id)options withSelectedDescriptorCompletion:(id)completion
{
  forCopy = for;
  optionsCopy = options;
  completionCopy = completion;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__12;
  v41 = __Block_byref_object_dispose__12;
  v42 = [forCopy objectForKeyedSubscript:@"Primary"];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__12;
  v35[4] = __Block_byref_object_dispose__12;
  v36 = 0;
  if ([(SUScanner *)self _coreDescriptorFailedPatching:v38[5]])
  {
    v11 = +[SUPreferences sharedInstance];
    disableFullReplacementFallback = [v11 disableFullReplacementFallback];

    if ((disableFullReplacementFallback & 1) == 0)
    {
      v13 = [forCopy objectForKeyedSubscript:@"Secondary"];
      v14 = v38[5];
      v38[5] = v13;
    }
  }

  v15 = v38[5];
  if (!v15)
  {
    v28 = 0;
LABEL_17:
    completionCopy[2](completionCopy, v28, 0);
    goto LABEL_18;
  }

  documentation = [v15 documentation];

  if (documentation)
  {
LABEL_16:
    v28 = v38[5];
    goto LABEL_17;
  }

  if ([optionsCopy clientIsBuddy])
  {
    v17 = +[SUNetworkMonitor sharedInstance];
    if ([v17 isBootstrap])
    {
      v18 = +[SUNetworkMonitor sharedInstance];
      isPathSatisfied = [v18 isPathSatisfied];

      if (!isPathSatisfied)
      {
        v27 = @"Skip loading documentation for buddy on bootstrap network";
LABEL_15:
        SULogInfo(v27, v20, v21, v22, v23, v24, v25, v26, v31[0]);
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  if (([optionsCopy collectDocumentation] & 1) == 0)
  {
    v27 = @"Skip loading documentation (directed by options)";
    goto LABEL_15;
  }

  activeScanTask = [(SUScanner *)self activeScanTask];
  v30 = v38[5];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __95__SUScanner_handleActiveScanTaskDocumentationFor_withOptions_withSelectedDescriptorCompletion___block_invoke;
  v31[3] = &unk_279CAC2D8;
  v33 = v35;
  v34 = &v37;
  v31[4] = self;
  v32 = completionCopy;
  [activeScanTask scanForDocumentationAssetWithDescriptor:v30 completion:v31];

LABEL_18:
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
}

void __95__SUScanner_handleActiveScanTaskDocumentationFor_withOptions_withSelectedDescriptorCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [SUUtility errorWithCode:4 originalError:a3];
  }

  else
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) documentation];

    if (v9)
    {
      v10 = *(*(a1 + 56) + 8);
      v11 = v5;
      v8 = *(v10 + 40);
      *(v10 + 40) = v11;
      goto LABEL_6;
    }

    v6 = [SUUtility errorWithCode:38];
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
LABEL_6:

  v12 = [*(a1 + 32) core];
  v13 = [v12 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SUScanner_handleActiveScanTaskDocumentationFor_withOptions_withSelectedDescriptorCompletion___block_invoke_2;
  block[3] = &unk_279CAC2B0;
  v15 = *(a1 + 40);
  v16 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  dispatch_async(v13, block);
}

- (void)handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor:(id)descriptor preferredSecondaryDescriptor:(id)secondaryDescriptor alternatePrimaryDescriptor:(id)primaryDescriptor alternateSecondaryDescriptor:(id)alternateSecondaryDescriptor scanOptions:(id)options error:(id)error
{
  descriptorCopy = descriptor;
  secondaryDescriptorCopy = secondaryDescriptor;
  primaryDescriptorCopy = primaryDescriptor;
  alternateSecondaryDescriptorCopy = alternateSecondaryDescriptor;
  optionsCopy = options;
  errorCopy = error;
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __181__SUScanner_handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor_preferredSecondaryDescriptor_alternatePrimaryDescriptor_alternateSecondaryDescriptor_scanOptions_error___block_invoke;
  block[3] = &unk_279CAC350;
  v29 = errorCopy;
  v30 = descriptorCopy;
  v31 = secondaryDescriptorCopy;
  v32 = primaryDescriptorCopy;
  v33 = alternateSecondaryDescriptorCopy;
  selfCopy = self;
  v35 = optionsCopy;
  v22 = optionsCopy;
  v23 = alternateSecondaryDescriptorCopy;
  v24 = primaryDescriptorCopy;
  v25 = secondaryDescriptorCopy;
  v26 = descriptorCopy;
  v27 = errorCopy;
  dispatch_async(workQueue, block);
}

void __181__SUScanner_handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor_preferredSecondaryDescriptor_alternatePrimaryDescriptor_alternateSecondaryDescriptor_scanOptions_error___block_invoke(void *a1)
{
  if (a1[4])
  {
    v2 = a1[9];
    v3 = a1[10];

    [v2 _handleScannedPreferredDescriptor:0 alternateDescriptor:0 scanOptions:v3 error:?];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v4 setObject:a1[5] forKeyedSubscript:@"Primary"];
    [v4 setObject:a1[6] forKeyedSubscript:@"Secondary"];
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:a1[7] forKeyedSubscript:@"Primary"];
    [v5 setObject:a1[8] forKeyedSubscript:@"Secondary"];
    v7 = a1[9];
    v6 = a1[10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __181__SUScanner_handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor_preferredSecondaryDescriptor_alternatePrimaryDescriptor_alternateSecondaryDescriptor_scanOptions_error___block_invoke_2;
    v9[3] = &unk_279CAC328;
    v9[4] = v7;
    v10 = v6;
    v11 = v5;
    v8 = v5;
    [v7 handleActiveScanTaskDocumentationFor:v4 withOptions:v10 withSelectedDescriptorCompletion:v9];
  }
}

void __181__SUScanner_handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor_preferredSecondaryDescriptor_alternatePrimaryDescriptor_alternateSecondaryDescriptor_scanOptions_error___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = a3;
  if (v13)
  {
    SULogInfo(@"%s - doc scan for preferred descriptor failed with: %@", v6, v7, v8, v9, v10, v11, v12, "[SUScanner handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor:preferredSecondaryDescriptor:alternatePrimaryDescriptor:alternateSecondaryDescriptor:scanOptions:error:]_block_invoke_2");
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12;
  v28 = __Block_byref_object_dispose__12;
  v14 = a1[4];
  v15 = [a1[5] requestedBuild];
  v29 = [v14 _handleDescriptor:v5 forRequestedBuild:v15];

  if ([a1[6] count])
  {
    v16 = a1[5];
    v17 = a1[6];
    v18 = a1[4];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __181__SUScanner_handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor_preferredSecondaryDescriptor_alternatePrimaryDescriptor_alternateSecondaryDescriptor_scanOptions_error___block_invoke_3;
    v21[3] = &unk_279CAC300;
    v21[4] = v18;
    v22 = v16;
    v23 = &v24;
    [v18 handleActiveScanTaskDocumentationFor:v17 withOptions:v22 withSelectedDescriptorCompletion:v21];
  }

  else
  {
    v19 = v25[5];
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = [SUUtility errorWithCode:105];
      v19 = v25[5];
    }

    [a1[4] _handleScannedPreferredDescriptor:v19 alternateDescriptor:0 scanOptions:a1[5] error:v20];
  }

  _Block_object_dispose(&v24, 8);
}

void __181__SUScanner_handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor_preferredSecondaryDescriptor_alternatePrimaryDescriptor_alternateSecondaryDescriptor_scanOptions_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v12 = a3;
  if (v12)
  {
    SULogInfo(@"%s - doc scan for alternate descriptor failed with: %@", v5, v6, v7, v8, v9, v10, v11, "[SUScanner handleActiveScanTaskScanCompletionWithPreferredPrimaryDescriptor:preferredSecondaryDescriptor:alternatePrimaryDescriptor:alternateSecondaryDescriptor:scanOptions:error:]_block_invoke_3");
  }

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) requestedBuild];
  v15 = [v13 _handleDescriptor:v20 forRequestedBuild:v14];

  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  if (v17 | v15)
  {
    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = v15 == 0;
    }

    if (!v18)
    {
      *(v16 + 40) = v15;

      v15 = 0;
    }

    v19 = 0;
  }

  else
  {
    v19 = [SUUtility errorWithCode:105];
    v15 = 0;
  }

  [*(a1 + 32) _handleScannedPreferredDescriptor:*(*(*(a1 + 48) + 8) + 40) alternateDescriptor:v15 scanOptions:*(a1 + 40) error:v19];
}

- (id)_handleDescriptor:(id)descriptor forRequestedBuild:(id)build
{
  descriptorCopy = descriptor;
  buildCopy = build;
  v14 = buildCopy;
  if (descriptorCopy && buildCopy)
  {
    associatedSplatDescriptor = [descriptorCopy associatedSplatDescriptor];

    if (associatedSplatDescriptor)
    {
      v16 = +[SUPreferences sharedInstance];
      overrideSplatComboBuildVersion = [v16 overrideSplatComboBuildVersion];

      if (overrideSplatComboBuildVersion)
      {
        SULogDebug(@"%s: Override the build version of the splat combo to %@", v18, v19, v20, v21, v22, v23, v24, "[SUScanner _handleDescriptor:forRequestedBuild:]");
      }

      else
      {
        associatedSplatDescriptor2 = [descriptorCopy associatedSplatDescriptor];
        overrideSplatComboBuildVersion = [associatedSplatDescriptor2 productBuildVersion];
      }

      v35 = MEMORY[0x277CCACA8];
      productBuildVersion = [descriptorCopy productBuildVersion];
      v37 = [v35 stringWithFormat:@"(%@ + %@)", productBuildVersion, overrideSplatComboBuildVersion];

      if ([overrideSplatComboBuildVersion isEqualToString:v14])
      {
        SULogInfo(@"%s: Found a splombo update %@ and it matches the requested build version %@; keep it", v38, v39, v40, v41, v42, v43, v44, "[SUScanner _handleDescriptor:forRequestedBuild:]");
      }

      else
      {
        productBuildVersion2 = [descriptorCopy productBuildVersion];
        v46 = [productBuildVersion2 isEqualToString:v14];

        if (v46)
        {
          SULogInfo(@"%s: Found a splombo update %@ and only the normal update matches the requested build version %@; remove the associated splat", v47, v48, v49, v50, v51, v52, v53, "[SUScanner _handleDescriptor:forRequestedBuild:]");
          [descriptorCopy setAssociatedSplatDescriptor:0];
        }

        else
        {
          SULogInfo(@"%s: Found a splombo update %@ but it doesn't match the requested build version %@; ignore it", v47, v48, v49, v50, v51, v52, v53, "[SUScanner _handleDescriptor:forRequestedBuild:]");

          descriptorCopy = 0;
        }
      }
    }

    else
    {
      productBuildVersion3 = [descriptorCopy productBuildVersion];
      v26 = [productBuildVersion3 isEqualToString:v14];

      if ((v26 & 1) == 0)
      {
        productBuildVersion4 = [descriptorCopy productBuildVersion];
        SULogInfo(@"%s: Found an update %@ but it doesn't match the requested build version %@; ignore it", v27, v28, v29, v30, v31, v32, v33, "[SUScanner _handleDescriptor:forRequestedBuild:]");

        descriptorCopy = 0;
      }
    }
  }

  else
  {
    SULogDebug(@"%s: invalid parameters", v7, v8, v9, v10, v11, v12, v13, "[SUScanner _handleDescriptor:forRequestedBuild:]");
  }

  return descriptorCopy;
}

- (void)_handleScannedPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor scanOptions:(id)options error:(id)error
{
  descriptorCopy = descriptor;
  alternateDescriptorCopy = alternateDescriptor;
  optionsCopy = options;
  errorCopy = error;
  humanReadableUpdateName = [descriptorCopy humanReadableUpdateName];
  humanReadableUpdateName2 = [alternateDescriptorCopy humanReadableUpdateName];
  SULogDebug(@"Scan found preferred descriptor {%@} and alternate descriptor {%@}\nwith error %@\nfor scan options %@", v14, v15, v16, v17, v18, v19, v20, humanReadableUpdateName);

  if (![optionsCopy scanForSplatIfNecessary])
  {
    goto LABEL_19;
  }

  activeScanTask = [(SUScanner *)self activeScanTask];
  v29 = [activeScanTask didScanForType:4];

  if ([(SUScanner *)self isBuddyRunning])
  {
    clientIsBuddy = 1;
  }

  else
  {
    clientIsBuddy = [optionsCopy clientIsBuddy];
  }

  scanType = [optionsCopy scanType];
  isUpToDate = [errorCopy isUpToDate];
  if (scanType != 2)
  {
    if (!isUpToDate || ![optionsCopy MDMShowRapidSecurityResponse] || (objc_msgSend(optionsCopy, "isPMVRequested") & 1) != 0 || ((objc_msgSend(optionsCopy, "isEmergencyOnlyScan") | v29 | clientIsBuddy) & 1) != 0)
    {
      goto LABEL_19;
    }

    [optionsCopy clearTypes];
    [optionsCopy addType:4];
LABEL_16:
    SULogInfo(@"%s - will rescan for updates with options %@", v40, v41, v42, v43, v44, v45, v46, "[SUScanner _handleScannedPreferredDescriptor:alternateDescriptor:scanOptions:error:]");
    [(SUScanner *)self _doScanForUpdates];
    goto LABEL_20;
  }

  if ((isUpToDate & 1) != 0 || ([errorCopy noMatchingUpdateFound] & 1) != 0 || objc_msgSend(optionsCopy, "isSplatOnlyScan") && objc_msgSend(errorCopy, "isCatalogNotFound"))
  {
    if ((v29 | clientIsBuddy))
    {
      [optionsCopy setRequestedBuild:0];
      [optionsCopy setRequestedPMV:0];
      [optionsCopy clearTypes];
      [optionsCopy setScanType:0];
      SULogInfo(@"%s - [DDM] Fall back to a scan for regular updates", v33, v34, v35, v36, v37, v38, v39, "[SUScanner _handleScannedPreferredDescriptor:alternateDescriptor:scanOptions:error:]");
    }

    else
    {
      [optionsCopy setRequestedPMV:0];
      [optionsCopy clearTypes];
      [optionsCopy addType:4];
      SULogInfo(@"%s - [DDM] Fall back to a scan for Splat updates", v47, v48, v49, v50, v51, v52, v53, "[SUScanner _handleScannedPreferredDescriptor:alternateDescriptor:scanOptions:error:]");
    }

    goto LABEL_16;
  }

LABEL_19:
  SULogInfo(@"%s - will not rescan for updates", v21, v22, v23, v24, v25, v26, v27, "[SUScanner _handleScannedPreferredDescriptor:alternateDescriptor:scanOptions:error:]");
  [(SUScanner *)self scanCompleted:descriptorCopy alternateDescriptor:alternateDescriptorCopy scanOptions:optionsCopy error:errorCopy];
LABEL_20:
}

- (id)stringForScanPriority:(int64_t)priority
{
  if (priority > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CAC3B0[priority];
  }
}

- (BOOL)_coreDescriptorFailedPatching:(id)patching
{
  patchingCopy = patching;
  productBuildVersion = [patchingCopy productBuildVersion];
  prerequisiteBuild = [patchingCopy prerequisiteBuild];

  if (prerequisiteBuild)
  {
    core = [(SUScanner *)self core];
    state = [core state];
    failedPatchBuildVersions = [state failedPatchBuildVersions];

    if (failedPatchBuildVersions && [failedPatchBuildVersions count])
    {
      v24 = [failedPatchBuildVersions containsObject:productBuildVersion];
      SULogInfo(@"%s: buildVer = %@, failedPatchBuildVersions = %@, should fall back: %d", v25, v26, v27, v28, v29, v30, v31, "[SUScanner _coreDescriptorFailedPatching:]");
    }

    else
    {
      SULogInfo(@"%s: No failed patch updates", v17, v18, v19, v20, v21, v22, v23, "[SUScanner _coreDescriptorFailedPatching:]");
      v24 = 0;
    }
  }

  else
  {
    SULogInfo(@"%s: %@ is already a full-replacement", v7, v8, v9, v10, v11, v12, v13, "[SUScanner _coreDescriptorFailedPatching:]");
    v24 = 0;
  }

  return v24;
}

- (id)descriptorToAutoDownload:(id)download
{
  downloadCopy = download;
  if ([(SUScanner *)self isBuddyRunning])
  {
    SULogInfo(@"%s - Null due to Buddy running", v5, v6, v7, v8, v9, v10, v11, "[SUScanner descriptorToAutoDownload:]");
    v12 = 0;
    goto LABEL_23;
  }

  preferredDescriptor = [downloadCopy preferredDescriptor];
  alternateDescriptor = [downloadCopy alternateDescriptor];
  core = [(SUScanner *)self core];
  v16 = [core isDescriptorAutoDownloadable:preferredDescriptor];

  if (!v16)
  {
    goto LABEL_10;
  }

  if (alternateDescriptor || [preferredDescriptor audienceType] != 1 || !objc_msgSend(preferredDescriptor, "promoteAlternateUpdate"))
  {
    core2 = [(SUScanner *)self core];
    v25 = [core2 isDescriptorAutoUpdatable:preferredDescriptor];

    if (v25)
    {
      SULogInfo(@"%s - Preferred update is auto updatable", v26, v27, v28, v29, v30, v31, v32, "[SUScanner descriptorToAutoDownload:]");
LABEL_18:
      v44 = preferredDescriptor;
LABEL_21:
      v12 = v44;
      goto LABEL_22;
    }

LABEL_10:
    core3 = [(SUScanner *)self core];
    v34 = [core3 isDescriptorAutoDownloadable:alternateDescriptor];

    if (v34)
    {
      core4 = [(SUScanner *)self core];
      v43 = [core4 isDescriptorAutoUpdatable:alternateDescriptor];

      if (v43)
      {
        SULogInfo(@"%s - Alternate update is auto updatable", v35, v36, v37, v38, v39, v40, v41, "[SUScanner descriptorToAutoDownload:]");
LABEL_20:
        v44 = alternateDescriptor;
        goto LABEL_21;
      }

      if ((v16 & 1) == 0)
      {
        SULogInfo(@"%s - Alternate update is auto downloadable", v35, v36, v37, v38, v39, v40, v41, "[SUScanner descriptorToAutoDownload:]");
        goto LABEL_20;
      }
    }

    else if (!v16)
    {
      SULogInfo(@"%s - No update is auto downloadable", v35, v36, v37, v38, v39, v40, v41, "[SUScanner descriptorToAutoDownload:]");
      goto LABEL_15;
    }

    SULogInfo(@"%s - Preferred update is auto downloadable", v35, v36, v37, v38, v39, v40, v41, "[SUScanner descriptorToAutoDownload:]");
    goto LABEL_18;
  }

  SULogInfo(@"%s - Null due to up-to-date with alternate", v17, v18, v19, v20, v21, v22, v23, "[SUScanner descriptorToAutoDownload:]");
LABEL_15:
  v12 = 0;
LABEL_22:

LABEL_23:

  return v12;
}

- (id)descriptorToAutoDownload
{
  core = [(SUScanner *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = [SUManagerEngine SUDescriptorFromCoreDescriptor:self->_preferredLastScannedCoreDescriptor];
  v6 = [SUManagerEngine SUDescriptorFromCoreDescriptor:self->_alternateLastScannedCoreDescriptor];
  v7 = [[SUScanResults alloc] initWithPreferredDescriptor:v5 alternateDescriptor:v6];
  v8 = [(SUScanner *)self descriptorToAutoDownload:v7];

  return v8;
}

- (BOOL)isBuddyRunning
{
  v2 = +[SUPreferences sharedInstance];
  buddyInitiatedScan = [v2 buddyInitiatedScan];

  if (buddyInitiatedScan)
  {
    SULogInfo(@"%s: Overriding result to YES by SUBuddyInitiatedScan", v4, v5, v6, v7, v8, v9, v10, "[SUScanner isBuddyRunning]");
    LOBYTE(v11) = 1;
  }

  else
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v12 = getBYSetupAssistantBundleIdentifierSymbolLoc_ptr;
    v51 = getBYSetupAssistantBundleIdentifierSymbolLoc_ptr;
    if (!getBYSetupAssistantBundleIdentifierSymbolLoc_ptr)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke;
      v47[3] = &unk_279CAC378;
      v47[4] = &v48;
      __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke(v47);
      v12 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v12)
    {
      [SUScanner isBuddyRunning];
    }

    v13 = *v12;
    v14 = MEMORY[0x277D46F48];
    v15 = MEMORY[0x277D46FA0];
    v16 = v13;
    v17 = [v15 predicateMatchingBundleIdentifier:v16];
    v46 = 0;
    v18 = [v14 handleForPredicate:v17 error:&v46];
    v19 = v46;

    if (v19 || !v18)
    {
      SULogInfo(@"Setup Assistant (Buddy) process not found", v20, v21, v22, v23, v24, v25, v26, v45);
      LOBYTE(v11) = 0;
    }

    else
    {
      currentState = [v18 currentState];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(currentState, "taskState")}];
      v11 = [&unk_287B6F868 containsObject:v28];

      if (v11)
      {
        v36 = [v18 pid];
        [currentState taskState];
        SULogInfo(@"Buddy is running: pid = %d, state = %d", v37, v38, v39, v40, v41, v42, v43, v36);
      }

      else
      {
        SULogInfo(@"Buddy is not running", v29, v30, v31, v32, v33, v34, v35, v45);
      }
    }
  }

  return v11;
}

- (SUManagerCore)core
{
  WeakRetained = objc_loadWeakRetained(&self->_core);

  return WeakRetained;
}

- (void)isBuddyRunning
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getBYSetupAssistantBundleIdentifier(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"SUScanner.m" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

@end