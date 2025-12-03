@interface SUSUISoftwareUpdateController
+ (SUSUISoftwareUpdateController)sharedInstance;
- (BOOL)_badgingQueue_isBadgedForSoftwareUpdate;
- (BOOL)_createAutoInstallKeybagWithPasscode:(id)passcode;
- (BOOL)_doesStateContainNonInstallableReasons:(int64_t)reasons reasonsToCheck:(id)check outMatchingReasonsString:(id *)string;
- (BOOL)_isMultiUserAppleId;
- (BOOL)_isShowingInstallAlert;
- (BOOL)_needsToWaitForHomescreenToAppear;
- (BOOL)_setNVRAMVar:(__CFString *)var withValue:(void *)value;
- (BOOL)_shouldHideAlert;
- (BOOL)_shouldShowOrScheduleInstallAlert;
- (BOOL)_showNextInstallAlertWithReasons:(int64_t)reasons orScheduleIfNecessary:(BOOL)necessary withInstallOptions:(id)options;
- (BOOL)canDeferInstallation;
- (BOOL)installErrorWhenNotReadyForManagedRequest:(id)request;
- (BOOL)installErrorWillScheduleAutoInstall:(id)install;
- (BOOL)isUILocked;
- (BOOL)presentAlert:(id)alert;
- (BOOL)settingsForeground;
- (SUSUISoftwareUpdateController)init;
- (SUSUISoftwareUpdateController)initWithQueue:(id)queue;
- (id)_allNonInstallableReasons;
- (id)_availableRollback;
- (id)_computeDefaultRealertDate;
- (id)_computeNextLastPredictedUnlockDateMinus4HoursFromNow;
- (id)_stringForCurrentVersionPreference;
- (id)_stringForInstallNotAllowableReason:(unint64_t)reason;
- (id)_waitableReasonsForShowingInstallAlert;
- (id)computeNextLastPredictedUnlockDateMinus4HoursFromStartDate:(id)date;
- (id)getDDMUpdateDescriptor;
- (id)getNextLastPredictedUnlockDateFromDuet:(id)duet;
- (int64_t)_delayDaysForSkips:(int64_t)skips isRequiredInstall:(BOOL)install;
- (int64_t)_springboardPasscodePolicyTypeFromSUPasscodePolicyType:(unint64_t)type;
- (unint64_t)getPasscodePolicyForAlertModel:(id)model;
- (void)_autoDownloadUnknownToUserFailedForDescriptor:(id)descriptor error:(id)error;
- (void)_autoInstallOperationDidExpire:(id)expire withRepopStrategy:(unint64_t)strategy error:(id)error;
- (void)_autoInstallOperationWasCancelled:(id)cancelled withRepopStrategy:(unint64_t)strategy;
- (void)_badgingQueue_badgeSettingsWithValue:(int64_t)value;
- (void)_badgingQueue_savePreferencesBadgeEnabled:(BOOL)enabled;
- (void)_bootedAfterRollback:(id)rollback;
- (void)_clearLegacyBadgeIfNecessary:(id)necessary;
- (void)_createInstallTonightForecastWithResult:(id)result;
- (void)_createInstallTonightOperationWithResult:(id)result;
- (void)_discoveredUpdates:(id)updates;
- (void)_dismissInstallAlertsWithReason:(id)reason includingInstallTonight:(BOOL)tonight withRealertStrategy:(unint64_t)strategy;
- (void)_dismissInstallFailureAlertsWithoutRepop;
- (void)_doInstallNowWithOptions:(id)options;
- (void)_doInstallTonight:(id)tonight consent:(BOOL)consent;
- (void)_handleInstallError:(id)error;
- (void)_initializeState;
- (void)_installUpdate:(unint64_t)update withInstallOperation:(id)operation source:(unint64_t)source options:(id)options;
- (void)_installationConstraintsDidChange:(unint64_t)change changed:(unint64_t)changed error:(id)error;
- (void)_isUpdateInstallable:(id)installable;
- (void)_isUpdateInstallableWithInstallOptions:(id)options andResponse:(id)response;
- (void)_migrateForNewOSVersionIfNecessary;
- (void)_presentAuthenticationUIForInstallation:(id)installation withInstallType:(unint64_t)type withInstallOperationForecast:(id)forecast;
- (void)_realertWithStrategy:(unint64_t)strategy andReason:(id)reason;
- (void)_rebootQuiet;
- (void)_registerForInstallationConstraintChangedNotifications;
- (void)_registerForUnlockNotifications;
- (void)_resetStateForReason:(id)reason;
- (void)_rollbackFailed:(id)failed withError:(id)error;
- (void)_rollbackSucceeded:(id)succeeded;
- (void)_rollbackSuggested:(id)suggested info:(id)info;
- (void)_saveLastKnownVersionPreference:(id)preference;
- (void)_savePreferencesBadgeFlag:(BOOL)flag;
- (void)_scheduleInstallAlertReminderWithDate:(id)date repopStrategy:(unint64_t)strategy forReason:(id)reason;
- (void)_sendInstallTonightDidCompleteToObservers;
- (void)_setInstallPolicy:(id)policy;
- (void)_setPasscodePolicyType:(unint64_t)type;
- (void)_setPendingInstallOptions:(id)options;
- (void)_setSettingsBadgeToValue:(int64_t)value;
- (void)_setTryTonightAutoInstallOperation:(id)operation cancelIfNecessary:(BOOL)necessary;
- (void)_setupAutoUpdate:(id)update withPasscodePolicy:(unint64_t)policy;
- (void)_showInstallAlertWithInstallOptions:(id)options;
- (void)_showOrScheduleNextInstallAlert;
- (void)_showOrScheduleNextInstallAlertFromTimer:(id)timer;
- (void)_showSUAvailableAlertForDescriptor:(id)descriptor;
- (void)_unregisterForInstallationConstraintChangeNotifications;
- (void)_unregisterForUnlockNotifications;
- (void)_unregisterHomescreenAlerts;
- (void)addObserver:(id)observer;
- (void)alertModel:(id)model alertFlowDidChangeFrom:(unint64_t)from to:(unint64_t)to;
- (void)autoInstallOperationDidConsent:(id)consent;
- (void)autoInstallOperationDidExpire:(id)expire withError:(id)error;
- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type;
- (void)autoInstallOperationWasCancelled:(id)cancelled;
- (void)autoInstallTonightWithOperation:(id)operation;
- (void)autoInstallTonightWithOperation:(id)operation options:(id)options;
- (void)cancelRollback;
- (void)client:(id)client automaticDownloadDidFailToStartForNewUpdateAvailable:(id)available withError:(id)error;
- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error;
- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)client:(id)client downloadDidStart:(id)start;
- (void)client:(id)client downloadProgressDidChange:(id)change;
- (void)client:(id)client downloadWasInvalidatedForNewUpdateAvailable:(id)available;
- (void)client:(id)client handleUIForDDMDeclaration:(id)declaration;
- (void)client:(id)client handleUIForDDMGlobalSettings:(id)settings;
- (void)client:(id)client installDidFail:(id)fail withError:(id)error;
- (void)client:(id)client installDidFinish:(id)finish;
- (void)client:(id)client installDidStart:(id)start;
- (void)client:(id)client installPolicyDidChange:(id)change;
- (void)client:(id)client installTonightScheduled:(BOOL)scheduled operationID:(id)d;
- (void)client:(id)client installWantsToStart:(id)start completion:(id)completion;
- (void)client:(id)client managedInstallationRequested:(id)requested;
- (void)client:(id)client presentingRecommendedUpdate:(id)update shouldPresent:(BOOL)present;
- (void)client:(id)client rollbackDidFail:(id)fail withError:(id)error;
- (void)client:(id)client rollbackDidFinish:(id)finish;
- (void)client:(id)client rollbackDidStart:(id)start;
- (void)client:(id)client rollbackReadyToStart:(id)start options:(id)options completion:(id)completion;
- (void)client:(id)client rollbackSuggested:(id)suggested info:(id)info;
- (void)client:(id)client scheduledRollbackReadyForReboot:(id)reboot;
- (void)ddmAlertWasScheduled:(id)scheduled;
- (void)dealloc;
- (void)deviceBootedAfterSplatOnlyRollback:(id)rollback rollbackDescriptor:(id)descriptor;
- (void)initPostOTAFollowUpController;
- (void)installNowFromSource:(unint64_t)source options:(id)options;
- (void)installTonight;
- (void)installTonightWithOperation:(id)operation;
- (void)installTonightWithOperation:(id)operation options:(id)options;
- (void)isDownloading:(id)downloading;
- (void)layoutStateMonitorStateDidChange:(id)change;
- (void)layoutStateMonitorUILockStateDidChange:(id)change;
- (void)powerMonitorSystemDidWakeFromSleep:(id)sleep;
- (void)powerMonitorSystemWillSleep:(id)sleep;
- (void)presentAuthenticationAlert:(id)alert completion:(id)completion;
- (void)presentEmergencyCallAlert:(id)alert completion:(id)completion;
- (void)presentFullScreenAlert:(id)alert completion:(id)completion;
- (void)reboot:(BOOL)reboot;
- (void)recordSUAnalyticsEvent:(id)event;
- (void)removeObserver:(id)observer;
- (void)repopInstallAlertWithDefaultDurationFromNowForReason:(id)reason;
- (void)repopInstallAlertWithWeekDurationFromNowForReason:(id)reason;
- (void)rollbackCompleted:(id)completed;
- (void)scanForUpdates:(id)updates withScanResults:(id)results;
- (void)setInstallOperation:(id)operation;
- (void)setUpdateToInstall:(id)install;
- (void)startDownloadWithOptions:(id)options withResult:(id)result;
- (void)submitSUAnalyticsEvent:(id)event;
- (void)toggleSettingsBadge:(BOOL)badge update:(id)update;
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
  selfCopy = self;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.softwareupdateservices.ui.ios.sumanagerQueue", v5);
  selfCopy = 0;
  selfCopy = [(SUSUISoftwareUpdateController *)self initWithQueue:?];
  v6 = selfCopy;

  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (SUSUISoftwareUpdateController)initWithQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v3 = selfCopy;
  selfCopy = 0;
  v15.receiver = v3;
  v15.super_class = SUSUISoftwareUpdateController;
  v7 = [(SUSUISoftwareUpdateController *)&v15 init];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    queue = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_220DC;
    v12 = &unk_5D008;
    v13 = selfCopy;
    v14 = location[0];
    dispatch_sync(queue, &v8);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)_initializeState
{
  selfCopy = self;
  v8[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  client = selfCopy->_client;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_229A0;
  v7 = &unk_60338;
  v8[0] = selfCopy;
  [(SUManagerClient *)client downloadAndInstallState:?];
  objc_storeStrong(v8, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  [(SUSUISoftwareUpdateController *)selfCopy _unregisterForInstallationConstraintChangeNotifications];
  [(SUAutoInstallOperation *)selfCopy->_scheduledTryTonightAutoInstallOperation cancel];
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel setDelegate:0];
  [(PCPersistentTimer *)selfCopy->_installTimer invalidate];
  [(SUManagerClient *)selfCopy->_client invalidate];
  v3.receiver = selfCopy;
  v3.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v3 dealloc];
}

- (void)recordSUAnalyticsEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  queue = selfCopy->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_2393C;
  v8 = &unk_5D008;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)submitSUAnalyticsEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  queue = selfCopy->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_23A90;
  v8 = &unk_5D008;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)isDownloading:(id)downloading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, downloading);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  client = selfCopy->_client;
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
  selfCopy = self;
  location[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (selfCopy->_updateToInstall)
  {
    location[0] = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
    v5 = 1;
    if ([(SUSUIDDMController *)selfCopy->_ddmController shouldEnforceUpdate])
    {
      v8 = 0;
    }

    else
    {
      if ([location[0] type] == &dword_0 + 1)
      {
        skipsAllowed = [location[0] skipsAllowed];
        v3 = 0;
        if (skipsAllowed > 0)
        {
          v3 = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel remindMeLaterCountSinceRequiringInstallation]< skipsAllowed;
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
  isUILocked = [(SUSUILayoutStateMonitor *)self->_uiLockedLayoutStateMonitor isUILocked];
  [(SUSUISoftwareUpdateController *)self _unregisterForUnlockNotifications];
  return isUILocked & 1;
}

- (void)startDownloadWithOptions:(id)options withResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v5 = 0;
  objc_storeStrong(&v5, result);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUManagerClient *)selfCopy->_client startDownloadWithOptions:location[0] withResult:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)installNowFromSource:(unint64_t)source options:(id)options
{
  selfCopy = self;
  v6 = a2;
  sourceCopy = source;
  location = 0;
  objc_storeStrong(&location, options);
  dispatch_assert_queue_V2(selfCopy[3]);
  [(dispatch_queue_t *)selfCopy _installUpdate:0 withInstallOperation:0 source:sourceCopy options:location];
  objc_storeStrong(&location, 0);
}

- (void)installTonight
{
  selfCopy = self;
  v11[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  v11[0] = selfCopy->_scheduledTryTonightAutoInstallOperation;
  if ([v11[0] _isValidForScheduling])
  {
    [(SUSUISoftwareUpdateController *)selfCopy installTonightWithOperation:v11[0] options:0];
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
    v2 = selfCopy;
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_2417C;
    v7 = &unk_60388;
    v8 = selfCopy;
    [(SUSUISoftwareUpdateController *)v2 _createInstallTonightOperationWithResult:&v3];
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v11, 0);
}

- (void)installTonightWithOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  dispatch_assert_queue_V2(selfCopy[3]);
  [(dispatch_queue_t *)selfCopy installTonightWithOperation:location[0] options:0];
  objc_storeStrong(location, 0);
}

- (void)autoInstallTonightWithOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  dispatch_assert_queue_V2(selfCopy[3]);
  [(dispatch_queue_t *)selfCopy autoInstallTonightWithOperation:location[0] options:0];
  objc_storeStrong(location, 0);
}

- (void)autoInstallTonightWithOperation:(id)operation options:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v5 = 0;
  objc_storeStrong(&v5, options);
  dispatch_assert_queue_V2(selfCopy[3]);
  [(dispatch_queue_t *)selfCopy _installUpdate:2 withInstallOperation:location[0] source:1 options:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)installTonightWithOperation:(id)operation options:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v5 = 0;
  objc_storeStrong(&v5, options);
  dispatch_assert_queue_V2(selfCopy[3]);
  [(dispatch_queue_t *)selfCopy _installUpdate:1 withInstallOperation:location[0] source:0 options:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)repopInstallAlertWithDefaultDurationFromNowForReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel userSelectedRemindMeLater];
  [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:1 andReason:location[0]];
  objc_storeStrong(location, 0);
}

- (void)repopInstallAlertWithWeekDurationFromNowForReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel userSelectedRemindMeLater];
  [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:2 andReason:location[0]];
  objc_storeStrong(location, 0);
}

- (void)presentAuthenticationAlert:(id)alert completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUIFullScreenAlertPresentationManager *)selfCopy->_fullScreenAlertPresentationManager presentAlert:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)presentEmergencyCallAlert:(id)alert completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUIFullScreenAlertPresentationManager *)selfCopy->_fullScreenAlertPresentationManager presentAlert:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)presentFullScreenAlert:(id)alert completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUIFullScreenAlertPresentationManager *)selfCopy->_fullScreenAlertPresentationManager presentAlert:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (location[0])
  {
    [(NSHashTable *)selfCopy->_observers addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (location[0])
  {
    [(NSHashTable *)selfCopy->_observers removeObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)_availableRollback
{
  selfCopy = self;
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
  client = selfCopy->_client;
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

- (void)_discoveredUpdates:(id)updates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  [(SUManagerClient *)selfCopy->_client descriptors:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_createInstallTonightForecastWithResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  client = selfCopy->_client;
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

- (void)_createInstallTonightOperationWithResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  client = selfCopy->_client;
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
  selfCopy = self;
  v9 = a2;
  v8 = 0;
  location = +[UMUserManager sharedManager];
  v5 = 0;
  v4 = 0;
  if ([location isMultiUser])
  {
    currentUser = [location currentUser];
    v5 = 1;
    v4 = [currentUser userType] == &dword_0 + 1;
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

- (BOOL)presentAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (location[0])
  {
    v6 = [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:location[0] animated:1];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)ddmAlertWasScheduled:(id)scheduled
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scheduled);
  objc_storeStrong(location, 0);
}

- (void)powerMonitorSystemWillSleep:(id)sleep
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sleep);
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

- (void)powerMonitorSystemDidWakeFromSleep:(id)sleep
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sleep);
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

- (void)layoutStateMonitorUILockStateDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  queue = selfCopy->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_25668;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = selfCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)layoutStateMonitorStateDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  queue = selfCopy->_clientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_25840;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = selfCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_installationConstraintsDidChange:(unint64_t)change changed:(unint64_t)changed error:(id)error
{
  selfCopy = self;
  v14 = a2;
  changeCopy = change;
  location[1] = changed;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (changeCopy)
  {
    v11 = 16;
    if ([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_4 || [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_0 + 1)
    {
      v11 = 17;
    }

    if (sub_262AC(changeCopy, v11))
    {
      v7 = selfCopy;
      v8 = SUStringFromInstallationConstraints();
      [SUSUISoftwareUpdateController _dismissInstallAlertsWithReason:v7 includingInstallTonight:"_dismissInstallAlertsWithReason:includingInstallTonight:withRealertStrategy:" withRealertStrategy:?];
    }

    else if (selfCopy->_scheduleInstallAlertWhenAble && ![(SUSUISoftwareUpdateController *)selfCopy _isShowingInstallAlert]&& ![(SUSUISoftwareUpdateController *)selfCopy _needsToWaitForHomescreenToAppear])
    {
      v5 = selfCopy;
      v6 = SUStringFromInstallationConstraints();
      [(SUSUISoftwareUpdateController *)v5 _realertWithStrategy:4 andReason:?];
    }
  }

  else if (selfCopy->_scheduleInstallAlertWhenAble && ![(SUSUISoftwareUpdateController *)selfCopy _isShowingInstallAlert]&& ![(SUSUISoftwareUpdateController *)selfCopy _needsToWaitForHomescreenToAppear])
  {
    v9 = selfCopy;
    v10 = SUStringFromInstallationConstraints();
    [(SUSUISoftwareUpdateController *)v9 _realertWithStrategy:4 andReason:?];
  }

  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadWasInvalidatedForNewUpdateAvailable:(id)available
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v7 = 0;
  objc_storeStrong(&v7, available);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v5 = selfCopy;
  v6 = [NSString stringWithFormat:@"Download invalidated for new update available: %@", v7];
  [(SUSUISoftwareUpdateController *)v5 _resetStateForReason:?];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client automaticDownloadDidFailToStartForNewUpdateAvailable:(id)available withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, available);
  v7 = 0;
  objc_storeStrong(&v7, error);
  dispatch_assert_queue_V2(selfCopy[3]);
  [(dispatch_queue_t *)selfCopy _autoDownloadUnknownToUserFailedForDescriptor:v8 error:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, start);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v6 = selfCopy;
  v5 = v9;
  descriptor = [v9 descriptor];
  v7 = [NSString stringWithFormat:@"New download started: %p for descriptor: %@", v5, descriptor];
  [(SUSUISoftwareUpdateController *)v6 _resetStateForReason:?];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadProgressDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v8 = 0;
  objc_storeStrong(&v8, change);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  progress = [v8 progress];
  phase = [progress phase];
  v7 = [phase isEqualToString:kSUDownloadPhaseUpdateFetchingQueuedRemote];

  if (v7)
  {
    [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel setDownloadWasQueuedRemotely:1];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v66 = 0;
  objc_storeStrong(&v66, fail);
  v65 = 0;
  objc_storeStrong(&v65, error);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v64 = SUSUILog();
  v63 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    sub_23504(v69, v66, v65);
    _os_log_impl(&dword_0, v64, v63, "Software update download (%p) failed with error: %@", v69, 0x16u);
  }

  objc_storeStrong(&v64, 0);
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel setDownloadWasQueuedRemotely:0];
  userInfo = [v65 userInfo];
  v20 = [userInfo objectForKey:kSUUserRequestedKey];
  bOOLValue = [v20 BOOLValue];

  v62 = bOOLValue;
  bOOLValue2 = 1;
  userInfo2 = [v65 userInfo];
  v60 = [userInfo2 objectForKey:kSUNotifyUserKey];

  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue2 = [v60 BOOLValue];
    }
  }

  if (bOOLValue2)
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
      metadata = [v66 metadata];
      v55 = 0;
      v17 = 0;
      if ([metadata isAutoDownload])
      {
        metadata2 = [v66 metadata];
        v55 = 1;
        v17 = [metadata2 activeDownloadPolicyType] == 1;
      }

      if (v55)
      {
      }

      if (v17)
      {
        v14 = selfCopy;
        descriptor = [v66 descriptor];
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
          v50 = selfCopy;
          v51 = v66;
          v52 = v65;
          v53 = objc_retainBlock(&v45);
          if ([(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor isHomeScreenForeground]|| [(SUSUISoftwareUpdateController *)selfCopy settingsForeground])
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
            [(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor addObserver:selfCopy];
            queue = selfCopy->_homescreenBlockQueue;
            v32 = _NSConcreteStackBlock;
            v33 = -1073741824;
            v34 = 0;
            v35 = sub_27058;
            v36 = &unk_60450;
            v37 = selfCopy;
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

- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v33 = 0;
  objc_storeStrong(&v33, finish);
  v32 = 0;
  objc_storeStrong(&v32, policy);
  dispatch_assert_queue_V2(selfCopy[3]);
  v31 = SUSUILog();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    log = v31;
    type = v30;
    v9 = v33;
    descriptor = [v33 descriptor];
    v29 = descriptor;
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
    useDarkBoot = [v32 useDarkBoot];
    [v23 setInstallDark:useDarkBoot];
    autoUpdateEnabled = [v32 autoUpdateEnabled];
    [v23 setAutomaticInstallAttempt:autoUpdateEnabled];
    v8 = selfCopy;
    v7 = v23;
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_274E8;
    v19 = &unk_60478;
    v20 = selfCopy;
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

- (void)client:(id)client installWantsToStart:(id)start completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v15 = 0;
  objc_storeStrong(&v15, start);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v13 = SUSUILog();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v5 = v15;
    currentInstallationPolicy = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
    v11 = currentInstallationPolicy;
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

- (void)client:(id)client installDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v19 = 0;
  objc_storeStrong(&v19, start);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUIDDMController *)selfCopy->_ddmController installDidStart:v19];
  v18 = SUSUILog();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    log = v18;
    type = v17;
    v10 = v19;
    currentInstallationPolicy = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
    v16 = currentInstallationPolicy;
    sub_195C(v22, v10, v16);
    _os_log_impl(&dword_0, log, type, "Software update install began for update: %@\nInstall Policy: %@", v22, 0x16u);

    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v18, 0);
  currentInstallationPolicy2 = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
  useDarkBoot = [(SUInstallPolicy *)currentInstallationPolicy2 useDarkBoot];

  if (useDarkBoot)
  {
    if (!selfCopy->_pendingInstallOptions)
    {
      v4 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
      pendingInstallOptions = selfCopy->_pendingInstallOptions;
      selfCopy->_pendingInstallOptions = v4;
    }

    [(SUSUISoftwareUpdateInstallOptions *)selfCopy->_pendingInstallOptions setInstallDark:1];
  }

  [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:0 andReason:@"Install starting."];
  v6 = [SUSUISoftwareUpdateVerifyingUpdateAlertItem alloc];
  descriptor = [(SUDownload *)selfCopy->_updateToInstall descriptor];
  v15 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v6 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];

  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v15 animated:1];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installDidFail:(id)fail withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, fail);
  v8 = 0;
  objc_storeStrong(&v8, error);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUIDDMController *)selfCopy->_ddmController installDidFail:v9];
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v12, v8);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Software update failed to apply update with error: %@", v12, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUISoftwareUpdateController *)selfCopy _handleInstallError:v8];
  [(SUSUISoftwareUpdateController *)selfCopy _setPendingInstallOptions:0];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v55 = 0;
  objc_storeStrong(&v55, finish);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUIDDMController *)selfCopy->_ddmController installDidFinish:v55];
  if ([(SUSUISoftwareUpdateInstallOptions *)selfCopy->_pendingInstallOptions automaticInstallAttempt])
  {
    [(SUSUISoftwareUpdateController *)selfCopy _sendInstallTonightDidCompleteToObservers];
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
  isSplatOnly = [v55 isSplatOnly];
  v20 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v20 setLastAppliedUpdateWasSplatOnly:isSplatOnly & 1];

  v50 = SUSUILog();
  v49 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    if (isSplatOnly)
    {
      v4 = @"Splat";
    }

    else
    {
      v4 = @"Non-Splat";
    }

    if (isSplatOnly)
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
  iWillRebootLater = [(SUSUIPreferences *)v18 IWillRebootLater];

  if (iWillRebootLater)
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
    if ((v15 & 1) == 0 || (useMobileInboxUpdaterRebootDelay = 1, v43))
    {
      v41 = +[SUSUIPreferences sharedInstance];
      v40 = 1;
      useMobileInboxUpdaterRebootDelay = [(SUSUIPreferences *)v41 useMobileInboxUpdaterRebootDelay];
    }

    if (v40)
    {
    }

    if (useMobileInboxUpdaterRebootDelay)
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
      queue = selfCopy->_clientQueue;
      v30 = _NSConcreteStackBlock;
      v31 = -1073741824;
      v32 = 0;
      v33 = sub_289F4;
      v34 = &unk_5CCB0;
      v35 = selfCopy;
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
      [(SUSUISoftwareUpdateController *)selfCopy reboot:[(SUSUISoftwareUpdateInstallOptions *)selfCopy->_pendingInstallOptions installDark]];
    }

    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
    v45 = 0;
  }

  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installPolicyDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v39 = 0;
  objc_storeStrong(&v39, change);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  currentInstallationPolicy = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
  type = [(SUInstallPolicy *)currentInstallationPolicy type];

  v38 = type;
  type2 = [v39 type];
  currentInstallationPolicy2 = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
  autoUpdateEnabled = [(SUInstallPolicy *)currentInstallationPolicy2 autoUpdateEnabled];

  v36 = autoUpdateEnabled;
  v35 = 0;
  currentInstallationPolicy3 = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
  useDarkBoot = [(SUInstallPolicy *)currentInstallationPolicy3 useDarkBoot];

  v34 = useDarkBoot;
  useDarkBoot2 = [v39 useDarkBoot];
  currentInstallationPolicy4 = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
  v20 = [(SUInstallPolicy *)currentInstallationPolicy4 isEqual:v39];

  if ((v20 & 1) == 0)
  {
    v32 = SUSUILog();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      log = v32;
      type = v31;
      currentInstallationPolicy5 = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
      v30 = currentInstallationPolicy5;
      sub_195C(v43, v30, v39);
      _os_log_impl(&dword_0, log, type, "Install Policy changed from:%@ to %@:", v43, 0x16u);

      objc_storeStrong(&v30, 0);
    }

    objc_storeStrong(&v32, 0);
    [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel setCurrentInstallationPolicy:v39 forReason:@"Install policy changed from daemon"];
    [(SUSUISoftwareUpdateController *)selfCopy _setInstallPolicy:v39];
    if (v38 != type2 && type2 == &dword_0 + 1 && [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]!= &dword_4 + 1)
    {
      v35 = 1;
      v8 = SUSUIStringForInstallPolicyType(v38);
      v7 = SUSUIStringForInstallPolicyType(type2);
      v29 = [NSString stringWithFormat:@"Install policy changed from %@ to %@", v8, v7];

      [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:6 andReason:v29];
      objc_storeStrong(&v29, 0);
    }

    if ((v34 & 1) != (useDarkBoot2 & 1))
    {
      v28 = SUSUILog();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (useDarkBoot2)
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
      [(SUSUISoftwareUpdateInstallOptions *)selfCopy->_pendingInstallOptions setInstallDark:useDarkBoot2 & 1];
    }

    v6 = v36 & 1;
    if (v6 != [v39 autoUpdateEnabled])
    {
      if ([v39 autoUpdateEnabled])
      {
        if (selfCopy->_updateToInstall)
        {
          client = selfCopy->_client;
          v21 = _NSConcreteStackBlock;
          v22 = -1073741824;
          v23 = 0;
          v24 = sub_29118;
          v25 = &unk_60310;
          v26 = selfCopy;
          [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v21];
          objc_storeStrong(&v26, 0);
        }

        [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:0 andReason:@"Auto update enabled"];
      }

      else
      {
        [(SUSUISoftwareUpdateController *)selfCopy _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
        [(SUSUISoftwareUpdateController *)selfCopy _setPasscodePolicyType:0];
        if ((v35 & 1) == 0 && selfCopy->_updateToInstall)
        {
          [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:1 andReason:@"Auto update turned off"];
        }

        [(SUManagerClient *)selfCopy->_client currentAutoInstallOperation:0 withResult:&stru_604B8];
      }
    }
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client managedInstallationRequested:(id)requested
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v12 = 0;
  objc_storeStrong(&v12, requested);
  if (selfCopy->_updateToInstall)
  {
    if ([v12 autoUpdateEnabled])
    {
      client = selfCopy->_client;
      v6 = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_296CC;
      v10 = &unk_60310;
      v11 = selfCopy;
      [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v6];
      objc_storeStrong(&v11, 0);
    }

    else
    {
      [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:6 andReason:@"Managed Install request received"];
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client handleUIForDDMDeclaration:(id)declaration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v5 = 0;
  objc_storeStrong(&v5, declaration);
  [(SUSUIDDMController *)selfCopy->_ddmController setDeclaration:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client handleUIForDDMGlobalSettings:(id)settings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v5 = 0;
  objc_storeStrong(&v5, settings);
  [(SUSUIDDMController *)selfCopy->_ddmController setGlobalSettings:v5];
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

- (void)client:(id)client presentingRecommendedUpdate:(id)update shouldPresent:(BOOL)present
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v25 = 0;
  objc_storeStrong(&v25, update);
  presentCopy = present;
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v23 = SUSUILog();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_29E04(v30, "[SUSUISoftwareUpdateController client:presentingRecommendedUpdate:shouldPresent:]", v25, presentCopy);
    _os_log_impl(&dword_0, v23, v22, "%s update:%@ shouldPresent:%d", v30, 0x1Cu);
  }

  objc_storeStrong(&v23, 0);
  if ([(SUSUIDDMController *)selfCopy->_ddmController notificationsDisabledByGlobalSettings])
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
    settingsForeground = [(SUSUISoftwareUpdateController *)selfCopy settingsForeground];
    if (settingsForeground)
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
      v15 = presentCopy;
      v13 = v25;
      v14 = selfCopy;
      [v5 isDownloading:&v8];
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
    }

    v19 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client installTonightScheduled:(BOOL)scheduled operationID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  scheduledCopy = scheduled;
  v18 = 0;
  objc_storeStrong(&v18, d);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (scheduledCopy)
  {
    v17 = SUSUILog();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v22, v18);
      _os_log_impl(&dword_0, v17, v16, "Install Tonight (%@) is scheduled", v22, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    v6 = [(SUAutoInstallOperation *)selfCopy->_scheduledTryTonightAutoInstallOperation id];
    v7 = [v6 isEqual:v18];

    if ((v7 & 1) == 0)
    {
      client = selfCopy->_client;
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_2A2E0;
      v14 = &unk_60310;
      v15 = selfCopy;
      [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v10];
      objc_storeStrong(&v15, 0);
    }
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client rollbackReadyToStart:(id)start options:(id)options completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v12 = 0;
  objc_storeStrong(&v12, start);
  v11 = 0;
  objc_storeStrong(&v11, options);
  v10 = 0;
  objc_storeStrong(&v10, completion);
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

- (void)client:(id)client rollbackDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v6 = 0;
  objc_storeStrong(&v6, start);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
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

- (void)client:(id)client rollbackDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v6 = 0;
  objc_storeStrong(&v6, finish);
  dispatch_assert_queue_V2(selfCopy[3]);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v9, "[SUSUISoftwareUpdateController client:rollbackDidFinish:]", v6);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)selfCopy _rollbackSucceeded:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client rollbackDidFail:(id)fail withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, fail);
  v8 = 0;
  objc_storeStrong(&v8, error);
  dispatch_assert_queue_V2(selfCopy[3]);
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v12, "[SUSUISoftwareUpdateController client:rollbackDidFail:withError:]", v9);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s %@", v12, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  [(dispatch_queue_t *)selfCopy _rollbackFailed:v9 withError:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client scheduledRollbackReadyForReboot:(id)reboot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v6 = 0;
  objc_storeStrong(&v6, reboot);
  dispatch_assert_queue_V2(selfCopy[3]);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v9, "[SUSUISoftwareUpdateController client:scheduledRollbackReadyForReboot:]", v6);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)selfCopy rollbackCompleted:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceBootedAfterSplatOnlyRollback:(id)rollback rollbackDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rollback);
  v6 = 0;
  objc_storeStrong(&v6, descriptor);
  dispatch_assert_queue_V2(selfCopy[3]);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_186B0(v9, "[SUSUISoftwareUpdateController deviceBootedAfterSplatOnlyRollback:rollbackDescriptor:]");
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(dispatch_queue_t *)selfCopy _bootedAfterRollback:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)client:(id)client rollbackSuggested:(id)suggested info:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, suggested);
  v8 = 0;
  objc_storeStrong(&v8, info);
  dispatch_assert_queue_V2(selfCopy[3]);
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_2A738(v12, "[SUSUISoftwareUpdateController client:rollbackSuggested:info:]", v9);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s %@", v12, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  [(dispatch_queue_t *)selfCopy _rollbackSuggested:v9 info:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationWasCancelled:(id)cancelled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (selfCopy->_scheduledTryTonightAutoInstallOperation == location[0])
  {
    [(SUSUISoftwareUpdateController *)selfCopy _autoInstallOperationWasCancelled:location[0] withRepopStrategy:1];
  }

  else
  {
    [location[0] setDelegate:0];
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_2AF9C(v6, location[0], selfCopy->_scheduledTryTonightAutoInstallOperation);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Auto install operation (%p) cancelled, but we weren't tracking it (tracking %p currently).", v6, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationDidExpire:(id)expire withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, expire);
  v10 = 0;
  objc_storeStrong(&v10, error);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (selfCopy->_scheduledTryTonightAutoInstallOperation == location[0])
  {
    v7 = 0;
    hideInstallAlert = 0;
    if ([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_4 + 1)
    {
      descriptor = [(SUDownload *)selfCopy->_updateToInstall descriptor];
      v7 = 1;
      hideInstallAlert = [descriptor hideInstallAlert];
    }

    if (v7)
    {
    }

    v4 = 0;
    if ((hideInstallAlert & 1) == 0)
    {
      v4 = 3;
    }

    [(SUSUISoftwareUpdateController *)selfCopy _autoInstallOperationDidExpire:location[0] withRepopStrategy:v4 error:v10];
  }

  else
  {
    [location[0] setDelegate:0];
    v9 = SUSUILog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_2AF9C(v13, location[0], selfCopy->_scheduledTryTonightAutoInstallOperation);
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Auto install operation (%p) expired, but we weren't tracking it (tracking %p currently).", v13, 0x16u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationDidConsent:(id)consent
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, consent);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  scheduledTryTonightAutoInstallOperation = selfCopy->_scheduledTryTonightAutoInstallOperation;
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v22 = 0;
  objc_storeStrong(&v22, response);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v21 = SUSUILog();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sub_2AF9C(v26, location[0], selfCopy->_scheduledTryTonightAutoInstallOperation);
    _os_log_impl(&dword_0, v21, v20, "Received event that auto install operation is ready to install (operation = %p, currentlyScheduledOperation = %p).", v26, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  if (selfCopy->_scheduledTryTonightAutoInstallOperation && selfCopy->_scheduledTryTonightAutoInstallOperation == location[0])
  {
    v16 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
    [(SUSUISoftwareUpdateInstallOptions *)v16 setAutomaticInstallAttempt:1];
    v5 = selfCopy;
    v4 = v16;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_2B608;
    v11 = &unk_60508;
    v12 = selfCopy;
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
      sub_2AF9C(v25, location[0], selfCopy->_scheduledTryTonightAutoInstallOperation);
      _os_log_impl(&dword_0, v19, v18, "Auto install operation (%p) is ready to install, but we weren't tracking it (tracking %p currently).", v25, 0x16u);
    }

    objc_storeStrong(&v19, 0);
    v17 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  dispatch_assert_queue_V2(selfCopy[3]);
  [(dispatch_queue_t *)selfCopy _setPasscodePolicyType:type];
  objc_storeStrong(location, 0);
}

- (void)_sendInstallTonightDidCompleteToObservers
{
  selfCopy = self;
  v10 = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_observers;
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
      [v9 softwareUpdateControllerDidCompleteAutomaticInstallation:selfCopy];
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

- (void)alertModel:(id)model alertFlowDidChangeFrom:(unint64_t)from to:(unint64_t)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  fromCopy = from;
  toCopy = to;
  dispatch_assert_queue_V2(selfCopy[3]);
  v15 = SUSUILog();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    log = v15;
    type = v14;
    v9 = SUSUIStringForInstallAlertFlow(fromCopy);
    v5 = v9;
    v13 = v5;
    v8 = SUSUIStringForInstallAlertFlow(toCopy);
    v12 = v8;
    sub_54AC(v20, v5, v12);
    _os_log_impl(&dword_0, log, type, "InstallAlertFlow changed from %{public}@ to %{public}@", v20, 0x16u);

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  if (toCopy != 3 && toCopy != 5)
  {
    [(dispatch_queue_t *)selfCopy _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
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

- (id)_stringForInstallNotAllowableReason:(unint64_t)reason
{
  switch(reason)
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

- (int64_t)_springboardPasscodePolicyTypeFromSUPasscodePolicyType:(unint64_t)type
{
  selfCopy = self;
  v6 = a2;
  typeCopy = type;
  switch(type)
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
    sub_13774(v9, typeCopy);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Unknown SUPasscodePolicyType: %lu. Returning not required", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  return 0;
}

- (void)_setPasscodePolicyType:(unint64_t)type
{
  selfCopy = self;
  v43 = a2;
  typeCopy = type;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (![(SUSUIDDMController *)selfCopy->_ddmController shouldEnforceUpdate]|| typeCopy == 2)
  {
    v38 = objc_alloc_init(SBSSoftwareUpdateService);
    v18 = +[SUKeybagInterface sharedInstance];
    hasPasscodeSet = [(SUKeybagInterface *)v18 hasPasscodeSet];

    if (hasPasscodeSet)
    {
      v12 = +[SUSUIPreferences sharedInstance];
      passcodeRequiredDays = [(SUSUIPreferences *)v12 passcodeRequiredDays];

      if (passcodeRequiredDays)
      {
        v10 = +[SUSUIPreferences sharedInstance];
        passcodeRequiredDays2 = [(SUSUIPreferences *)v10 passcodeRequiredDays];
        integerValue = [passcodeRequiredDays2 integerValue];

        v30[1] = integerValue;
        if (integerValue)
        {
          v27 = SUSUILog();
          v26 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            sub_13774(v46, [(SUSUISoftwareUpdateController *)selfCopy _springboardPasscodePolicyTypeFromSUPasscodePolicyType:typeCopy]);
            _os_log_impl(&dword_0, v27, v26, "Setting SBPasscodePolicy to: %ld", v46, 0xCu);
          }

          objc_storeStrong(&v27, 0);
          [v38 setPasscodePolicy:{-[SUSUISoftwareUpdateController _springboardPasscodePolicyTypeFromSUPasscodePolicyType:](selfCopy, "_springboardPasscodePolicyTypeFromSUPasscodePolicyType:", typeCopy)}];
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
        descriptor = [(SUDownload *)selfCopy->_updateToInstall descriptor];
        forcePasscodeRequired = [descriptor forcePasscodeRequired];

        if (forcePasscodeRequired)
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
            sub_13774(v45, [(SUSUISoftwareUpdateController *)selfCopy _springboardPasscodePolicyTypeFromSUPasscodePolicyType:typeCopy]);
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Setting SBPasscodePolicy to: %ld", v45, 0xCu);
          }

          objc_storeStrong(&v22, 0);
          [v38 setPasscodePolicy:{-[SUSUISoftwareUpdateController _springboardPasscodePolicyTypeFromSUPasscodePolicyType:](selfCopy, "_springboardPasscodePolicyTypeFromSUPasscodePolicyType:", typeCopy)}];
        }
      }

      selfCopy->_passcodePolicy = typeCopy;
    }

    else
    {
      v37 = [(SUSUISoftwareUpdateController *)selfCopy _springboardPasscodePolicyTypeFromSUPasscodePolicyType:0];
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

      selfCopy->_passcodePolicy = 0;
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

- (BOOL)_createAutoInstallKeybagWithPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v17 = 1;
  if ([(SUSUISoftwareUpdateController *)selfCopy _isAutoUpdateEnabled]|| [(SUSUIDDMController *)selfCopy->_ddmController shouldEnforceUpdate])
  {
    v16 = objc_alloc_init(SUKeybagOptions);
    [v16 setPasscode:location[0]];
    [v16 setKeybagType:1];
    descriptor = [(SUDownload *)selfCopy->_updateToInstall descriptor];
    [v16 setDescriptor:?];

    v17 = [(SUManagerClient *)selfCopy->_client createInstallationKeybagWithOptions:v16];
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

- (void)_autoInstallOperationWasCancelled:(id)cancelled withRepopStrategy:(unint64_t)strategy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  strategyCopy = strategy;
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
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
  [(SUSUISoftwareUpdateController *)selfCopy _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel autoInstallOperationEnded:0];
  [(SUSUISoftwareUpdateController *)selfCopy _dismissInstallAlertsWithReason:@"Auto install operation cancelled" includingInstallTonight:1 withRealertStrategy:strategyCopy];
  objc_storeStrong(location, 0);
}

- (unint64_t)getPasscodePolicyForAlertModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v14 = 1;
  integerValue = 1;
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
    integerValue = 1;
  }

  v8 = +[SUSUIPreferences sharedInstance];
  passcodeRequiredDays = [(SUSUIPreferences *)v8 passcodeRequiredDays];

  if (passcodeRequiredDays)
  {
    v7 = +[SUSUIPreferences sharedInstance];
    passcodeRequiredDays2 = [(SUSUIPreferences *)v7 passcodeRequiredDays];
    integerValue = [passcodeRequiredDays2 integerValue];
  }

  v10 = SUSUILog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_13774(v16, integerValue);
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Passcode required days set to %ld", v16, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  if ([location[0] autoUpdateRetryCount] > 1)
  {
    autoUpdateRetryCount = [location[0] autoUpdateRetryCount];
    if (!(autoUpdateRetryCount % integerValue))
    {
      v14 = 2;
    }
  }

  v5 = v14;
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_autoInstallOperationDidExpire:(id)expire withRepopStrategy:(unint64_t)strategy error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, expire);
  strategyCopy = strategy;
  v21 = 0;
  objc_storeStrong(&v21, error);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v20 = SUSUILog();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sub_23504(v26, location[0], v21);
    _os_log_impl(&dword_0, v20, v19, "Auto install operation (%p) expired with error: %@", v26, 0x16u);
  }

  objc_storeStrong(&v20, 0);
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel autoUpdateExpired];
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

  if ([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_4 + 1 && (v5 = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel autoUpdateRetryCount], v5 < v18))
  {
    v15 = [(SUSUISoftwareUpdateController *)selfCopy getPasscodePolicyForAlertModel:selfCopy->_alertModel];
    client = selfCopy->_client;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_2D388;
    v13 = &unk_60570;
    v14[0] = selfCopy;
    v14[1] = v15;
    [(SUManagerClient *)client currentAutoInstallOperation:1 withResult:&v9];
    objc_storeStrong(v14, 0);
  }

  else
  {
    [(SUSUISoftwareUpdateController *)selfCopy _setTryTonightAutoInstallOperation:0 cancelIfNecessary:1];
    [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel autoInstallOperationEnded:1];
    [(SUSUISoftwareUpdateController *)selfCopy _dismissInstallAlertsWithReason:@"Auto install operation expired" includingInstallTonight:1 withRealertStrategy:strategyCopy];
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_installUpdate:(unint64_t)update withInstallOperation:(id)operation source:(unint64_t)source options:(id)options
{
  selfCopy = self;
  v48 = a2;
  updateCopy = update;
  location = 0;
  objc_storeStrong(&location, operation);
  sourceCopy = source;
  v44 = 0;
  objc_storeStrong(&v44, options);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (selfCopy->_updateToInstall)
  {
    if (v44)
    {
      v16 = 0;
      if ([v44 automaticInstallAttempt])
      {
        v16 = sourceCopy == 1;
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
      v15 = SUSUIStringForInstallType(updateCopy);
      v40 = v15;
      sub_4B94(v51, v40);
      _os_log_impl(&dword_0, log, type, "Installation asked for of type: %{public}@", v51, 0xCu);

      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:0 andReason:@"Install"];
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_2DAE8;
    v35 = &unk_60598;
    v36 = selfCopy;
    v38[1] = updateCopy;
    v37 = v44;
    v38[0] = location;
    v39 = objc_retainBlock(&v31);
    isInstallationKeybagRequired = [(SUManagerClient *)selfCopy->_client isInstallationKeybagRequired];
    if ((isInstallationKeybagRequired & 1) == 0 || [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_4 + 1)
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
        if (updateCopy != &dword_0 + 1)
        {
          v12 = updateCopy == &dword_0 + 2;
        }

        v9 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]);
        v27 = v9;
        sub_2DBA8(v50, isInstallationKeybagRequired & 1, v12, v27);
        _os_log_impl(&dword_0, v10, v11, "Presenting authentication UI because: keybagRequired=%d, installTypeTonight? %d alertflow: %@", v50, 0x18u);

        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v29, 0);
      v7 = selfCopy;
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_2DC14;
      v23 = &unk_605C0;
      v26 = v39;
      v24 = v44;
      v25 = selfCopy;
      v6 = updateCopy;
      forecast = [location forecast];
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
    [(SUSUISoftwareUpdateController *)selfCopy _dismissInstallAlertsWithReason:@"No update to install anymore" includingInstallTonight:1 withRealertStrategy:0];
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&location, 0);
}

- (void)_doInstallNowWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  automaticInstallAttempt = [location[0] automaticInstallAttempt];
  if ((automaticInstallAttempt & 1) == 0)
  {
    [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel willInstallWithType:0];
  }

  v15 = 0;
  if (location[0])
  {
    v3 = [SUInstallOptions alloc];
    v4 = [v3 initWithSUSUIInstallOptions:location[0]];
    v5 = v15;
    v15 = v4;
  }

  client = selfCopy->_client;
  v6 = v15;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_2DE60;
  v12 = &unk_5D080;
  v13 = location[0];
  v14 = selfCopy;
  [(SUManagerClient *)client installUpdateWithInstallOptions:v6 withResult:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_doInstallTonight:(id)tonight consent:(BOOL)consent
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tonight);
  consentCopy = consent;
  dispatch_assert_queue_V2(selfCopy[3]);
  v6 = selfCopy[6];
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
  v13 = selfCopy;
  v14 = consentCopy;
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
    [(dispatch_queue_t *)selfCopy _createInstallTonightOperationWithResult:v15];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_setPendingInstallOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  if (selfCopy->_pendingInstallOptions != location[0])
  {
    objc_storeStrong(&selfCopy->_pendingInstallOptions, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_setInstallPolicy:(id)policy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, policy);
  if (([(SUInstallPolicy *)selfCopy->_installPolicy isEqual:location[0]]& 1) == 0)
  {
    objc_storeStrong(&selfCopy->_installPolicy, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupAutoUpdate:(id)update withPasscodePolicy:(unint64_t)policy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel willInstallWithType:2];
  [(SUSUISoftwareUpdateController *)selfCopy autoInstallTonightWithOperation:location[0]];
  [(SUSUISoftwareUpdateController *)selfCopy _setPasscodePolicyType:policy];
  objc_storeStrong(location, 0);
}

- (void)_setTryTonightAutoInstallOperation:(id)operation cancelIfNecessary:(BOOL)necessary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  necessaryCopy = necessary;
  if (selfCopy->_scheduledTryTonightAutoInstallOperation != location[0])
  {
    [(SUAutoInstallOperation *)selfCopy->_scheduledTryTonightAutoInstallOperation setDelegate:0];
    if (selfCopy->_scheduledTryTonightAutoInstallOperation && necessaryCopy)
    {
      oslog = SUSUILog();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        if (necessaryCopy)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        sub_2E938(v13, selfCopy->_scheduledTryTonightAutoInstallOperation, location[0], v4);
        _os_log_impl(&dword_0, oslog, type, "Cancelling current auto install operation (%{public}@) for new operation: %{public}@ (cancelIfNecessary: %@)", v13, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      [(SUAutoInstallOperation *)selfCopy->_scheduledTryTonightAutoInstallOperation cancel];
    }

    objc_storeStrong(&selfCopy->_scheduledTryTonightAutoInstallOperation, location[0]);
    if (selfCopy->_scheduledTryTonightAutoInstallOperation)
    {
      [(SUAutoInstallOperation *)selfCopy->_scheduledTryTonightAutoInstallOperation setDelegate:selfCopy];
      v6 = SUSUILog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_4B94(v12, selfCopy->_scheduledTryTonightAutoInstallOperation);
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Now tracking a new install tonight operation: %{public}@", v12, 0xCu);
      }

      objc_storeStrong(&v6, 0);
      [(SUSUISoftwareUpdateController *)selfCopy _dismissInstallAlertsWithReason:@"install tonight scheduled" includingInstallTonight:1 withRealertStrategy:0];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_dismissInstallAlertsWithReason:(id)reason includingInstallTonight:(BOOL)tonight withRealertStrategy:(unint64_t)strategy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  if (tonight)
  {
    [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
    [(SUSUIFullScreenAlertPresentationManager *)selfCopy->_fullScreenAlertPresentationManager dismissAlertsOfClass:objc_opt_class()];
  }

  [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:strategy andReason:location[0], location];
  objc_storeStrong(v5, 0);
}

- (BOOL)_isShowingInstallAlert
{
  selfCopy = self;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  presentedAlerts = [(SUSUIAlertPresentationManager *)self->_alertPresentationManager presentedAlerts];
  memset(__b, 0, 0x40uLL);
  obj = presentedAlerts;
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

  location = [(SUSUIFullScreenAlertPresentationManager *)selfCopy->_fullScreenAlertPresentationManager activeFullScreenAlerts];
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
  objc_storeStrong(&presentedAlerts, 0);
  return v3 & 1;
}

- (id)getNextLastPredictedUnlockDateFromDuet:(id)duet
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, duet);
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
    predictNextDateForLastUnlockAttemptOfTheDay = [v24 predictNextDateForLastUnlockAttemptOfTheDay];
    v6 = v25;
    v25 = predictNextDateForLastUnlockAttemptOfTheDay;

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

- (id)computeNextLastPredictedUnlockDateMinus4HoursFromStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v46 = [(SUSUISoftwareUpdateController *)selfCopy getNextLastPredictedUnlockDateFromDuet:location[0]];
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

- (int64_t)_delayDaysForSkips:(int64_t)skips isRequiredInstall:(BOOL)install
{
  v5 = 0;
  if (!install)
  {
    if (skips)
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
  selfCopy = self;
  v43[1] = a2;
  v43[0] = [(SUSUISoftwareUpdateController *)self _computeNextLastPredictedUnlockDateMinus4HoursFromNow];
  v42 = 0;
  currentInstallationPolicy = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel currentInstallationPolicy];
  v40 = [currentInstallationPolicy type] == &dword_0 + 1;
  if (v40)
  {
    remindMeLaterCountSinceRequiringInstallation = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel remindMeLaterCountSinceRequiringInstallation];
  }

  else
  {
    remindMeLaterCountSinceRequiringInstallation = [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel remindMeLaterCountForCurrentUpdate];
  }

  v39 = remindMeLaterCountSinceRequiringInstallation;
  v24 = +[SUSUIPreferences sharedInstance];
  alertAfterDownload = [(SUSUIPreferences *)v24 alertAfterDownload];

  if ((alertAfterDownload & 1) == 0 || v39)
  {
    if ([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]!= &dword_4 + 1)
    {
      v42 = [(SUSUISoftwareUpdateController *)selfCopy _delayDaysForSkips:v39 isRequiredInstall:v40];
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
      skipsAllowed = [currentInstallationPolicy skipsAllowed];
      v12 = v42;
      v15 = [SUUtility prettyPrintDate:v43[0]];
      v27 = v15;
      sub_2FFB8(v46, v9, v10, skipsAllowed, v12, v27);
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

  objc_storeStrong(&currentInstallationPolicy, 0);
  objc_storeStrong(v43, 0);
  v7 = v45;

  return v7;
}

- (void)_realertWithStrategy:(unint64_t)strategy andReason:(id)reason
{
  selfCopy = self;
  v34 = a2;
  strategyCopy = strategy;
  location = 0;
  objc_storeStrong(&location, reason);
  dispatch_assert_queue_V2(selfCopy[3]);
  *(selfCopy + 56) = 0;
  if (strategyCopy != 6)
  {
    [(dispatch_queue_t *)selfCopy _unregisterForInstallationConstraintChangeNotifications];
  }

  *(selfCopy + 57) = 0;
  [(dispatch_queue_t *)selfCopy _unregisterForUnlockNotifications];
  if (selfCopy[4] && ([(dispatch_queue_t *)selfCopy _shouldShowOrScheduleInstallAlert]& 1) != 0)
  {
    if (([(dispatch_queue_t *)selfCopy canDeferInstallation]& 1) == 0 && (strategyCopy == 1 || strategyCopy == 2))
    {
      v31 = SUSUILog();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        log = v31;
        type = v30;
        v13 = SUSUIStringForInstallAlertRepopStrategy(strategyCopy);
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
      strategyCopy = 7;
    }

    else
    {
      v27 = SUSUILog();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v27;
        v7 = v26;
        v8 = SUSUIStringForInstallAlertRepopStrategy(strategyCopy);
        v25 = v8;
        sub_4E04(v36, v25, location);
        _os_log_impl(&dword_0, v6, v7, "[Install Alert] Repop strategy changed to: %{public}@ (Reason=%@)", v36, 0x16u);

        objc_storeStrong(&v25, 0);
      }

      objc_storeStrong(&v27, 0);
    }

    v24 = +[NSCalendar autoupdatingCurrentCalendar];
    v23 = +[NSDate date];
    if (strategyCopy)
    {
      switch(strategyCopy)
      {
        case 1uLL:
          _computeDefaultRealertDate = [(dispatch_queue_t *)selfCopy _computeDefaultRealertDate];
          [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:_computeDefaultRealertDate repopStrategy:strategyCopy forReason:location];
          objc_storeStrong(&_computeDefaultRealertDate, 0);
          break;
        case 2uLL:
          _computeNextLastPredictedUnlockDateMinus4HoursFromNow = [(dispatch_queue_t *)selfCopy _computeNextLastPredictedUnlockDateMinus4HoursFromNow];
          v20 = [v24 dateByAddingUnit:16 value:7 toDate:_computeNextLastPredictedUnlockDateMinus4HoursFromNow options:0];
          [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:v20 repopStrategy:strategyCopy forReason:location];
          objc_storeStrong(&v20, 0);
          objc_storeStrong(&_computeNextLastPredictedUnlockDateMinus4HoursFromNow, 0);
          break;
        case 3uLL:
          [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:0 repopStrategy:3 forReason:location];
          [(dispatch_queue_t *)selfCopy _showOrScheduleNextInstallAlert];
          break;
        case 4uLL:
          v19 = [v24 dateByAddingUnit:128 value:5 toDate:v23 options:0];
          [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:v19 repopStrategy:strategyCopy forReason:location];
          objc_storeStrong(&v19, 0);
          break;
        case 5uLL:
          v18 = [v24 dateByAddingUnit:64 value:1 toDate:v23 options:0];
          [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:v18 repopStrategy:strategyCopy forReason:location];
          objc_storeStrong(&v18, 0);
          break;
        case 6uLL:
          *(selfCopy + 56) = 1;
          [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:0 repopStrategy:strategyCopy forReason:location];
          [(dispatch_queue_t *)selfCopy _registerForInstallationConstraintChangedNotifications];
          break;
        case 7uLL:
          *(selfCopy + 57) = 1;
          [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:0 repopStrategy:strategyCopy forReason:location];
          [(dispatch_queue_t *)selfCopy _registerForUnlockNotifications];
          break;
      }
    }

    else
    {
      [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:0 repopStrategy:0 forReason:location];
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    location = [NSString stringWithFormat:@"No more update to install: %@", location];
    [(dispatch_queue_t *)selfCopy _scheduleInstallAlertReminderWithDate:0 repopStrategy:strategyCopy forReason:location];
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
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)_showSUAvailableAlertForDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
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

  else if ([(SUSUIDDMController *)selfCopy->_ddmController notificationsDisabledByGlobalSettings])
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
    v12 = [(SUSUIBaseSoftwareUpdateAlertItem *)v3 initWithDescriptor:location[0] softwareUpdateController:selfCopy];
    [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v12 animated:1];
    objc_storeStrong(&v12, 0);
    v22 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_unregisterForInstallationConstraintChangeNotifications
{
  selfCopy = self;
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
    selfCopy->_registeredForInstallationConstraintChanges = 0;
    [(SUInvalidatable *)selfCopy->_installationConstraintObserver invalidate];
    objc_storeStrong(&selfCopy->_installationConstraintObserver, 0);
    [(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor removeObserver:selfCopy];
  }
}

- (void)_registerForInstallationConstraintChangedNotifications
{
  selfCopy = self;
  location[1] = a2;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!selfCopy->_registeredForInstallationConstraintChanges)
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
    selfCopy->_registeredForInstallationConstraintChanges = 1;
    [(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor addObserver:selfCopy];
    objc_initWeak(&v15, selfCopy);
    client = selfCopy->_client;
    updateToInstall = selfCopy->_updateToInstall;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_30D44;
    v12 = &unk_60638;
    v13 = selfCopy;
    objc_copyWeak(&v14, &v15);
    v2 = [(SUManagerClient *)client observeInstallationConstraintChangesForDownload:updateToInstall observer:&v8];
    installationConstraintObserver = selfCopy->_installationConstraintObserver;
    selfCopy->_installationConstraintObserver = v2;

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

- (void)setUpdateToInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  if (selfCopy->_updateToInstall != location[0])
  {
    objc_storeStrong(&selfCopy->_updateToInstall, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_showOrScheduleNextInstallAlertFromTimer:(id)timer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, timer);
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
  [(SUSUISoftwareUpdateController *)selfCopy _showOrScheduleNextInstallAlert];
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

- (BOOL)_showNextInstallAlertWithReasons:(int64_t)reasons orScheduleIfNecessary:(BOOL)necessary withInstallOptions:(id)options
{
  selfCopy = self;
  v42 = a2;
  reasonsCopy = reasons;
  necessaryCopy = necessary;
  location = 0;
  objc_storeStrong(&location, options);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  v38 = SUSUILog();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    log = v38;
    type = v37;
    v23 = SUStringFromInstallationConstraints();
    v36 = v23;
    sub_31B6C(v46, "[SUSUISoftwareUpdateController _showNextInstallAlertWithReasons:orScheduleIfNecessary:withInstallOptions:]", v36, necessaryCopy, location);
    _os_log_impl(&dword_0, log, type, "%s: reasons: %@, scheduleIfNecessary: %d, options: %@", v46, 0x26u);

    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  if (necessaryCopy)
  {
    [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:0 andReason:@"_showNextInstallAlertWithReason"];
  }

  v35 = reasonsCopy;
  v34 = (reasonsCopy & 0x10) != 0;
  if ((reasonsCopy & 0x10) == 0 || [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_0 + 2)
  {
    if (!v34 && [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_0 + 2)
    {
      v35 &= ~0x20uLL;
    }
  }

  else
  {
    v35 &= ~0x10uLL;
  }

  if ([(SUSUIDDMController *)selfCopy->_ddmController decideAlertConflictWithAlertFlow:[(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]]== &dword_0 + 1)
  {
    v33 = SUSUILog();
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v33;
      v19 = v32;
      v20 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]);
      v31 = v20;
      sub_1FCC(v45, v31);
      _os_log_impl(&dword_0, v18, v19, "Can't show classic flow alert due to DDM having higher priority. Classic flow: %@", v45, 0xCu);

      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v35 |= 0x4000000uLL;
  }

  if ([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_4 + 1)
  {
    v35 = 0;
  }

  if (![(SUSUISoftwareUpdateController *)selfCopy _shouldShowOrScheduleInstallAlert])
  {
    goto LABEL_46;
  }

  if (!v35)
  {
    if ([(SUSUISoftwareUpdateController *)selfCopy _needsToWaitForHomescreenToAppear])
    {
      if (necessaryCopy)
      {
        [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel countdownAlertPresentationPreventedForReasons:@"Waiting for homescreen when showing countdown alert"];
        [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:6 andReason:@"Wait for homescreen to appear"];
      }

      v44 = 0;
      v30 = 1;
    }

    else
    {
      [(SUSUISoftwareUpdateController *)selfCopy _showInstallAlertWithInstallOptions:location];
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
    if (necessaryCopy)
    {
      v16 = selfCopy;
      v17 = [(SUSUISoftwareUpdateController *)selfCopy _stringForInstallNotAllowableReason:0x4000000];
      [(SUSUISoftwareUpdateController *)v16 _realertWithStrategy:5 andReason:?];
    }

    v44 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  if ((v35 & 0x8000000) != 0)
  {
    if (necessaryCopy)
    {
      v14 = selfCopy;
      v15 = [(SUSUISoftwareUpdateController *)selfCopy _stringForInstallNotAllowableReason:0x8000000];
      [(SUSUISoftwareUpdateController *)v14 _resetStateForReason:?];
    }

    v44 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  v29 = 0;
  v11 = selfCopy;
  v10 = v35;
  _waitableReasonsForShowingInstallAlert = [(SUSUISoftwareUpdateController *)selfCopy _waitableReasonsForShowingInstallAlert];
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
  if (v26 && necessaryCopy)
  {
    v9 = [NSNumber numberWithInteger:v26];
    v25 = [NSMutableDictionary dictionaryWithObject:"dictionaryWithObject:forKey:" forKey:?];

    v24 = [NSError errorWithDomain:SUErrorDomain code:20 userInfo:v25];
    [(SUSUISoftwareUpdateController *)selfCopy _handleInstallError:v24];
    v44 = 0;
    v30 = 1;
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
LABEL_50:
    if (necessaryCopy)
    {
      if ([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]== &dword_0 + 2)
      {
        alertModel = selfCopy->_alertModel;
        v8 = [NSString stringWithFormat:@"Unmet constraints when showing countdown alert: %ld", v35];
        [(SUSUISoftwareUpdateAlertModel *)alertModel countdownAlertPresentationPreventedForReasons:?];
      }

      [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:6 andReason:v29];
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
  selfCopy = self;
  v35 = a2;
  isHomeScreenForeground = [(SUSUILayoutStateMonitor *)self->_layoutStateMonitor isHomeScreenForeground];
  settingsForeground = [(SUSUISoftwareUpdateController *)selfCopy settingsForeground];
  isInstallationKeybagRequired = [(SUManagerClient *)selfCopy->_client isInstallationKeybagRequired];
  isUILocked = [(SUSUISoftwareUpdateController *)selfCopy isUILocked];
  isAnyClientInUserInteraction = [(SUManagerClient *)selfCopy->_client isAnyClientInUserInteraction];
  v29 = SUSUILog();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    log = v29;
    type = v28;
    v2 = @"Yes";
    if (isUILocked)
    {
      v3 = @"Yes";
    }

    else
    {
      v3 = @"No";
    }

    v18 = v3;
    if (isInstallationKeybagRequired)
    {
      v4 = @"Yes";
    }

    else
    {
      v4 = @"No";
    }

    v19 = v4;
    if ((isHomeScreenForeground & 1) == 0)
    {
      v2 = @"No";
    }

    v20 = v2;
    v23 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]);
    v27 = v23;
    sub_31F7C(v39, v18, v19, v20, v27);
    _os_log_impl(&dword_0, log, type, "UI Locked: %@, needsHomescreenForInstallAlert: %@, isShowingHomescreen: %@, alert flow: %@", v39, 0x2Au);

    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v29, 0);
  if (isUILocked)
  {
    return isInstallationKeybagRequired & 1;
  }

  oslog = SUSUILog();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = oslog;
    v16 = v25;
    v5 = @"Yes";
    if (settingsForeground)
    {
      v6 = @"Yes";
    }

    else
    {
      v6 = @"No";
    }

    v11 = v6;
    if (isInstallationKeybagRequired)
    {
      v7 = @"Yes";
    }

    else
    {
      v7 = @"No";
    }

    v12 = v7;
    if (isHomeScreenForeground)
    {
      v8 = @"Yes";
    }

    else
    {
      v8 = @"No";
    }

    v13 = v8;
    if ((isAnyClientInUserInteraction & 1) == 0)
    {
      v5 = @"No";
    }

    v14 = v5;
    v17 = SUSUIStringForInstallAlertFlow([(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel alertFlow]);
    v24 = v17;
    sub_31FF8(v38, v11, v12, v13, v14, v24);
    _os_log_impl(&dword_0, v15, v16, "UI not locked. inPreferences: %@, needsHomescreenForInstallAlert: %@, isShowingHomescreen: %@, isClientInUserInteraction:%@, alert flow: %@", v38, 0x34u);

    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (isHomeScreenForeground & 1) != 0 || (v10 = 1, (settingsForeground))
  {
    v10 = isAnyClientInUserInteraction;
  }

  return v10 & 1;
}

- (void)_isUpdateInstallableWithInstallOptions:(id)options andResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v22 = 0;
  objc_storeStrong(&v22, response);
  dispatch_assert_queue_V2(selfCopy[3]);
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
  v8 = selfCopy[2];
  v7 = v21;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_3228C;
  v14 = &unk_60688;
  v16[1] = v17;
  v15 = selfCopy;
  v16[0] = v22;
  [v8 isUpdateReadyForInstallationWithOptions:v7 withResult:&v10];
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  _Block_object_dispose(v17, 8);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_isUpdateInstallable:(id)installable
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, installable);
  [(SUSUISoftwareUpdateController *)selfCopy _isUpdateInstallableWithInstallOptions:0 andResponse:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)_doesStateContainNonInstallableReasons:(int64_t)reasons reasonsToCheck:(id)check outMatchingReasonsString:(id *)string
{
  selfCopy = self;
  v29 = a2;
  reasonsCopy = reasons;
  location = 0;
  objc_storeStrong(&location, check);
  stringCopy = string;
  v25 = 0;
  v22 = 0;
  if (string)
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
      integerValue = [v21 integerValue];
      if ((reasonsCopy & integerValue) == integerValue)
      {
        v25 = 1;
        v10 = v24;
        v11 = [(SUSUISoftwareUpdateController *)selfCopy _stringForInstallNotAllowableReason:integerValue];
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

  if (v24 && stringCopy)
  {
    if ((v25 & 1) == 0)
    {
      [v24 appendString:@"None"];
    }

    v9 = v24;
    v6 = v24;
    *stringCopy = v9;
  }

  v8 = v25;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  return v8 & 1;
}

- (void)_dismissInstallFailureAlertsWithoutRepop
{
  selfCopy = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentedAlertsOfClass:objc_opt_class()];
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

- (void)_showInstallAlertWithInstallOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
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
    [(SUSUISoftwareUpdateController *)selfCopy _dismissInstallAlertsWithReason:@"Dismissing existing install alerts to show a new one." includingInstallTonight:1 withRealertStrategy:0];
    [(SUSUISoftwareUpdateController *)selfCopy _dismissInstallFailureAlertsWithoutRepop];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_32F90;
    v9 = &unk_5D058;
    v10 = selfCopy;
    v11 = location[0];
    v12 = objc_retainBlock(&v5);
    if (selfCopy->_scheduledTryTonightAutoInstallOperation)
    {
      v3 = v12;
      forecast = [(SUAutoInstallOperation *)selfCopy->_scheduledTryTonightAutoInstallOperation forecast];
      v3[2]();
    }

    else
    {
      [(SUSUISoftwareUpdateController *)selfCopy _createInstallTonightForecastWithResult:v12];
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

- (void)_scheduleInstallAlertReminderWithDate:(id)date repopStrategy:(unint64_t)strategy forReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  strategyCopy = strategy;
  v30 = 0;
  objc_storeStrong(&v30, reason);
  [(PCPersistentTimer *)selfCopy->_installTimer invalidate];
  objc_storeStrong(&selfCopy->_installTimer, 0);
  if (location[0])
  {
    v19 = +[SUSUIPreferences sharedInstance];
    installAlertIntervalMinutes = [(SUSUIPreferences *)v19 installAlertIntervalMinutes];

    if (installAlertIntervalMinutes)
    {
      v17 = +[SUSUIPreferences sharedInstance];
      installAlertIntervalMinutes2 = [(SUSUIPreferences *)v17 installAlertIntervalMinutes];
      integerValue = [installAlertIntervalMinutes2 integerValue];

      v29 = integerValue;
      v28 = (60 * integerValue);
      v5 = [[NSDate alloc] initWithTimeIntervalSinceNow:v28];
      v6 = location[0];
      location[0] = v5;
    }
  }

  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel setPersistedInstallAlertRepopStrategy:strategyCopy withFireDate:location[0]];
  if (location[0])
  {
    [(SUManagerClient *)selfCopy->_client registerCSInstallPredicatesOnDate:location[0]];
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
      v14 = SUSUIStringForInstallAlertRepopStrategy(strategyCopy);
      v24 = v14;
      sub_33A88(v35, v10, v11, v24);
      _os_log_impl(&dword_0, log, type, "[Install Alert] Scheduling new software update install alert reminder at %{public}@ for reason: %@ (repopStrategy: %@)", v35, 0x20u);

      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v7 = [PCPersistentTimer alloc];
    v8 = [v7 initWithFireDate:location[0] serviceIdentifier:@"SoftwareUpdateInstallAlertReminder" target:selfCopy selector:"_showOrScheduleNextInstallAlertFromTimer:" userInfo:0];
    installTimer = selfCopy->_installTimer;
    selfCopy->_installTimer = v8;

    [(PCPersistentTimer *)selfCopy->_installTimer setDisableSystemWaking:1];
    [(PCPersistentTimer *)selfCopy->_installTimer setUserVisible:1];
    [(PCPersistentTimer *)selfCopy->_installTimer setMinimumEarlyFireProportion:1.0];
    [(PCPersistentTimer *)selfCopy->_installTimer scheduleInQueue:selfCopy->_clientQueue];
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

- (void)_handleInstallError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v27 = ![(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor isScreenOn];
  v26 = BYSetupAssistantNeedsToRun();
  if (![(SUSUISoftwareUpdateInstallOptions *)selfCopy->_pendingInstallOptions automaticInstallAttempt]|| (v15 = 1, (v27 & 1) == 0))
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

  domain = [location[0] domain];
  v14 = 0;
  if ([domain isEqualToString:SUErrorDomain])
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

  domain2 = [location[0] domain];
  v10 = 0;
  if ([domain2 isEqualToString:SUErrorDomain])
  {
    v10 = [location[0] code] == &dword_10 + 3;
  }

  if (!v10)
  {
    v6 = 1;
    if (![(SUSUISoftwareUpdateController *)selfCopy _isMultiUserAppleId])
    {
      v6 = 1;
      if (![(SUSUISoftwareUpdateController *)selfCopy installErrorWillScheduleAutoInstall:location[0]])
      {
        v6 = [(SUSUISoftwareUpdateController *)selfCopy installErrorWhenNotReadyForManagedRequest:location[0]];
      }
    }

    v17 = v6 & 1;
    if ((v6 & 1) == 0)
    {
      v4 = [SUSUISoftwareUpdateUnableToInstallAlertItem alloc];
      descriptor = [(SUDownload *)selfCopy->_updateToInstall descriptor];
      v16 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v4 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];

      [(SUSUISoftwareUpdateUnableToInstallAlertItem *)v16 setError:location[0]];
      [(SUSUIBaseAlertItem *)v16 setIsUILocked:[(SUSUISoftwareUpdateController *)selfCopy isUILocked]];
      [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
      [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v16 animated:1];
      objc_storeStrong(&v16, 0);
    }

    goto LABEL_26;
  }

  v7 = [SUSUISoftwareUpdateVerificationFailedAlertItem alloc];
  descriptor2 = [(SUDownload *)selfCopy->_updateToInstall descriptor];
  v19 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v7 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];

  [(SUSUIBaseAlertItem *)v19 setIsUILocked:[(SUSUISoftwareUpdateController *)selfCopy isUILocked]];
  [(SUSUISoftwareUpdateVerificationFailedAlertItem *)v19 setError:location[0]];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAlertsOfClass:objc_opt_class() animated:1];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v19 animated:1];
  v18 = 1;
  objc_storeStrong(&v19, 0);
LABEL_27:
  objc_storeStrong(location, 0);
}

- (BOOL)installErrorWillScheduleAutoInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  domain = [location[0] domain];
  v9 = 0;
  if ([domain isEqualToString:SUErrorDomain])
  {
    v9 = [location[0] code] == &dword_14;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  userInfo = [location[0] userInfo];
  v4 = [userInfo objectForKey:kSUInstallationConstraintsUnmetKey];
  integerValue = [v4 integerValue];

  v12 = 0;
  v10 = 0;
  autoUpdateEnabled = 0;
  if ((integerValue & 0x10) != 0)
  {
    autoUpdateEnabled = 0;
    if ((integerValue & 0x20) != 0)
    {
      userInfo2 = [location[0] userInfo];
      v12 = 1;
      v11 = [userInfo2 objectForKey:kSUMDMInstallationRequest];
      v10 = 1;
      autoUpdateEnabled = 0;
      if ([v11 BOOLValue])
      {
        autoUpdateEnabled = [(SUInstallPolicy *)selfCopy->_installPolicy autoUpdateEnabled];
      }
    }
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (autoUpdateEnabled)
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

- (BOOL)installErrorWhenNotReadyForManagedRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  domain = [location[0] domain];
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ([domain isEqualToString:SUErrorDomain])
  {
    userInfo = [location[0] userInfo];
    v9 = 1;
    v8 = [userInfo objectForKey:kSUMDMInstallationRequest];
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

- (void)_resetStateForReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v7 = SUSUILog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v11, location[0]);
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "State reset for reason: %@", v11, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  [(SUSUISoftwareUpdateController *)selfCopy _realertWithStrategy:0 andReason:location[0]];
  alertPresentationManager = selfCopy->_alertPresentationManager;
  v3 = objc_opt_class();
  v6 = NSStringFromClass(v3);
  v10 = v6;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  [SUSUIAlertPresentationManager dismissAllAlertsExcludingClasses:"dismissAllAlertsExcludingClasses:animated:" animated:?];

  [(SUSUISoftwareUpdateController *)selfCopy _unregisterHomescreenAlerts];
  [(SUSUISoftwareUpdateAlertModel *)selfCopy->_alertModel resetTransientDownloadState];
  [(SUSUISoftwareUpdateController *)selfCopy setUpdateToInstall:0];
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

- (void)_autoDownloadUnknownToUserFailedForDescriptor:(id)descriptor error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v33 = 0;
  objc_storeStrong(&v33, error);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  if (location[0])
  {
    [(SUSUISoftwareUpdateController *)selfCopy _resetStateForReason:@"Auto download unknown to user failed to download."];
    if (v33)
    {
      userInfo = [v33 userInfo];
      v32 = [userInfo objectForKey:kSUAutoDownloadWillRetryKey];

      if (v32 && ![v32 BOOLValue])
      {
        v24 = _NSConcreteStackBlock;
        v25 = -1073741824;
        v26 = 0;
        v27 = sub_34C4C;
        v28 = &unk_5D008;
        v29 = selfCopy;
        v30 = location[0];
        v31 = objc_retainBlock(&v24);
        if ([(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor isHomeScreenForeground])
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
          [(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor addObserver:selfCopy];
          queue = selfCopy->_homescreenBlockQueue;
          v11 = _NSConcreteStackBlock;
          v12 = -1073741824;
          v13 = 0;
          v14 = sub_34D60;
          v15 = &unk_60450;
          v16 = selfCopy;
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

- (void)_presentAuthenticationUIForInstallation:(id)installation withInstallType:(unint64_t)type withInstallOperationForecast:(id)forecast
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, installation);
  typeCopy = type;
  v27 = 0;
  objc_storeStrong(&v27, forecast);
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
  if (typeCopy != 1)
  {
    v10 = typeCopy == 2;
  }

  v23 = v10;
  v8 = [SUSUIFullScreenAuthenticationAlert alloc];
  descriptor = [(SUDownload *)selfCopy->_updateToInstall descriptor];
  v5 = v27;
  canDeferInstallation = [(SUSUISoftwareUpdateController *)selfCopy canDeferInstallation];
  clientQueue = selfCopy->_clientQueue;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_35064;
  v19 = &unk_606B0;
  v21 = v10;
  v20 = location[0];
  v22 = [(SUSUIFullScreenAuthenticationAlert *)v8 initWithDescriptor:descriptor autoInstallForecast:v5 forInstallTonight:v10 canDeferInstallation:canDeferInstallation completionQueue:clientQueue completionBlock:&v15];

  [(SUSUIFullScreenAlertPresentationManager *)selfCopy->_fullScreenAlertPresentationManager presentAlert:v22 completion:?];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)rollbackCompleted:(id)completed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completed);
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
  [(SUSUISoftwareUpdateController *)selfCopy reboot:0];
  objc_storeStrong(location, 0);
}

- (void)_rollbackSucceeded:(id)succeeded
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, succeeded);
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
  [(SUManagerClient *)selfCopy->_client writeKeepAliveFile];
  [(SUManagerClient *)selfCopy->_client setLastRollbackDescriptor:location[0]];
  v3 = [SUSUIRollbackCountdownAlertItem alloc];
  v6 = [(SUSUIBaseRollbackAlertItem *)v3 initWithRollbackDescriptor:location[0] softwareUpdateController:selfCopy];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAllAlertsAnimated:1];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v6 animated:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_rollbackFailed:(id)failed withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failed);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = SUSUILog();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v12, v9);
    _os_log_impl(&dword_0, v8, v7, "[Rollback] Rollback failed with error: %@", v12, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v4 = [SUSUISoftwareUpdateRollbackFailureAlertItem alloc];
  v6 = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)v4 initWithRollbackDescriptor:location[0] softwareUpdateController:selfCopy error:v9];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAllAlertsAnimated:1];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v6 animated:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelRollback
{
  selfCopy = self;
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
  [(SUManagerClient *)selfCopy->_client writeKeepAliveFile];
  v4 = objc_alloc_init(SUPurgeOptions);
  [v4 setNotifyUser:0];
  [v4 setUserRequested:1];
  [(SUManagerClient *)selfCopy->_client purgeDownloadWithOptions:v4 withResult:&stru_606F0];
  objc_storeStrong(&v4, 0);
}

- (void)_bootedAfterRollback:(id)rollback
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rollback);
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
  v6 = [(SUSUIBaseRollbackAlertItem *)v3 initWithRollbackDescriptor:location[0] softwareUpdateController:selfCopy];
  if ([(SUSUILayoutStateMonitor *)selfCopy->_layoutStateMonitor isUILocked])
  {
    [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAllAlertsAnimated:1];
    [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v6 animated:1];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_rollbackSuggested:(id)suggested info:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, suggested);
  v9 = 0;
  objc_storeStrong(&v9, info);
  v8 = SUSUILog();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v12, v9);
    _os_log_impl(&dword_0, v8, v7, "[Rollback] Rollback suggested with info: %@", v12, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v4 = [SUSUIRollbackSuggestedAlertItem alloc];
  v6 = [(SUSUIRollbackSuggestedAlertItem *)v4 initWithDescriptor:location[0] softwareUpdateController:selfCopy info:v9];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager dismissAllAlertsAnimated:1];
  [(SUSUIAlertPresentationManager *)selfCopy->_alertPresentationManager presentAlert:v6 animated:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_setNVRAMVar:(__CFString *)var withValue:(void *)value
{
  selfCopy = self;
  v26 = a2;
  varCopy = var;
  valueCopy = value;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (var)
  {
    if (valueCopy)
    {
      v22 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
      if (v22)
      {
        v21 = IORegistryEntrySetCFProperty(v22, varCopy, valueCopy);
        if (v21)
        {
          v11 = SUSUILog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            sub_35DAC(v29, varCopy, v21);
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

- (void)reboot:(BOOL)reboot
{
  selfCopy = self;
  v14 = a2;
  rebootCopy = reboot;
  location = SUSUILog();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_11844(v16, rebootCopy);
    _os_log_impl(&dword_0, location, v11, "Rebooting now (dark=%d)", v16, 8u);
  }

  objc_storeStrong(&location, 0);
  queue = selfCopy->_backgroundQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_36118;
  v8 = &unk_5F568;
  v9 = selfCopy;
  v10 = rebootCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (id)_stringForCurrentVersionPreference
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = +[UIDevice currentDevice];
  systemVersion = [v6[0] systemVersion];
  buildVersion = [v6[0] buildVersion];
  v5 = [NSString stringWithFormat:@"%@:%@", systemVersion, buildVersion];

  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_saveLastKnownVersionPreference:(id)preference
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preference);
  [(SUSUISoftwareUpdateDefaults *)selfCopy->_suDefaults setLastOSVersion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_migrateForNewOSVersionIfNecessary
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [(SUSUISoftwareUpdateController *)self _stringForCurrentVersionPreference];
  lastOSVersion = [(SUSUISoftwareUpdateDefaults *)selfCopy->_suDefaults lastOSVersion];
  if (!lastOSVersion || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([lastOSVersion isEqualToString:v13[0]] & 1) == 0)
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
    [(SUSUISoftwareUpdateController *)selfCopy _saveLastKnownVersionPreference:v13[0]];
    [(SUSUISoftwareUpdateDefaults *)selfCopy->_suDefaults migrateAndClearLegacyPreferences];
    [(SUSUISoftwareUpdateDefaults *)selfCopy->_suDefaults setSoftwareUpdateState:0];
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
    [(SUSUISoftwareUpdateController *)selfCopy toggleSettingsBadge:0 update:0];
    [(SUSUISoftwareUpdateController *)selfCopy _clearLegacyBadgeIfNecessary:lastOSVersion];
  }

  objc_storeStrong(&lastOSVersion, 0);
  objc_storeStrong(v13, 0);
}

- (void)_clearLegacyBadgeIfNecessary:(id)necessary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, necessary);
  dispatch_assert_queue_V2(selfCopy[3]);
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
    [(dispatch_queue_t *)selfCopy _savePreferencesBadgeFlag:0];
    [(dispatch_queue_t *)selfCopy _setSettingsBadgeToValue:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_savePreferencesBadgeFlag:(BOOL)flag
{
  selfCopy = self;
  v12 = a2;
  flagCopy = flag;
  queue = self->_badgingQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_36768;
  v8 = &unk_5F568;
  selfCopy2 = self;
  v10 = flagCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&selfCopy2, 0);
}

- (void)toggleSettingsBadge:(BOOL)badge update:(id)update
{
  selfCopy = self;
  v15 = a2;
  badgeCopy = badge;
  location = 0;
  objc_storeStrong(&location, update);
  dispatch_assert_queue_V2(selfCopy[3]);
  queue = selfCopy[19];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_368D8;
  v9 = &unk_60718;
  v12 = badgeCopy;
  v10 = selfCopy;
  v11 = location;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)_setSettingsBadgeToValue:(int64_t)value
{
  selfCopy = self;
  v11 = a2;
  valueCopy = value;
  dispatch_assert_queue_V2(self->_clientQueue);
  queue = selfCopy->_badgingQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_36F9C;
  v8 = &unk_60740;
  v9[0] = selfCopy;
  v9[1] = valueCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(v9, 0);
}

- (BOOL)_badgingQueue_isBadgedForSoftwareUpdate
{
  badgingQueue = self->_badgingQueue;
  BSDispatchQueueAssert();
  return [(SUSUIExternalSettingsAppDefaults *)self->_settingsAppDefaults isBadgedForSoftwareUpdate];
}

- (void)_badgingQueue_badgeSettingsWithValue:(int64_t)value
{
  selfCopy = self;
  v7 = a2;
  valueCopy = value;
  badgingQueue = self->_badgingQueue;
  BSDispatchQueueAssert();
  v5 = [[NSNumber alloc] initWithInteger:valueCopy];
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v9, v5);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Settings Badge] Asking badgingQueue systemService to set badge value to %@", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(FBSSystemService *)selfCopy->_badgingQueue_systemService setBadgeValue:v5 forBundleID:SUSUISettingsBundleIdentifier];
  objc_storeStrong(&v5, 0);
}

- (void)_badgingQueue_savePreferencesBadgeEnabled:(BOOL)enabled
{
  badgingQueue = self->_badgingQueue;
  BSDispatchQueueAssert();
  [(SUSUIExternalSettingsAppDefaults *)self->_settingsAppDefaults setBadgedForSoftwareUpdate:enabled];
}

- (BOOL)settingsForeground
{
  _foregroundBundleID = [(SUSUISoftwareUpdateController *)self _foregroundBundleID];
  v4 = [_foregroundBundleID isEqualToString:@"com.apple.Preferences"];

  return v4;
}

- (BOOL)_shouldHideAlert
{
  metadata = [(SUDownload *)self->_updateToInstall metadata];
  isAutoDownload = [metadata isAutoDownload];

  v8 = [(SUSUISoftwareUpdateAlertModel *)self->_alertModel alertFlow]== &dword_0 + 1;
  descriptor = [(SUDownload *)self->_updateToInstall descriptor];
  hideInstallAlert = [descriptor hideInstallAlert];

  v7 = 0;
  if (isAutoDownload)
  {
    v7 = 0;
    if (v8)
    {
      v7 = hideInstallAlert;
    }
  }

  return v7 & 1;
}

- (void)scanForUpdates:(id)updates withScanResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  v5 = 0;
  objc_storeStrong(&v5, results);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  [(SUManagerClient *)selfCopy->_client scanForUpdates:location[0] withScanResults:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setInstallOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  objc_storeStrong(&selfCopy->_scheduledTryTonightAutoInstallOperation, location[0]);
  objc_storeStrong(location, 0);
}

@end