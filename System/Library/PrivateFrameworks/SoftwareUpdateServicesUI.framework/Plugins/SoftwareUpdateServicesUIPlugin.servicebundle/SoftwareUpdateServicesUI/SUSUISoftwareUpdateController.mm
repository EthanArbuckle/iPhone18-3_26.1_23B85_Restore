@interface SUSUISoftwareUpdateController
+ (SUSUISoftwareUpdateController)sharedInstance;
- (BOOL)_badgingQueue_isBadgedForSoftwareUpdate;
- (BOOL)_createAutoInstallKeybagWithPasscode:(id)a3;
- (BOOL)_doesStateContainNonInstallableReasons:(int64_t)a3 reasonsToCheck:(id)a4 outMatchingReasonsString:(id *)a5;
- (BOOL)_isMultiUserAppleId;
- (BOOL)_isShowingInstallAlert;
- (BOOL)_needsToWaitForHomescreenToAppear;
- (BOOL)_setNVRAMVar:(__CFString *)a3 withValue:(void *)a4;
- (BOOL)_shouldHideAlert;
- (BOOL)_shouldShowOrScheduleInstallAlert;
- (BOOL)_showNextInstallAlertWithReasons:(int64_t)a3 orScheduleIfNecessary:(BOOL)a4 withInstallOptions:(id)a5;
- (BOOL)canDeferInstallation;
- (BOOL)installErrorWhenNotReadyForManagedRequest:(id)a3;
- (BOOL)installErrorWillScheduleAutoInstall:(id)a3;
- (BOOL)isUILocked;
- (BOOL)presentAlert:(id)a3;
- (BOOL)settingsForeground;
- (SUSUISoftwareUpdateController)init;
- (SUSUISoftwareUpdateController)initWithQueue:(id)a3;
- (id)_allNonInstallableReasons;
- (id)_availableRollback;
- (id)_computeDefaultRealertDate;
- (id)_computeNextLastPredictedUnlockDateMinus4HoursFromNow;
- (id)_stringForCurrentVersionPreference;
- (id)_stringForInstallNotAllowableReason:(unint64_t)a3;
- (id)_waitableReasonsForShowingInstallAlert;
- (id)computeNextLastPredictedUnlockDateMinus4HoursFromStartDate:(id)a3;
- (id)getDDMUpdateDescriptor;
- (id)getNextLastPredictedUnlockDateFromDuet:(id)a3;
- (int64_t)_delayDaysForSkips:(int64_t)a3 isRequiredInstall:(BOOL)a4;
- (int64_t)_springboardPasscodePolicyTypeFromSUPasscodePolicyType:(unint64_t)a3;
- (unint64_t)getPasscodePolicyForAlertModel:(id)a3;
- (void)_autoDownloadUnknownToUserFailedForDescriptor:(id)a3 error:(id)a4;
- (void)_autoInstallOperationDidExpire:(id)a3 withRepopStrategy:(unint64_t)a4 error:(id)a5;
- (void)_autoInstallOperationWasCancelled:(id)a3 withRepopStrategy:(unint64_t)a4;
- (void)_badgingQueue_badgeSettingsWithValue:(int64_t)a3;
- (void)_badgingQueue_savePreferencesBadgeEnabled:(BOOL)a3;
- (void)_bootedAfterRollback:(id)a3;
- (void)_clearLegacyBadgeIfNecessary:(id)a3;
- (void)_createInstallTonightForecastWithResult:(id)a3;
- (void)_createInstallTonightOperationWithResult:(id)a3;
- (void)_discoveredUpdates:(id)a3;
- (void)_dismissInstallAlertsWithReason:(id)a3 includingInstallTonight:(BOOL)a4 withRealertStrategy:(unint64_t)a5;
- (void)_dismissInstallFailureAlertsWithoutRepop;
- (void)_doInstallNowWithOptions:(id)a3;
- (void)_doInstallTonight:(id)a3 consent:(BOOL)a4;
- (void)_handleInstallError:(id)a3;
- (void)_initializeState;
- (void)_installUpdate:(unint64_t)a3 withInstallOperation:(id)a4 source:(unint64_t)a5 options:(id)a6;
- (void)_installationConstraintsDidChange:(unint64_t)a3 changed:(unint64_t)a4 error:(id)a5;
- (void)_isUpdateInstallable:(id)a3;
- (void)_isUpdateInstallableWithInstallOptions:(id)a3 andResponse:(id)a4;
- (void)_migrateForNewOSVersionIfNecessary;
- (void)_presentAuthenticationUIForInstallation:(id)a3 withInstallType:(unint64_t)a4 withInstallOperationForecast:(id)a5;
- (void)_realertWithStrategy:(unint64_t)a3 andReason:(id)a4;
- (void)_rebootQuiet;
- (void)_registerForInstallationConstraintChangedNotifications;
- (void)_registerForUnlockNotifications;
- (void)_resetStateForReason:(id)a3;
- (void)_rollbackFailed:(id)a3 withError:(id)a4;
- (void)_rollbackSucceeded:(id)a3;
- (void)_rollbackSuggested:(id)a3 info:(id)a4;
- (void)_saveLastKnownVersionPreference:(id)a3;
- (void)_savePreferencesBadgeFlag:(BOOL)a3;
- (void)_scheduleInstallAlertReminderWithDate:(id)a3 repopStrategy:(unint64_t)a4 forReason:(id)a5;
- (void)_sendInstallTonightDidCompleteToObservers;
- (void)_setInstallPolicy:(id)a3;
- (void)_setPasscodePolicyType:(unint64_t)a3;
- (void)_setPendingInstallOptions:(id)a3;
- (void)_setSettingsBadgeToValue:(int64_t)a3;
- (void)_setTryTonightAutoInstallOperation:(id)a3 cancelIfNecessary:(BOOL)a4;
- (void)_setupAutoUpdate:(id)a3 withPasscodePolicy:(unint64_t)a4;
- (void)_showInstallAlertWithInstallOptions:(id)a3;
- (void)_showOrScheduleNextInstallAlert;
- (void)_showOrScheduleNextInstallAlertFromTimer:(id)a3;
- (void)_showSUAvailableAlertForDescriptor:(id)a3;
- (void)_unregisterForInstallationConstraintChangeNotifications;
- (void)_unregisterForUnlockNotifications;
- (void)_unregisterHomescreenAlerts;
- (void)addObserver:(id)a3;
- (void)alertModel:(id)a3 alertFlowDidChangeFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)autoInstallOperationDidConsent:(id)a3;
- (void)autoInstallOperationDidExpire:(id)a3 withError:(id)a4;
- (void)autoInstallOperationIsReadyToInstall:(id)a3 withResponse:(id)a4;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)a3 passcodePolicyType:(unint64_t)a4;
- (void)autoInstallOperationWasCancelled:(id)a3;
- (void)autoInstallTonightWithOperation:(id)a3;
- (void)autoInstallTonightWithOperation:(id)a3 options:(id)a4;
- (void)cancelRollback;
- (void)client:(id)a3 automaticDownloadDidFailToStartForNewUpdateAvailable:(id)a4 withError:(id)a5;
- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5;
- (void)client:(id)a3 downloadDidStart:(id)a4;
- (void)client:(id)a3 downloadProgressDidChange:(id)a4;
- (void)client:(id)a3 downloadWasInvalidatedForNewUpdateAvailable:(id)a4;
- (void)client:(id)a3 handleUIForDDMDeclaration:(id)a4;
- (void)client:(id)a3 handleUIForDDMGlobalSettings:(id)a4;
- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 installDidFinish:(id)a4;
- (void)client:(id)a3 installDidStart:(id)a4;
- (void)client:(id)a3 installPolicyDidChange:(id)a4;
- (void)client:(id)a3 installTonightScheduled:(BOOL)a4 operationID:(id)a5;
- (void)client:(id)a3 installWantsToStart:(id)a4 completion:(id)a5;
- (void)client:(id)a3 managedInstallationRequested:(id)a4;
- (void)client:(id)a3 presentingRecommendedUpdate:(id)a4 shouldPresent:(BOOL)a5;
- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 rollbackDidFinish:(id)a4;
- (void)client:(id)a3 rollbackDidStart:(id)a4;
- (void)client:(id)a3 rollbackReadyToStart:(id)a4 options:(id)a5 completion:(id)a6;
- (void)client:(id)a3 rollbackSuggested:(id)a4 info:(id)a5;
- (void)client:(id)a3 scheduledRollbackReadyForReboot:(id)a4;
- (void)ddmAlertWasScheduled:(id)a3;
- (void)dealloc;
- (void)deviceBootedAfterSplatOnlyRollback:(id)a3 rollbackDescriptor:(id)a4;
- (void)initPostOTAFollowUpController;
- (void)installNowFromSource:(unint64_t)a3 options:(id)a4;
- (void)installTonight;
- (void)installTonightWithOperation:(id)a3;
- (void)installTonightWithOperation:(id)a3 options:(id)a4;
- (void)isDownloading:(id)a3;
- (void)layoutStateMonitorStateDidChange:(id)a3;
- (void)layoutStateMonitorUILockStateDidChange:(id)a3;
- (void)powerMonitorSystemDidWakeFromSleep:(id)a3;
- (void)powerMonitorSystemWillSleep:(id)a3;
- (void)presentAuthenticationAlert:(id)a3 completion:(id)a4;
- (void)presentEmergencyCallAlert:(id)a3 completion:(id)a4;
- (void)presentFullScreenAlert:(id)a3 completion:(id)a4;
- (void)reboot:(BOOL)a3;
- (void)recordSUAnalyticsEvent:(id)a3;
- (void)removeObserver:(id)a3;
- (void)repopInstallAlertWithDefaultDurationFromNowForReason:(id)a3;
- (void)repopInstallAlertWithWeekDurationFromNowForReason:(id)a3;
- (void)rollbackCompleted:(id)a3;
- (void)scanForUpdates:(id)a3 withScanResults:(id)a4;
- (void)setInstallOperation:(id)a3;
- (void)setUpdateToInstall:(id)a3;
- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)submitSUAnalyticsEvent:(id)a3;
- (void)toggleSettingsBadge:(BOOL)a3 update:(id)a4;
@end

@implementation SUSUISoftwareUpdateController

+ (SUSUISoftwareUpdateController)sharedInstance
{
  v5 = &unk_6F900;
  location = 0;
  objc_storeStrong(&location, &stru_602E8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_6F8F8;

  return v2;
}

- (SUSUISoftwareUpdateController)init
{
  v7 = self;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.softwareupdateservices.ui.ios.sumanagerQueue", v5);
  v7 = 0;
  v7 = [(SUSUISoftwareUpdateController *)self initWithQueue:?];
  v6 = v7;

  objc_storeStrong(&v7, 0);
  return v6;
}

- (SUSUISoftwareUpdateController)initWithQueue:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v17;
  v17 = 0;
  v15.receiver = v3;
  v15.super_class = SUSUISoftwareUpdateController;
  v7 = [(SUSUISoftwareUpdateController *)&v15 init];
  v17 = v7;
  objc_storeStrong(&v17, v7);
  if (v7)
  {
    queue = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_220DC;
    v12 = &unk_5D008;
    v13 = v17;
    v14 = location[0];
    dispatch_sync(queue, &v8);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  v5 = v17;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v5;
}

- (void)_initializeState
{
  v9 = self;
  v8[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  client = v9->_client;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_229A0;
  v7 = &unk_60338;
  v8[0] = v9;
  [(SUManagerClient *)client downloadAndInstallState:?];
  objc_storeStrong(v8, 0);
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  [(SUSUISoftwareUpdateController *)v5 _unregisterForInstallationConstraintChangeNotifications];
  [(SUAutoInstallOperation *)v5->_scheduledTryTonightAutoInstallOperation cancel];
  [(SUSUISoftwareUpdateAlertModel *)v5->_alertModel setDelegate:0];
  [(PCPersistentTimer *)v5->_installTimer invalidate];
  [(SUManagerClient *)v5->_client invalidate];
  v3.receiver = v5;
  v3.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v3 dealloc];
}

- (void)recordSUAnalyticsEvent:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_2393C;
  v8 = &unk_5D008;
  v9 = v12;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)submitSUAnalyticsEvent:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_23A90;
  v8 = &unk_5D008;
  v9 = v12;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)isDownloading:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v11->_clientQueue);
  client = v11->_client;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_23BC8;
  v8 = &unk_60360;
  v9 = location[0];
  [(SUManagerClient *)client isDownloading:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canDeferInstallation
{
  v7 = self;
  location[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (v7->_updateToInstall)
  {
    location[0] = [(SUSUISoftwareUpdateAlertModel *)v7->_alertModel currentInstallationPolicy];
    v5 = 1;
    if ([(SUSUIDDMController *)v7->_ddmController shouldEnforceUpdate])
    {
      v8 = 0;
    }

    else
    {
      if ([location[0] type] == &dword_0 + 1)
      {
        v4 = [location[0] skipsAllowed];
        v3 = 0;
        if (v4 > 0)
        {
          v3 = [(SUSUISoftwareUpdateAlertModel *)v7->_alertModel remindMeLaterCountSinceRequiringInstallation]< v4;
        }

        v5 = v3;
      }

      v8 = v5;
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (BOOL)isUILocked
{
  dispatch_assert_queue_V2(self->_clientQueue);
  [(SUSUISoftwareUpdateController *)self _registerForUnlockNotifications];
  v3 = [(SUSUILayoutStateMonitor *)self->_uiLockedLayoutStateMonitor isUILocked];
  [(SUSUISoftwareUpdateController *)self _unregisterForUnlockNotifications];
  return v3 & 1;
}

- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  dispatch_assert_queue_V2(v7->_clientQueue);
  [(SUManagerClient *)v7->_client startDownloadWithOptions:location[0] withResult:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)installNowFromSource:(unint64_t)a3 options:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  dispatch_assert_queue_V2(v7[3]);
  [(dispatch_queue_t *)v7 _installUpdate:0 withInstallOperation:0 source:v5 options:location];
  objc_storeStrong(&location, 0);
}

- (void)installTonight
{
  v12 = self;
  v11[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  v11[0] = v12->_scheduledTryTonightAutoInstallOperation;
  if ([v11[0] _isValidForScheduling])
  {
    [(SUSUISoftwareUpdateController *)v12 installTonightWithOperation:v11[0] options:0];
  }

  else
  {
    location = SUSUILog();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v13, v11[0]);
      _os_log_impl(&dword_0, location, v9, "Auto install operation (%p) was attempted to be scheduled, but it was already expired or cancelled. Trying to fetch a new one.", v13, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v2 = v12;
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_2417C;
    v7 = &unk_60388;
    v8 = v12;
    [(SUSUISoftwareUpdateController *)v2 _createInstallTonightOperationWithResult:&v3];
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v11, 0);
}

- (void)installTonightWithOperation:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v4[3]);
  [(dispatch_queue_t *)v4 installTonightWithOperation:location[0] options:0];
  objc_storeStrong(location, 0);
}

- (void)autoInstallTonightWithOperation:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v4[3]);
  [(dispatch_queue_t *)v4 autoInstallTonightWithOperation:location[0] options:0];
  objc_storeStrong(location, 0);
}

- (void)autoInstallTonightWithOperation:(id)a3 options:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  dispatch_assert_queue_V2(v7[3]);
  [(dispatch_queue_t *)v7 _installUpdate:2 withInstallOperation:location[0] source:1 options:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)installTonightWithOperation:(id)a3 options:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  dispatch_assert_queue_V2(v7[3]);
  [(dispatch_queue_t *)v7 _installUpdate:1 withInstallOperation:location[0] source:0 options:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)repopInstallAlertWithDefaultDurationFromNowForReason:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v4->_clientQueue);
  [(SUSUISoftwareUpdateAlertModel *)v4->_alertModel userSelectedRemindMeLater];
  [(SUSUISoftwareUpdateController *)v4 _realertWithStrategy:1 andReason:location[0]];
  objc_storeStrong(location, 0);
}

- (void)repopInstallAlertWithWeekDurationFromNowForReason:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v4->_clientQueue);
  [(SUSUISoftwareUpdateAlertModel *)v4->_alertModel userSelectedRemindMeLater];
  [(SUSUISoftwareUpdateController *)v4 _realertWithStrategy:2 andReason:location[0]];
  objc_storeStrong(location, 0);
}

- (void)presentAuthenticationAlert:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  dispatch_assert_queue_V2(v7->_clientQueue);
  [(SUSUIFullScreenAlertPresentationManager *)v7->_fullScreenAlertPresentationManager presentAlert:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)presentEmergencyCallAlert:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  dispatch_assert_queue_V2(v7->_clientQueue);
  [(SUSUIFullScreenAlertPresentationManager *)v7->_fullScreenAlertPresentationManager presentAlert:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)presentFullScreenAlert:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  dispatch_assert_queue_V2(v7->_clientQueue);
  [(SUSUIFullScreenAlertPresentationManager *)v7->_fullScreenAlertPresentationManager presentAlert:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v4->_clientQueue);
  if (location[0])
  {
    [(NSHashTable *)v4->_observers addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v4->_clientQueue);
  if (location[0])
  {
    [(NSHashTable *)v4->_observers removeObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)_availableRollback
{
  v22 = self;
  v21[1] = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = sub_249E0;
  v20 = sub_24A38;
  v21[0] = 0;
  location = dispatch_semaphore_create(0);
  v13 = 2000000000;
  client = v22->_client;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_24A68;
  v11 = &unk_603B0;
  v12[1] = &v15;
  v12[0] = location;
  [(SUManagerClient *)client eligibleRollbackWithOptions:0 withResult:&v7];
  if (location)
  {
    dsema = location;
    v2 = dispatch_time(0, v13);
    dispatch_semaphore_wait(dsema, v2);
  }

  v4 = v16[5];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&location, 0);
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(v21, 0);

  return v4;
}

- (void)_discoveredUpdates:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUManagerClient *)v4->_client descriptors:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_createInstallTonightForecastWithResult:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v11->_clientQueue);
  client = v11->_client;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_24C64;
  v8 = &unk_603D8;
  v9 = location[0];
  [(SUManagerClient *)client currentAutoInstallOperationForecast:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_createInstallTonightOperationWithResult:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v11->_clientQueue);
  client = v11->_client;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_24F58;
  v8 = &unk_60400;
  v9 = location[0];
  [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isMultiUserAppleId
{
  v10 = self;
  v9 = a2;
  v8 = 0;
  location = +[UMUserManager sharedManager];
  v5 = 0;
  v4 = 0;
  if ([location isMultiUser])
  {
    v6 = [location currentUser];
    v5 = 1;
    v4 = [v6 userType] == &dword_0 + 1;
  }

  if (v5)
  {
  }

  if (v4)
  {
    v8 = 1;
  }

  v3 = v8;
  objc_storeStrong(&location, 0);
  return v3 & 1;
}

- (BOOL)presentAlert:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v5->_clientQueue);
  if (location[0])
  {
    v6 = [(SUSUIAlertPresentationManager *)v5->_alertPresentationManager presentAlert:location[0] animated:1];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)ddmAlertWasScheduled:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)powerMonitorSystemWillSleep:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "Device will sleep.", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)powerMonitorSystemDidWakeFromSleep:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "Device woke from sleep.", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)layoutStateMonitorUILockStateDidChange:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_25668;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = v12;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)layoutStateMonitorStateDidChange:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_25840;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = v12;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_installationConstraintsDidChange:(unint64_t)a3 changed:(unint64_t)a4 error:(id)a5
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location[1] = a4;
  location[0] = 0;
  objc_storeStrong(location, a5);
  if (v13)
  {
    v11 = 16;
    if ([(SUSUISoftwareUpdateAlertModel *)v15->_alertModel alertFlow]== &dword_4 || [(SUSUISoftwareUpdateAlertModel *)v15->_alertModel alertFlow]== &dword_0 + 1)
    {
      v11 = 17;
    }

    if (sub_262AC(v13, v11))
    {
      v7 = v15;
      v8 = SUStringFromInstallationConstraints();
      [SUSUISoftwareUpdateController _dismissInstallAlertsWithReason:v7 includingInstallTonight:"_dismissInstallAlertsWithReason:includingInstallTonight:withRealertStrategy:" withRealertStrategy:?];
    }

    else if (v15->_scheduleInstallAlertWhenAble && ![(SUSUISoftwareUpdateController *)v15 _isShowingInstallAlert]&& ![(SUSUISoftwareUpdateController *)v15 _needsToWaitForHomescreenToAppear])
    {
      v5 = v15;
      v6 = SUStringFromInstallationConstraints();
      [(SUSUISoftwareUpdateController *)v5 _realertWithStrategy:4 andReason:?];
    }
  }

  else if (v15->_scheduleInstallAlertWhenAble && ![(SUSUISoftwareUpdateController *)v15 _isShowingInstallAlert]&& ![(SUSUISoftwareUpdateController *)v15 _needsToWaitForHomescreenToAppear])
  {
    v9 = v15;
    v10 = SUStringFromInstallationConstraints();
    [(SUSUISoftwareUpdateController *)v9 _realertWithStrategy:4 andReason:?];
  }

  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadWasInvalidatedForNewUpdateAvailable:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  dispatch_assert_queue_V2(v9->_clientQueue);
  v5 = v9;
  v6 = [NSString stringWithFormat:@"Download invalidated for new update available: %@", v7];
  [(SUSUISoftwareUpdateController *)v5 _resetStateForReason:?];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 automaticDownloadDidFailToStartForNewUpdateAvailable:(id)a4 withError:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  dispatch_assert_queue_V2(v10[3]);
  [(dispatch_queue_t *)v10 _autoDownloadUnknownToUserFailedForDescriptor:v8 error:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadDidStart:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  dispatch_assert_queue_V2(v11->_clientQueue);
  v6 = v11;
  v5 = v9;
  v8 = [v9 descriptor];
  v7 = [NSString stringWithFormat:@"New download started: %p for descriptor: %@", v5, v8];
  [(SUSUISoftwareUpdateController *)v6 _resetStateForReason:?];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadProgressDidChange:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  dispatch_assert_queue_V2(v10->_clientQueue);
  v6 = [v8 progress];
  v5 = [v6 phase];
  v7 = [v5 isEqualToString:kSUDownloadPhaseUpdateFetchingQueuedRemote];

  if (v7)
  {
    [(SUSUISoftwareUpdateAlertModel *)v10->_alertModel setDownloadWasQueuedRemotely:1];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadDidFail:(id)a4 withError:(id)a5
{
  v68 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v66 = 0;
  objc_storeStrong(&v66, a4);
  v65 = 0;
  objc_storeStrong(&v65, a5);
  dispatch_assert_queue_V2(v68->_clientQueue);
  v64 = SUSUILog();
  v63 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    sub_23504(v69, v66, v65);
    _os_log_impl(&dword_0, v64, v63, "Software update download (%p) failed with error: %@", v69, 0x16u);
  }

  objc_storeStrong(&v64, 0);
  [(SUSUISoftwareUpdateAlertModel *)v68->_alertModel setDownloadWasQueuedRemotely:0];
  v21 = [v65 userInfo];
  v20 = [v21 objectForKey:kSUUserRequestedKey];
  v22 = [v20 BOOLValue];

  v62 = v22;
  v61 = 1;
  v23 = [v65 userInfo];
  v60 = [v23 objectForKey:kSUNotifyUserKey];

  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [v60 BOOLValue];
    }
  }

  if (v61)
  {
    if (v62)
    {
      v28 = SUSUILog();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v28;
        v6 = v27;
        sub_2544(v26);
        _os_log_impl(&dword_0, v5, v6, "User requested cancellation of the SU download; withholding the notification to the user of the failure.", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
    }

    else
    {
      v16 = [v66 metadata];
      v55 = 0;
      v17 = 0;
      if ([v16 isAutoDownload])
      {
        v56 = [v66 metadata];
        v55 = 1;
        v17 = [v56 activeDownloadPolicyType] == 1;
      }

      if (v55)
      {
      }

      if (v17)
      {
        v14 = v68;
        v15 = [v66 descriptor];
        [SUSUISoftwareUpdateController _autoDownloadUnknownToUserFailedForDescriptor:v14 error:"_autoDownloadUnknownToUserFailedForDescriptor:error:"];
      }

      else
      {
        v54 = BYSetupAssistantNeedsToRun();
        if (v54)
        {
          oslog = SUSUILog();
          v30 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v7 = oslog;
            v8 = v30;
            sub_2544(v29);
            _os_log_impl(&dword_0, v7, v8, "Not showing download failure alert because Buddy is running", v29, 2u);
          }

          objc_storeStrong(&oslog, 0);
        }

        else
        {
          v45 = _NSConcreteStackBlock;
          v46 = -1073741824;
          v47 = 0;
          v48 = sub_26EB8;
          v49 = &unk_5EA18;
          v50 = v68;
          v51 = v66;
          v52 = v65;
          v53 = objc_retainBlock(&v45);
          if ([(SUSUILayoutStateMonitor *)v68->_layoutStateMonitor isHomeScreenForeground]|| [(SUSUISoftwareUpdateController *)v68 settingsForeground])
          {
            v44 = SUSUILog();
            v43 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v44;
              v13 = v43;
              sub_2544(v42);
              _os_log_impl(&dword_0, v12, v13, "Download failed. Presenting download failure to user", v42, 2u);
            }

            objc_storeStrong(&v44, 0);
            (*(v53 + 2))();
          }

          else
          {
            v41 = SUSUILog();
            v40 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v10 = v41;
              v11 = v40;
              sub_2544(v39);
              _os_log_impl(&dword_0, v10, v11, "Download failed. Registering download failure alert for presentation on homescreen", v39, 2u);
            }

            objc_storeStrong(&v41, 0);
            [(SUSUILayoutStateMonitor *)v68->_layoutStateMonitor addObserver:v68];
            queue = v68->_homescreenBlockQueue;
            v32 = _NSConcreteStackBlock;
            v33 = -1073741824;
            v34 = 0;
            v35 = sub_27058;
            v36 = &unk_60450;
            v37 = v68;
            v38 = v53;
            dispatch_async(queue, &v32);
            objc_storeStrong(&v38, 0);
            objc_storeStrong(&v37, 0);
          }

          objc_storeStrong(&v53, 0);
          objc_storeStrong(&v52, 0);
          objc_storeStrong(&v51, 0);
          objc_storeStrong(&v50, 0);
        }
      }
    }
  }

  else
  {
    v59 = SUSUILog();
    v58 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v59;
      v19 = v58;
      sub_2544(v57);
      _os_log_impl(&dword_0, v18, v19, "Don't notify user", v57, 2u);
    }

    objc_storeStrong(&v59, 0);
  }

  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 downloadDidFinish:(id)a4 withInstallPolicy:(id)a5
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  dispatch_assert_queue_V2(v35[3]);
  v31 = SUSUILog();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    log = v31;
    type = v30;
    v9 = v33;
    v12 = [v33 descriptor];
    v29 = v12;
    sub_23504(v38, v9, v29);
    _os_log_impl(&dword_0, log, type, "Software update download (%p) completed successfully: %@", v38, 0x16u);

    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v31, 0);
  v28 = SUSUILog();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v37, v32);
    _os_log_impl(&dword_0, v28, v27, "Install Policy: %@", v37, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  if (v33)
  {
    v23 = objc_opt_new();
    v5 = [v32 useDarkBoot];
    [v23 setInstallDark:v5];
    v6 = [v32 autoUpdateEnabled];
    [v23 setAutomaticInstallAttempt:v6];
    v8 = v35;
    v7 = v23;
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_274E8;
    v19 = &unk_60478;
    v20 = v35;
    v21 = v33;
    v22 = v32;
    [(dispatch_queue_t *)v8 _isUpdateInstallableWithInstallOptions:v7 andResponse:&v15];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v23, 0);
    v24 = 0;
  }

  else
  {
    v26 = SUSUILog();
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_186B0(v36, "[SUSUISoftwareUpdateController client:downloadDidFinish:withInstallPolicy:]");
      _os_log_error_impl(&dword_0, v26, v25, "%s: download is nil...", v36, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    v24 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installWantsToStart:(id)a4 completion:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  dispatch_assert_queue_V2(v17->_clientQueue);
  v13 = SUSUILog();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v5 = v15;
    v8 = [(SUSUISoftwareUpdateAlertModel *)v17->_alertModel currentInstallationPolicy];
    v11 = v8;
    sub_195C(v18, v5, v11);
    _os_log_impl(&dword_0, log, type, "Software update install want to begin for update: %@\nInstall Policy: %@", v18, 0x16u);

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  (*(v14 + 2))(v14, 1, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installDidStart:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  dispatch_assert_queue_V2(v21->_clientQueue);
  [(SUSUIDDMController *)v21->_ddmController installDidStart:v19];
  v18 = SUSUILog();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    log = v18;
    type = v17;
    v10 = v19;
    v13 = [(SUSUISoftwareUpdateAlertModel *)v21->_alertModel currentInstallationPolicy];
    v16 = v13;
    sub_195C(v22, v10, v16);
    _os_log_impl(&dword_0, log, type, "Software update install began for update: %@\nInstall Policy: %@", v22, 0x16u);

    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v18, 0);
  v8 = [(SUSUISoftwareUpdateAlertModel *)v21->_alertModel currentInstallationPolicy];
  v9 = [(SUInstallPolicy *)v8 useDarkBoot];

  if (v9)
  {
    if (!v21->_pendingInstallOptions)
    {
      v4 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
      pendingInstallOptions = v21->_pendingInstallOptions;
      v21->_pendingInstallOptions = v4;
    }

    [(SUSUISoftwareUpdateInstallOptions *)v21->_pendingInstallOptions setInstallDark:1];
  }

  [(SUSUISoftwareUpdateController *)v21 _realertWithStrategy:0 andReason:@"Install starting."];
  v6 = [SUSUISoftwareUpdateVerifyingUpdateAlertItem alloc];
  v7 = [(SUDownload *)v21->_updateToInstall descriptor];
  v15 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v6 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];

  [(SUSUIAlertPresentationManager *)v21->_alertPresentationManager presentAlert:v15 animated:1];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installDidFail:(id)a4 withError:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  dispatch_assert_queue_V2(v11->_clientQueue);
  [(SUSUIDDMController *)v11->_ddmController installDidFail:v9];
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v12, v8);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Software update failed to apply update with error: %@", v12, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUISoftwareUpdateController *)v11 _handleInstallError:v8];
  [(SUSUISoftwareUpdateController *)v11 _setPendingInstallOptions:0];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installDidFinish:(id)a4
{
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = 0;
  objc_storeStrong(&v55, a4);
  dispatch_assert_queue_V2(v57->_clientQueue);
  [(SUSUIDDMController *)v57->_ddmController installDidFinish:v55];
  if ([(SUSUISoftwareUpdateInstallOptions *)v57->_pendingInstallOptions automaticInstallAttempt])
  {
    [(SUSUISoftwareUpdateController *)v57 _sendInstallTonightDidCompleteToObservers];
  }

  v23 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v23 setNeedsAlertPresentationAfterOTAUpdate:1];

  v54 = SUSUILog();
  v53 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    log = v54;
    type = v53;
    sub_2544(v52);
    _os_log_impl(&dword_0, log, type, "Update applied, set needsAlertPresentationAfterOTAUpdate to YES", v52, 2u);
  }

  objc_storeStrong(&v54, 0);
  v51 = [v55 isSplatOnly];
  v20 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v20 setLastAppliedUpdateWasSplatOnly:v51 & 1];

  v50 = SUSUILog();
  v49 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    if (v51)
    {
      v4 = @"Splat";
    }

    else
    {
      v4 = @"Non-Splat";
    }

    if (v51)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    sub_195C(v60, v4, v5);
    _os_log_impl(&dword_0, v50, v49, "%@ update applied, set lastAppliedUpdateWasSplatOnly to %@", v60, 0x16u);
  }

  objc_storeStrong(&v50, 0);
  v18 = +[SUSUIPreferences sharedInstance];
  v19 = [(SUSUIPreferences *)v18 IWillRebootLater];

  if (v19)
  {
    v48 = SUSUILog();
    v47 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v48;
      v17 = v47;
      sub_2544(v46);
      _os_log_impl(&dword_0, v16, v17, "I will reboot later; don't reboot now!", v46, 2u);
    }

    objc_storeStrong(&v48, 0);
    v45 = 1;
  }

  else
  {
    v44 = objc_alloc_init(MIBUClient);
    v43 = 0;
    v42 = 0;
    v15 = [v44 isInPalletUpdateMode:&v42];
    objc_storeStrong(&v43, v42);
    v40 = 0;
    if ((v15 & 1) == 0 || (v14 = 1, v43))
    {
      v41 = +[SUSUIPreferences sharedInstance];
      v40 = 1;
      v14 = [(SUSUIPreferences *)v41 useMobileInboxUpdaterRebootDelay];
    }

    if (v40)
    {
    }

    if (v14)
    {
      v39 = SUSUILog();
      v38 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v39;
        v12 = v38;
        v37 = v43;
        v10 = [v44 isInPalletUpdateMode:&v37];
        objc_storeStrong(&v43, v37);
        v13 = +[SUSUIPreferences sharedInstance];
        sub_19AC(v59, v10, [(SUSUIPreferences *)v13 useMobileInboxUpdaterRebootDelay]);
        _os_log_impl(&dword_0, v11, v12, "Pallet mode timer started. MIBU: %d | defaults: %d", v59, 0xEu);
      }

      objc_storeStrong(&v39, 0);
      v36 = dispatch_time(0, 30000000000);
      when = v36;
      queue = v57->_clientQueue;
      v30 = _NSConcreteStackBlock;
      v31 = -1073741824;
      v32 = 0;
      v33 = sub_289F4;
      v34 = &unk_5CCB0;
      v35 = v57;
      dispatch_after(when, queue, &v30);
      objc_storeStrong(&v35, 0);
    }

    else
    {
      if (v43)
      {
        oslog = SUSUILog();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_1FCC(v58, v43);
          _os_log_impl(&dword_0, oslog, v28, "MIBUClient error: %@", v58, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      v27 = SUSUILog();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v27;
        v7 = v26;
        sub_2544(v25);
        _os_log_impl(&dword_0, v6, v7, "Software update applied.  Rebooting.", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      [(SUSUISoftwareUpdateController *)v57 reboot:[(SUSUISoftwareUpdateInstallOptions *)v57->_pendingInstallOptions installDark]];
    }

    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
    v45 = 0;
  }

  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installPolicyDidChange:(id)a4
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  dispatch_assert_queue_V2(v41->_clientQueue);
  v13 = [(SUSUISoftwareUpdateAlertModel *)v41->_alertModel currentInstallationPolicy];
  v14 = [(SUInstallPolicy *)v13 type];

  v38 = v14;
  v37 = [v39 type];
  v15 = [(SUSUISoftwareUpdateAlertModel *)v41->_alertModel currentInstallationPolicy];
  v16 = [(SUInstallPolicy *)v15 autoUpdateEnabled];

  v36 = v16;
  v35 = 0;
  v17 = [(SUSUISoftwareUpdateAlertModel *)v41->_alertModel currentInstallationPolicy];
  v18 = [(SUInstallPolicy *)v17 useDarkBoot];

  v34 = v18;
  v33 = [v39 useDarkBoot];
  v19 = [(SUSUISoftwareUpdateAlertModel *)v41->_alertModel currentInstallationPolicy];
  v20 = [(SUInstallPolicy *)v19 isEqual:v39];

  if ((v20 & 1) == 0)
  {
    v32 = SUSUILog();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      log = v32;
      type = v31;
      v11 = [(SUSUISoftwareUpdateAlertModel *)v41->_alertModel currentInstallationPolicy];
      v30 = v11;
      sub_195C(v43, v30, v39);
      _os_log_impl(&dword_0, log, type, "Install Policy changed from:%@ to %@:", v43, 0x16u);

      objc_storeStrong(&v30, 0);
    }

    objc_storeStrong(&v32, 0);
    [(SUSUISoftwareUpdateAlertModel *)v41->_alertModel setCurrentInstallationPolicy:v39 forReason:@"Install policy changed from daemon"];
    [(SUSUISoftwareUpdateController *)v41 _setInstallPolicy:v39];
    if (v38 != v37 && v37 == &dword_0 + 1 && [(SUSUISoftwareUpdateAlertModel *)v41->_alertModel alertFlow]!= &dword_4 + 1)
    {
      v35 = 1;
      v8 = SUSUIStringForInstallPolicyType(v38);
      v7 = SUSUIStringForInstallPolicyType(v37);
      v29 = [NSString stringWithFormat:@"Install policy changed from %@ to %@", v8, v7];

      [(SUSUISoftwareUpdateController *)v41 _realertWithStrategy:6 andReason:v29];
      objc_storeStrong(&v29, 0);
    }

    if ((v34 & 1) != (v33 & 1))
    {
      v28 = SUSUILog();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (v33)
        {
          v4 = @"Enabled";
        }

        else
        {
          v4 = @"Disabled";
        }

        sub_1FCC(v42, v4);
        _os_log_impl(&dword_0, v28, v27, "darkBoot setting changed to: %@", v42, 0xCu);
      }

      objc_storeStrong(&v28, 0);
      [(SUSUISoftwareUpdateInstallOptions *)v41->_pendingInstallOptions setInstallDark:v33 & 1];
    }

    v6 = v36 & 1;
    if (v6 != [v39 autoUpdateEnabled])
    {
      if ([v39 autoUpdateEnabled])
      {
        if (v41->_updateToInstall)
        {
          client = v41->_client;
          v21 = _NSConcreteStackBlock;
          v22 = -1073741824;
          v23 = 0;
          v24 = sub_29118;
          v25 = &unk_60310;
          v26 = v41;
          [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v21];
          objc_storeStrong(&v26, 0);
        }

        [(SUSUISoftwareUpdateController *)v41 _realertWithStrategy:0 andReason:@"Auto update enabled"];
      }

      else
      {
        [(SUSUISoftwareUpdateController *)v41 _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
        [(SUSUISoftwareUpdateController *)v41 _setPasscodePolicyType:0];
        if ((v35 & 1) == 0 && v41->_updateToInstall)
        {
          [(SUSUISoftwareUpdateController *)v41 _realertWithStrategy:1 andReason:@"Auto update turned off"];
        }

        [(SUManagerClient *)v41->_client currentAutoInstallOperation:0 withResult:&stru_604B8];
      }
    }
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 managedInstallationRequested:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  if (v14->_updateToInstall)
  {
    if ([v12 autoUpdateEnabled])
    {
      client = v14->_client;
      v6 = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_296CC;
      v10 = &unk_60310;
      v11 = v14;
      [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v6];
      objc_storeStrong(&v11, 0);
    }

    else
    {
      [(SUSUISoftwareUpdateController *)v14 _realertWithStrategy:6 andReason:@"Managed Install request received"];
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 handleUIForDDMDeclaration:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSUIDDMController *)v7->_ddmController setDeclaration:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 handleUIForDDMGlobalSettings:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSUIDDMController *)v7->_ddmController setGlobalSettings:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)getDDMUpdateDescriptor
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(SUManagerClient *)self->_client getDDMUpdateDescriptor];
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)client:(id)a3 presentingRecommendedUpdate:(id)a4 shouldPresent:(BOOL)a5
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = a5;
  dispatch_assert_queue_V2(v27->_clientQueue);
  v23 = SUSUILog();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_29E04(v30, "[SUSUISoftwareUpdateController client:presentingRecommendedUpdate:shouldPresent:]", v25, v24);
    _os_log_impl(&dword_0, v23, v22, "%s update:%@ shouldPresent:%d", v30, 0x1Cu);
  }

  objc_storeStrong(&v23, 0);
  if ([(SUSUIDDMController *)v27->_ddmController notificationsDisabledByGlobalSettings])
  {
    v21 = SUSUILog();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v29, "[SUSUISoftwareUpdateController client:presentingRecommendedUpdate:shouldPresent:]");
      _os_log_impl(&dword_0, v21, v20, "%s: notifications disabled by global settings", v29, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v19 = 1;
  }

  else
  {
    v18 = [(SUSUISoftwareUpdateController *)v27 settingsForeground];
    if (v18)
    {
      v17 = SUSUILog();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sub_186B0(v28, "[SUSUISoftwareUpdateController client:presentingRecommendedUpdate:shouldPresent:]");
        _os_log_impl(&dword_0, v17, v16, "%s: Not showing recommended update UI due to preferences being open", v28, 0xCu);
      }

      objc_storeStrong(&v17, 0);
    }

    else
    {
      v5 = location[0];
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_29E74;
      v12 = &unk_604E0;
      v15 = v24;
      v13 = v25;
      v14 = v27;
      [v5 isDownloading:&v8];
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
    }

    v19 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 installTonightScheduled:(BOOL)a4 operationID:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = 0;
  objc_storeStrong(&v18, a5);
  dispatch_assert_queue_V2(v21->_clientQueue);
  if (v19)
  {
    v17 = SUSUILog();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v22, v18);
      _os_log_impl(&dword_0, v17, v16, "Install Tonight (%@) is scheduled", v22, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    v6 = [(SUAutoInstallOperation *)v21->_scheduledTryTonightAutoInstallOperation id];
    v7 = [v6 isEqual:v18];

    if ((v7 & 1) == 0)
    {
      client = v21->_client;
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_2A2E0;
      v14 = &unk_60310;
      v15 = v21;
      [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v10];
      objc_storeStrong(&v15, 0);
    }
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 rollbackReadyToStart:(id)a4 options:(id)a5 completion:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  objc_storeStrong(&v10, a6);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A59C(v14, "[SUSUISoftwareUpdateController client:rollbackReadyToStart:options:completion:]", v12, v11);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s %@\nOptions: %@", v14, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 rollbackDidStart:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  dispatch_assert_queue_V2(v8->_clientQueue);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v9, "[SUSUISoftwareUpdateController client:rollbackDidStart:]", v6);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 rollbackDidFinish:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  dispatch_assert_queue_V2(v8[3]);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v9, "[SUSUISoftwareUpdateController client:rollbackDidFinish:]", v6);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)v8 _rollbackSucceeded:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  dispatch_assert_queue_V2(v11[3]);
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v12, "[SUSUISoftwareUpdateController client:rollbackDidFail:withError:]", v9);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s %@", v12, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  [(dispatch_queue_t *)v11 _rollbackFailed:v9 withError:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 scheduledRollbackReadyForReboot:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  dispatch_assert_queue_V2(v8[3]);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v9, "[SUSUISoftwareUpdateController client:scheduledRollbackReadyForReboot:]", v6);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)v8 rollbackCompleted:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceBootedAfterSplatOnlyRollback:(id)a3 rollbackDescriptor:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  dispatch_assert_queue_V2(v8[3]);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_186B0(v9, "[SUSUISoftwareUpdateController deviceBootedAfterSplatOnlyRollback:rollbackDescriptor:]");
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)v8 _bootedAfterRollback:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)a3 rollbackSuggested:(id)a4 info:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  dispatch_assert_queue_V2(v11[3]);
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v12, "[SUSUISoftwareUpdateController client:rollbackSuggested:info:]", v9);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s %@", v12, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  [(dispatch_queue_t *)v11 _rollbackSuggested:v9 info:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationWasCancelled:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v5->_clientQueue);
  if (v5->_scheduledTryTonightAutoInstallOperation == location[0])
  {
    [(SUSUISoftwareUpdateController *)v5 _autoInstallOperationWasCancelled:location[0] withRepopStrategy:1];
  }

  else
  {
    [location[0] setDelegate:0];
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_2AF9C(v6, location[0], v5->_scheduledTryTonightAutoInstallOperation);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Auto install operation (%p) cancelled, but we weren't tracking it (tracking %p currently).", v6, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationDidExpire:(id)a3 withError:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  dispatch_assert_queue_V2(v12->_clientQueue);
  if (v12->_scheduledTryTonightAutoInstallOperation == location[0])
  {
    v7 = 0;
    v5 = 0;
    if ([(SUSUISoftwareUpdateAlertModel *)v12->_alertModel alertFlow]== &dword_4 + 1)
    {
      v8 = [(SUDownload *)v12->_updateToInstall descriptor];
      v7 = 1;
      v5 = [v8 hideInstallAlert];
    }

    if (v7)
    {
    }

    v4 = 0;
    if ((v5 & 1) == 0)
    {
      v4 = 3;
    }

    [(SUSUISoftwareUpdateController *)v12 _autoInstallOperationDidExpire:location[0] withRepopStrategy:v4 error:v10];
  }

  else
  {
    [location[0] setDelegate:0];
    v9 = SUSUILog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_2AF9C(v13, location[0], v12->_scheduledTryTonightAutoInstallOperation);
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Auto install operation (%p) expired, but we weren't tracking it (tracking %p currently).", v13, 0x16u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationDidConsent:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v5->_clientQueue);
  scheduledTryTonightAutoInstallOperation = v5->_scheduledTryTonightAutoInstallOperation;
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationIsReadyToInstall:(id)a3 withResponse:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  dispatch_assert_queue_V2(v24->_clientQueue);
  v21 = SUSUILog();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sub_2AF9C(v26, location[0], v24->_scheduledTryTonightAutoInstallOperation);
    _os_log_impl(&dword_0, v21, v20, "Received event that auto install operation is ready to install (operation = %p, currentlyScheduledOperation = %p).", v26, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  if (v24->_scheduledTryTonightAutoInstallOperation && v24->_scheduledTryTonightAutoInstallOperation == location[0])
  {
    v16 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
    [(SUSUISoftwareUpdateInstallOptions *)v16 setAutomaticInstallAttempt:1];
    v5 = v24;
    v4 = v16;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_2B608;
    v11 = &unk_60508;
    v12 = v24;
    v13 = v16;
    v14 = location[0];
    v15 = v22;
    [(SUSUISoftwareUpdateController *)v5 _isUpdateInstallableWithInstallOptions:v4 andResponse:&v7];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  else
  {
    v19 = SUSUILog();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_2AF9C(v25, location[0], v24->_scheduledTryTonightAutoInstallOperation);
      _os_log_impl(&dword_0, v19, v18, "Auto install operation (%p) is ready to install, but we weren't tracking it (tracking %p currently).", v25, 0x16u);
    }

    objc_storeStrong(&v19, 0);
    v17 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationPasscodePolicyDidChange:(id)a3 passcodePolicyType:(unint64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v6[3]);
  [(dispatch_queue_t *)v6 _setPasscodePolicyType:a4];
  objc_storeStrong(location, 0);
}

- (void)_sendInstallTonightDidCompleteToObservers
{
  v11 = self;
  v10 = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  memset(__b, 0, sizeof(__b));
  obj = v11->_observers;
  v7 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v4);
      [v9 softwareUpdateControllerDidCompleteAutomaticInstallation:v11];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }
}

- (void)alertModel:(id)a3 alertFlowDidChangeFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = a5;
  dispatch_assert_queue_V2(v19[3]);
  v15 = SUSUILog();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    log = v15;
    type = v14;
    v9 = SUSUIStringForInstallAlertFlow(v17);
    v5 = v9;
    v13 = v5;
    v8 = SUSUIStringForInstallAlertFlow(v16);
    v12 = v8;
    sub_54AC(v20, v5, v12);
    _os_log_impl(&dword_0, log, type, "InstallAlertFlow changed from %{public}@ to %{public}@", v20, 0x16u);

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  if (v16 != 3 && v16 != 5)
  {
    [(dispatch_queue_t *)v19 _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
  }

  objc_storeStrong(location, 0);
}

- (void)initPostOTAFollowUpController
{
  v7[2] = self;
  v7[1] = a2;
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_2BC48;
  v6 = &unk_5CCB0;
  v7[0] = self;
  v9 = &unk_6F908;
  location = 0;
  objc_storeStrong(&location, &v2);
  if (*v9 != -1)
  {
    dispatch_once(v9, location);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);
}

- (id)_stringForInstallNotAllowableReason:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      goto LABEL_18;
    case 1uLL:
      v4 = @"Battery Low";
      break;
    case 2uLL:
      v4 = @"Network Required";
      break;
    case 4uLL:
      v4 = @"Insufficient Disk Space";
      break;
    case 8uLL:
      goto LABEL_22;
    case 0x10uLL:
      v4 = @"Keybag Required";
      break;
    case 0x20uLL:
      v4 = @"Passcode Locked";
      break;
    case 0x40uLL:
LABEL_22:
      v4 = @"iCloud Restore";
      break;
    case 0x80uLL:
      v4 = @"iTunes Sync";
      break;
    case 0x100uLL:
      v4 = @"Phone Call";
      break;
    case 0x200uLL:
      v4 = @"Carplay Connected";
      break;
    case 0x400uLL:
      v4 = @"Media Playing";
      break;
    case 0x800uLL:
      v4 = @"Driving";
      break;
    case 0x1000uLL:
      v4 = @"Wombat Enabled";
      break;
    case 0x2000000uLL:
      v4 = @"Already Installing";
      break;
    case 0x4000000uLL:
      v4 = @"Temporary Delay";
      break;
    case 0x8000000uLL:
      v4 = @"Not Installable";
      break;
    default:
LABEL_18:
      v4 = @"None";
      break;
  }

  return v4;
}

- (id)_allNonInstallableReasons
{
  v5 = &unk_6F918;
  location = 0;
  objc_storeStrong(&location, &stru_60528);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_6F910;

  return v2;
}

- (id)_waitableReasonsForShowingInstallAlert
{
  v5 = &unk_6F928;
  location = 0;
  objc_storeStrong(&location, &stru_60548);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_6F920;

  return v2;
}

- (int64_t)_springboardPasscodePolicyTypeFromSUPasscodePolicyType:(unint64_t)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  switch(a3)
  {
    case 0uLL:
      return 0;
    case 1uLL:
      return 1;
    case 2uLL:
      return 2;
  }

  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_13774(v9, v5);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Unknown SUPasscodePolicyType: %lu. Returning not required", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  return 0;
}

- (void)_setPasscodePolicyType:(unint64_t)a3
{
  v44 = self;
  v43 = a2;
  v42 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (![(SUSUIDDMController *)v44->_ddmController shouldEnforceUpdate]|| v42 == 2)
  {
    v38 = objc_alloc_init(SBSSoftwareUpdateService);
    v18 = +[SUKeybagInterface sharedInstance];
    v19 = [(SUKeybagInterface *)v18 hasPasscodeSet];

    if (v19)
    {
      v12 = +[SUSUIPreferences sharedInstance];
      v13 = [(SUSUIPreferences *)v12 passcodeRequiredDays];

      if (v13)
      {
        v10 = +[SUSUIPreferences sharedInstance];
        v9 = [(SUSUIPreferences *)v10 passcodeRequiredDays];
        v11 = [v9 integerValue];

        v30[1] = v11;
        if (v11)
        {
          v27 = SUSUILog();
          v26 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            sub_13774(v46, [(SUSUISoftwareUpdateController *)v44 _springboardPasscodePolicyTypeFromSUPasscodePolicyType:v42]);
            _os_log_impl(&dword_0, v27, v26, "Setting SBPasscodePolicy to: %ld", v46, 0xCu);
          }

          objc_storeStrong(&v27, 0);
          [v38 setPasscodePolicy:{-[SUSUISoftwareUpdateController _springboardPasscodePolicyTypeFromSUPasscodePolicyType:](v44, "_springboardPasscodePolicyTypeFromSUPasscodePolicyType:", v42)}];
        }

        else
        {
          v30[0] = SUSUILog();
          v29 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v30[0], OS_LOG_TYPE_DEFAULT))
          {
            v7 = v30[0];
            v8 = v29;
            sub_2544(v28);
            _os_log_impl(&dword_0, v7, v8, "Setting SBPasscodePolicy to required regardless of requested policyType because passcodeRequiredDays is set to 0", v28, 2u);
          }

          objc_storeStrong(v30, 0);
          [v38 setPasscodePolicy:2];
        }
      }

      else
      {
        v5 = [(SUDownload *)v44->_updateToInstall descriptor];
        v6 = [v5 forcePasscodeRequired];

        if (v6)
        {
          v25 = SUSUILog();
          v24 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v3 = v25;
            v4 = v24;
            sub_2544(v23);
            _os_log_impl(&dword_0, v3, v4, "Setting SBPasscodePolicy to required because ForcePasscodeRequired is set on descriptor", v23, 2u);
          }

          objc_storeStrong(&v25, 0);
          [v38 setPasscodePolicy:2];
        }

        else
        {
          v22 = SUSUILog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            sub_13774(v45, [(SUSUISoftwareUpdateController *)v44 _springboardPasscodePolicyTypeFromSUPasscodePolicyType:v42]);
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Setting SBPasscodePolicy to: %ld", v45, 0xCu);
          }

          objc_storeStrong(&v22, 0);
          [v38 setPasscodePolicy:{-[SUSUISoftwareUpdateController _springboardPasscodePolicyTypeFromSUPasscodePolicyType:](v44, "_springboardPasscodePolicyTypeFromSUPasscodePolicyType:", v42)}];
        }
      }

      v44->_passcodePolicy = v42;
    }

    else
    {
      v37 = [(SUSUISoftwareUpdateController *)v44 _springboardPasscodePolicyTypeFromSUPasscodePolicyType:0];
      if ([v38 passcodePolicy] == v37)
      {
        v33 = SUSUILog();
        v32 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v33;
          v15 = v32;
          sub_2544(v31);
          _os_log_impl(&dword_0, v14, v15, "No passcode set on device. Not setting passcode policy", v31, 2u);
        }

        objc_storeStrong(&v33, 0);
      }

      else
      {
        v36 = SUSUILog();
        v35 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v36;
          v17 = v35;
          sub_2544(v34);
          _os_log_impl(&dword_0, v16, v17, "No passcode set on device. Setting passcode policy to not required", v34, 2u);
        }

        objc_storeStrong(&v36, 0);
        [v38 setPasscodePolicy:v37];
      }

      v44->_passcodePolicy = 0;
    }

    objc_storeStrong(&v38, 0);
  }

  else
  {
    location = SUSUILog();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v40;
      sub_2544(v39);
      _os_log_impl(&dword_0, log, type, "[DDM] Blocked setting passcode to anything but required past enforced install date", v39, 2u);
    }

    objc_storeStrong(&location, 0);
  }
}

- (BOOL)_createAutoInstallKeybagWithPasscode:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v19->_clientQueue);
  v17 = 1;
  if ([(SUSUISoftwareUpdateController *)v19 _isAutoUpdateEnabled]|| [(SUSUIDDMController *)v19->_ddmController shouldEnforceUpdate])
  {
    v16 = objc_alloc_init(SUKeybagOptions);
    [v16 setPasscode:location[0]];
    [v16 setKeybagType:1];
    v9 = [(SUDownload *)v19->_updateToInstall descriptor];
    [v16 setDescriptor:?];

    v17 = [(SUManagerClient *)v19->_client createInstallationKeybagWithOptions:v16];
    if ((v17 & 1) == 0)
    {
      v15 = SUSUILog();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        log = v15;
        type = v14;
        sub_2544(v13);
        _os_log_impl(&dword_0, log, type, "Failed to create keybag", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v12 = SUSUILog();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v12;
      v6 = v11;
      sub_2544(v10);
      _os_log_impl(&dword_0, v5, v6, "AutoInstall not allowed, so not creating keybag", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
  }

  v4 = v17;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)_autoInstallOperationWasCancelled:(id)a3 withRepopStrategy:(unint64_t)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  dispatch_assert_queue_V2(v13->_clientQueue);
  v10 = SUSUILog();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    v6 = [location[0] id];
    v8 = v6;
    sub_1FCC(v14, v8);
    _os_log_impl(&dword_0, log, type, "Auto install operation (%@) was cancelled.", v14, 0xCu);

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  [(SUSUISoftwareUpdateController *)v13 _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
  [(SUSUISoftwareUpdateAlertModel *)v13->_alertModel autoInstallOperationEnded:0];
  [(SUSUISoftwareUpdateController *)v13 _dismissInstallAlertsWithReason:@"Auto install operation cancelled" includingInstallTonight:1 withRealertStrategy:v11];
  objc_storeStrong(location, 0);
}

- (unint64_t)getPasscodePolicyForAlertModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 1;
  v13 = 1;
  if ((+[SUUtility currentReleaseTypeIsInternal]& 1) != 0)
  {
    v12 = SUSUILog();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_11844(v17, 1);
      _os_log_impl(&dword_0, v12, v11, "Apple internal, changing passcode required days to %i", v17, 8u);
    }

    objc_storeStrong(&v12, 0);
    v13 = 1;
  }

  v8 = +[SUSUIPreferences sharedInstance];
  v9 = [(SUSUIPreferences *)v8 passcodeRequiredDays];

  if (v9)
  {
    v7 = +[SUSUIPreferences sharedInstance];
    v6 = [(SUSUIPreferences *)v7 passcodeRequiredDays];
    v13 = [v6 integerValue];
  }

  v10 = SUSUILog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_13774(v16, v13);
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Passcode required days set to %ld", v16, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  if ([location[0] autoUpdateRetryCount] > 1)
  {
    v3 = [location[0] autoUpdateRetryCount];
    if (!(v3 % v13))
    {
      v14 = 2;
    }
  }

  v5 = v14;
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_autoInstallOperationDidExpire:(id)a3 withRepopStrategy:(unint64_t)a4 error:(id)a5
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = 0;
  objc_storeStrong(&v21, a5);
  dispatch_assert_queue_V2(v24->_clientQueue);
  v20 = SUSUILog();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sub_23504(v26, location[0], v21);
    _os_log_impl(&dword_0, v20, v19, "Auto install operation (%p) expired with error: %@", v26, 0x16u);
  }

  objc_storeStrong(&v20, 0);
  [(SUSUISoftwareUpdateAlertModel *)v24->_alertModel autoUpdateExpired];
  v18 = 30;
  if ((+[SUUtility currentReleaseTypeIsInternal]& 1) != 0)
  {
    v17 = SUSUILog();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_11844(v25, 30);
      _os_log_impl(&dword_0, v17, v16, "Apple internal, changing auto update attempts to %i", v25, 8u);
    }

    objc_storeStrong(&v17, 0);
    v18 = 30;
  }

  if ([(SUSUISoftwareUpdateAlertModel *)v24->_alertModel alertFlow]== &dword_4 + 1 && (v5 = [(SUSUISoftwareUpdateAlertModel *)v24->_alertModel autoUpdateRetryCount], v5 < v18))
  {
    v15 = [(SUSUISoftwareUpdateController *)v24 getPasscodePolicyForAlertModel:v24->_alertModel];
    client = v24->_client;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_2D388;
    v13 = &unk_60570;
    v14[0] = v24;
    v14[1] = v15;
    [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v9];
    objc_storeStrong(v14, 0);
  }

  else
  {
    [(SUSUISoftwareUpdateController *)v24 _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
    [(SUSUISoftwareUpdateAlertModel *)v24->_alertModel autoInstallOperationEnded:1];
    [(SUSUISoftwareUpdateController *)v24 _dismissInstallAlertsWithReason:@"Auto install operation expired" includingInstallTonight:1 withRealertStrategy:v22];
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_installUpdate:(unint64_t)a3 withInstallOperation:(id)a4 source:(unint64_t)a5 options:(id)a6
{
  v49 = self;
  v48 = a2;
  v47 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v45 = a5;
  v44 = 0;
  objc_storeStrong(&v44, a6);
  dispatch_assert_queue_V2(v49->_clientQueue);
  if (v49->_updateToInstall)
  {
    if (v44)
    {
      v16 = 0;
      if ([v44 automaticInstallAttempt])
      {
        v16 = v45 == 1;
      }

      v43 = v16;
      if (v16)
      {
        [v44 setInstallDark:1];
      }
    }

    v42 = SUSUILog();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      log = v42;
      type = v41;
      v15 = SUSUIStringForInstallType(v47);
      v40 = v15;
      sub_4B94(v51, v40);
      _os_log_impl(&dword_0, log, type, "Installation asked for of type: %{public}@", v51, 0xCu);

      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    [(SUSUISoftwareUpdateController *)v49 _realertWithStrategy:0 andReason:@"Install"];
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_2DAE8;
    v35 = &unk_60598;
    v36 = v49;
    v38[1] = v47;
    v37 = v44;
    v38[0] = location;
    v39 = objc_retainBlock(&v31);
    v30 = [(SUManagerClient *)v49->_client isInstallationKeybagRequired];
    if ((v30 & 1) == 0 || [(SUSUISoftwareUpdateAlertModel *)v49->_alertModel alertFlow]== &dword_4 + 1)
    {
      (*(v39 + 2))();
    }

    else
    {
      v29 = SUSUILog();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v29;
        v11 = v28;
        v12 = 1;
        if (v47 != &dword_0 + 1)
        {
          v12 = v47 == &dword_0 + 2;
        }

        v9 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)v49->_alertModel alertFlow]);
        v27 = v9;
        sub_2DBA8(v50, v30 & 1, v12, v27);
        _os_log_impl(&dword_0, v10, v11, "Presenting authentication UI because: keybagRequired=%d, installTypeTonight? %d alertflow: %@", v50, 0x18u);

        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v29, 0);
      v7 = v49;
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_2DC14;
      v23 = &unk_605C0;
      v26 = v39;
      v24 = v44;
      v25 = v49;
      v6 = v47;
      v8 = [location forecast];
      [(SUSUISoftwareUpdateController *)v7 _presentAuthenticationUIForInstallation:&v19 withInstallType:v6 withInstallOperationForecast:?];

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v39, 0);
    objc_storeStrong(v38, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    [(SUSUISoftwareUpdateController *)v49 _dismissInstallAlertsWithReason:@"No update to install anymore" includingInstallTonight:1 withRealertStrategy:0];
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&location, 0);
}

- (void)_doInstallNowWithOptions:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v18->_clientQueue);
  v16 = [location[0] automaticInstallAttempt];
  if ((v16 & 1) == 0)
  {
    [(SUSUISoftwareUpdateAlertModel *)v18->_alertModel willInstallWithType:0];
  }

  v15 = 0;
  if (location[0])
  {
    v3 = [SUInstallOptions alloc];
    v4 = [v3 initWithSUSUIInstallOptions:location[0]];
    v5 = v15;
    v15 = v4;
  }

  client = v18->_client;
  v6 = v15;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_2DE60;
  v12 = &unk_5D080;
  v13 = location[0];
  v14 = v18;
  [(SUManagerClient *)client installUpdateWithInstallOptions:v6 withResult:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_doInstallTonight:(id)a3 consent:(BOOL)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  dispatch_assert_queue_V2(v18[3]);
  v6 = v18[6];
  if ([v6 alertFlow]== &dword_4 + 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v6 willInstallWithType:v4];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_2E228;
  v12 = &unk_605E8;
  v13 = v18;
  v14 = v16;
  v15 = objc_retainBlock(&v8);
  if ([location[0] _isValidForScheduling])
  {
    (*(v15 + 2))(v15, location[0]);
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v19, location[0]);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "A software update 'try tonight' auto install operation (%p) was attempted to be scheduled, but it was already expired or cancelled when we got it.  Trying to fetch a new one.", v19, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(dispatch_queue_t *)v18 _createInstallTonightOperationWithResult:v15];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_setPendingInstallOptions:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_pendingInstallOptions != location[0])
  {
    objc_storeStrong(&v4->_pendingInstallOptions, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_setInstallPolicy:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(SUInstallPolicy *)v4->_installPolicy isEqual:location[0]]& 1) == 0)
  {
    objc_storeStrong(&v4->_installPolicy, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupAutoUpdate:(id)a3 withPasscodePolicy:(unint64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v6->_clientQueue);
  [(SUSUISoftwareUpdateAlertModel *)v6->_alertModel willInstallWithType:2];
  [(SUSUISoftwareUpdateController *)v6 autoInstallTonightWithOperation:location[0]];
  [(SUSUISoftwareUpdateController *)v6 _setPasscodePolicyType:a4];
  objc_storeStrong(location, 0);
}

- (void)_setTryTonightAutoInstallOperation:(id)a3 cancelIfNecessary:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  if (v11->_scheduledTryTonightAutoInstallOperation != location[0])
  {
    [(SUAutoInstallOperation *)v11->_scheduledTryTonightAutoInstallOperation setDelegate:0];
    if (v11->_scheduledTryTonightAutoInstallOperation && v9)
    {
      oslog = SUSUILog();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        if (v9)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        sub_2E938(v13, v11->_scheduledTryTonightAutoInstallOperation, location[0], v4);
        _os_log_impl(&dword_0, oslog, type, "Cancelling current auto install operation (%{public}@) for new operation: %{public}@ (cancelIfNecessary: %@)", v13, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      [(SUAutoInstallOperation *)v11->_scheduledTryTonightAutoInstallOperation cancel];
    }

    objc_storeStrong(&v11->_scheduledTryTonightAutoInstallOperation, location[0]);
    if (v11->_scheduledTryTonightAutoInstallOperation)
    {
      [(SUAutoInstallOperation *)v11->_scheduledTryTonightAutoInstallOperation setDelegate:v11];
      v6 = SUSUILog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_4B94(v12, v11->_scheduledTryTonightAutoInstallOperation);
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Now tracking a new install tonight operation: %{public}@", v12, 0xCu);
      }

      objc_storeStrong(&v6, 0);
      [(SUSUISoftwareUpdateController *)v11 _dismissInstallAlertsWithReason:@"install tonight scheduled" includingInstallTonight:1 withRealertStrategy:0];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_dismissInstallAlertsWithReason:(id)a3 includingInstallTonight:(BOOL)a4 withRealertStrategy:(unint64_t)a5
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUIAlertPresentationManager *)v9->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  if (a4)
  {
    [(SUSUIAlertPresentationManager *)v9->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
    [(SUSUIFullScreenAlertPresentationManager *)v9->_fullScreenAlertPresentationManager dismissAlertsOfClass:objc_opt_class()];
  }

  [(SUSUISoftwareUpdateController *)v9 _realertWithStrategy:a5 andReason:location[0], location];
  objc_storeStrong(v5, 0);
}

- (BOOL)_isShowingInstallAlert
{
  v24 = self;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  v20 = [(SUSUIAlertPresentationManager *)self->_alertPresentationManager presentedAlerts];
  memset(__b, 0, 0x40uLL);
  obj = v20;
  v15 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v13)
        {
          goto LABEL_10;
        }
      }
    }

    v22 = 1;
    v18 = 2;
  }

  else
  {
LABEL_10:
    v18 = 0;
  }

  location = [(SUSUIFullScreenAlertPresentationManager *)v24->_fullScreenAlertPresentationManager activeFullScreenAlerts];
  memset(v16, 0, 0x40uLL);
  v8 = location;
  v9 = [v8 countByEnumeratingWithState:v16 objects:v25 count:16];
  if (v9)
  {
    v5 = *v16[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*v16[2] != v5)
      {
        objc_enumerationMutation(v8);
      }

      v16[8] = *(v16[1] + 8 * v6);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v8 countByEnumeratingWithState:v16 objects:v25 count:16];
        if (!v7)
        {
          goto LABEL_19;
        }
      }
    }

    v21 = 1;
    v18 = 4;
  }

  else
  {
LABEL_19:
    v18 = 0;
  }

  v3 = 1;
  if ((v22 & 1) == 0)
  {
    v3 = v21;
  }

  v18 = 1;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v20, 0);
  return v3 & 1;
}

- (id)getNextLastPredictedUnlockDateFromDuet:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  v24 = objc_alloc_init(_CDSleepForAutoSu);
  if (location[0])
  {
    v3 = [v24 predicitLastUnlockForDay:location[0]];
    v4 = v25;
    v25 = v3;

    v23 = SUSUILog();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      log = v23;
      type = v22;
      v16 = [SUUtility prettyPrintDate:location[0]];
      v12 = v16;
      v21 = v12;
      v15 = [SUUtility prettyPrintDate:v25];
      v20 = v15;
      sub_54AC(v28, v12, v20);
      _os_log_impl(&dword_0, log, type, "[SUSUISoftwareUpdateController] Duet predicts the next last unlock date from %{public}@ is %{public}@", v28, 0x16u);

      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
  }

  else
  {
    v5 = [v24 predictNextDateForLastUnlockAttemptOfTheDay];
    v6 = v25;
    v25 = v5;

    v19 = SUSUILog();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v19;
      v10 = v18;
      v11 = [SUUtility prettyPrintDate:v25];
      v17 = v11;
      sub_4B94(v27, v17);
      _os_log_impl(&dword_0, v9, v10, "[SUSUISoftwareUpdateController] Duet predicts the next last unlock date from now is %{public}@", v27, 0xCu);

      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
  }

  v8 = v25;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)computeNextLastPredictedUnlockDateMinus4HoursFromStartDate:(id)a3
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = [(SUSUISoftwareUpdateController *)v48 getNextLastPredictedUnlockDateFromDuet:location[0]];
  v45 = 0;
  v42 = 0;
  if (location[0])
  {
    v3 = location[0];
  }

  else
  {
    v43 = +[NSDate date];
    v42 = 1;
    v3 = v43;
  }

  v44 = v3;
  if (v42)
  {
  }

  v41 = +[NSCalendar autoupdatingCurrentCalendar];
  if (v46)
  {
    v4 = [v41 dateByAddingUnit:32 value:-4 toDate:v46 options:0];
    v5 = v45;
    v45 = v4;
  }

  v38 = 0;
  v24 = 1;
  if (v45)
  {
    v39 = [v45 earlierDate:v44];
    v38 = 1;
    v24 = v39 == v45;
  }

  if (v38)
  {
  }

  v40 = v24;
  if (v24)
  {
    v37 = SUSUILog();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      log = v37;
      type = v36;
      v23 = [SUUtility prettyPrintDate:v45];
      v19 = v23;
      v35 = v19;
      v22 = [SUUtility prettyPrintDate:v44];
      v34 = v22;
      sub_54AC(v51, v19, v34);
      _os_log_impl(&dword_0, log, type, "[SUSUISoftwareUpdateController] Duet prediction -4 hours (%{public}@) is before start date (%{public}@) or nil.  Correcting to use hardcoded 8:00 PM on or after the start date.", v51, 0x16u);

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    objc_storeStrong(&v37, 0);
    v33 = [v41 dateBySettingHour:20 minute:0 second:0 ofDate:v44 options:?];
    v18 = [v33 earlierDate:v44];

    if (v18 == v33)
    {
      v6 = [v41 dateByAddingUnit:16 value:1 toDate:v33 options:0];
      v7 = v33;
      v33 = v6;
    }

    objc_storeStrong(&v45, v33);
    objc_storeStrong(&v33, 0);
  }

  v32 = [SUUtility randomIntWithMinVal:"randomIntWithMinVal:maxVal:" maxVal:?];
  v31 = [SUUtility randomIntWithMinVal:0 maxVal:59];
  v30 = SUSUILog();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v30;
    v16 = v29;
    v17 = [SUUtility prettyPrintDate:v45];
    v28 = v17;
    sub_2F8CC(v50, v28, v32, v31);
    _os_log_impl(&dword_0, v15, v16, "[SUSUISoftwareUpdateController] nextLastPredictedUnlockDateMinus4Hours date computed: %{public}@, adding jitter of %d minutes and %d seconds", v50, 0x18u);

    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  v8 = [v45 dateByAddingTimeInterval:(60 * v32 + v31)];
  v9 = v45;
  v45 = v8;

  oslog = SUSUILog();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = oslog;
    v13 = v26;
    v14 = [SUUtility prettyPrintDate:v45];
    v25 = v14;
    sub_4B94(v49, v25);
    _os_log_impl(&dword_0, v12, v13, "[SUSUISoftwareUpdateController] Final date computed: %{public}@", v49, 0xCu);

    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&oslog, 0);
  v11 = v45;
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)_computeNextLastPredictedUnlockDateMinus4HoursFromNow
{
  v4 = +[NSDate date];
  v5 = [(SUSUISoftwareUpdateController *)self computeNextLastPredictedUnlockDateMinus4HoursFromStartDate:?];

  return v5;
}

- (int64_t)_delayDaysForSkips:(int64_t)a3 isRequiredInstall:(BOOL)a4
{
  v5 = 0;
  if (!a4)
  {
    if (a3)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)_computeDefaultRealertDate
{
  v44 = self;
  v43[1] = a2;
  v43[0] = [(SUSUISoftwareUpdateController *)self _computeNextLastPredictedUnlockDateMinus4HoursFromNow];
  v42 = 0;
  v41 = [(SUSUISoftwareUpdateAlertModel *)v44->_alertModel currentInstallationPolicy];
  v40 = [v41 type] == &dword_0 + 1;
  if (v40)
  {
    v26 = [(SUSUISoftwareUpdateAlertModel *)v44->_alertModel remindMeLaterCountSinceRequiringInstallation];
  }

  else
  {
    v26 = [(SUSUISoftwareUpdateAlertModel *)v44->_alertModel remindMeLaterCountForCurrentUpdate];
  }

  v39 = v26;
  v24 = +[SUSUIPreferences sharedInstance];
  v25 = [(SUSUIPreferences *)v24 alertAfterDownload];

  if ((v25 & 1) == 0 || v39)
  {
    if ([(SUSUISoftwareUpdateAlertModel *)v44->_alertModel alertFlow]!= &dword_4 + 1)
    {
      v42 = [(SUSUISoftwareUpdateController *)v44 _delayDaysForSkips:v39 isRequiredInstall:v40];
      if (v42 > 0)
      {
        v21 = +[NSCalendar currentCalendar];
        v2 = [(NSCalendar *)v21 dateByAddingUnit:16 value:v42 toDate:v43[0] options:0];
        v3 = v43[0];
        v43[0] = v2;
      }

      v34 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
      v19 = +[NSDate date];
      v20 = [v34 isDate:v43[0] inSameDayAsDate:?];

      v33 = v20;
      if (v20)
      {
        v18 = +[NSCalendar currentCalendar];
        v4 = [(NSCalendar *)v18 dateByAddingUnit:16 value:1 toDate:v43[0] options:0];
        v5 = v43[0];
        v43[0] = v4;

        ++v42;
        v32 = SUSUILog();
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v32;
          v17 = v31;
          sub_2544(v30);
          _os_log_impl(&dword_0, v16, v17, "calculated realert day is on the same day as today. Adding one day to realert date", v30, 2u);
        }

        objc_storeStrong(&v32, 0);
      }

      objc_storeStrong(&v34, 0);
    }

    v29 = SUSUILog();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v29;
      v14 = v28;
      v9 = v39;
      v6 = @"Required";
      if (!v40)
      {
        v6 = @"Default";
      }

      v10 = v6;
      v11 = [v41 skipsAllowed];
      v12 = v42;
      v15 = [SUUtility prettyPrintDate:v43[0]];
      v27 = v15;
      sub_2FFB8(v46, v9, v10, v11, v12, v27);
      _os_log_impl(&dword_0, v13, v14, "[SUSUISoftwareUpdateController] Compute default re-alert date consulting remind me later count (%ld) from policy [%{public}@] (skips allowed: %lu, delaying realert for %ld days) to determine if we need to adjust to one week later than computed time - adjusted time: %{public}@", v46, 0x34u);

      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    v45 = v43[0];
    v35 = 1;
  }

  else
  {
    location = SUSUILog();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v37;
      sub_2544(v36);
      _os_log_impl(&dword_0, log, type, "overriding installation alert date to now", v36, 2u);
    }

    objc_storeStrong(&location, 0);
    v45 = +[NSDate date];
    v35 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(v43, 0);
  v7 = v45;

  return v7;
}

- (void)_realertWithStrategy:(unint64_t)a3 andReason:(id)a4
{
  v35 = self;
  v34 = a2;
  v33 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  dispatch_assert_queue_V2(v35[3]);
  *(v35 + 56) = 0;
  if (v33 != 6)
  {
    [(dispatch_queue_t *)v35 _unregisterForInstallationConstraintChangeNotifications];
  }

  *(v35 + 57) = 0;
  [(dispatch_queue_t *)v35 _unregisterForUnlockNotifications];
  if (v35[4] && ([(dispatch_queue_t *)v35 _shouldShowOrScheduleInstallAlert]& 1) != 0)
  {
    if (([(dispatch_queue_t *)v35 canDeferInstallation]& 1) == 0 && (v33 == 1 || v33 == 2))
    {
      v31 = SUSUILog();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        log = v31;
        type = v30;
        v13 = SUSUIStringForInstallAlertRepopStrategy(v33);
        v9 = v13;
        v29 = v9;
        v12 = SUSUIStringForInstallAlertRepopStrategy(7);
        v28 = v12;
        sub_2E938(v37, v9, v28, location);
        _os_log_impl(&dword_0, log, type, "[Install Alert] Repop strategy swizzled from %{public}@ to: %{public}@ due to inability to defer updates for install (External reason for change: %@)", v37, 0x20u);

        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
      }

      objc_storeStrong(&v31, 0);
      v33 = 7;
    }

    else
    {
      v27 = SUSUILog();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v27;
        v7 = v26;
        v8 = SUSUIStringForInstallAlertRepopStrategy(v33);
        v25 = v8;
        sub_4E04(v36, v25, location);
        _os_log_impl(&dword_0, v6, v7, "[Install Alert] Repop strategy changed to: %{public}@ (Reason=%@)", v36, 0x16u);

        objc_storeStrong(&v25, 0);
      }

      objc_storeStrong(&v27, 0);
    }

    v24 = +[NSCalendar autoupdatingCurrentCalendar];
    v23 = +[NSDate date];
    if (v33)
    {
      switch(v33)
      {
        case 1uLL:
          v22 = [(dispatch_queue_t *)v35 _computeDefaultRealertDate];
          [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:v22 repopStrategy:v33 forReason:location];
          objc_storeStrong(&v22, 0);
          break;
        case 2uLL:
          v21 = [(dispatch_queue_t *)v35 _computeNextLastPredictedUnlockDateMinus4HoursFromNow];
          v20 = [v24 dateByAddingUnit:16 value:7 toDate:v21 options:0];
          [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:v20 repopStrategy:v33 forReason:location];
          objc_storeStrong(&v20, 0);
          objc_storeStrong(&v21, 0);
          break;
        case 3uLL:
          [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:0 repopStrategy:3 forReason:location];
          [(dispatch_queue_t *)v35 _showOrScheduleNextInstallAlert];
          break;
        case 4uLL:
          v19 = [v24 dateByAddingUnit:128 value:5 toDate:v23 options:0];
          [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:v19 repopStrategy:v33 forReason:location];
          objc_storeStrong(&v19, 0);
          break;
        case 5uLL:
          v18 = [v24 dateByAddingUnit:64 value:1 toDate:v23 options:0];
          [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:v18 repopStrategy:v33 forReason:location];
          objc_storeStrong(&v18, 0);
          break;
        case 6uLL:
          *(v35 + 56) = 1;
          [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:0 repopStrategy:v33 forReason:location];
          [(dispatch_queue_t *)v35 _registerForInstallationConstraintChangedNotifications];
          break;
        case 7uLL:
          *(v35 + 57) = 1;
          [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:0 repopStrategy:v33 forReason:location];
          [(dispatch_queue_t *)v35 _registerForUnlockNotifications];
          break;
      }
    }

    else
    {
      [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:0 repopStrategy:0 forReason:location];
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v17 = [NSString stringWithFormat:@"No more update to install: %@", location];
    [(dispatch_queue_t *)v35 _scheduleInstallAlertReminderWithDate:0 repopStrategy:v33 forReason:v17];
    oslog = SUSUILog();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v15;
      sub_2544(v14);
      _os_log_impl(&dword_0, v4, v5, "[Install Alert] Installation alert was halted due to not having an update to install anymore.", v14, 2u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)_showSUAvailableAlertForDescriptor:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ((+[SUManagerClient _shouldDisallowAvailabilityNotifications]& 1) != 0)
  {
    v25 = SUSUILog();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      log = v25;
      type = v24;
      sub_2544(v23);
      _os_log_impl(&dword_0, log, type, "Ignoring SU availability notification because a preference has disabled them.", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
  }

  else if ([location[0] isSplatOnly])
  {
    v21 = SUSUILog();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v21;
      v9 = v20;
      sub_2544(v19);
      _os_log_impl(&dword_0, v8, v9, "Ignoring SU availability notification for a Splat update", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v22 = 1;
  }

  else if ([location[0] hideInstallAlert])
  {
    v18 = SUSUILog();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v18;
      v7 = v17;
      sub_2544(v16);
      _os_log_impl(&dword_0, v6, v7, "Ignoring SU availability notification because a descriptor specifies we hide SU alerts", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v22 = 1;
  }

  else if ([(SUSUIDDMController *)v27->_ddmController notificationsDisabledByGlobalSettings])
  {
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v15;
      v5 = v14;
      sub_2544(v13);
      _os_log_impl(&dword_0, v4, v5, "Ignoring SU availability notification because disabled by global settings", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v22 = 1;
  }

  else
  {
    v3 = [SUSUISoftwareUpdateAvailableAlertItem alloc];
    v12 = [(SUSUIBaseSoftwareUpdateAlertItem *)v3 initWithDescriptor:location[0] softwareUpdateController:v27];
    [(SUSUIAlertPresentationManager *)v27->_alertPresentationManager presentAlert:v12 animated:1];
    objc_storeStrong(&v12, 0);
    v22 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_unregisterForInstallationConstraintChangeNotifications
{
  v7 = self;
  location[1] = a2;
  if (self->_registeredForInstallationConstraintChanges)
  {
    location[0] = SUSUILog();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v5;
      sub_2544(v4);
      _os_log_impl(&dword_0, log, type, "Unregister for installation constraint changes.", v4, 2u);
    }

    objc_storeStrong(location, 0);
    v7->_registeredForInstallationConstraintChanges = 0;
    [(SUInvalidatable *)v7->_installationConstraintObserver invalidate];
    objc_storeStrong(&v7->_installationConstraintObserver, 0);
    [(SUSUILayoutStateMonitor *)v7->_layoutStateMonitor removeObserver:v7];
  }
}

- (void)_registerForInstallationConstraintChangedNotifications
{
  v19 = self;
  location[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!v19->_registeredForInstallationConstraintChanges)
  {
    location[0] = SUSUILog();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v17;
      sub_2544(v16);
      _os_log_impl(&dword_0, log, type, "Register for installation constraint changes.", v16, 2u);
    }

    objc_storeStrong(location, 0);
    v19->_registeredForInstallationConstraintChanges = 1;
    [(SUSUILayoutStateMonitor *)v19->_layoutStateMonitor addObserver:v19];
    objc_initWeak(&v15, v19);
    client = v19->_client;
    updateToInstall = v19->_updateToInstall;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_30D44;
    v12 = &unk_60638;
    v13 = v19;
    objc_copyWeak(&v14, &v15);
    v2 = [(SUManagerClient *)client observeInstallationConstraintChangesForDownload:updateToInstall observer:&v8];
    installationConstraintObserver = v19->_installationConstraintObserver;
    v19->_installationConstraintObserver = v2;

    objc_destroyWeak(&v14);
    objc_storeStrong(&v13, 0);
    objc_destroyWeak(&v15);
  }
}

- (void)_registerForUnlockNotifications
{
  if (!self->_uiLockedLayoutStateMonitor)
  {
    v2 = objc_alloc_init(SUSUILayoutStateMonitor);
    uiLockedLayoutStateMonitor = self->_uiLockedLayoutStateMonitor;
    self->_uiLockedLayoutStateMonitor = v2;
  }

  [(SUSUILayoutStateMonitor *)self->_uiLockedLayoutStateMonitor addObserver:self];
}

- (void)_unregisterForUnlockNotifications
{
  if (self->_uiLockedLayoutStateMonitor)
  {
    [(SUSUILayoutStateMonitor *)self->_uiLockedLayoutStateMonitor removeObserver:self];
    objc_storeStrong(&self->_uiLockedLayoutStateMonitor, 0);
  }
}

- (void)setUpdateToInstall:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_updateToInstall != location[0])
  {
    objc_storeStrong(&v4->_updateToInstall, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_showOrScheduleNextInstallAlertFromTimer:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "Timer fired for install alert", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  [(SUSUISoftwareUpdateController *)v9 _showOrScheduleNextInstallAlert];
  objc_storeStrong(location, 0);
}

- (void)_showOrScheduleNextInstallAlert
{
  v8[2] = self;
  v8[1] = a2;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_312F0;
  v7 = &unk_60660;
  v8[0] = self;
  [(SUSUISoftwareUpdateController *)self _isUpdateInstallable:?];
  objc_storeStrong(v8, 0);
}

- (BOOL)_showNextInstallAlertWithReasons:(int64_t)a3 orScheduleIfNecessary:(BOOL)a4 withInstallOptions:(id)a5
{
  v43 = self;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  dispatch_assert_queue_V2(v43->_clientQueue);
  v38 = SUSUILog();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    log = v38;
    type = v37;
    v23 = SUStringFromInstallationConstraints();
    v36 = v23;
    sub_31B6C(v46, "[SUSUISoftwareUpdateController _showNextInstallAlertWithReasons:orScheduleIfNecessary:withInstallOptions:]", v36, v40, location);
    _os_log_impl(&dword_0, log, type, "%s: reasons: %@, scheduleIfNecessary: %d, options: %@", v46, 0x26u);

    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  if (v40)
  {
    [(SUSUISoftwareUpdateController *)v43 _realertWithStrategy:0 andReason:@"_showNextInstallAlertWithReason"];
  }

  v35 = v41;
  v34 = (v41 & 0x10) != 0;
  if ((v41 & 0x10) == 0 || [(SUSUISoftwareUpdateAlertModel *)v43->_alertModel alertFlow]== &dword_0 + 2)
  {
    if (!v34 && [(SUSUISoftwareUpdateAlertModel *)v43->_alertModel alertFlow]== &dword_0 + 2)
    {
      v35 &= ~0x20uLL;
    }
  }

  else
  {
    v35 &= ~0x10uLL;
  }

  if ([(SUSUIDDMController *)v43->_ddmController decideAlertConflictWithAlertFlow:[(SUSUISoftwareUpdateAlertModel *)v43->_alertModel alertFlow]]== &dword_0 + 1)
  {
    v33 = SUSUILog();
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v33;
      v19 = v32;
      v20 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)v43->_alertModel alertFlow]);
      v31 = v20;
      sub_1FCC(v45, v31);
      _os_log_impl(&dword_0, v18, v19, "Can't show classic flow alert due to DDM having higher priority. Classic flow: %@", v45, 0xCu);

      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v35 |= 0x4000000uLL;
  }

  if ([(SUSUISoftwareUpdateAlertModel *)v43->_alertModel alertFlow]== &dword_4 + 1)
  {
    v35 = 0;
  }

  if (![(SUSUISoftwareUpdateController *)v43 _shouldShowOrScheduleInstallAlert])
  {
    goto LABEL_46;
  }

  if (!v35)
  {
    if ([(SUSUISoftwareUpdateController *)v43 _needsToWaitForHomescreenToAppear])
    {
      if (v40)
      {
        [(SUSUISoftwareUpdateAlertModel *)v43->_alertModel countdownAlertPresentationPreventedForReasons:@"Waiting for homescreen when showing countdown alert"];
        [(SUSUISoftwareUpdateController *)v43 _realertWithStrategy:6 andReason:@"Wait for homescreen to appear"];
      }

      v44 = 0;
      v30 = 1;
    }

    else
    {
      [(SUSUISoftwareUpdateController *)v43 _showInstallAlertWithInstallOptions:location];
      v44 = 1;
      v30 = 1;
    }

    goto LABEL_47;
  }

  if ((v35 & 0x2000000) != 0)
  {
    v44 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  if ((v35 & 0x4000000) != 0)
  {
    if (v40)
    {
      v16 = v43;
      v17 = [(SUSUISoftwareUpdateController *)v43 _stringForInstallNotAllowableReason:0x4000000];
      [(SUSUISoftwareUpdateController *)v16 _realertWithStrategy:5 andReason:?];
    }

    v44 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  if ((v35 & 0x8000000) != 0)
  {
    if (v40)
    {
      v14 = v43;
      v15 = [(SUSUISoftwareUpdateController *)v43 _stringForInstallNotAllowableReason:0x8000000];
      [(SUSUISoftwareUpdateController *)v14 _resetStateForReason:?];
    }

    v44 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  v29 = 0;
  v11 = v43;
  v10 = v35;
  v12 = [(SUSUISoftwareUpdateController *)v43 _waitableReasonsForShowingInstallAlert];
  v27 = v29;
  v13 = [SUSUISoftwareUpdateController _doesStateContainNonInstallableReasons:v11 reasonsToCheck:"_doesStateContainNonInstallableReasons:reasonsToCheck:outMatchingReasonsString:" outMatchingReasonsString:v10];
  objc_storeStrong(&v29, v27);

  v28 = v13;
  if (v13)
  {
    goto LABEL_50;
  }

  v5 = 0;
  v26 = 0;
  if ((v35 & 4) != 0)
  {
    v5 = 4;
  }

  v26 |= v5;
  if (v26 && v40)
  {
    v9 = [NSNumber numberWithInteger:v26];
    v25 = [NSMutableDictionary dictionaryWithObject:"dictionaryWithObject:forKey:" forKey:?];

    v24 = [NSError errorWithDomain:SUErrorDomain code:20 userInfo:v25];
    [(SUSUISoftwareUpdateController *)v43 _handleInstallError:v24];
    v44 = 0;
    v30 = 1;
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
LABEL_50:
    if (v40)
    {
      if ([(SUSUISoftwareUpdateAlertModel *)v43->_alertModel alertFlow]== &dword_0 + 2)
      {
        alertModel = v43->_alertModel;
        v8 = [NSString stringWithFormat:@"Unmet constraints when showing countdown alert: %ld", v35];
        [(SUSUISoftwareUpdateAlertModel *)alertModel countdownAlertPresentationPreventedForReasons:?];
      }

      [(SUSUISoftwareUpdateController *)v43 _realertWithStrategy:6 andReason:v29];
    }

    v30 = 0;
  }

  objc_storeStrong(&v29, 0);
  if (!v30)
  {
LABEL_46:
    v44 = 0;
    v30 = 1;
  }

LABEL_47:
  objc_storeStrong(&location, 0);
  return v44 & 1;
}

- (BOOL)_needsToWaitForHomescreenToAppear
{
  v36 = self;
  v35 = a2;
  v34 = [(SUSUILayoutStateMonitor *)self->_layoutStateMonitor isHomeScreenForeground];
  v33 = [(SUSUISoftwareUpdateController *)v36 settingsForeground];
  v32 = [(SUManagerClient *)v36->_client isInstallationKeybagRequired];
  v31 = [(SUSUISoftwareUpdateController *)v36 isUILocked];
  v30 = [(SUManagerClient *)v36->_client isAnyClientInUserInteraction];
  v29 = SUSUILog();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    log = v29;
    type = v28;
    v2 = @"Yes";
    if (v31)
    {
      v3 = @"Yes";
    }

    else
    {
      v3 = @"No";
    }

    v18 = v3;
    if (v32)
    {
      v4 = @"Yes";
    }

    else
    {
      v4 = @"No";
    }

    v19 = v4;
    if ((v34 & 1) == 0)
    {
      v2 = @"No";
    }

    v20 = v2;
    v23 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)v36->_alertModel alertFlow]);
    v27 = v23;
    sub_31F7C(v39, v18, v19, v20, v27);
    _os_log_impl(&dword_0, log, type, "UI Locked: %@, needsHomescreenForInstallAlert: %@, isShowingHomescreen: %@, alert flow: %@", v39, 0x2Au);

    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v29, 0);
  if (v31)
  {
    return v32 & 1;
  }

  oslog = SUSUILog();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = oslog;
    v16 = v25;
    v5 = @"Yes";
    if (v33)
    {
      v6 = @"Yes";
    }

    else
    {
      v6 = @"No";
    }

    v11 = v6;
    if (v32)
    {
      v7 = @"Yes";
    }

    else
    {
      v7 = @"No";
    }

    v12 = v7;
    if (v34)
    {
      v8 = @"Yes";
    }

    else
    {
      v8 = @"No";
    }

    v13 = v8;
    if ((v30 & 1) == 0)
    {
      v5 = @"No";
    }

    v14 = v5;
    v17 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)v36->_alertModel alertFlow]);
    v24 = v17;
    sub_31FF8(v38, v11, v12, v13, v14, v24);
    _os_log_impl(&dword_0, v15, v16, "UI not locked. inPreferences: %@, needsHomescreenForInstallAlert: %@, isShowingHomescreen: %@, isClientInUserInteraction:%@, alert flow: %@", v38, 0x34u);

    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v34 & 1) != 0 || (v10 = 1, (v33))
  {
    v10 = v30;
  }

  return v10 & 1;
}

- (void)_isUpdateInstallableWithInstallOptions:(id)a3 andResponse:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  dispatch_assert_queue_V2(v24[3]);
  v21 = 0;
  if (location[0])
  {
    v4 = [SUInstallOptions alloc];
    v5 = [v4 initWithSUSUIInstallOptions:location[0]];
    v6 = v21;
    v21 = v5;
  }

  v17[0] = 0;
  v17[1] = v17;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  v8 = v24[2];
  v7 = v21;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_3228C;
  v14 = &unk_60688;
  v16[1] = v17;
  v15 = v24;
  v16[0] = v22;
  [v8 isUpdateReadyForInstallationWithOptions:v7 withResult:&v10];
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  _Block_object_dispose(v17, 8);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_isUpdateInstallable:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 _isUpdateInstallableWithInstallOptions:0 andResponse:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)_doesStateContainNonInstallableReasons:(int64_t)a3 reasonsToCheck:(id)a4 outMatchingReasonsString:(id *)a5
{
  v30 = self;
  v29 = a2;
  v28 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v26 = a5;
  v25 = 0;
  v22 = 0;
  if (a5)
  {
    v23 = objc_alloc_init(NSMutableString);
    v22 = 1;
    v5 = v23;
  }

  else
  {
    v5 = 0;
  }

  v24 = v5;
  if (v22)
  {
  }

  memset(__b, 0, sizeof(__b));
  obj = location;
  v17 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
  if (v17)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v14);
      v19 = [v21 integerValue];
      if ((v28 & v19) == v19)
      {
        v25 = 1;
        v10 = v24;
        v11 = [(SUSUISoftwareUpdateController *)v30 _stringForInstallNotAllowableReason:v19];
        [v10 appendFormat:@"%@, ", v11];
      }

      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  if (v24 && v26)
  {
    if ((v25 & 1) == 0)
    {
      [v24 appendString:@"None"];
    }

    v9 = v24;
    v6 = v24;
    *v26 = v9;
  }

  v8 = v25;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  return v8 & 1;
}

- (void)_dismissInstallFailureAlertsWithoutRepop
{
  v12 = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(SUSUIAlertPresentationManager *)v12->_alertPresentationManager presentedAlertsOfClass:objc_opt_class()];
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v5);
      [v10 setActionTaken:{1, v6}];
      [v10 dismissAlert];
      ++v5;
      v6 = v2;
      if (v3 + 1 >= v2)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }
}

- (void)_showInstallAlertWithInstallOptions:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ((+[SUManagerClient _shouldDisallowAvailabilityNotifications]& 1) != 0)
  {
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v18, "[SUSUISoftwareUpdateController _showInstallAlertWithInstallOptions:]");
      _os_log_impl(&dword_0, v15, v14, "%s: [Install Alert] Ignoring SU availability notification because a preference has disabled them.", v18, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v13 = 1;
  }

  else
  {
    [(SUSUISoftwareUpdateController *)v17 _dismissInstallAlertsWithReason:@"Dismissing existing install alerts to show a new one." includingInstallTonight:1 withRealertStrategy:0];
    [(SUSUISoftwareUpdateController *)v17 _dismissInstallFailureAlertsWithoutRepop];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_32F90;
    v9 = &unk_5D058;
    v10 = v17;
    v11 = location[0];
    v12 = objc_retainBlock(&v5);
    if (v17->_scheduledTryTonightAutoInstallOperation)
    {
      v3 = v12;
      v4 = [(SUAutoInstallOperation *)v17->_scheduledTryTonightAutoInstallOperation forecast];
      v3[2]();
    }

    else
    {
      [(SUSUISoftwareUpdateController *)v17 _createInstallTonightForecastWithResult:v12];
    }

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    v13 = 0;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldShowOrScheduleInstallAlert
{
  LOBYTE(v3) = 0;
  if ([(SUSUISoftwareUpdateAlertModel *)self->_alertModel alertFlow])
  {
    v3 = ![(SUSUISoftwareUpdateController *)self _shouldHideAlert];
  }

  return v3 & 1;
}

- (void)_scheduleInstallAlertReminderWithDate:(id)a3 repopStrategy:(unint64_t)a4 forReason:(id)a5
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  v30 = 0;
  objc_storeStrong(&v30, a5);
  [(PCPersistentTimer *)v33->_installTimer invalidate];
  objc_storeStrong(&v33->_installTimer, 0);
  if (location[0])
  {
    v19 = +[SUSUIPreferences sharedInstance];
    v20 = [(SUSUIPreferences *)v19 installAlertIntervalMinutes];

    if (v20)
    {
      v17 = +[SUSUIPreferences sharedInstance];
      v16 = [(SUSUIPreferences *)v17 installAlertIntervalMinutes];
      v18 = [v16 integerValue];

      v29 = v18;
      v28 = (60 * v18);
      v5 = [[NSDate alloc] initWithTimeIntervalSinceNow:v28];
      v6 = location[0];
      location[0] = v5;
    }
  }

  [(SUSUISoftwareUpdateAlertModel *)v33->_alertModel setPersistedInstallAlertRepopStrategy:v31 withFireDate:location[0]];
  if (location[0])
  {
    [(SUManagerClient *)v33->_client registerCSInstallPredicatesOnDate:location[0]];
    v27 = SUSUILog();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      log = v27;
      type = v26;
      v15 = [SUUtility prettyPrintDate:location[0]];
      v10 = v15;
      v25 = v10;
      v11 = v30;
      v14 = SUSUIStringForInstallAlertRepopStrategy(v31);
      v24 = v14;
      sub_33A88(v35, v10, v11, v24);
      _os_log_impl(&dword_0, log, type, "[Install Alert] Scheduling new software update install alert reminder at %{public}@ for reason: %@ (repopStrategy: %@)", v35, 0x20u);

      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v7 = [PCPersistentTimer alloc];
    v8 = [v7 initWithFireDate:location[0] serviceIdentifier:@"SoftwareUpdateInstallAlertReminder" target:v33 selector:"_showOrScheduleNextInstallAlertFromTimer:" userInfo:0];
    installTimer = v33->_installTimer;
    v33->_installTimer = v8;

    [(PCPersistentTimer *)v33->_installTimer setDisableSystemWaking:1];
    [(PCPersistentTimer *)v33->_installTimer setUserVisible:1];
    [(PCPersistentTimer *)v33->_installTimer setMinimumEarlyFireProportion:1.0];
    [(PCPersistentTimer *)v33->_installTimer scheduleInQueue:v33->_clientQueue];
  }

  else
  {
    v23 = SUSUILog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v34, v30);
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[Install Alert] Cleared software update install alert reminder date for reason: %@", v34, 0xCu);
    }

    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleInstallError:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = ![(SUSUILayoutStateMonitor *)v29->_layoutStateMonitor isScreenOn];
  v26 = BYSetupAssistantNeedsToRun();
  if (![(SUSUISoftwareUpdateInstallOptions *)v29->_pendingInstallOptions automaticInstallAttempt]|| (v15 = 1, (v27 & 1) == 0))
  {
    v15 = v26;
  }

  v25 = v15 & 1;
  if (v15)
  {
    v24 = SUSUILog();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (v26)
      {
        v3 = @"Buddy is running";
      }

      else
      {
        v3 = @"screen was off and we're coming from an automatic installation attempt.";
      }

      sub_1FCC(v30, v3);
      _os_log_impl(&dword_0, v24, v23, "Not showing install failure alert because %@", v30, 0xCu);
    }

    objc_storeStrong(&v24, 0);
LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  v13 = [location[0] domain];
  v14 = 0;
  if ([v13 isEqualToString:SUErrorDomain])
  {
    v14 = [location[0] code] == &dword_C + 2;
  }

  if (v14)
  {
    v22 = SUSUILog();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      sub_2544(v20);
      _os_log_impl(&dword_0, log, type, "Not showing install failure alert because install is already in progress.", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    goto LABEL_26;
  }

  v9 = [location[0] domain];
  v10 = 0;
  if ([v9 isEqualToString:SUErrorDomain])
  {
    v10 = [location[0] code] == &dword_10 + 3;
  }

  if (!v10)
  {
    v6 = 1;
    if (![(SUSUISoftwareUpdateController *)v29 _isMultiUserAppleId])
    {
      v6 = 1;
      if (![(SUSUISoftwareUpdateController *)v29 installErrorWillScheduleAutoInstall:location[0]])
      {
        v6 = [(SUSUISoftwareUpdateController *)v29 installErrorWhenNotReadyForManagedRequest:location[0]];
      }
    }

    v17 = v6 & 1;
    if ((v6 & 1) == 0)
    {
      v4 = [SUSUISoftwareUpdateUnableToInstallAlertItem alloc];
      v5 = [(SUDownload *)v29->_updateToInstall descriptor];
      v16 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v4 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];

      [(SUSUISoftwareUpdateUnableToInstallAlertItem *)v16 setError:location[0]];
      [(SUSUIBaseAlertItem *)v16 setIsUILocked:[(SUSUISoftwareUpdateController *)v29 isUILocked]];
      [(SUSUIAlertPresentationManager *)v29->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
      [(SUSUIAlertPresentationManager *)v29->_alertPresentationManager presentAlert:v16 animated:1];
      objc_storeStrong(&v16, 0);
    }

    goto LABEL_26;
  }

  v7 = [SUSUISoftwareUpdateVerificationFailedAlertItem alloc];
  v8 = [(SUDownload *)v29->_updateToInstall descriptor];
  v19 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v7 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];

  [(SUSUIBaseAlertItem *)v19 setIsUILocked:[(SUSUISoftwareUpdateController *)v29 isUILocked]];
  [(SUSUISoftwareUpdateVerificationFailedAlertItem *)v19 setError:location[0]];
  [(SUSUIAlertPresentationManager *)v29->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUIAlertPresentationManager *)v29->_alertPresentationManager presentAlert:v19 animated:1];
  v18 = 1;
  objc_storeStrong(&v19, 0);
LABEL_27:
  objc_storeStrong(location, 0);
}

- (BOOL)installErrorWillScheduleAutoInstall:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] domain];
  v9 = 0;
  if ([v8 isEqualToString:SUErrorDomain])
  {
    v9 = [location[0] code] == &dword_14;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v5 = [location[0] userInfo];
  v4 = [v5 objectForKey:kSUInstallationConstraintsUnmetKey];
  v6 = [v4 integerValue];

  v12 = 0;
  v10 = 0;
  v7 = 0;
  if ((v6 & 0x10) != 0)
  {
    v7 = 0;
    if ((v6 & 0x20) != 0)
    {
      v13 = [location[0] userInfo];
      v12 = 1;
      v11 = [v13 objectForKey:kSUMDMInstallationRequest];
      v10 = 1;
      v7 = 0;
      if ([v11 BOOLValue])
      {
        v7 = [(SUInstallPolicy *)v15->_installPolicy autoUpdateEnabled];
      }
    }
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (v7)
  {
    v16 = 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  objc_storeStrong(location, 0);
  return v16 & 1;
}

- (BOOL)installErrorWhenNotReadyForManagedRequest:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] domain];
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ([v5 isEqualToString:SUErrorDomain])
  {
    v10 = [location[0] userInfo];
    v9 = 1;
    v8 = [v10 objectForKey:kSUMDMInstallationRequest];
    v7 = 1;
    v6 = 0;
    if ([v8 BOOLValue])
    {
      v4 = 1;
      if ([location[0] code] != &dword_C + 1)
      {
        v4 = 1;
        if ([location[0] code] != &dword_8 + 3)
        {
          v4 = 1;
          if ([location[0] code] != &dword_C + 2)
          {
            v4 = 1;
            if ([location[0] code] != &stru_20.segname[2])
            {
              v4 = [location[0] code] == &dword_0 + 3;
            }
          }
        }
      }

      v6 = v4;
    }
  }

  if (v7)
  {
  }

  if (v9)
  {
  }

  v12 = v6;
  objc_storeStrong(location, 0);
  return v12;
}

- (void)_resetStateForReason:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v11, location[0]);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "State reset for reason: %@", v11, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  [(SUSUISoftwareUpdateController *)v9 _realertWithStrategy:0 andReason:location[0]];
  alertPresentationManager = v9->_alertPresentationManager;
  v3 = objc_opt_class();
  v6 = NSStringFromClass(v3);
  v10 = v6;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  [SUSUIAlertPresentationManager dismissAllAlertsExcludingClasses:"dismissAllAlertsExcludingClasses:animated:" animated:?];

  [(SUSUISoftwareUpdateController *)v9 _unregisterHomescreenAlerts];
  [(SUSUISoftwareUpdateAlertModel *)v9->_alertModel resetTransientDownloadState];
  [(SUSUISoftwareUpdateController *)v9 setUpdateToInstall:0];
  objc_storeStrong(location, 0);
}

- (void)_unregisterHomescreenAlerts
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_homescreenBlockQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_347FC;
  v7 = &unk_5CCB0;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_autoDownloadUnknownToUserFailedForDescriptor:(id)a3 error:(id)a4
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  dispatch_assert_queue_V2(v35->_clientQueue);
  if (location[0])
  {
    [(SUSUISoftwareUpdateController *)v35 _resetStateForReason:@"Auto download unknown to user failed to download."];
    if (v33)
    {
      v9 = [v33 userInfo];
      v32 = [v9 objectForKey:kSUAutoDownloadWillRetryKey];

      if (v32 && ![v32 BOOLValue])
      {
        v24 = _NSConcreteStackBlock;
        v25 = -1073741824;
        v26 = 0;
        v27 = sub_34C4C;
        v28 = &unk_5D008;
        v29 = v35;
        v30 = location[0];
        v31 = objc_retainBlock(&v24);
        if ([(SUSUILayoutStateMonitor *)v35->_layoutStateMonitor isHomeScreenForeground])
        {
          v23 = SUSUILog();
          v22 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            log = v23;
            type = v22;
            sub_2544(v21);
            _os_log_impl(&dword_0, log, type, "Background download failed and not retrying. Alerting user of update availabitity", v21, 2u);
          }

          objc_storeStrong(&v23, 0);
          (*(v31 + 2))();
        }

        else
        {
          v20 = SUSUILog();
          v19 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v5 = v20;
            v6 = v19;
            sub_2544(v18);
            _os_log_impl(&dword_0, v5, v6, "Registering SU available alert for presentation on homescreen", v18, 2u);
          }

          objc_storeStrong(&v20, 0);
          [(SUSUILayoutStateMonitor *)v35->_layoutStateMonitor addObserver:v35];
          queue = v35->_homescreenBlockQueue;
          v11 = _NSConcreteStackBlock;
          v12 = -1073741824;
          v13 = 0;
          v14 = sub_34D60;
          v15 = &unk_60450;
          v16 = v35;
          v17 = v31;
          dispatch_async(queue, &v11);
          objc_storeStrong(&v17, 0);
          objc_storeStrong(&v16, 0);
        }

        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v29, 0);
      }

      objc_storeStrong(&v32, 0);
    }
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentAuthenticationUIForInstallation:(id)a3 withInstallType:(unint64_t)a4 withInstallOperationForecast:(id)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = a4;
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = SUSUILog();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    log = v26;
    type = v25;
    sub_2544(v24);
    _os_log_impl(&dword_0, log, type, "[Install Alert] Presenting authentication UI for installation.", v24, 2u);
  }

  objc_storeStrong(&v26, 0);
  v10 = 1;
  if (v28 != 1)
  {
    v10 = v28 == 2;
  }

  v23 = v10;
  v8 = [SUSUIFullScreenAuthenticationAlert alloc];
  v9 = [(SUDownload *)v30->_updateToInstall descriptor];
  v5 = v27;
  v6 = [(SUSUISoftwareUpdateController *)v30 canDeferInstallation];
  clientQueue = v30->_clientQueue;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_35064;
  v19 = &unk_606B0;
  v21 = v10;
  v20 = location[0];
  v22 = [(SUSUIFullScreenAuthenticationAlert *)v8 initWithDescriptor:v9 autoInstallForecast:v5 forInstallTonight:v10 canDeferInstallation:v6 completionQueue:clientQueue completionBlock:&v15];

  [(SUSUIFullScreenAlertPresentationManager *)v30->_fullScreenAlertPresentationManager presentAlert:v22 completion:?];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)rollbackCompleted:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "[Rollback] Rebooting device after successful rollback", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  [(SUSUISoftwareUpdateController *)v9 reboot:0];
  objc_storeStrong(location, 0);
}

- (void)_rollbackSucceeded:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = SUSUILog();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    sub_2544(v7);
    _os_log_impl(&dword_0, log, type, "[Rollback] Rollback preparation completed. Presenting reboot countdown", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  [(SUManagerClient *)v11->_client writeKeepAliveFile];
  [(SUManagerClient *)v11->_client setLastRollbackDescriptor:location[0]];
  v3 = [SUSUIRollbackCountdownAlertItem alloc];
  v6 = [(SUSUIBaseRollbackAlertItem *)v3 initWithRollbackDescriptor:location[0] softwareUpdateController:v11];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager dismissAllAlertsAnimated:1];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager presentAlert:v6 animated:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_rollbackFailed:(id)a3 withError:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = SUSUILog();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v12, v9);
    _os_log_impl(&dword_0, v8, v7, "[Rollback] Rollback failed with error: %@", v12, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v4 = [SUSUISoftwareUpdateRollbackFailureAlertItem alloc];
  v6 = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)v4 initWithRollbackDescriptor:location[0] softwareUpdateController:v11 error:v9];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager dismissAllAlertsAnimated:1];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager presentAlert:v6 animated:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelRollback
{
  v8 = self;
  location[1] = a2;
  location[0] = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "[Rollback] User canceled rollback", v5, 2u);
  }

  objc_storeStrong(location, 0);
  [(SUManagerClient *)v8->_client writeKeepAliveFile];
  v4 = objc_alloc_init(SUPurgeOptions);
  [v4 setNotifyUser:0];
  [v4 setUserRequested:1];
  [(SUManagerClient *)v8->_client purgeDownloadWithOptions:v4 withResult:&stru_606F0];
  objc_storeStrong(&v4, 0);
}

- (void)_bootedAfterRollback:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = SUSUILog();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    sub_2544(v7);
    _os_log_impl(&dword_0, log, type, "[Rollback] Device booted after rollback", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  v3 = [SUSUIPostSplatRollbackAlertItem alloc];
  v6 = [(SUSUIBaseRollbackAlertItem *)v3 initWithRollbackDescriptor:location[0] softwareUpdateController:v11];
  if ([(SUSUILayoutStateMonitor *)v11->_layoutStateMonitor isUILocked])
  {
    [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager dismissAllAlertsAnimated:1];
    [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager presentAlert:v6 animated:1];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_rollbackSuggested:(id)a3 info:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = SUSUILog();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v12, v9);
    _os_log_impl(&dword_0, v8, v7, "[Rollback] Rollback suggested with info: %@", v12, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v4 = [SUSUIRollbackSuggestedAlertItem alloc];
  v6 = [(SUSUIRollbackSuggestedAlertItem *)v4 initWithDescriptor:location[0] softwareUpdateController:v11 info:v9];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager dismissAllAlertsAnimated:1];
  [(SUSUIAlertPresentationManager *)v11->_alertPresentationManager presentAlert:v6 animated:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_setNVRAMVar:(__CFString *)a3 withValue:(void *)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (a3)
  {
    if (v24)
    {
      v22 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
      if (v22)
      {
        v21 = IORegistryEntrySetCFProperty(v22, v25, v24);
        if (v21)
        {
          v11 = SUSUILog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            sub_35DAC(v29, v25, v21);
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Failed to set NVRAM key %@ in IO registry: %d", v29, 0x12u);
          }

          objc_storeStrong(&v11, 0);
        }

        else
        {
          v23 = 1;
        }
      }

      else
      {
        oslog = SUSUILog();
        v13 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v5 = oslog;
          v6 = v13;
          sub_2544(v12);
          _os_log_impl(&dword_0, v5, v6, "Failed to locate IODeviceTree options in IO registry", v12, 2u);
        }

        objc_storeStrong(&oslog, 0);
      }

      if (v22)
      {
        IOObjectRelease(v22);
      }

      return v23 != 0;
    }

    else
    {
      v17 = SUSUILog();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v17;
        v8 = v16;
        sub_2544(v15);
        _os_log_impl(&dword_0, v7, v8, "Cannot set NULL NVRAM object", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      return v23 != 0;
    }
  }

  else
  {
    location = SUSUILog();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v19;
      sub_2544(v18);
      _os_log_impl(&dword_0, log, type, "Cannot set NULL NVRAM key", v18, 2u);
    }

    objc_storeStrong(&location, 0);
    return v23 != 0;
  }
}

- (void)_rebootQuiet
{
  location[4] = self;
  location[3] = a2;
  location[2] = @"SystemAudioVolumeSaved";
  location[1] = @"1";
  if ([(SUSUISoftwareUpdateController *)self _setNVRAMVar:@"SystemAudioVolumeSaved" withValue:@"1"])
  {
    oslog = SUSUILog();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v5;
      sub_2544(v4);
      _os_log_impl(&dword_0, v2, v3, "Successfully set SystemAudioVolumeSaved NVRAM key", v4, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    location[0] = SUSUILog();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_195C(v9, @"SystemAudioVolumeSaved", @"1");
      _os_log_impl(&dword_0, location[0], v7, "Error: failed to set NVRAM variable %@=%@ on software update reboot", v9, 0x16u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)reboot:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = SUSUILog();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_11844(v16, v13);
    _os_log_impl(&dword_0, location, v11, "Rebooting now (dark=%d)", v16, 8u);
  }

  objc_storeStrong(&location, 0);
  queue = v15->_backgroundQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_36118;
  v8 = &unk_5F568;
  v9 = v15;
  v10 = v13;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (id)_stringForCurrentVersionPreference
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = +[UIDevice currentDevice];
  v4 = [v6[0] systemVersion];
  v3 = [v6[0] buildVersion];
  v5 = [NSString stringWithFormat:@"%@:%@", v4, v3];

  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_saveLastKnownVersionPreference:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateDefaults *)v4->_suDefaults setLastOSVersion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_migrateForNewOSVersionIfNecessary
{
  v14 = self;
  v13[1] = a2;
  v13[0] = [(SUSUISoftwareUpdateController *)self _stringForCurrentVersionPreference];
  v12 = [(SUSUISoftwareUpdateDefaults *)v14->_suDefaults lastOSVersion];
  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v12 isEqualToString:v13[0]] & 1) == 0)
  {
    location = SUSUILog();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v10;
      sub_2544(v9);
      _os_log_impl(&dword_0, log, type, "Migrating software update settings at startup because a new OS version was detected.", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    [(SUSUISoftwareUpdateController *)v14 _saveLastKnownVersionPreference:v13[0]];
    [(SUSUISoftwareUpdateDefaults *)v14->_suDefaults migrateAndClearLegacyPreferences];
    [(SUSUISoftwareUpdateDefaults *)v14->_suDefaults setSoftwareUpdateState:0];
    v8 = SUSUILog();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v8;
      v3 = v7;
      sub_2544(v6);
      _os_log_impl(&dword_0, v2, v3, "[Settings Badge] newOS version detected..Removing SU directly owned settings badge(if present)", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
    [(SUSUISoftwareUpdateController *)v14 toggleSettingsBadge:0 update:0];
    [(SUSUISoftwareUpdateController *)v14 _clearLegacyBadgeIfNecessary:v12];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
}

- (void)_clearLegacyBadgeIfNecessary:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v9[3]);
  if ([location[0] hasPrefix:@"5.0"])
  {
    v7 = SUSUILog();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      log = v7;
      type = v6;
      sub_2544(v5);
      _os_log_impl(&dword_0, log, type, "Running software update badge migration from 5.0 (clearing Settings badge)", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
    [(dispatch_queue_t *)v9 _savePreferencesBadgeFlag:0];
    [(dispatch_queue_t *)v9 _setSettingsBadgeToValue:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_savePreferencesBadgeFlag:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_badgingQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_36768;
  v8 = &unk_5F568;
  v9 = self;
  v10 = v11;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)toggleSettingsBadge:(BOOL)a3 update:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  dispatch_assert_queue_V2(v16[3]);
  queue = v16[19];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_368D8;
  v9 = &unk_60718;
  v12 = v14;
  v10 = v16;
  v11 = location;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)_setSettingsBadgeToValue:(int64_t)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  queue = v12->_badgingQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_36F9C;
  v8 = &unk_60740;
  v9[0] = v12;
  v9[1] = v10;
  dispatch_async(queue, &v4);
  objc_storeStrong(v9, 0);
}

- (BOOL)_badgingQueue_isBadgedForSoftwareUpdate
{
  badgingQueue = self->_badgingQueue;
  BSDispatchQueueAssert();
  return [(SUSUIExternalSettingsAppDefaults *)self->_settingsAppDefaults isBadgedForSoftwareUpdate];
}

- (void)_badgingQueue_badgeSettingsWithValue:(int64_t)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  badgingQueue = self->_badgingQueue;
  BSDispatchQueueAssert();
  v5 = [[NSNumber alloc] initWithInteger:v6];
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v9, v5);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Settings Badge] Asking badgingQueue systemService to set badge value to %@", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(FBSSystemService *)v8->_badgingQueue_systemService setBadgeValue:v5 forBundleID:SUSUISettingsBundleIdentifier];
  objc_storeStrong(&v5, 0);
}

- (void)_badgingQueue_savePreferencesBadgeEnabled:(BOOL)a3
{
  badgingQueue = self->_badgingQueue;
  BSDispatchQueueAssert();
  [(SUSUIExternalSettingsAppDefaults *)self->_settingsAppDefaults setBadgedForSoftwareUpdate:a3];
}

- (BOOL)settingsForeground
{
  v3 = [(SUSUISoftwareUpdateController *)self _foregroundBundleID];
  v4 = [v3 isEqualToString:@"com.apple.Preferences"];

  return v4;
}

- (BOOL)_shouldHideAlert
{
  v3 = [(SUDownload *)self->_updateToInstall metadata];
  v4 = [v3 isAutoDownload];

  v8 = [(SUSUISoftwareUpdateAlertModel *)self->_alertModel alertFlow]== &dword_0 + 1;
  v5 = [(SUDownload *)self->_updateToInstall descriptor];
  v6 = [v5 hideInstallAlert];

  v7 = 0;
  if (v4)
  {
    v7 = 0;
    if (v8)
    {
      v7 = v6;
    }
  }

  return v7 & 1;
}

- (void)scanForUpdates:(id)a3 withScanResults:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  dispatch_assert_queue_V2(v7->_clientQueue);
  [(SUManagerClient *)v7->_client scanForUpdates:location[0] withScanResults:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setInstallOperation:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  dispatch_assert_queue_V2(v4->_clientQueue);
  objc_storeStrong(&v4->_scheduledTryTonightAutoInstallOperation, location[0]);
  objc_storeStrong(location, 0);
}

@end