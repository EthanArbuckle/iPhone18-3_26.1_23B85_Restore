@interface SUManagerClient
+ (BOOL)_isMultiUserAppleId;
+ (BOOL)_shouldDisallowAvailabilityNotifications;
- (BOOL)cancelUpdate:(id)update;
- (BOOL)cancelUpdateForKey:(id)key withError:(id *)error;
- (BOOL)createInstallationKeybagWithOptions:(id)options;
- (BOOL)isAnyClientInUserInteraction;
- (BOOL)isAutoUpdateScheduled;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BOOL)isInstallationKeybagRequired;
- (BOOL)isInstallationKeybagRequiredForDescriptor:(id)descriptor;
- (BOOL)isSplatOnlyUpdateRollbackAllowed:(id *)allowed;
- (BOOL)isSplatOnlyUpdateRollbackSuggested;
- (BOOL)scheduleUpdate:(id)update withError:(id *)error;
- (BOOL)securityResponseRollbackSuggested:(id)suggested error:(id *)error;
- (BOOL)setGlobalSettings:(id)settings withError:(id *)error;
- (BOOL)setLastRollbackDescriptor:(id)descriptor;
- (BOOL)shouldDisableAutoDownloadIOSUpdatesToggle;
- (BOOL)shouldDisableAutoInstallIOSUpdatesToggle;
- (BOOL)shouldDisableAutoInstallRSRToggle;
- (BOOL)writeKeepAliveFile;
- (NSString)description;
- (SUManagerClientDelegate)delegate;
- (id)_getExistingAutoInstallOperationFromModel:(id)model;
- (id)_identifier;
- (id)_remoteInterface;
- (id)_remoteInterfaceWithErrorHandler:(id)handler connectIfNecessary:(BOOL)necessary;
- (id)_remoteSynchronousInterfaceWithErrorHandler:(id)handler connectIfNecessary:(BOOL)necessary;
- (id)declarationsWithError:(id *)error;
- (id)getDDMUpdateDescriptor;
- (id)getMandatorySoftwareUpdateDictionaryWithError:(id *)error;
- (id)globalSettingsDeclarationWithError:(id *)error;
- (id)observeInstallationConstraintChangesForDownload:(id)download observer:(id)observer;
- (id)rvGetCurrentNeRDInfo;
- (void)_cancelAutoInstallOperation:(id)operation withResult:(id)result;
- (void)_consentAutoInstallOperation:(id)operation withResult:(id)result;
- (void)_invalidateAllInstallationConstraintObserversForDownload;
- (void)_invalidateConnection;
- (void)_invalidateConstraintObserver:(id)observer withError:(id)error;
- (void)_registerAutoInstallOperationClientHandler:(id)handler;
- (void)_setClientType;
- (void)_unregisterAutoInstallOperationClientHandler:(id)handler;
- (void)areUpdatesDownloadableWithOptions:(id)options alternateUpdateOptions:(id)updateOptions preferredUpdateDownloadable:(BOOL *)downloadable alternateUpdateDownloadable:(BOOL *)updateDownloadable preferredUpdateError:(id *)error alternateUpdateError:(id *)updateError;
- (void)autoInstallOperationDidConsent:(id)consent;
- (void)autoInstallOperationDidExpire:(id)expire withError:(id)error;
- (void)autoInstallOperationIsReadyToInstall:(id)install withResult:(id)result;
- (void)autoInstallOperationPasscodePolicyChanged:(id)changed passcodePolicyType:(unint64_t)type;
- (void)autoInstallOperationWasCancelled:(id)cancelled;
- (void)autoScanAndDownloadIfAvailable:(id)available;
- (void)automaticDownloadDidFailToStartForNewUpdateAvailable:(id)available withError:(id)error;
- (void)cancelDownload:(id)download;
- (void)cancelDownloadWithOptions:(id)options withResult:(id)result;
- (void)connectToServerIfNecessary;
- (void)currentAutoInstallOperationForecast:(id)forecast;
- (void)currentPasscodePolicy:(id)policy;
- (void)dealloc;
- (void)delayEndDate:(id)date;
- (void)descriptor:(id)descriptor;
- (void)descriptors:(id)descriptors;
- (void)destroyInstallationKeybag;
- (void)deviceBootedAfterRollback:(id)rollback;
- (void)deviceBootedAfterSplatUpdate;
- (void)deviceHasSufficientSpaceForDownload:(id)download;
- (void)deviceHasSufficientSpaceForDownloads:(id)downloads;
- (void)download:(id)download;
- (void)downloadAndInstallState:(id)state;
- (void)downloadDidFail:(id)fail withError:(id)error;
- (void)downloadDidFinish:(id)finish;
- (void)downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)downloadDidStart:(id)start;
- (void)downloadProgressDidChange:(id)change;
- (void)downloadWasInvalidatedForNewUpdateAvailable:(id)available;
- (void)downloadWasInvalidatedForNewUpdatesAvailable:(id)available;
- (void)eligibleRollbackWithOptions:(id)options withResult:(id)result;
- (void)extraSpaceNeededForDownloadWithoutAppPurging:(id)purging;
- (void)fetchInstallHistory:(id)history;
- (void)getDDMDeclarationWithHandler:(id)handler;
- (void)getDDMStatusWithKeys:(id)keys completion:(id)completion;
- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)handleDDMDeclaration:(id)declaration withResult:(id)result;
- (void)handleUIForDDMDeclaration:(id)declaration;
- (void)handleUIForDDMGlobalSettings:(id)settings;
- (void)inUserInteraction:(id)interaction;
- (void)installDidFail:(id)fail withError:(id)error;
- (void)installDidFinish:(id)finish;
- (void)installDidStart:(id)start;
- (void)installPolicyDidChange:(id)change;
- (void)installServerConfiguration;
- (void)installUpdate:(id)update;
- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result;
- (void)installUpdateWithOptions:(id)options withResult:(id)result;
- (void)installWantsToStart:(id)start completion:(id)completion;
- (void)installationConstraintObserverDidRemoveAllObserverBlocks:(id)blocks;
- (void)invalidate;
- (void)isAutoUpdateEnabled:(id)enabled;
- (void)isAutoUpdateScheduled:(id)scheduled;
- (void)isClearingSpaceForDownload:(id)download;
- (void)isDelayingUpdates:(id)updates;
- (void)isDownloading:(id)downloading;
- (void)isRollingBack:(id)back;
- (void)isScanning:(id)scanning;
- (void)isSoftwareUpdateInProgress:(id)progress;
- (void)isUpdateReadyForInstallation:(id)installation;
- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result;
- (void)managedInstallationRequested:(id)requested;
- (void)networkMonitorDetectOverrides;
- (void)noteConnectionDropped;
- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size completion:(id)completion;
- (void)pauseDownload:(id)download;
- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value;
- (void)presentAutoUpdateBanner:(id)banner;
- (void)previousRollbackWithOptions:(id)options withResult:(id)result;
- (void)purgeDownload:(id)download;
- (void)purgeDownloadWithOptions:(id)options withResult:(id)result;
- (void)recordSUAnalyticsEvent:(id)event;
- (void)registerCSInstallPredicatesOnDate:(id)date;
- (void)resetState;
- (void)resumeDownload:(id)download;
- (void)rollbackDidFail:(id)fail withError:(id)error;
- (void)rollbackDidFinish:(id)finish;
- (void)rollbackDidStart:(id)start;
- (void)rollbackReadyForReboot:(id)reboot;
- (void)rollbackReadyToStart:(id)start options:(id)options completion:(id)completion;
- (void)rollbackSuggested:(id)suggested info:(id)info;
- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result;
- (void)rvTriggerNeRDUpdate:(id)update;
- (void)scanDidCompleteForOptions:(id)options results:(id)results error:(id)error;
- (void)scanDidCompleteWithNewUpdateAvailable:(id)available error:(id)error;
- (void)scanForUpdates:(id)updates withResult:(id)result;
- (void)scanForUpdates:(id)updates withScanResults:(id)results;
- (void)scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error;
- (void)scanRequestDidFinishForOptions:(id)options update:(id)update error:(id)error;
- (void)scanRequestDidStartForOptions:(id)options;
- (void)scheduleRollbackRebootForLater:(id)later;
- (void)setClientType:(int)type;
- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)slaVersion:(id)version;
- (void)softwareUpdatePathRestriction:(id)restriction;
- (void)softwareUpdateReserveSizes:(id)sizes;
- (void)startDownload:(id)download;
- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result;
- (void)startDownloadWithOptions:(id)options withResult:(id)result;
- (void)submitAllSUAnalyticsEvents;
- (void)submitSUAnalyticsEvent:(id)event;
- (void)submitSUAnalyticsEventsWithName:(id)name;
- (void)updateDownloadMetadata:(id)metadata withResult:(id)result;
- (void)updateDownloadOptions:(id)options withResult:(id)result;
- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler;
- (void)userAskedToDeferInstall;
- (void)userWantsToDeferInstall;
@end

@implementation SUManagerClient

- (void)invalidate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SUDaemonStartedNotification", 0);
  objc_storeWeak(&self->_delegate, 0);
  v4 = +[SUPreferences sharedInstance];
  [v4 removeObserver:self];

  [(SUManagerClient *)self _invalidateConnection];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SUDaemonStartedNotification", 0);
  objc_storeWeak(&self->_delegate, 0);
  v4 = +[SUPreferences sharedInstance];
  [v4 removeObserver:self];

  [(SUManagerClient *)self _invalidateConnection];
  v5.receiver = self;
  v5.super_class = SUManagerClient;
  [(SUManagerClient *)&v5 dealloc];
}

- (void)_setClientType
{
  v14 = SUStringFromClientType(self->_clientType);
  SULogDebug(@"%@: setType: %@", v3, v4, v5, v6, v7, v8, v9, self);

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __33__SUManagerClient__setClientType__block_invoke;
  v18[3] = &unk_279CABA10;
  v18[4] = self;
  v10 = MEMORY[0x26D668B30](v18);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SUManagerClient__setClientType__block_invoke_2;
  v17[3] = &unk_279CABA10;
  v17[4] = self;
  v11 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17 connectIfNecessary:0];
  clientType = self->_clientType;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SUManagerClient__setClientType__block_invoke_3;
  v15[3] = &unk_279CAB6C8;
  v16 = v10;
  v13 = v10;
  [v11 setClientType:clientType withResult:v15];
}

void __33__SUManagerClient__setClientType__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v11 = v12;
  if (v12)
  {
    SULogDebug(@"%@: unable to set client type on connection: %@", v4, v5, v6, v7, v8, v9, v10, *(a1 + 32));
    v11 = v12;
  }
}

void __33__SUManagerClient__setClientType__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v11 = v15;
  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient _setClientType]_block_invoke_2");
    v12 = [v15 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v15 code] == 4097)
      {
      }

      else
      {
        v13 = [v15 code];

        v11 = v15;
        if (v13 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v11 = v15;
  }

LABEL_9:
}

- (void)setClientType:(int)type
{
  if (self->_clientType != type)
  {
    self->_clientType = type;
    obj = self;
    objc_sync_enter(obj);
    if (obj->_connected)
    {
      [(SUManagerClient *)obj _setClientType];
    }

    else
    {
      [(SUManagerClient *)obj connectToServerIfNecessary];
    }

    objc_sync_exit(obj);
  }
}

- (void)isScanning:(id)scanning
{
  scanningCopy = scanning;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __30__SUManagerClient_isScanning___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = scanningCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__SUManagerClient_isScanning___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isScanning:v15];
}

uint64_t __30__SUManagerClient_isScanning___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isScanning:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __30__SUManagerClient_isScanning___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)scanForUpdates:(id)updates withScanResults:(id)results
{
  resultsCopy = results;
  updatesCopy = updates;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__SUManagerClient_scanForUpdates_withScanResults___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultsCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__SUManagerClient_scanForUpdates_withScanResults___block_invoke_2;
  v18[3] = &unk_279CAC3E8;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 scanForUpdates:updatesCopy withResult:v18];
}

uint64_t __50__SUManagerClient_scanForUpdates_withScanResults___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient scanForUpdates:withScanResults:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __50__SUManagerClient_scanForUpdates_withScanResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)scanForUpdates:(id)updates withResult:(id)result
{
  resultCopy = result;
  updatesCopy = updates;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__SUManagerClient_scanForUpdates_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__SUManagerClient_scanForUpdates_withResult___block_invoke_2;
  v18[3] = &unk_279CAC3E8;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 scanForUpdates:updatesCopy withResult:v18];
}

uint64_t __45__SUManagerClient_scanForUpdates_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient scanForUpdates:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __45__SUManagerClient_scanForUpdates_withResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v9 latestUpdate];
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)autoScanAndDownloadIfAvailable:(id)available
{
  availableCopy = available;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__SUManagerClient_autoScanAndDownloadIfAvailable___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = availableCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__SUManagerClient_autoScanAndDownloadIfAvailable___block_invoke_2;
  v15[3] = &unk_279CAC3E8;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 autoScanAndDownloadIfAvailable:v15];
}

uint64_t __50__SUManagerClient_autoScanAndDownloadIfAvailable___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient autoScanAndDownloadIfAvailable:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __50__SUManagerClient_autoScanAndDownloadIfAvailable___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

uint64_t __54__SUManagerClient_autoScanAndDownloadNow_IfAvailable___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient autoScanAndDownloadNow:IfAvailable:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __54__SUManagerClient_autoScanAndDownloadNow_IfAvailable___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)descriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __31__SUManagerClient_descriptors___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = descriptorsCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__SUManagerClient_descriptors___block_invoke_2;
  v15[3] = &unk_279CAC3E8;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 descriptors:v15];
}

uint64_t __31__SUManagerClient_descriptors___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient descriptors:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __31__SUManagerClient_descriptors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v9;
    if (v5)
    {
      v8 = 0;
    }

    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __30__SUManagerClient_descriptor___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = descriptorCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__SUManagerClient_descriptor___block_invoke_2;
  v15[3] = &unk_279CAC410;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 descriptor:v15];
}

uint64_t __30__SUManagerClient_descriptor___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient descriptor:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __30__SUManagerClient_descriptor___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v9;
    if (v5)
    {
      v8 = 0;
    }

    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)isClearingSpaceForDownload:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SUManagerClient_isClearingSpaceForDownload___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = downloadCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__SUManagerClient_isClearingSpaceForDownload___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isClearingSpaceForDownload:v15];
}

uint64_t __46__SUManagerClient_isClearingSpaceForDownload___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isClearingSpaceForDownload:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __46__SUManagerClient_isClearingSpaceForDownload___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

uint64_t __50__SUManagerClient_disableReserveSpace_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient disableReserveSpace:completion:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __50__SUManagerClient_disableReserveSpace_completion___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)overrideSoftwareUpdateReserve:(id)reserve systemGrowthMarginSize:(id)size completion:(id)completion
{
  completionCopy = completion;
  sizeCopy = size;
  reserveCopy = reserve;
  SULogInfo(@"%@ called %s", v11, v12, v13, v14, v15, v16, v17, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83__SUManagerClient_overrideSoftwareUpdateReserve_systemGrowthMarginSize_completion___block_invoke;
  v23[3] = &unk_279CAC238;
  v23[4] = self;
  v18 = completionCopy;
  v24 = v18;
  v19 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__SUManagerClient_overrideSoftwareUpdateReserve_systemGrowthMarginSize_completion___block_invoke_2;
  v21[3] = &unk_279CAAE18;
  v21[4] = self;
  v22 = v18;
  v20 = v18;
  [v19 overrideSoftwareUpdateReserve:reserveCopy systemGrowthMarginSize:sizeCopy withResult:v21];
}

uint64_t __83__SUManagerClient_overrideSoftwareUpdateReserve_systemGrowthMarginSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient overrideSoftwareUpdateReserve:systemGrowthMarginSize:completion:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __83__SUManagerClient_overrideSoftwareUpdateReserve_systemGrowthMarginSize_completion___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)softwareUpdateReserveSizes:(id)sizes
{
  sizesCopy = sizes;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SUManagerClient_softwareUpdateReserveSizes___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = sizesCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__SUManagerClient_softwareUpdateReserveSizes___block_invoke_2;
  v15[3] = &unk_279CAC438;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 softwareUpdateReserveSizes:v15];
}

uint64_t __46__SUManagerClient_softwareUpdateReserveSizes___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient softwareUpdateReserveSizes:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __46__SUManagerClient_softwareUpdateReserveSizes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)isDownloading:(id)downloading
{
  downloadingCopy = downloading;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SUManagerClient_isDownloading___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = downloadingCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SUManagerClient_isDownloading___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isDownloading:v15];
}

uint64_t __33__SUManagerClient_isDownloading___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isDownloading:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __33__SUManagerClient_isDownloading___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)startDownload:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SUManagerClient_startDownload___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = downloadCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SUManagerClient_startDownload___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 startDownload:v15];
}

uint64_t __33__SUManagerClient_startDownload___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient startDownload:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __33__SUManagerClient_startDownload___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)startDownloadWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__SUManagerClient_startDownloadWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__SUManagerClient_startDownloadWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 startDownloadWithOptions:optionsCopy withResult:v18];
}

uint64_t __55__SUManagerClient_startDownloadWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient startDownloadWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __55__SUManagerClient_startDownloadWithOptions_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)startDownloadWithMetadata:(id)metadata withResult:(id)result
{
  resultCopy = result;
  metadataCopy = metadata;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__SUManagerClient_startDownloadWithMetadata_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__SUManagerClient_startDownloadWithMetadata_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 startDownloadWithMetadata:metadataCopy withResult:v18];
}

uint64_t __56__SUManagerClient_startDownloadWithMetadata_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient startDownloadWithMetadata:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __56__SUManagerClient_startDownloadWithMetadata_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)cancelDownloadWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__SUManagerClient_cancelDownloadWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__SUManagerClient_cancelDownloadWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 cancelDownloadWithOptions:optionsCopy withResult:v18];
}

uint64_t __56__SUManagerClient_cancelDownloadWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient cancelDownloadWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __56__SUManagerClient_cancelDownloadWithOptions_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)cancelDownload:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__SUManagerClient_cancelDownload___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = downloadCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__SUManagerClient_cancelDownload___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 cancelDownloadWithOptions:0 withResult:v15];
}

uint64_t __34__SUManagerClient_cancelDownload___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient cancelDownload:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __34__SUManagerClient_cancelDownload___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)pauseDownload:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SUManagerClient_pauseDownload___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = downloadCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SUManagerClient_pauseDownload___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 pauseDownload:v15];
}

uint64_t __33__SUManagerClient_pauseDownload___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient pauseDownload:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __33__SUManagerClient_pauseDownload___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)resumeDownload:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__SUManagerClient_resumeDownload___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = downloadCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__SUManagerClient_resumeDownload___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 resumeDownload:v15];
}

uint64_t __34__SUManagerClient_resumeDownload___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient resumeDownload:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __34__SUManagerClient_resumeDownload___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)updateDownloadOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__SUManagerClient_updateDownloadOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__SUManagerClient_updateDownloadOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 updateDownloadOptions:optionsCopy withResult:v18];
}

uint64_t __52__SUManagerClient_updateDownloadOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient updateDownloadOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __52__SUManagerClient_updateDownloadOptions_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)updateDownloadMetadata:(id)metadata withResult:(id)result
{
  resultCopy = result;
  metadataCopy = metadata;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__SUManagerClient_updateDownloadMetadata_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__SUManagerClient_updateDownloadMetadata_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 updateDownloadMetadata:metadataCopy withResult:v18];
}

uint64_t __53__SUManagerClient_updateDownloadMetadata_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient updateDownloadMetadata:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __53__SUManagerClient_updateDownloadMetadata_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)purgeDownloadWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__SUManagerClient_purgeDownloadWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__SUManagerClient_purgeDownloadWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 purgeDownloadWithOptions:optionsCopy withResult:v18];
}

uint64_t __55__SUManagerClient_purgeDownloadWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient purgeDownloadWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __55__SUManagerClient_purgeDownloadWithOptions_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)purgeDownload:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SUManagerClient_purgeDownload___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = downloadCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SUManagerClient_purgeDownload___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 purgeDownloadWithOptions:0 withResult:v15];
}

uint64_t __33__SUManagerClient_purgeDownload___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient purgeDownload:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __33__SUManagerClient_purgeDownload___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)download:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__SUManagerClient_download___block_invoke;
  v13[3] = &unk_279CAC460;
  v14 = downloadCopy;
  v12 = downloadCopy;
  [(SUManagerClient *)self downloadAndInstallState:v13];
}

- (void)downloadAndInstallState:(id)state
{
  stateCopy = state;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__SUManagerClient_downloadAndInstallState___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = stateCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__SUManagerClient_downloadAndInstallState___block_invoke_2;
  v15[3] = &unk_279CAC488;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 downloadAndInstallState:v15];
}

uint64_t __43__SUManagerClient_downloadAndInstallState___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v15, v7, v8, v9, "[SUManagerClient downloadAndInstallState:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, 0, 0, v15);
  }

  return MEMORY[0x2821F97D0]();
}

void __43__SUManagerClient_downloadAndInstallState___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v12);

  v13 = *(a1 + 40);
  if (v13)
  {
    if (v11)
    {
      (*(v13 + 16))(*(a1 + 40), 0, 0, 0, v11);
    }

    else
    {
      v14 = [*(a1 + 32) _getExistingAutoInstallOperationFromModel:v10];
      (*(v13 + 16))(v13, v15, v9, v14, 0);
    }
  }
}

- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler
{
  handlerCopy = handler;
  downloadOptionsCopy = downloadOptions;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v11, v12, v13, v14, v15, v16, v17, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__SUManagerClient_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
  v23[3] = &unk_279CAC238;
  v23[4] = self;
  v18 = handlerCopy;
  v24 = v18;
  v19 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__SUManagerClient_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_2;
  v21[3] = &unk_279CAC4B0;
  v21[4] = self;
  v22 = v18;
  v20 = v18;
  [v19 updatesDownloadableWithOptions:optionsCopy alternateDownloadOptions:downloadOptionsCopy replyHandler:v21];
}

uint64_t __88__SUManagerClient_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v15, v6, v7, v8, v9, "[SUManagerClient updatesDownloadableWithOptions:alternateDownloadOptions:replyHandler:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, 0);
  }

  return MEMORY[0x2821F97C8]();
}

void __88__SUManagerClient_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a4;
  v9 = a5;
  v10 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v10);

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3, v12, v9);
  }
}

- (void)areUpdatesDownloadableWithOptions:(id)options alternateUpdateOptions:(id)updateOptions preferredUpdateDownloadable:(BOOL *)downloadable alternateUpdateDownloadable:(BOOL *)updateDownloadable preferredUpdateError:(id *)error alternateUpdateError:(id *)updateError
{
  optionsCopy = options;
  updateOptionsCopy = updateOptions;
  SULogInfo(@"%@ called %s", v16, v17, v18, v19, v20, v21, v22, self);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__13;
  v36 = __Block_byref_object_dispose__13;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__13;
  v30 = __Block_byref_object_dispose__13;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __174__SUManagerClient_areUpdatesDownloadableWithOptions_alternateUpdateOptions_preferredUpdateDownloadable_alternateUpdateDownloadable_preferredUpdateError_alternateUpdateError___block_invoke;
  v25[3] = &unk_279CABA10;
  v25[4] = self;
  v23 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v25 connectIfNecessary:1];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __174__SUManagerClient_areUpdatesDownloadableWithOptions_alternateUpdateOptions_preferredUpdateDownloadable_alternateUpdateDownloadable_preferredUpdateError_alternateUpdateError___block_invoke_2;
  v24[3] = &unk_279CAC4D8;
  v24[4] = &v42;
  v24[5] = &v38;
  v24[6] = &v32;
  v24[7] = &v26;
  [v23 updatesDownloadableWithOptions:optionsCopy alternateDownloadOptions:updateOptionsCopy replyHandler:v24];

  if (downloadable)
  {
    *downloadable = *(v43 + 24);
  }

  if (updateDownloadable)
  {
    *updateDownloadable = *(v39 + 24);
  }

  if (error)
  {
    *error = v33[5];
  }

  if (updateError)
  {
    *updateError = v27[5];
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

void __174__SUManagerClient_areUpdatesDownloadableWithOptions_alternateUpdateOptions_preferredUpdateDownloadable_alternateUpdateDownloadable_preferredUpdateError_alternateUpdateError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient areUpdatesDownloadableWithOptions:alternateUpdateOptions:preferredUpdateDownloadable:alternateUpdateDownloadable:preferredUpdateError:alternateUpdateError:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __174__SUManagerClient_areUpdatesDownloadableWithOptions_alternateUpdateOptions_preferredUpdateDownloadable_alternateUpdateDownloadable_preferredUpdateError_alternateUpdateError___block_invoke_2(void *a1, char a2, char a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v15 = v9;

  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
}

- (BOOL)writeKeepAliveFile
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SUManagerClient_writeKeepAliveFile__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__SUManagerClient_writeKeepAliveFile__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 writeKeepAliveFile:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __37__SUManagerClient_writeKeepAliveFile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient writeKeepAliveFile]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)deviceHasSufficientSpaceForDownloads:(id)downloads
{
  downloadsCopy = downloads;
  SULogInfo(@"%@ called %s", v4, v5, v6, v7, v8, v9, v10, self);
  if (downloadsCopy)
  {
    v11 = [SUUtility errorWithCode:60];
    (*(downloadsCopy + 2))(downloadsCopy, 0, 0, v11, v11);
  }
}

- (void)deviceHasSufficientSpaceForDownload:(id)download
{
  downloadCopy = download;
  SULogInfo(@"%@ called %s", v4, v5, v6, v7, v8, v9, v10, self);
  if (downloadCopy)
  {
    v11 = [SUUtility errorWithCode:60];
    downloadCopy[2](downloadCopy, 0, v11);
  }
}

- (void)extraSpaceNeededForDownloadWithoutAppPurging:(id)purging
{
  purgingCopy = purging;
  SULogInfo(@"%@ called %s", v4, v5, v6, v7, v8, v9, v10, self);
  if (purgingCopy)
  {
    v11 = [SUUtility errorWithCode:60];
    purgingCopy[2](purgingCopy, 0, v11);
  }
}

- (BOOL)scheduleUpdate:(id)update withError:(id *)error
{
  updateCopy = update;
  SULogInfo(@"%@ called %s", v7, v8, v9, v10, v11, v12, v13, self);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__SUManagerClient_scheduleUpdate_withError___block_invoke;
  v18[3] = &unk_279CABA10;
  v18[4] = self;
  v14 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v18 connectIfNecessary:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__SUManagerClient_scheduleUpdate_withError___block_invoke_2;
  v17[3] = &unk_279CAC500;
  v17[4] = &v25;
  v17[5] = &v19;
  [v14 handleDDMDeclaration:updateCopy withResult:v17];

  if (error)
  {
    *error = v20[5];
  }

  v15 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __44__SUManagerClient_scheduleUpdate_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient scheduleUpdate:withError:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)getDDMStatusWithKeys:(id)keys completion:(id)completion
{
  completionCopy = completion;
  keysCopy = keys;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__SUManagerClient_getDDMStatusWithKeys_completion___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = completionCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SUManagerClient_getDDMStatusWithKeys_completion___block_invoke_2;
  v18[3] = &unk_279CAC438;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 getDDMStatusWithKeys:keysCopy completion:v18];
}

uint64_t __51__SUManagerClient_getDDMStatusWithKeys_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient getDDMStatusWithKeys:completion:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __51__SUManagerClient_getDDMStatusWithKeys_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 queue];
  dispatch_assert_queue_V2(v7);

  (*(*(a1 + 40) + 16))();
}

- (BOOL)cancelUpdate:(id)update
{
  updateCopy = update;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__SUManagerClient_cancelUpdate___block_invoke;
  v15[3] = &unk_279CABA10;
  v15[4] = self;
  v12 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v15 connectIfNecessary:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __32__SUManagerClient_cancelUpdate___block_invoke_2;
  v14[3] = &unk_279CAB678;
  v14[4] = &v16;
  [v12 cancelDDMDeclaration:updateCopy withResult:v14];

  LOBYTE(v12) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v12;
}

void __32__SUManagerClient_cancelUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient cancelUpdate:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (BOOL)cancelUpdateForKey:(id)key withError:(id *)error
{
  keyCopy = key;
  SULogInfo(@"%@ called %s", v7, v8, v9, v10, v11, v12, v13, self);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__SUManagerClient_cancelUpdateForKey_withError___block_invoke;
  v18[3] = &unk_279CABA10;
  v18[4] = self;
  v14 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v18 connectIfNecessary:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SUManagerClient_cancelUpdateForKey_withError___block_invoke_2;
  v17[3] = &unk_279CAC500;
  v17[4] = &v25;
  v17[5] = &v19;
  [v14 cancelDDMDeclarationForKey:keyCopy completion:v17];

  if (error)
  {
    *error = v20[5];
  }

  v15 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __48__SUManagerClient_cancelUpdateForKey_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient cancelUpdateForKey:withError:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)handleDDMDeclaration:(id)declaration withResult:(id)result
{
  resultCopy = result;
  declarationCopy = declaration;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  SULogDebug(@"%@: [DDM] Sending declaration: %@", v15, v16, v17, v18, v19, v20, v21, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__SUManagerClient_handleDDMDeclaration_withResult___block_invoke;
  v27[3] = &unk_279CAC238;
  v27[4] = self;
  v22 = resultCopy;
  v28 = v22;
  v23 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __51__SUManagerClient_handleDDMDeclaration_withResult___block_invoke_2;
  v25[3] = &unk_279CAAE18;
  v25[4] = self;
  v26 = v22;
  v24 = v22;
  [v23 handleDDMDeclaration:declarationCopy withResult:v25];
}

uint64_t __51__SUManagerClient_handleDDMDeclaration_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient handleDDMDeclaration:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __51__SUManagerClient_handleDDMDeclaration_withResult___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  (*(*(a1 + 40) + 16))();
}

- (void)getDDMDeclarationWithHandler:(id)handler
{
  handlerCopy = handler;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SUManagerClient_getDDMDeclarationWithHandler___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = handlerCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SUManagerClient_getDDMDeclarationWithHandler___block_invoke_2;
  v15[3] = &unk_279CAC528;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 getDDMDeclarationWithHandler:v15];
}

uint64_t __48__SUManagerClient_getDDMDeclarationWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient getDDMDeclarationWithHandler:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __48__SUManagerClient_getDDMDeclarationWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v15 = a2;
  v7 = [v5 queue];
  dispatch_assert_queue_V2(v7);

  SULogDebug(@"%@: [DDM] Got reply with declaration: %@ error: %@", v8, v9, v10, v11, v12, v13, v14, *(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

- (id)getDDMUpdateDescriptor
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__SUManagerClient_getDDMUpdateDescriptor__block_invoke;
  v13[3] = &unk_279CABA10;
  v13[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v13 connectIfNecessary:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__SUManagerClient_getDDMUpdateDescriptor__block_invoke_2;
  v12[3] = &unk_279CAC550;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getDDMUpdateDescriptorWithHandler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __41__SUManagerClient_getDDMUpdateDescriptor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient getDDMUpdateDescriptor]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __41__SUManagerClient_getDDMUpdateDescriptor__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  SULogDebug(@"%@: [DDM] Got reply with descriptor: %@ error: %@", v3, v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v12;
}

- (id)declarationsWithError:(id *)error
{
  SULogInfo(@"%@ called %s", a2, error, v3, v4, v5, v6, v7, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__SUManagerClient_declarationsWithError___block_invoke;
  v14[3] = &unk_279CABA10;
  v14[4] = self;
  v10 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v14 connectIfNecessary:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__SUManagerClient_declarationsWithError___block_invoke_2;
  v13[3] = &unk_279CAC578;
  v13[4] = &v21;
  v13[5] = &v15;
  [v10 getAllDeclarationsWithHandler:v13];

  if (error)
  {
    *error = v16[5];
  }

  v11 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __41__SUManagerClient_declarationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient declarationsWithError:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __41__SUManagerClient_declarationsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setGlobalSettings:(id)settings withError:(id *)error
{
  settingsCopy = settings;
  SULogInfo(@"%@ called %s", v7, v8, v9, v10, v11, v12, v13, self);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__SUManagerClient_setGlobalSettings_withError___block_invoke;
  v18[3] = &unk_279CABA10;
  v18[4] = self;
  v14 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v18 connectIfNecessary:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__SUManagerClient_setGlobalSettings_withError___block_invoke_2;
  v17[3] = &unk_279CAC500;
  v17[4] = &v25;
  v17[5] = &v19;
  [v14 setDDMGlobalSettings:settingsCopy completion:v17];

  if (error)
  {
    *error = v20[5];
  }

  v15 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __47__SUManagerClient_setGlobalSettings_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient setGlobalSettings:withError:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (id)globalSettingsDeclarationWithError:(id *)error
{
  SULogInfo(@"%@ called %s", a2, error, v3, v4, v5, v6, v7, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__SUManagerClient_globalSettingsDeclarationWithError___block_invoke;
  v14[3] = &unk_279CABA10;
  v14[4] = self;
  v10 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v14 connectIfNecessary:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SUManagerClient_globalSettingsDeclarationWithError___block_invoke_2;
  v13[3] = &unk_279CAC5A0;
  v13[4] = &v21;
  v13[5] = &v15;
  [v10 getDDMGlobalSettingsWithHandler:v13];

  if (error)
  {
    *error = v16[5];
  }

  v11 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __54__SUManagerClient_globalSettingsDeclarationWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient globalSettingsDeclarationWithError:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __54__SUManagerClient_globalSettingsDeclarationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)shouldDisableAutoDownloadIOSUpdatesToggle
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SUManagerClient_shouldDisableAutoDownloadIOSUpdatesToggle__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SUManagerClient_shouldDisableAutoDownloadIOSUpdatesToggle__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 getShouldDisableAutoDownloadIOSUpdatesToggleWithHandler:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __60__SUManagerClient_shouldDisableAutoDownloadIOSUpdatesToggle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient shouldDisableAutoDownloadIOSUpdatesToggle]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __60__SUManagerClient_shouldDisableAutoDownloadIOSUpdatesToggle__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    SULogError(@"%s: failed with error %@", a2, a3, a4, a5, a6, a7, a8, "[SUManagerClient shouldDisableAutoDownloadIOSUpdatesToggle]_block_invoke_2");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

- (BOOL)shouldDisableAutoInstallIOSUpdatesToggle
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SUManagerClient_shouldDisableAutoInstallIOSUpdatesToggle__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SUManagerClient_shouldDisableAutoInstallIOSUpdatesToggle__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 getShouldDisableAutoInstallIOSUpdatesToggleWithHandler:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __59__SUManagerClient_shouldDisableAutoInstallIOSUpdatesToggle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient shouldDisableAutoInstallIOSUpdatesToggle]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __59__SUManagerClient_shouldDisableAutoInstallIOSUpdatesToggle__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    SULogError(@"%s: failed with error %@", a2, a3, a4, a5, a6, a7, a8, "[SUManagerClient shouldDisableAutoInstallIOSUpdatesToggle]_block_invoke_2");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

- (BOOL)shouldDisableAutoInstallRSRToggle
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SUManagerClient_shouldDisableAutoInstallRSRToggle__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SUManagerClient_shouldDisableAutoInstallRSRToggle__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 getShouldDisableAutoInstallRSRToggleWithHandler:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __52__SUManagerClient_shouldDisableAutoInstallRSRToggle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient shouldDisableAutoInstallRSRToggle]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __52__SUManagerClient_shouldDisableAutoInstallRSRToggle__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    SULogError(@"%s: failed with error %@", a2, a3, a4, a5, a6, a7, a8, "[SUManagerClient shouldDisableAutoInstallRSRToggle]_block_invoke_2");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

- (void)currentAutoInstallOperationForecast:(id)forecast
{
  forecastCopy = forecast;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__SUManagerClient_currentAutoInstallOperationForecast___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = forecastCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SUManagerClient_currentAutoInstallOperationForecast___block_invoke_2;
  v15[3] = &unk_279CAC5C8;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 currentAutoInstallOperationForecast:v15];
}

uint64_t __55__SUManagerClient_currentAutoInstallOperationForecast___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient currentAutoInstallOperationForecast:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __55__SUManagerClient_currentAutoInstallOperationForecast___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

uint64_t __58__SUManagerClient_currentAutoInstallOperation_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient currentAutoInstallOperation:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __58__SUManagerClient_currentAutoInstallOperation_withResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    if (v9 && !v5)
    {
      v8 = [*(a1 + 32) _getExistingAutoInstallOperationFromModel:v9];
      v7 = *(a1 + 40);
    }

    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)currentPasscodePolicy:(id)policy
{
  policyCopy = policy;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__SUManagerClient_currentPasscodePolicy___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = policyCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__SUManagerClient_currentPasscodePolicy___block_invoke_2;
  v15[3] = &unk_279CAC618;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 currentPasscodePolicy:v15];
}

uint64_t __41__SUManagerClient_currentPasscodePolicy___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient currentPasscodePolicy:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __41__SUManagerClient_currentPasscodePolicy___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (void)isAutoUpdateEnabled:(id)enabled
{
  enabledCopy = enabled;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__SUManagerClient_isAutoUpdateEnabled___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = enabledCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__SUManagerClient_isAutoUpdateEnabled___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isAutoUpdateEnabled:v15];
}

uint64_t __39__SUManagerClient_isAutoUpdateEnabled___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isAutoUpdateEnabled:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __39__SUManagerClient_isAutoUpdateEnabled___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (void)isAutoUpdateScheduled:(id)scheduled
{
  scheduledCopy = scheduled;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__SUManagerClient_isAutoUpdateScheduled___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = scheduledCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__SUManagerClient_isAutoUpdateScheduled___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isAutoUpdateScheduled:v15];
}

uint64_t __41__SUManagerClient_isAutoUpdateScheduled___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isAutoUpdateScheduled:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __41__SUManagerClient_isAutoUpdateScheduled___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (BOOL)isAutoUpdateScheduled
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__SUManagerClient_isAutoUpdateScheduled__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SUManagerClient_isAutoUpdateScheduled__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 isAutoUpdateScheduled:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __40__SUManagerClient_isAutoUpdateScheduled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isAutoUpdateScheduled]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)presentAutoUpdateBanner:(id)banner
{
  bannerCopy = banner;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__SUManagerClient_presentAutoUpdateBanner___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = bannerCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__SUManagerClient_presentAutoUpdateBanner___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 presentAutoUpdateBanner:v15];
}

uint64_t __43__SUManagerClient_presentAutoUpdateBanner___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient presentAutoUpdateBanner:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __43__SUManagerClient_presentAutoUpdateBanner___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (id)_getExistingAutoInstallOperationFromModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (modelCopy)
  {
    installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
    v7 = [modelCopy id];
    uUIDString = [v7 UUIDString];
    v9 = [(NSMutableDictionary *)installOperationIDsToOperationHandler objectForKey:uUIDString];

    if (!v9)
    {
      v9 = [[SUAutoInstallOperation alloc] initWithAutoInstallOperationModel:v5 client:self];
      [(SUManagerClient *)self _registerAutoInstallOperationClientHandler:v9];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)observeInstallationConstraintChangesForDownload:(id)download observer:(id)observer
{
  v57 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  observerCopy = observer;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v49 = downloadCopy;
  progress = [downloadCopy progress];
  isDone = [progress isDone];

  if (isDone)
  {
    v48 = observerCopy;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v17 = self->_installationConstraintObservers;
    v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v18)
    {
      v19 = v18;
      selfCopy = self;
      v20 = 0;
      v21 = *v53;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v52 + 1) + 8 * i);
          download = [v23 download];
          descriptor = [download descriptor];
          descriptor2 = [v49 descriptor];
          v27 = [descriptor isEqual:descriptor2];

          if (v27)
          {
            v28 = v23;

            v20 = v28;
          }
        }

        v19 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v19);

      self = selfCopy;
      observerCopy = v48;
      if (v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v20 = [[SUInstallationConstraintObserver alloc] initWithDownload:v49];
    [(SUComposedInstallationConstraintMonitor *)v20 setDelegate:self];
    if (v20)
    {
      [(NSMutableSet *)self->_installationConstraintObservers addObject:v20];
      installationConstraintObservers = self->_installationConstraintObservers;
      SULogDebug(@"Created installation constraint observer: %@: observers: %@", v36, v37, v38, v39, v40, v41, v42, v20);
LABEL_16:
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __76__SUManagerClient_observeInstallationConstraintChangesForDownload_observer___block_invoke;
      v50[3] = &unk_279CAC668;
      v50[4] = self;
      v51 = observerCopy;
      v43 = [(SUInstallationConstraintObserver *)v20 registerObserverBlock:v50];

      goto LABEL_19;
    }

    SULogDebug(@"Created installation constraint observer: %@: observers: %@", v29, v30, v31, v32, v33, v34, v35, 0);
  }

  v43 = 0;
LABEL_19:

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

void __76__SUManagerClient_observeInstallationConstraintChangesForDownload_observer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 72);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SUManagerClient_observeInstallationConstraintChangesForDownload_observer___block_invoke_2;
  v11[3] = &unk_279CAC640;
  v9 = *(a1 + 40);
  v14 = a2;
  v15 = a3;
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

- (void)registerCSInstallPredicatesOnDate:(id)date
{
  dateCopy = date;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  _remoteInterface = [(SUManagerClient *)self _remoteInterface];
  [_remoteInterface registerCSInstallPredicatesOnDate:dateCopy];
}

- (void)isUpdateReadyForInstallation:(id)installation
{
  installationCopy = installation;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SUManagerClient_isUpdateReadyForInstallation___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = installationCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SUManagerClient_isUpdateReadyForInstallation___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isUpdateReadyForInstallation:v15];
}

uint64_t __48__SUManagerClient_isUpdateReadyForInstallation___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isUpdateReadyForInstallation:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __48__SUManagerClient_isUpdateReadyForInstallation___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__SUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__SUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 isUpdateReadyForInstallationWithOptions:optionsCopy withResult:v18];
}

uint64_t __70__SUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isUpdateReadyForInstallationWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __70__SUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__SUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__SUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 installUpdateWithInstallOptions:optionsCopy withResult:v18];
}

uint64_t __62__SUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient installUpdateWithInstallOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __62__SUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)installUpdateWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__SUManagerClient_installUpdateWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__SUManagerClient_installUpdateWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAAE18;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 installUpdateWithOptions:optionsCopy withResult:v18];
}

uint64_t __55__SUManagerClient_installUpdateWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient installUpdateWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __55__SUManagerClient_installUpdateWithOptions_withResult___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)installUpdate:(id)update
{
  updateCopy = update;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SUManagerClient_installUpdate___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = updateCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SUManagerClient_installUpdate___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 installUpdate:v15];
}

uint64_t __33__SUManagerClient_installUpdate___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient installUpdate:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __33__SUManagerClient_installUpdate___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)fetchInstallHistory:(id)history
{
  historyCopy = history;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__SUManagerClient_fetchInstallHistory___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = historyCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__SUManagerClient_fetchInstallHistory___block_invoke_2;
  v15[3] = &unk_279CAC690;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 fetchInstallHistory:v15];
}

uint64_t __39__SUManagerClient_fetchInstallHistory___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient fetchInstallHistory:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __39__SUManagerClient_fetchInstallHistory___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)userAskedToDeferInstall
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SUManagerClient_userAskedToDeferInstall__block_invoke;
  v10[3] = &unk_279CABA10;
  v10[4] = self;
  v9 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v10 connectIfNecessary:1];
  [v9 userAskedToDeferInstall];
}

void __42__SUManagerClient_userAskedToDeferInstall__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient userAskedToDeferInstall]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)eligibleRollbackWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__SUManagerClient_eligibleRollbackWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__SUManagerClient_eligibleRollbackWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAC6B8;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 eligibleRollbackWithOptions:optionsCopy withResult:v18];
}

uint64_t __58__SUManagerClient_eligibleRollbackWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient eligibleRollbackWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __58__SUManagerClient_eligibleRollbackWithOptions_withResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__SUManagerClient_rollbackUpdateWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__SUManagerClient_rollbackUpdateWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAC6E0;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 rollbackUpdateWithOptions:optionsCopy withResult:v18];
}

uint64_t __56__SUManagerClient_rollbackUpdateWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v15, v6, v7, v8, v9, "[SUManagerClient rollbackUpdateWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, 0, v15);
  }

  return MEMORY[0x2821F97C8]();
}

void __56__SUManagerClient_rollbackUpdateWithOptions_withResult___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v8);

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v10, v7);
  }
}

- (void)previousRollbackWithOptions:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__SUManagerClient_previousRollbackWithOptions_withResult___block_invoke;
  v20[3] = &unk_279CAC238;
  v20[4] = self;
  v15 = resultCopy;
  v21 = v15;
  v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__SUManagerClient_previousRollbackWithOptions_withResult___block_invoke_2;
  v18[3] = &unk_279CAC6B8;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 previousRollback:optionsCopy withResult:v18];
}

uint64_t __58__SUManagerClient_previousRollbackWithOptions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient previousRollbackWithOptions:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __58__SUManagerClient_previousRollbackWithOptions_withResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)isRollingBack:(id)back
{
  backCopy = back;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SUManagerClient_isRollingBack___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = backCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SUManagerClient_isRollingBack___block_invoke_2;
  v15[3] = &unk_279CAC6E0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isRollingBack:v15];
}

uint64_t __33__SUManagerClient_isRollingBack___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v15, v6, v7, v8, v9, "[SUManagerClient isRollingBack:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, 0, v15);
  }

  return MEMORY[0x2821F97C8]();
}

void __33__SUManagerClient_isRollingBack___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v8);

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v10, v7);
  }
}

- (void)scheduleRollbackRebootForLater:(id)later
{
  laterCopy = later;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__SUManagerClient_scheduleRollbackRebootForLater___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = laterCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__SUManagerClient_scheduleRollbackRebootForLater___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 scheduleRollbackRebootForLater:v15];
}

uint64_t __50__SUManagerClient_scheduleRollbackRebootForLater___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient scheduleRollbackRebootForLater:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __50__SUManagerClient_scheduleRollbackRebootForLater___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (BOOL)setLastRollbackDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__SUManagerClient_setLastRollbackDescriptor___block_invoke;
  v16[3] = &unk_279CABA10;
  v16[4] = self;
  v12 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v16 connectIfNecessary:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__SUManagerClient_setLastRollbackDescriptor___block_invoke_2;
  v15[3] = &unk_279CAC708;
  v15[4] = self;
  v15[5] = &v17;
  v15[6] = &v21;
  [v12 setLastRollbackDescriptor:descriptorCopy withResult:v15];

  if (v18[3])
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v22 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __45__SUManagerClient_setLastRollbackDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient setLastRollbackDescriptor:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __45__SUManagerClient_setLastRollbackDescriptor___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    SULogDebug(@"%@: unable to set rollback descriptor in state file: %@", a2, a3, a4, a5, a6, a7, a8, *(a1 + 32));
    LOBYTE(a2) = 1;
    v9 = 40;
  }

  else
  {
    v9 = 48;
  }

  *(*(*(a1 + v9) + 8) + 24) = a2;
}

- (BOOL)securityResponseRollbackSuggested:(id)suggested error:(id *)error
{
  suggestedCopy = suggested;
  SULogInfo(@"%@ called %s", v7, v8, v9, v10, v11, v12, v13, self);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__SUManagerClient_securityResponseRollbackSuggested_error___block_invoke;
  v18[3] = &unk_279CABA10;
  v18[4] = self;
  v14 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v18 connectIfNecessary:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__SUManagerClient_securityResponseRollbackSuggested_error___block_invoke_2;
  v17[3] = &unk_279CAC500;
  v17[4] = &v25;
  v17[5] = &v19;
  [v14 securityResponseRollbackSuggested:suggestedCopy withResult:v17];

  if (error)
  {
    *error = v20[5];
  }

  v15 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __59__SUManagerClient_securityResponseRollbackSuggested_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient securityResponseRollbackSuggested:error:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (BOOL)createInstallationKeybagWithOptions:(id)options
{
  optionsCopy = options;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__SUManagerClient_createInstallationKeybagWithOptions___block_invoke;
  v16[3] = &unk_279CABA10;
  v16[4] = self;
  v12 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v16 connectIfNecessary:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SUManagerClient_createInstallationKeybagWithOptions___block_invoke_2;
  v15[3] = &unk_279CAC708;
  v15[4] = self;
  v15[5] = &v17;
  v15[6] = &v21;
  [v12 createInstallationKeybag:optionsCopy withResult:v15];

  if (v18[3])
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v22 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __55__SUManagerClient_createInstallationKeybagWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient createInstallationKeybagWithOptions:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __55__SUManagerClient_createInstallationKeybagWithOptions___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    SULogDebug(@"%@: unable to create installation keybag: %@", a2, a3, a4, a5, a6, a7, a8, *(a1 + 32));
    LOBYTE(a2) = 1;
    v9 = 40;
  }

  else
  {
    v9 = 48;
  }

  *(*(*(a1 + v9) + 8) + 24) = a2;
}

- (BOOL)isInstallationKeybagRequired
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__SUManagerClient_isInstallationKeybagRequired__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SUManagerClient_isInstallationKeybagRequired__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 isInstallationKeybagRequired:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __47__SUManagerClient_isInstallationKeybagRequired__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isInstallationKeybagRequired]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (BOOL)isInstallationKeybagRequiredForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SUManagerClient_isInstallationKeybagRequiredForDescriptor___block_invoke;
  v15[3] = &unk_279CABA10;
  v15[4] = self;
  v12 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v15 connectIfNecessary:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SUManagerClient_isInstallationKeybagRequiredForDescriptor___block_invoke_2;
  v14[3] = &unk_279CAB678;
  v14[4] = &v16;
  [v12 isInstallationKeybagRequiredForDescriptor:descriptorCopy result:v14];

  LOBYTE(v12) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v12;
}

void __61__SUManagerClient_isInstallationKeybagRequiredForDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isInstallationKeybagRequiredForDescriptor:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)destroyInstallationKeybag
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SUManagerClient_destroyInstallationKeybag__block_invoke;
  v10[3] = &unk_279CABA10;
  v10[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v10 connectIfNecessary:1];
  [v9 destroyInstallationKeybag];
}

void __44__SUManagerClient_destroyInstallationKeybag__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient destroyInstallationKeybag]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)slaVersion:(id)version
{
  versionCopy = version;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __30__SUManagerClient_slaVersion___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = versionCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__SUManagerClient_slaVersion___block_invoke_2;
  v15[3] = &unk_279CAC730;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 slaVersion:v15];
}

uint64_t __30__SUManagerClient_slaVersion___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient slaVersion:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __30__SUManagerClient_slaVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUManagerClient_setMandatorySoftwareUpdateDictionary___block_invoke;
  v13[3] = &unk_279CABA10;
  v13[4] = self;
  v12 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v13];
  [v12 setMandatorySoftwareUpdateDictionary:dictionaryCopy];
}

void __56__SUManagerClient_setMandatorySoftwareUpdateDictionary___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v11 = v15;
  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient setMandatorySoftwareUpdateDictionary:]_block_invoke");
    v12 = [v15 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v15 code] == 4097)
      {
      }

      else
      {
        v13 = [v15 code];

        v11 = v15;
        if (v13 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v11 = v15;
  }

LABEL_9:
}

- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__SUManagerClient_getMandatorySoftwareUpdateDictionary___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = dictionaryCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__SUManagerClient_getMandatorySoftwareUpdateDictionary___block_invoke_2;
  v15[3] = &unk_279CAC758;
  v16 = v12;
  v14 = v12;
  [v13 getMandatorySoftwareUpdateDictionary:v15];
}

uint64_t __56__SUManagerClient_getMandatorySoftwareUpdateDictionary___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient getMandatorySoftwareUpdateDictionary:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

uint64_t __56__SUManagerClient_getMandatorySoftwareUpdateDictionary___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)getMandatorySoftwareUpdateDictionaryWithError:(id *)error
{
  SULogInfo(@"%@ called %s", a2, error, v3, v4, v5, v6, v7, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SUManagerClient_getMandatorySoftwareUpdateDictionaryWithError___block_invoke;
  v14[3] = &unk_279CABA10;
  v14[4] = self;
  v10 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v14 connectIfNecessary:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SUManagerClient_getMandatorySoftwareUpdateDictionaryWithError___block_invoke_2;
  v13[3] = &unk_279CAC780;
  v13[4] = &v21;
  v13[5] = &v15;
  [v10 getMandatorySoftwareUpdateDictionary:v13];

  if (error)
  {
    *error = v16[5];
  }

  v11 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __65__SUManagerClient_getMandatorySoftwareUpdateDictionaryWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient getMandatorySoftwareUpdateDictionaryWithError:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __65__SUManagerClient_getMandatorySoftwareUpdateDictionaryWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __43__SUManagerClient_enableAutomaticUpdateV2___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v11 = v15;
  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient enableAutomaticUpdateV2:]_block_invoke");
    v12 = [v15 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v15 code] == 4097)
      {
      }

      else
      {
        v13 = [v15 code];

        v11 = v15;
        if (v13 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v11 = v15;
  }

LABEL_9:
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__SUManagerClient_isAutomaticUpdateV2Enabled__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SUManagerClient_isAutomaticUpdateV2Enabled__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 isAutomaticUpdateV2Enabled:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __45__SUManagerClient_isAutomaticUpdateV2Enabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isAutomaticUpdateV2Enabled]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __43__SUManagerClient_enableAutomaticDownload___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v11 = v15;
  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient enableAutomaticDownload:]_block_invoke");
    v12 = [v15 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v15 code] == 4097)
      {
      }

      else
      {
        v13 = [v15 code];

        v11 = v15;
        if (v13 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v11 = v15;
  }

LABEL_9:
}

- (BOOL)isAutomaticDownloadEnabled
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__SUManagerClient_isAutomaticDownloadEnabled__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SUManagerClient_isAutomaticDownloadEnabled__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 isAutomaticDownloadEnabled:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __45__SUManagerClient_isAutomaticDownloadEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isAutomaticDownloadEnabled]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (BOOL)isAnyClientInUserInteraction
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__SUManagerClient_isAnyClientInUserInteraction__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SUManagerClient_isAnyClientInUserInteraction__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 isAnyClientInUserInteraction:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __47__SUManagerClient_isAnyClientInUserInteraction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isAnyClientInUserInteraction]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (void)isSoftwareUpdateInProgress:(id)progress
{
  progressCopy = progress;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  if (progressCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__SUManagerClient_isSoftwareUpdateInProgress___block_invoke;
    v16[3] = &unk_279CAC238;
    v16[4] = self;
    v12 = progressCopy;
    v17 = v12;
    v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__SUManagerClient_isSoftwareUpdateInProgress___block_invoke_2;
    v14[3] = &unk_279CAAE18;
    v14[4] = self;
    v15 = v12;
    [v13 isSoftwareUpdateInProgress:v14];
  }
}

uint64_t __46__SUManagerClient_isSoftwareUpdateInProgress___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isSoftwareUpdateInProgress:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __46__SUManagerClient_isSoftwareUpdateInProgress___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 32);
  v15 = a3;
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v14 = @"NO";
  if (a2)
  {
    v14 = @"YES";
  }

  SULogInfo(@"isSoftwareUpdateInProgress: %@, error: %@", v7, v8, v9, v10, v11, v12, v13, v14);
  (*(*(a1 + 40) + 16))();
}

- (void)softwareUpdatePathRestriction:(id)restriction
{
  restrictionCopy = restriction;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__SUManagerClient_softwareUpdatePathRestriction___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = restrictionCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__SUManagerClient_softwareUpdatePathRestriction___block_invoke_2;
  v15[3] = &unk_279CAC618;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 softwareUpdatePathRestriction:v15];
}

uint64_t __49__SUManagerClient_softwareUpdatePathRestriction___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient softwareUpdatePathRestriction:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __49__SUManagerClient_softwareUpdatePathRestriction___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (void)isDelayingUpdates:(id)updates
{
  updatesCopy = updates;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__SUManagerClient_isDelayingUpdates___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = updatesCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37__SUManagerClient_isDelayingUpdates___block_invoke_2;
  v15[3] = &unk_279CAAE18;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 isDelayingUpdates:v15];
}

uint64_t __37__SUManagerClient_isDelayingUpdates___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient isDelayingUpdates:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __37__SUManagerClient_isDelayingUpdates___block_invoke_2(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)delayEndDate:(id)date
{
  dateCopy = date;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__SUManagerClient_delayEndDate___block_invoke;
  v17[3] = &unk_279CAC238;
  v17[4] = self;
  v12 = dateCopy;
  v18 = v12;
  v13 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__SUManagerClient_delayEndDate___block_invoke_2;
  v15[3] = &unk_279CAC7A8;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 delayEndDate:v15];
}

uint64_t __32__SUManagerClient_delayEndDate___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient delayEndDate:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __32__SUManagerClient_delayEndDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v9;
    if (v5)
    {
      v8 = 0;
    }

    (*(v7 + 16))(v7, v8, v5);
  }
}

- (BOOL)isSplatOnlyUpdateRollbackAllowed:(id *)allowed
{
  SULogInfo(@"%@ called %s", a2, allowed, v3, v4, v5, v6, v7, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__SUManagerClient_isSplatOnlyUpdateRollbackAllowed___block_invoke;
  v14[3] = &unk_279CABA10;
  v14[4] = self;
  v10 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v14 connectIfNecessary:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SUManagerClient_isSplatOnlyUpdateRollbackAllowed___block_invoke_2;
  v13[3] = &unk_279CAC500;
  v13[4] = &v21;
  v13[5] = &v15;
  [v10 splatRollbackAllowed:v13];

  if (allowed)
  {
    *allowed = v16[5];
  }

  v11 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __52__SUManagerClient_isSplatOnlyUpdateRollbackAllowed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isSplatOnlyUpdateRollbackAllowed:]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (BOOL)isSplatOnlyUpdateRollbackSuggested
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SUManagerClient_isSplatOnlyUpdateRollbackSuggested__block_invoke;
  v12[3] = &unk_279CABA10;
  v12[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v12 connectIfNecessary:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SUManagerClient_isSplatOnlyUpdateRollbackSuggested__block_invoke_2;
  v11[3] = &unk_279CAB678;
  v11[4] = &v13;
  [v9 isSplatOnlyUpdateRollbackSuggested:v11];

  LOBYTE(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __53__SUManagerClient_isSplatOnlyUpdateRollbackSuggested__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient isSplatOnlyUpdateRollbackSuggested]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

+ (BOOL)_isMultiUserAppleId
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  if ([mEMORY[0x277D77BF8] isMultiUser])
  {
    currentUser = [mEMORY[0x277D77BF8] currentUser];
    v4 = [currentUser userType] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)_shouldDisallowAvailabilityNotifications
{
  v3 = +[SUPreferences sharedInstance];
  [v3 reload];
  disableAvailabilityAlerts = [v3 disableAvailabilityAlerts];
  LOBYTE(self) = [self _isMultiUserAppleId] | disableAvailabilityAlerts;

  return self & 1;
}

- (void)_registerAutoInstallOperationClientHandler:(id)handler
{
  handlerCopy = handler;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
  uniqueIdentifier = [handlerCopy uniqueIdentifier];
  [(NSMutableDictionary *)installOperationIDsToOperationHandler setValue:handlerCopy forKey:uniqueIdentifier];
}

- (void)_unregisterAutoInstallOperationClientHandler:(id)handler
{
  handlerCopy = handler;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
  uniqueIdentifier = [handlerCopy uniqueIdentifier];
  [(NSMutableDictionary *)installOperationIDsToOperationHandler setValue:handlerCopy forKey:uniqueIdentifier];
}

- (void)_consentAutoInstallOperation:(id)operation withResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  if (operationCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__SUManagerClient__consentAutoInstallOperation_withResult___block_invoke;
    v20[3] = &unk_279CAC238;
    v20[4] = self;
    v15 = resultCopy;
    v21 = v15;
    v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
    v17 = [operationCopy id];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__SUManagerClient__consentAutoInstallOperation_withResult___block_invoke_2;
    v18[3] = &unk_279CAAE18;
    v18[4] = self;
    v19 = v15;
    [v16 consentToAutoInstallOperation:v17 withResult:v18];
  }
}

uint64_t __59__SUManagerClient__consentAutoInstallOperation_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient _consentAutoInstallOperation:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __59__SUManagerClient__consentAutoInstallOperation_withResult___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (void)_cancelAutoInstallOperation:(id)operation withResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  SULogInfo(@"%@ called %s", v8, v9, v10, v11, v12, v13, v14, self);
  if (operationCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__SUManagerClient__cancelAutoInstallOperation_withResult___block_invoke;
    v20[3] = &unk_279CAC238;
    v20[4] = self;
    v15 = resultCopy;
    v21 = v15;
    v16 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v20];
    v17 = [operationCopy id];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__SUManagerClient__cancelAutoInstallOperation_withResult___block_invoke_2;
    v18[3] = &unk_279CAAE18;
    v18[4] = self;
    v19 = v15;
    [v16 cancelAutoInstallOperation:v17 withResult:v18];
  }
}

uint64_t __58__SUManagerClient__cancelAutoInstallOperation_withResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v15, v5, v6, v7, v8, v9, "[SUManagerClient _cancelAutoInstallOperation:withResult:]_block_invoke");
    v10 = [v15 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]])
    {

      goto LABEL_8;
    }

    if ([v15 code] == 4097)
    {
    }

    else
    {
      v11 = [v15 code];

      if (v11 != 4099)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) _invalidateConnection];
  }

LABEL_8:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v15);
  }

  return MEMORY[0x2821F9730]();
}

void __58__SUManagerClient__cancelAutoInstallOperation_withResult___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (void)installServerConfiguration
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SUManagerClient_installServerConfiguration__block_invoke;
  v10[3] = &unk_279CABA10;
  v10[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v10 connectIfNecessary:1];
  [v9 installServerConfiguration];
}

void __45__SUManagerClient_installServerConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient installServerConfiguration]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __39__SUManagerClient_setExclusiveControl___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v11 = v15;
  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient setExclusiveControl:]_block_invoke");
    v12 = [v15 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v15 code] == 4097)
      {
      }

      else
      {
        v13 = [v15 code];

        v11 = v15;
        if (v13 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v11 = v15;
  }

LABEL_9:
}

- (void)recordSUAnalyticsEvent:(id)event
{
  eventCopy = event;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  _remoteInterface = [(SUManagerClient *)self _remoteInterface];
  [_remoteInterface recordSUAnalyticsEvent:eventCopy];
}

- (void)submitSUAnalyticsEvent:(id)event
{
  eventCopy = event;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  _remoteInterface = [(SUManagerClient *)self _remoteInterface];
  [_remoteInterface submitSUAnalyticsEvent:eventCopy];
}

- (void)submitAllSUAnalyticsEvents
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  _remoteInterface = [(SUManagerClient *)self _remoteInterface];
  [_remoteInterface submitAllSUAnalyticsEvents];
}

- (void)submitSUAnalyticsEventsWithName:(id)name
{
  nameCopy = name;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  _remoteInterface = [(SUManagerClient *)self _remoteInterface];
  [_remoteInterface submitSUAnalyticsEventsWithName:nameCopy];
}

- (void)networkMonitorDetectOverrides
{
  _remoteInterface = [(SUManagerClient *)self _remoteInterface];
  [_remoteInterface networkMonitorDetectOverrides];
}

- (void)installationConstraintObserverDidRemoveAllObserverBlocks:(id)blocks
{
  blocksCopy = blocks;
  if (!blocksCopy)
  {
    [(SUManagerClient *)a2 installationConstraintObserverDidRemoveAllObserverBlocks:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SUManagerClient_installationConstraintObserverDidRemoveAllObserverBlocks___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = blocksCopy;
  v7 = blocksCopy;
  dispatch_async(queue, v8);
}

void __76__SUManagerClient_installationConstraintObserverDidRemoveAllObserverBlocks___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateConstraintObserver:*(a1 + 40) withError:0];
  v9 = *(*(a1 + 32) + 64);
  SULogInfo(@"installationConstraintObserverDidRemoveAllObserverBlocks: %@: observers: %@", v2, v3, v4, v5, v6, v7, v8, *(a1 + 40));
}

- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUManagerClient_preferences_didChangePreference_toValue___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__SUManagerClient_preferences_didChangePreference_toValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v13 automaticUpdateV2EnabledDidChange:*(a1 + 32)];
    }
  }

  v14 = *(a1 + 32);
  SULogInfo(@"%s: Client delegate %@ receive status - %d", v3, v4, v5, v6, v7, v8, v9, "[SUManagerClient preferences:didChangePreference:toValue:]_block_invoke");
}

- (void)_invalidateAllInstallationConstraintObserversForDownload
{
  v22 = *MEMORY[0x277D85DE8];
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [(NSMutableSet *)self->_installationConstraintObservers allObjects];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x277CCA470];
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = MEMORY[0x277CCA9B8];
        v19 = v7;
        v20 = @"Download changed";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v12 = [v10 errorWithDomain:@"com.apple.softwareupdateservices.errors" code:56 userInfo:v11];
        [(SUManagerClient *)self _invalidateConstraintObserver:v9 withError:v12];

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateConstraintObserver:(id)observer withError:(id)error
{
  errorCopy = error;
  observerCopy = observer;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    [observerCopy invalidateWithError:errorCopy];
  }

  else
  {
    [observerCopy invalidate];
  }

  [(NSMutableSet *)self->_installationConstraintObservers removeObject:observerCopy];
}

- (id)_identifier
{
  if (_identifier_pred != -1)
  {
    [SUManagerClient _identifier];
  }

  v3 = _identifier___identifier;

  return v3;
}

void __30__SUManagerClient__identifier__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = _identifier___identifier;
  _identifier___identifier = v1;

  if (!_identifier___identifier)
  {
    v3 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277D46F60] identityOfCurrentProcess];
    v4 = [v3 stringWithFormat:@"%@", v6];
    v5 = _identifier___identifier;
    _identifier___identifier = v4;
  }
}

- (id)_remoteInterface
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUManagerClient *)selfCopy connectToServerIfNecessary];
  remoteObjectProxy = [(NSXPCConnection *)selfCopy->_serverConnection remoteObjectProxy];
  objc_sync_exit(selfCopy);

  return remoteObjectProxy;
}

- (id)_remoteInterfaceWithErrorHandler:(id)handler connectIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (necessaryCopy)
  {
    [(SUManagerClient *)selfCopy connectToServerIfNecessary];
  }

  v8 = [(NSXPCConnection *)selfCopy->_serverConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)_remoteSynchronousInterfaceWithErrorHandler:(id)handler connectIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (necessaryCopy)
  {
    [(SUManagerClient *)selfCopy connectToServerIfNecessary];
  }

  v8 = [(NSXPCConnection *)selfCopy->_serverConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  objc_sync_exit(selfCopy);

  return v8;
}

- (void)_invalidateConnection
{
  obj = self;
  objc_sync_enter(obj);
  serverConnection = obj->_serverConnection;
  if (serverConnection)
  {
    [(NSXPCConnection *)serverConnection invalidate];
    [(NSXPCConnection *)obj->_serverConnection setInvalidationHandler:0];
    [(NSXPCConnection *)obj->_serverConnection setInterruptionHandler:0];
    v3 = obj->_serverConnection;
    obj->_serverConnection = 0;

    obj->_connected = 0;
  }

  objc_sync_exit(obj);
}

- (void)connectToServerIfNecessary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_connected)
  {
    SULogDebug(@"%@: establishing connection to softwareupdateservicesd.", v3, v4, v5, v6, v7, v8, v9, selfCopy);
    [(SUManagerClient *)selfCopy _invalidateConnection];
    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.softwareupdateservicesd" options:4096];
    serverConnection = selfCopy->_serverConnection;
    selfCopy->_serverConnection = v10;

    [(NSXPCConnection *)selfCopy->_serverConnection _setQueue:selfCopy->_queue];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B77600];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    [v12 setClasses:v15 forSelector:sel_getAllDeclarationsWithHandler_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)selfCopy->_serverConnection setRemoteObjectInterface:v12];
    v16 = selfCopy->_serverConnection;
    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B7E918];
    [(NSXPCConnection *)v16 setExportedInterface:v17];

    [(NSXPCConnection *)selfCopy->_serverConnection setExportedObject:selfCopy];
    objc_initWeak(&location, selfCopy);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __45__SUManagerClient_connectToServerIfNecessary__block_invoke;
    v31[3] = &unk_279CAC7D0;
    objc_copyWeak(&v32, &location);
    v18 = MEMORY[0x26D668B30](v31);
    [(NSXPCConnection *)selfCopy->_serverConnection setInvalidationHandler:v18];
    v19 = selfCopy->_serverConnection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__SUManagerClient_connectToServerIfNecessary__block_invoke_2;
    v28[3] = &unk_279CAC7F8;
    objc_copyWeak(&v30, &location);
    v20 = v18;
    v29 = v20;
    [(NSXPCConnection *)v19 setInterruptionHandler:v28];
    [(NSXPCConnection *)selfCopy->_serverConnection activate];
    [(SUManagerClient *)selfCopy _setClientType];
    *&selfCopy->_connected = 1;
    SULogDebug(@"%@: connection established to softwareupdateservicesd.", v21, v22, v23, v24, v25, v26, v27, selfCopy);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __45__SUManagerClient_connectToServerIfNecessary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v19 = objc_loadWeakRetained((a1 + 32));
    v18 = [v19 queue];
    dispatch_assert_queue_V2(v18);

    [v19 noteConnectionDropped];
  }

  else
  {

    SULogDebug(@"weakSelf is gone...", v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

uint64_t __45__SUManagerClient_connectToServerIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  SULogDebug(@"%@: softwareupdateservicesd exit detected.", v3, v4, v5, v6, v7, v8, v9, WeakRetained);

  v10 = *(*(a1 + 32) + 16);

  return v10();
}

- (void)noteConnectionDropped
{
  SULogDebug(@"%@: disconnected from softwareupdateservicesd.", a2, v2, v3, v4, v5, v6, v7, self);
  if (self->_installing)
  {
    installDescriptor = self->_installDescriptor;
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:37 userInfo:0];
    [(SUManagerClient *)self installDidFail:installDescriptor withError:v10];
  }

  obj = self;
  objc_sync_enter(obj);
  obj->_connected = 0;
  objc_sync_exit(obj);
}

- (void)scanRequestDidStartForOptions:(id)options
{
  optionsCopy = options;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self scanRequestDidStartForOptions:optionsCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient scanRequestDidStartForOptions:]");
}

- (void)scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error
{
  optionsCopy = options;
  resultsCopy = results;
  errorCopy = error;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 client:self scanRequestDidFinishForOptions:optionsCopy results:resultsCopy error:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v12, v13, v14, v15, v16, v17, v18, "[SUManagerClient scanRequestDidFinishForOptions:results:error:]");
}

- (void)scanDidCompleteForOptions:(id)options results:(id)results error:(id)error
{
  optionsCopy = options;
  resultsCopy = results;
  errorCopy = error;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 client:self scanRequestDidFinishForOptions:optionsCopy results:resultsCopy error:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v12, v13, v14, v15, v16, v17, v18, "[SUManagerClient scanDidCompleteForOptions:results:error:]");
}

- (void)scanRequestDidFinishForOptions:(id)options update:(id)update error:(id)error
{
  optionsCopy = options;
  updateCopy = update;
  errorCopy = error;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 client:self scanRequestDidFinishForOptions:optionsCopy update:updateCopy error:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v12, v13, v14, v15, v16, v17, v18, "[SUManagerClient scanRequestDidFinishForOptions:update:error:]");
}

- (void)scanDidCompleteWithNewUpdateAvailable:(id)available error:(id)error
{
  availableCopy = available;
  errorCopy = error;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 client:self scanDidCompleteWithNewUpdateAvailable:availableCopy error:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v9, v10, v11, v12, v13, v14, v15, "[SUManagerClient scanDidCompleteWithNewUpdateAvailable:error:]");
}

- (void)automaticDownloadDidFailToStartForNewUpdateAvailable:(id)available withError:(id)error
{
  availableCopy = available;
  errorCopy = error;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 client:self automaticDownloadDidFailToStartForNewUpdateAvailable:availableCopy withError:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v9, v10, v11, v12, v13, v14, v15, "[SUManagerClient automaticDownloadDidFailToStartForNewUpdateAvailable:withError:]");
}

- (void)downloadDidStart:(id)start
{
  startCopy = start;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(SUManagerClient *)self _invalidateAllInstallationConstraintObserversForDownload];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self downloadDidStart:startCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient downloadDidStart:]");
}

- (void)downloadProgressDidChange:(id)change
{
  changeCopy = change;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self downloadProgressDidChange:changeCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient downloadProgressDidChange:]");
}

- (void)downloadDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(SUManagerClient *)self _invalidateAllInstallationConstraintObserversForDownload];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 client:self downloadDidFail:failCopy withError:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v9, v10, v11, v12, v13, v14, v15, "[SUManagerClient downloadDidFail:withError:]");
}

- (void)downloadDidFinish:(id)finish
{
  finishCopy = finish;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(SUManagerClient *)self _invalidateAllInstallationConstraintObserversForDownload];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self downloadDidFinish:finishCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient downloadDidFinish:]");
}

- (void)downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  finishCopy = finish;
  policyCopy = policy;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(SUManagerClient *)self _invalidateAllInstallationConstraintObserversForDownload];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    v18 = objc_loadWeakRetained(&self->_delegate);
    v19 = v18;
    if (v17)
    {
      [v18 client:self downloadDidFinish:finishCopy withInstallPolicy:policyCopy];
    }

    else
    {
      v20 = objc_opt_respondsToSelector();

      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 client:self downloadDidFinish:finishCopy];
    }
  }

LABEL_7:
  SULogInfo(@"%s: Client delegate %@ receive status - %d", v9, v10, v11, v12, v13, v14, v15, "[SUManagerClient downloadDidFinish:withInstallPolicy:]");
}

- (void)downloadWasInvalidatedForNewUpdatesAvailable:(id)available
{
  availableCopy = available;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(SUManagerClient *)self _invalidateAllInstallationConstraintObserversForDownload];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 client:self downloadWasInvalidatedForNewUpdatesAvailable:availableCopy];
LABEL_7:

      goto LABEL_8;
    }
  }

  v10 = objc_loadWeakRetained(&self->_delegate);
  if (v10)
  {
    v18 = v10;
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      preferredDescriptor = [availableCopy preferredDescriptor];
      [v9 client:self downloadWasInvalidatedForNewUpdateAvailable:preferredDescriptor];

      goto LABEL_7;
    }
  }

LABEL_8:
  SULogInfo(@"%s: Client delegate %@ receive status - %d", v11, v12, v13, v14, v15, v16, v17, "[SUManagerClient downloadWasInvalidatedForNewUpdatesAvailable:]");
}

- (void)downloadWasInvalidatedForNewUpdateAvailable:(id)available
{
  availableCopy = available;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(SUManagerClient *)self _invalidateAllInstallationConstraintObserversForDownload];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self downloadWasInvalidatedForNewUpdateAvailable:availableCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient downloadWasInvalidatedForNewUpdateAvailable:]");
}

- (void)userWantsToDeferInstall
{
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 userWantsToDeferInstall:self];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v5, v6, v7, v8, v9, v10, v11, "[SUManagerClient userWantsToDeferInstall]");
}

- (void)installWantsToStart:(id)start completion:(id)completion
{
  startCopy = start;
  completionCopy = completion;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 client:self installWantsToStart:startCopy completion:completionCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v9, v10, v11, v12, v13, v14, v15, "[SUManagerClient installWantsToStart:completion:]");
}

- (void)installDidStart:(id)start
{
  startCopy = start;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_installing = 1;
  [(SUManagerClient *)self setInstallDescriptor:startCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self installDidStart:startCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient installDidStart:]");
}

- (void)installDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_installing = 0;
  [(SUManagerClient *)self setInstallDescriptor:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 client:self installDidFail:failCopy withError:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v9, v10, v11, v12, v13, v14, v15, "[SUManagerClient installDidFail:withError:]");
}

- (void)installDidFinish:(id)finish
{
  finishCopy = finish;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_installing = 0;
  [(SUManagerClient *)self setInstallDescriptor:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self installDidFinish:finishCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient installDidFinish:]");
}

- (void)installPolicyDidChange:(id)change
{
  changeCopy = change;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self installPolicyDidChange:changeCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient installPolicyDidChange:]");
}

- (void)deviceBootedAfterSplatUpdate
{
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 deviceBootedAfterSplatOnlyUpdate:self];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v5, v6, v7, v8, v9, v10, v11, "[SUManagerClient deviceBootedAfterSplatUpdate]");
}

- (void)managedInstallationRequested:(id)requested
{
  requestedCopy = requested;
  SULogInfo(@"%@ called %s", v4, v5, v6, v7, v8, v9, v10, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 client:self managedInstallationRequested:requestedCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v12, v13, v14, v15, v16, v17, v18, "[SUManagerClient managedInstallationRequested:]");
}

- (void)handleUIForDDMDeclaration:(id)declaration
{
  declarationCopy = declaration;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 client:self handleUIForDDMDeclaration:declarationCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v5, v6, v7, v8, v9, v10, v11, "[SUManagerClient handleUIForDDMDeclaration:]");
}

- (void)handleUIForDDMGlobalSettings:(id)settings
{
  settingsCopy = settings;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 client:self handleUIForDDMGlobalSettings:settingsCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v5, v6, v7, v8, v9, v10, v11, "[SUManagerClient handleUIForDDMGlobalSettings:]");
}

- (void)rollbackReadyToStart:(id)start options:(id)options completion:(id)completion
{
  startCopy = start;
  optionsCopy = options;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = objc_loadWeakRetained(&self->_delegate);
      [v21 client:self rollbackReadyToStart:startCopy options:optionsCopy completion:completionCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v11, v12, v13, v14, v15, v16, v17, "[SUManagerClient rollbackReadyToStart:options:completion:]");
}

- (void)rollbackDidStart:(id)start
{
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 client:self rollbackDidStart:startCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v5, v6, v7, v8, v9, v10, v11, "[SUManagerClient rollbackDidStart:]");
}

- (void)rollbackDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 client:self rollbackDidFail:failCopy withError:errorCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v8, v9, v10, v11, v12, v13, v14, "[SUManagerClient rollbackDidFail:withError:]");
}

- (void)rollbackDidFinish:(id)finish
{
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 client:self rollbackDidFinish:finishCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v5, v6, v7, v8, v9, v10, v11, "[SUManagerClient rollbackDidFinish:]");
}

- (void)rollbackReadyForReboot:(id)reboot
{
  rebootCopy = reboot;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 client:self scheduledRollbackReadyForReboot:rebootCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v5, v6, v7, v8, v9, v10, v11, "[SUManagerClient rollbackReadyForReboot:]");
}

- (void)deviceBootedAfterRollback:(id)rollback
{
  rollbackCopy = rollback;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 deviceBootedAfterSplatOnlyRollback:self rollbackDescriptor:rollbackCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient deviceBootedAfterRollback:]");
}

- (void)rollbackSuggested:(id)suggested info:(id)info
{
  suggestedCopy = suggested;
  infoCopy = info;
  SULogInfo(@"rollbackSuggested with info: %@", v7, v8, v9, v10, v11, v12, v13, infoCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v22 = WeakRetained;
    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = objc_loadWeakRetained(&self->_delegate);
      [v25 client:self rollbackSuggested:suggestedCopy info:infoCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v15, v16, v17, v18, v19, v20, v21, "[SUManagerClient rollbackSuggested:info:]");
}

- (void)autoInstallOperationWasCancelled:(id)cancelled
{
  installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
  uUIDString = [cancelled UUIDString];
  v6 = [(NSMutableDictionary *)installOperationIDsToOperationHandler objectForKey:uUIDString];

  if (v6)
  {
    [v6 _noteAutoInstallOperationWasCancelled];
    [(SUManagerClient *)self _unregisterAutoInstallOperationClientHandler:v6];
  }
}

- (void)autoInstallOperationDidExpire:(id)expire withError:(id)error
{
  errorCopy = error;
  installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
  uUIDString = [expire UUIDString];
  v8 = [(NSMutableDictionary *)installOperationIDsToOperationHandler objectForKey:uUIDString];

  if (v8)
  {
    [v8 _noteAutoInstallOperationDidExpireWithError:errorCopy];
    [(SUManagerClient *)self _unregisterAutoInstallOperationClientHandler:v8];
  }
}

- (void)autoInstallOperationDidConsent:(id)consent
{
  installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
  uUIDString = [consent UUIDString];
  v6 = [(NSMutableDictionary *)installOperationIDsToOperationHandler objectForKey:uUIDString];

  v5 = v6;
  if (v6)
  {
    [v6 _noteAutoInstallOperationDidConsent];
    v5 = v6;
  }
}

- (void)autoInstallOperationIsReadyToInstall:(id)install withResult:(id)result
{
  resultCopy = result;
  installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
  uUIDString = [install UUIDString];
  v8 = [(NSMutableDictionary *)installOperationIDsToOperationHandler objectForKey:uUIDString];

  if (v8)
  {
    [v8 _noteAutoInstallOperationIsReadyToInstall:resultCopy];
  }
}

- (void)autoInstallOperationPasscodePolicyChanged:(id)changed passcodePolicyType:(unint64_t)type
{
  installOperationIDsToOperationHandler = self->_installOperationIDsToOperationHandler;
  uUIDString = [changed UUIDString];
  v8 = [(NSMutableDictionary *)installOperationIDsToOperationHandler objectForKey:uUIDString];

  v7 = v8;
  if (v8)
  {
    [v8 _noteAutoInstallOperationPasscodePolicyChanged:type];
    v7 = v8;
  }
}

- (void)inUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  queue = [(SUManagerClient *)self queue];
  dispatch_assert_queue_V2(queue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 client:self inUserInteraction:interactionCopy];
    }
  }

  SULogInfo(@"%s: Client delegate %@ receive status - %d", v6, v7, v8, v9, v10, v11, v12, "[SUManagerClient inUserInteraction:]");
}

- (void)resetState
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__SUManagerClient_resetState__block_invoke;
  v3[3] = &unk_279CABA10;
  v3[4] = self;
  v2 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v3 connectIfNecessary:1];
  [v2 resetState];
}

void __29__SUManagerClient_resetState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient resetState]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

- (id)rvGetCurrentNeRDInfo
{
  SULogInfo(@"%@ called %s", a2, v2, v3, v4, v5, v6, v7, self);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__SUManagerClient_rvGetCurrentNeRDInfo__block_invoke;
  v13[3] = &unk_279CABA10;
  v13[4] = self;
  v9 = [(SUManagerClient *)self _remoteSynchronousInterfaceWithErrorHandler:v13 connectIfNecessary:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__SUManagerClient_rvGetCurrentNeRDInfo__block_invoke_2;
  v12[3] = &unk_279CAC820;
  v12[4] = &v14;
  [v9 rvGetCurrentNeRDInfoWithReply:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __39__SUManagerClient_rvGetCurrentNeRDInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = v3;
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient rvGetCurrentNeRDInfo]_block_invoke");
    v11 = [v14 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v14 code] == 4097)
      {
      }

      else
      {
        v12 = [v14 code];

        v3 = v14;
        if (v12 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v3 = v14;
  }

LABEL_9:
}

void __39__SUManagerClient_rvGetCurrentNeRDInfo__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (a3)
  {
    SULogError(@"Error while calling rvGetCurrentNeRDInfo: %@", v6, v7, v8, v9, v10, v11, v12, a3);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)rvTriggerNeRDUpdate:(id)update
{
  updateCopy = update;
  SULogInfo(@"%@ called %s", v5, v6, v7, v8, v9, v10, v11, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__SUManagerClient_rvTriggerNeRDUpdate___block_invoke;
  v13[3] = &unk_279CABA10;
  v13[4] = self;
  v12 = [(SUManagerClient *)self _remoteInterfaceWithErrorHandler:v13];
  [v12 rvTriggerNeRDUpdate:updateCopy];
}

void __39__SUManagerClient_rvTriggerNeRDUpdate___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v11 = v15;
  if (v15)
  {
    v14 = *(a1 + 32);
    SULogDebug(@"%s failed - connection interrupted: %@ error: %@", v4, v5, v6, v7, v8, v9, v10, "[SUManagerClient rvTriggerNeRDUpdate:]_block_invoke");
    v12 = [v15 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v15 code] == 4097)
      {
      }

      else
      {
        v13 = [v15 code];

        v11 = v15;
        if (v13 != 4099)
        {
          goto LABEL_9;
        }
      }

      [*(a1 + 32) _invalidateConnection];
    }

    else
    {
    }

    v11 = v15;
  }

LABEL_9:
}

- (NSString)description
{
  _identifier = [(SUManagerClient *)self _identifier];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SUManagerClient [%@:<%p>]", _identifier, self];

  return v4;
}

- (SUManagerClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)installationConstraintObserverDidRemoveAllObserverBlocks:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUManagerClient.m" lineNumber:1546 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

@end