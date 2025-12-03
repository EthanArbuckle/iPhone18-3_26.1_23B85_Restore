@interface USBudgetTracker
+ (USBudgetTracker)sharedTracker;
+ (_TtC18UsageTrackingAgent22DeviceActivityQuerying)usageQuerying;
+ (id)_getRemainingTimeForBudgets:(id)budgets referenceDate:(id)date error:(id *)error;
+ (id)_getRemainingTimeForEvents:(id)events referenceDate:(id)date error:(id *)error;
+ (void)_checkStatusOfBudgets:(id)budgets withError:(id)error completionHandler:(id)handler;
+ (void)checkStatusOfAllBudgetsWithCompletionHandler:(id)handler;
+ (void)checkStatusOfBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)checkStatusOfBudgets:(id)budgets clientIdentifiers:(id)identifiers completionHandler:(id)handler;
+ (void)startTracking;
- (BOOL)_cacheThresholdAdjustmentTimeForBudget:(id)budget;
- (BOOL)_deviceActivityBudgetWasAddedOrUpdated:(id)updated didCollectLocalActivity:(BOOL)activity;
- (BOOL)_notifyExtensionThatEventDidReachThreshold:(id)threshold activity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier isWarning:(BOOL)warning;
- (BOOL)_notifyExtensionThatEventDidUnreachThreshold:(id)threshold activity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier;
- (BOOL)_notifyForBudgets:(id)budgets events:(id)events nextNotificationEventName:(const char *)name syncForImpendingBudgets:(BOOL)impendingBudgets;
- (BOOL)_setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:(id)budgets notifyForIntervalEnd:(BOOL)end isEndOfInterval:(BOOL)interval;
- (BOOL)_setWarningAlarmOrNotifyExtensionWithComponents:(id)components referenceDate:(id)date budgetID:(id)d activity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier warnForStartOfInterval:(BOOL)interval;
- (USBudgetTracker)init;
- (void)_applicationAlarmDidFire;
- (void)_applicationRegistrationDidFire;
- (void)_budgetIntervalAlarmDidFire:(const char *)fire isWarning:(BOOL)warning isEndOfInterval:(BOOL)interval;
- (void)_budgetsResetAlarmDidFire:(id)fire;
- (void)_cacheTimeRemainingForBudgetsAndEventsBeforeUsageDataDeletion:(id)deletion;
- (void)_calculateDeletedTimeForBudgetsAndEventsAfterUsageDataDeletion:(id)deletion;
- (void)_checkBudgetStatusForAllCurrentUsage;
- (void)_checkBudgetStatusForApplications:(id)applications;
- (void)_checkBudgetStatusForNowPlayingCategories:(id)categories;
- (void)_checkBudgetStatusForVideoBundleIdentifiers:(id)identifiers;
- (void)_checkBudgetStatusForVideoWebDomains:(id)domains;
- (void)_checkBudgetStatusForWebDomains:(id)domains;
- (void)_clearPostedNotificationsForNoLongerExpiredBudgets;
- (void)_completion:(id)_completion streamIdentifier:(id)identifier;
- (void)_deviceActivityBudgetWasAddedOrUpdated:(id)updated;
- (void)_deviceActivityBudgetsWereRemoved:(id)removed;
- (void)_deviceActivitySyncCoordinatorDidIdle:(id)idle;
- (void)_didCollectLocalActivityForApplications:(id)applications;
- (void)_didCollectLocalActivityForDeviceActivityAlarmReset;
- (void)_didCollectLocalActivityForIdleSyncCoordinator;
- (void)_didCollectLocalActivityForNowPlayingCategories:(id)categories;
- (void)_didCollectLocalActivityForVideoBundleIdentifiers:(id)identifiers;
- (void)_didCollectLocalActivityForVideoWebDomains:(id)domains;
- (void)_didCollectLocalActivityForWebDomains:(id)domains;
- (void)_duetSyncCoordinatorDidIdle;
- (void)_notifyExtensionThatIntervalDidEndForActivity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier isWarning:(BOOL)warning;
- (void)_notifyExtensionThatIntervalDidStartForActivity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier isWarning:(BOOL)warning;
- (void)_nowPlayingAlarmDidFire;
- (void)_nowPlayingRegistrationDidFire;
- (void)_registerForAllUsage;
- (void)_registerForApplicationUsage;
- (void)_registerForNowPlayingUsage;
- (void)_registerForVideoUsage;
- (void)_registerForWebDomainUsage;
- (void)_registeredBudgetsDidChange:(id)change;
- (void)_resetDeviceActivityAlarms;
- (void)_startTracking;
- (void)_subscribeForApplicationUsage;
- (void)_subscribeForNowPlayingUsage;
- (void)_subscribeForVideoUsage;
- (void)_subscribeForWebDomainUsage;
- (void)_systemTimeDidChange;
- (void)_tombstoneEventDidFire:(const char *)fire;
- (void)_videoAlarmDidFire;
- (void)_videoRegistrationDidFire;
- (void)_webDomainAlarmDidFire;
- (void)_webDomainRegistrationDidFire;
@end

@implementation USBudgetTracker

+ (_TtC18UsageTrackingAgent22DeviceActivityQuerying)usageQuerying
{
  if (qword_100091C48 != -1)
  {
    sub_100064410();
  }

  v3 = qword_100091C40;

  return v3;
}

- (USBudgetTracker)init
{
  v17.receiver = self;
  v17.super_class = USBudgetTracker;
  v2 = [(USBudgetTracker *)&v17 init];
  v3 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.UsageTrackingAgent.activity.reset-device-activity-alarms"];
  resetDeviceActivityAlarms = v2->_resetDeviceActivityAlarms;
  v2->_resetDeviceActivityAlarms = v3;

  if (_os_feature_enabled_impl())
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.UsageTrackingAgent.scheduler-queue", v5);
    schedulerQueue = v2->_schedulerQueue;
    v2->_schedulerQueue = v6;

    v8 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.UsageTrackingAgent.application-scheduler" targetQueue:v2->_schedulerQueue];
    applicationScheduler = v2->_applicationScheduler;
    v2->_applicationScheduler = v8;

    v10 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.UsageTrackingAgent.web-domain-scheduler" targetQueue:v2->_schedulerQueue];
    webDomainScheduler = v2->_webDomainScheduler;
    v2->_webDomainScheduler = v10;

    v12 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.UsageTrackingAgent.now-playing-scheduler" targetQueue:v2->_schedulerQueue];
    nowPlayingScheduler = v2->_nowPlayingScheduler;
    v2->_nowPlayingScheduler = v12;

    v14 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.UsageTrackingAgent.video-scheduler" targetQueue:v2->_schedulerQueue];
    videoScheduler = v2->_videoScheduler;
    v2->_videoScheduler = v14;
  }

  return v2;
}

+ (USBudgetTracker)sharedTracker
{
  if (qword_100091C58 != -1)
  {
    sub_100064424();
  }

  v3 = qword_100091C50;

  return v3;
}

+ (void)startTracking
{
  sharedTracker = [self sharedTracker];
  [sharedTracker _startTracking];
}

- (void)_startTracking
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting tracking: setting XPC alarm and notification event handlers, budget change notification handlers, and checking for screen/application/web change registration.", buf, 2u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F788;
  handler[3] = &unk_1000861F0;
  handler[4] = self;
  handler[5] = a2;
  xpc_set_event_stream_handler("com.apple.alarm", 0, handler);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F9D4;
  v10[3] = &unk_1000861F0;
  v10[4] = self;
  v10[5] = a2;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, v10);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000FB44;
  v9[3] = &unk_100086218;
  v9[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v9);
  [MOEffectiveSettings startObservingChangesWithHandler:&stru_100086258];
  resetDeviceActivityAlarms = [(USBudgetTracker *)self resetDeviceActivityAlarms];
  [resetDeviceActivityAlarms setPreregistered:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010058;
  v8[3] = &unk_100086300;
  v8[4] = self;
  [resetDeviceActivityAlarms scheduleWithBlock:v8];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_registeredBudgetsDidChange:" name:@"RegisteredBudgetsDidChange" object:0];
  [v5 addObserver:self selector:"_deviceActivityBudgetWasAddedOrUpdated:" name:@"DeviceActivityBudgetWasAddedOrUpdated" object:0];
  [v5 addObserver:self selector:"_deviceActivityBudgetsWereRemoved:" name:@"DeviceActivityBudgetsWereRemoved" object:0];
  v6 = +[_TtC18UsageTrackingAgent15SyncCoordinator privateEngineDidIdleNotificationName];
  [v5 addObserver:self selector:"_deviceActivitySyncCoordinatorDidIdle:" name:v6 object:0];

  v7 = MKBUserUnlockedSinceBoot();
  if (v7 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064438();
    }
  }

  else if (v7 == 1)
  {
    [(USBudgetTracker *)self _registerForAllUsage];
  }
}

- (void)_registeredBudgetsDidChange:(id)change
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Budgets changed, checking application/web change registration", v4, 2u);
  }

  [(USBudgetTracker *)self _registerForAllUsage];
}

- (void)_deviceActivityBudgetWasAddedOrUpdated:(id)updated
{
  updatedCopy = updated;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device activity budget was added or updated, checking application/web change registration", buf, 2u);
  }

  if ([(USBudgetTracker *)self _deviceActivityBudgetWasAddedOrUpdated:updatedCopy didCollectLocalActivity:0])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001025C;
    v5[3] = &unk_1000860C0;
    v5[4] = self;
    v6 = updatedCopy;
    [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v5];
  }
}

- (BOOL)_deviceActivityBudgetWasAddedOrUpdated:(id)updated didCollectLocalActivity:(BOOL)activity
{
  activityCopy = activity;
  updatedCopy = updated;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  userInfo = [updatedCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"BudgetID"];
  v9 = [userInfo objectForKeyedSubscript:@"ClientIdentifier"];
  v10 = +[USBudgetRegistration sharedRegistration];
  uRIRepresentation = [v8 URIRepresentation];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10001040C;
  v18 = &unk_100086328;
  v21 = &v23;
  selfCopy = self;
  v22 = activityCopy;
  v12 = v8;
  v20 = v12;
  [v10 fetchBudgetForDeviceActivityWithURI:uRIRepresentation clientIdentifier:v9 completionHandler:&v15];

  if (activityCopy)
  {
    [(USBudgetTracker *)self _registerForAllUsage:v15];
  }

  v13 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v13;
}

- (void)_deviceActivityBudgetsWereRemoved:(id)removed
{
  userInfo = [removed userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"BudgetMetadata"];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v28)
  {
    v27 = *v30;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        budgetID = [v6 budgetID];
        uRIRepresentation = [budgetID URIRepresentation];
        absoluteString = [uRIRepresentation absoluteString];

        v10 = [NSString alloc];
        v11 = [NSString stringWithUTF8String:"com.apple.UsageTrackingAgent.alarm.start-"];
        v12 = [v10 initWithFormat:@"%@%@", v11, absoluteString];

        [v12 UTF8String];
        xpc_set_event();
        v13 = [NSString alloc];
        v14 = [NSString stringWithUTF8String:"com.apple.UsageTrackingAgent.alarm.start-warning-"];
        v15 = [v13 initWithFormat:@"%@%@", v14, absoluteString];

        [v15 UTF8String];
        xpc_set_event();
        v16 = [NSString alloc];
        v17 = [NSString stringWithUTF8String:"com.apple.UsageTrackingAgent.alarm.end-"];
        v18 = [v16 initWithFormat:@"%@%@", v17, absoluteString];

        [v18 UTF8String];
        xpc_set_event();
        v19 = [NSString alloc];
        v20 = [NSString stringWithUTF8String:"com.apple.UsageTrackingAgent.end-warning-"];
        v21 = [v19 initWithFormat:@"%@%@", v20, absoluteString];

        [v21 UTF8String];
        xpc_set_event();
        if ([v6 intervalDidStart])
        {
          activity = [v6 activity];
          clientIdentifier = [v6 clientIdentifier];
          extensionIdentifier = [v6 extensionIdentifier];
          [(USBudgetTracker *)self _notifyExtensionThatIntervalDidEndForActivity:activity clientIdentifier:clientIdentifier extensionIdentifier:extensionIdentifier isWarning:0];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v28);
  }

  [(USBudgetTracker *)self _registerForAllUsage];
}

- (void)_registerForAllUsage
{
  if (_os_feature_enabled_impl())
  {
    schedulerQueue = [(USBudgetTracker *)self schedulerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000109FC;
    block[3] = &unk_100085D00;
    block[4] = self;
    dispatch_async(schedulerQueue, block);
  }

  else
  {
    [(USBudgetTracker *)self _registerForApplicationUsage];
    [(USBudgetTracker *)self _registerForWebDomainUsage];
    [(USBudgetTracker *)self _registerForNowPlayingUsage];

    [(USBudgetTracker *)self _registerForVideoUsage];
  }
}

- (void)_subscribeForApplicationUsage
{
  selfCopy = self;
  applicationSubscription = [(USBudgetTracker *)self applicationSubscription];
  [applicationSubscription cancel];

  xpc_set_event();
  v4 = +[USBudgetRegistration sharedRegistration];
  v72 = 0;
  v5 = [v4 areCategoriesBudgeted:&v72];
  v6 = v72;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006466C();
    }

    v14 = 0;
    v11 = 0;
    goto LABEL_50;
  }

  if ([v5 BOOLValue])
  {
    v7 = BiomeLibrary();
    screenTime = [v7 ScreenTime];
    appUsage = [screenTime AppUsage];
    dSLPublisher = [appUsage DSLPublisher];

    v11 = [dSLPublisher filterWithKeyPath:@"eventBody.starting" value:&__kCFBooleanTrue];
    if ([0 count])
    {
      v12 = [v11 filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:0];

      v11 = v12;
    }

    if (_os_feature_enabled_impl())
    {
      v13 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentBundleIdentifiers];
    }

    else
    {
      v61 = v6;
      v62 = v11;
      v63 = v5;
      v65 = v4;
      v67 = selfCopy;
      v24 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
      v25 = +[_CDContextQueries appUsageBundleID];
      v26 = +[_CDContextQueries appUsageType];
      v56 = +[_CDClientContext userContext];
      v58 = v24;
      v27 = [v56 objectForKeyedSubscript:v24];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v28 = [v27 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = *v74;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v74 != v31)
            {
              objc_enumerationMutation(v27);
            }

            v33 = *(*(&v73 + 1) + 8 * i);
            v34 = [v33 objectForKeyedSubscript:v26];
            v35 = v34;
            if (!v34 || [v34 integerValue] == 1)
            {
              if (v30)
              {
                v36 = [v33 objectForKeyedSubscript:v25];
                [v30 addObject:v36];
              }

              else
              {
                v37 = [NSMutableOrderedSet alloc];
                v36 = [v33 objectForKeyedSubscript:v25];
                v30 = [v37 initWithObjects:{v36, 0}];
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v29);
      }

      else
      {
        v30 = 0;
      }

      v13 = v30;

      v4 = v65;
      selfCopy = v67;
      v11 = v62;
      v5 = v63;
      v6 = v61;
    }

    v14 = [v13 count] != 0;

LABEL_50:
    v16 = v6;
    goto LABEL_55;
  }

  v71 = v6;
  v15 = [v4 fetchAllBudgetedApplicationsAndReturnError:&v71];
  v16 = v71;

  if ([v15 count])
  {
    v60 = v15;
    v17 = [v15 set];
    v18 = BiomeLibrary();
    screenTime2 = [v18 ScreenTime];
    appUsage2 = [screenTime2 AppUsage];
    dSLPublisher2 = [appUsage2 DSLPublisher];

    v11 = [dSLPublisher2 filterWithKeyPath:@"eventBody.starting" value:&__kCFBooleanTrue];
    if ([v17 count])
    {
      v22 = [v11 filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:v17];

      v11 = v22;
    }

    if (_os_feature_enabled_impl())
    {
      v23 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentBundleIdentifiers];
    }

    else
    {
      v59 = v16;
      v64 = v5;
      v66 = v4;
      v68 = selfCopy;
      v38 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
      v39 = +[_CDContextQueries appUsageBundleID];
      v40 = +[_CDContextQueries appUsageType];
      v55 = +[_CDClientContext userContext];
      v57 = v38;
      v41 = [v55 objectForKeyedSubscript:v38];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = 0;
        v45 = *v74;
        do
        {
          for (j = 0; j != v43; j = j + 1)
          {
            if (*v74 != v45)
            {
              objc_enumerationMutation(v41);
            }

            v47 = *(*(&v73 + 1) + 8 * j);
            v48 = [v47 objectForKeyedSubscript:v40];
            v49 = v48;
            if (!v48 || [v48 integerValue] == 1)
            {
              if (v44)
              {
                v50 = [v47 objectForKeyedSubscript:v39];
                [v44 addObject:v50];
              }

              else
              {
                v51 = [NSMutableOrderedSet alloc];
                v50 = [v47 objectForKeyedSubscript:v39];
                v44 = [v51 initWithObjects:{v50, 0}];
              }
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v43);
      }

      else
      {
        v44 = 0;
      }

      v23 = v44;

      v4 = v66;
      selfCopy = v68;
      v5 = v64;
      v16 = v59;
    }

    v15 = v60;
    v14 = [v23 intersectsOrderedSet:v60];
  }

  else
  {
    if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000645F4();
    }

    v14 = 0;
    v11 = 0;
  }

LABEL_55:
  applicationScheduler = [(USBudgetTracker *)selfCopy applicationScheduler];
  v53 = [v11 subscribeOn:applicationScheduler];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1000111E0;
  v70[3] = &unk_100086350;
  v70[4] = selfCopy;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000111F8;
  v69[3] = &unk_100086378;
  v69[4] = selfCopy;
  v54 = [v53 sinkWithCompletion:v70 receiveInput:v69];
  [(USBudgetTracker *)selfCopy setApplicationSubscription:v54];

  if (v14)
  {
    [(USBudgetTracker *)selfCopy _applicationRegistrationDidFire];
  }
}

- (void)_registerForApplicationUsage
{
  applicationRegistration = [(USBudgetTracker *)self applicationRegistration];
  if (applicationRegistration)
  {
    v5 = +[_CDClientContext userContext];
    [v5 deregisterCallback:applicationRegistration];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deregistered from CoreDuet user context application usage status changes", buf, 2u);
    }
  }

  xpc_set_event();
  v6 = +[USBudgetRegistration sharedRegistration];
  v19 = 0;
  v7 = [v6 areCategoriesBudgeted:&v19];
  v8 = v19;
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006475C();
    }

    goto LABEL_24;
  }

  v9 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  if ([v7 BOOLValue])
  {
    v10 = [_CDContextualPredicate predicateForChangeAtKeyPath:v9];
    v11 = "";
    v12 = v8;
  }

  else
  {
    v18 = v8;
    v13 = [v6 fetchAllBudgetedApplicationsAndReturnError:&v18];
    v12 = v18;

    if ([v13 count])
    {
      v14 = +[_CDContextQueries appUsageBundleID];
      v10 = [_CDContextualPredicate predicateForKeyPath:v9 withFormat:@"ANY SELF.%@.value.%K IN %@", v9, v14, v13];
    }

    else
    {
      if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000646E4();
      }

      v10 = 0;
    }

    v11 = " not";
  }

  if (!v10)
  {
    v8 = v12;
LABEL_24:
    [(USBudgetTracker *)self setApplicationRegistration:0];
    v12 = v8;
    goto LABEL_25;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011590;
  v17[3] = &unk_1000863A0;
  v17[4] = self;
  v17[5] = a2;
  v15 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.UsageTrackingAgent.registration.application" contextualPredicate:v10 clientIdentifier:@"com.apple.UsageTrackingAgent" callback:v17];
  [(USBudgetTracker *)self setApplicationRegistration:v15];
  v16 = +[_CDClientContext userContext];
  [v16 registerCallback:v15];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registered for CoreDuet user context application usage status changes, categories are%{public}s budgeted", buf, 0xCu);
  }

  if (([v10 firesOnAnyChange] & 1) != 0 || objc_msgSend(v16, "evaluatePredicate:", v10))
  {
    [(USBudgetTracker *)self _applicationRegistrationDidFire];
  }

LABEL_25:
}

- (void)_subscribeForWebDomainUsage
{
  selfCopy = self;
  webDomainSubscription = [(USBudgetTracker *)self webDomainSubscription];
  [webDomainSubscription cancel];

  xpc_set_event();
  v4 = +[USBudgetRegistration sharedRegistration];
  v49 = 0;
  v5 = [v4 areCategoriesBudgeted:&v49];
  v6 = v49;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000648C0();
    }

    v13 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  if ([v5 BOOLValue])
  {
    v7 = BiomeLibrary();
    v8 = [v7 App];
    webUsage = [v8 WebUsage];
    dSLPublisher = [webUsage DSLPublisher];

    v11 = [dSLPublisher filterWithKeyPath:@"eventBody.usageState" value:&off_100088EB0];
    if ([0 count])
    {
      v12 = [v11 filterWithKeyPath:@"eventBody.webDomain" comparison:3 value:0];

      v11 = v12;
    }

    v13 = 1;
LABEL_9:
    v14 = v6;
    goto LABEL_36;
  }

  v48 = v6;
  v15 = [v4 fetchAllBudgetedWebDomainsAndReturnError:&v48];
  v14 = v48;

  if ([v15 count])
  {
    v45 = v15;
    v16 = [v15 set];
    v17 = BiomeLibrary();
    v18 = [v17 App];
    webUsage2 = [v18 WebUsage];
    dSLPublisher2 = [webUsage2 DSLPublisher];

    v11 = [dSLPublisher2 filterWithKeyPath:@"eventBody.usageState" value:&off_100088EB0];
    if ([v16 count])
    {
      v21 = [v11 filterWithKeyPath:@"eventBody.webDomain" comparison:3 value:v16];

      v11 = v21;
    }

    if (_os_feature_enabled_impl())
    {
      v22 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentWebDomains];
    }

    else
    {
      v41 = v14;
      v42 = v5;
      v43 = v4;
      v44 = selfCopy;
      v23 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
      v24 = +[_CDContextQueries appWebUsageWebDomain];
      v25 = +[_CDContextQueries appWebUsageType];
      v39 = +[_CDClientContext userContext];
      v40 = v23;
      v26 = [v39 objectForKeyedSubscript:v23];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = *v51;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v50 + 1) + 8 * i);
            v33 = [v32 objectForKeyedSubscript:v25];
            if ([v33 integerValue] == 1)
            {
              if (v29)
              {
                v34 = [v32 objectForKeyedSubscript:v24];
                [v29 addObject:v34];
              }

              else
              {
                v35 = [NSMutableOrderedSet alloc];
                v34 = [v32 objectForKeyedSubscript:v24];
                v29 = [v35 initWithObjects:{v34, 0}];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v28);
      }

      else
      {
        v29 = 0;
      }

      v22 = v29;

      v4 = v43;
      selfCopy = v44;
      v14 = v41;
      v5 = v42;
    }

    v15 = v45;
    v13 = [v22 intersectsOrderedSet:v45];
  }

  else
  {
    if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064848();
    }

    v13 = 0;
    v11 = 0;
  }

LABEL_36:
  webDomainScheduler = [(USBudgetTracker *)selfCopy webDomainScheduler];
  v37 = [v11 subscribeOn:webDomainScheduler];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100011B88;
  v47[3] = &unk_100086350;
  v47[4] = selfCopy;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100011BA0;
  v46[3] = &unk_100086378;
  v46[4] = selfCopy;
  v38 = [v37 sinkWithCompletion:v47 receiveInput:v46];
  [(USBudgetTracker *)selfCopy setWebDomainSubscription:v38];

  if (v13)
  {
    [(USBudgetTracker *)selfCopy _webDomainRegistrationDidFire];
  }
}

- (void)_registerForWebDomainUsage
{
  webDomainRegistration = [(USBudgetTracker *)self webDomainRegistration];
  if (webDomainRegistration)
  {
    v5 = +[_CDClientContext userContext];
    [v5 deregisterCallback:webDomainRegistration];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deregistered from CoreDuet user context web usage status changes", buf, 2u);
    }
  }

  xpc_set_event();
  v6 = +[USBudgetRegistration sharedRegistration];
  v19 = 0;
  v7 = [v6 areCategoriesBudgeted:&v19];
  v8 = v19;
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000649B0();
    }

    goto LABEL_24;
  }

  v9 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
  if ([v7 BOOLValue])
  {
    v10 = [_CDContextualPredicate predicateForChangeAtKeyPath:v9];
    v11 = "";
    v12 = v8;
  }

  else
  {
    v18 = v8;
    v13 = [v6 fetchAllBudgetedWebDomainsAndReturnError:&v18];
    v12 = v18;

    if ([v13 count])
    {
      v14 = +[_CDContextQueries appWebUsageWebDomain];
      v10 = [_CDContextualPredicate predicateForKeyPath:v9 withFormat:@"ANY SELF.%@.value.%K IN %@", v9, v14, v13];
    }

    else
    {
      if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100064938();
      }

      v10 = 0;
    }

    v11 = " not";
  }

  if (!v10)
  {
    v8 = v12;
LABEL_24:
    [(USBudgetTracker *)self setWebDomainRegistration:0];
    v12 = v8;
    goto LABEL_25;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011F38;
  v17[3] = &unk_1000863A0;
  v17[4] = self;
  v17[5] = a2;
  v15 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.UsageTrackingAgent.registration.web-domain" contextualPredicate:v10 clientIdentifier:@"com.apple.UsageTrackingAgent" callback:v17];
  [(USBudgetTracker *)self setWebDomainRegistration:v15];
  v16 = +[_CDClientContext userContext];
  [v16 registerCallback:v15];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registered for CoreDuet user context web usage status changes, categories are%{public}s budgeted", buf, 0xCu);
  }

  if (([v10 firesOnAnyChange] & 1) != 0 || objc_msgSend(v16, "evaluatePredicate:", v10))
  {
    [(USBudgetTracker *)self _webDomainRegistrationDidFire];
  }

LABEL_25:
}

- (void)_subscribeForNowPlayingUsage
{
  nowPlayingSubscription = [(USBudgetTracker *)self nowPlayingSubscription];
  [nowPlayingSubscription cancel];

  xpc_set_event();
  v4 = +[USBudgetRegistration sharedRegistration];
  v22 = 0;
  v5 = [v4 isCategoryBudgeted:CTCategoryIdentifierEntertainment error:&v22];
  v6 = v22;

  if (v5)
  {
    if ([v5 BOOLValue])
    {
      v7 = BiomeLibrary();
      media = [v7 Media];
      nowPlaying = [media NowPlaying];
      dSLPublisher = [nowPlaying DSLPublisher];

      v11 = [0 filterWithKeyPath:@"eventBody.itemMediaType" value:&off_100088E80];
      v12 = [v11 filterWithKeyPath:@"eventBody.playbackState" value:&off_100088E98];

      v13 = [NSSet alloc];
      v14 = [v13 initWithObjects:{USBundleIdentifierQuickLookUIServiceEmbedded, USBundleIdentifierQuickLookUIServiceMacOS, 0}];
      v15 = [dSLPublisher filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:v14];

      v16 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying isQuickLookVideoNowPlaying];
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064A9C();
  }

  v16 = 0;
  v15 = 0;
LABEL_7:
  nowPlayingScheduler = [(USBudgetTracker *)self nowPlayingScheduler];
  v18 = [v15 subscribeOn:nowPlayingScheduler];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100012250;
  v21[3] = &unk_100086350;
  v21[4] = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012268;
  v20[3] = &unk_100086378;
  v20[4] = self;
  v19 = [v18 sinkWithCompletion:v21 receiveInput:v20];
  [(USBudgetTracker *)self setNowPlayingSubscription:v19];

  if (v16)
  {
    [(USBudgetTracker *)self _nowPlayingRegistrationDidFire];
  }
}

- (void)_registerForNowPlayingUsage
{
  nowPlayingRegistration = [(USBudgetTracker *)self nowPlayingRegistration];
  if (nowPlayingRegistration)
  {
    v5 = +[_CDClientContext userContext];
    [v5 deregisterCallback:nowPlayingRegistration];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deregistered from CoreDuet user context Now Playing usage status changes", buf, 2u);
    }
  }

  xpc_set_event();
  v6 = +[USBudgetRegistration sharedRegistration];
  v17 = 0;
  v7 = [v6 isCategoryBudgeted:CTCategoryIdentifierEntertainment error:&v17];
  v8 = v17;

  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064B14();
    }

    goto LABEL_15;
  }

  if (([v7 BOOLValue] & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = +[_CDContextQueries keyPathForNowPlayingDataDictionary];
  v10 = +[_CDContextQueries nowPlayingStatusKey];
  v11 = +[_CDContextQueries nowPlayingMediaTypeKey];
  v12 = +[_CDContextQueries nowPlayingBundleIdKey];
  uSBundleIdentifierQuickLookUIServiceEmbedded = [_CDContextualPredicate predicateForKeyPath:v9 withFormat:@"(SELF.%@.value.%K == %u) && (SELF.%@.value.%K == %@) && ((SELF.%@.value.%K == %@) || (SELF.%@.value.%K == %@))", v9, v10, 1, v9, v11, kMRMediaRemoteNowPlayingInfoTypeVideo, v9, v12, USBundleIdentifierQuickLookUIServiceMacOS, v9, v12, USBundleIdentifierQuickLookUIServiceEmbedded];

  if (!uSBundleIdentifierQuickLookUIServiceEmbedded)
  {
LABEL_15:
    [(USBudgetTracker *)self setNowPlayingRegistration:0];
    goto LABEL_16;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100012598;
  v16[3] = &unk_1000863A0;
  v16[4] = self;
  v16[5] = a2;
  v14 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.UsageTrackingAgent.registration.now-playing" contextualPredicate:uSBundleIdentifierQuickLookUIServiceEmbedded clientIdentifier:@"com.apple.UsageTrackingAgent" callback:v16];
  [(USBudgetTracker *)self setNowPlayingRegistration:v14];
  v15 = +[_CDClientContext userContext];
  [v15 registerCallback:v14];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registered for CoreDuet user context Now Playing usage status changes", buf, 2u);
  }

  if (([uSBundleIdentifierQuickLookUIServiceEmbedded firesOnAnyChange] & 1) != 0 || objc_msgSend(v15, "evaluatePredicate:", uSBundleIdentifierQuickLookUIServiceEmbedded))
  {
    [(USBudgetTracker *)self _nowPlayingRegistrationDidFire];
  }

LABEL_16:
}

- (void)_subscribeForVideoUsage
{
  videoSubscription = [(USBudgetTracker *)self videoSubscription];
  [videoSubscription cancel];

  xpc_set_event();
  v4 = +[USBudgetRegistration sharedRegistration];
  v77 = 0;
  v5 = [v4 areCategoriesBudgeted:&v77];
  v6 = v77;
  if (v5)
  {
    if ([v5 BOOLValue])
    {
      v7 = BiomeLibrary();
      v8 = [v7 App];
      mediaUsage = [v8 MediaUsage];
      dSLPublisher = [mediaUsage DSLPublisher];

      v11 = [dSLPublisher filterWithKeyPath:@"eventBody.starting" value:&__kCFBooleanTrue];
      if ([0 count])
      {
        v12 = [v11 filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:0];

        v11 = v12;
      }

      if ([0 count])
      {
        v13 = [v11 filterWithKeyPath:@"eventBody.webDomain" comparison:3 value:0];

        v11 = v13;
      }

      v14 = 1;
      goto LABEL_70;
    }

    v76 = v6;
    v15 = [v4 fetchAllBudgetedApplicationsAndReturnError:&v76];
    v16 = v76;

    if (!v15)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100064C78();
      }

      v14 = 0;
      v11 = 0;
      v6 = v16;
      goto LABEL_69;
    }

    v75 = v16;
    v17 = [v4 fetchAllBudgetedWebDomainsAndReturnError:&v75];
    v6 = v75;

    if (v17)
    {
      if ([v15 count] || objc_msgSend(v17, "count"))
      {
        v71 = v15;
        v18 = [v15 set];
        v72 = v17;
        v19 = [v17 set];
        v20 = v18;
        v21 = v19;
        v22 = BiomeLibrary();
        v23 = [v22 App];
        mediaUsage2 = [v23 MediaUsage];
        dSLPublisher2 = [mediaUsage2 DSLPublisher];

        v11 = [dSLPublisher2 filterWithKeyPath:@"eventBody.starting" value:&__kCFBooleanTrue];
        if ([v20 count])
        {
          v26 = [v11 filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:v20];

          v11 = v26;
        }

        if ([v21 count])
        {
          v27 = [v11 filterWithKeyPath:@"eventBody.webDomain" comparison:3 value:v21];

          v11 = v27;
        }

        if (_os_feature_enabled_impl())
        {
          v28 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentVideoIdentifiers];
        }

        else
        {
          v66 = v11;
          v67 = v6;
          v68 = v5;
          v29 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
          v30 = +[_CDContextQueries appMediaUsageBundleID];
          v64 = +[_CDClientContext userContext];
          v69 = v29;
          v31 = [v64 objectForKeyedSubscript:v29];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v32 = [v31 countByEnumeratingWithState:&v78 objects:v82 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = 0;
            v35 = *v79;
            do
            {
              for (i = 0; i != v33; i = i + 1)
              {
                if (*v79 != v35)
                {
                  objc_enumerationMutation(v31);
                }

                v37 = *(*(&v78 + 1) + 8 * i);
                if (v34)
                {
                  v38 = [*(*(&v78 + 1) + 8 * i) objectForKeyedSubscript:v30];
                  [v34 addObject:v38];
                }

                else
                {
                  v39 = [NSMutableOrderedSet alloc];
                  v38 = [v37 objectForKeyedSubscript:v30];
                  v34 = [v39 initWithObjects:{v38, 0}];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v78 objects:v82 count:16];
            }

            while (v33);
          }

          else
          {
            v34 = 0;
          }

          v40 = v34;

          v70 = v40;
          v41 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
          v42 = +[_CDContextQueries appMediaUsageURL];
          v63 = +[_CDClientContext userContext];
          v65 = v41;
          v43 = [v63 objectForKeyedSubscript:v41];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v44 = [v43 countByEnumeratingWithState:&v78 objects:v82 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = 0;
            v47 = *v79;
            do
            {
              for (j = 0; j != v45; j = j + 1)
              {
                if (*v79 != v47)
                {
                  objc_enumerationMutation(v43);
                }

                v49 = [*(*(&v78 + 1) + 8 * j) objectForKeyedSubscript:v42];
                v50 = v49;
                if (v49)
                {
                  host = [v49 host];
                  if (host)
                  {
                    if (v46)
                    {
                      [v46 addObject:host];
                    }

                    else
                    {
                      v46 = [[NSMutableOrderedSet alloc] initWithObjects:{host, 0}];
                    }
                  }
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v78 objects:v82 count:16];
            }

            while (v45);
          }

          else
          {
            v46 = 0;
          }

          v52 = v46;

          v53 = v70;
          v11 = v66;
          if (v70 | v52)
          {
            v54 = [BPSTuple alloc];
            v55 = v70;
            v5 = v68;
            v6 = v67;
            if (!v70)
            {
              v55 = objc_opt_new();
            }

            if (v52)
            {
              v56 = [v54 initWithFirst:v55 second:v52];
            }

            else
            {
              v57 = objc_opt_new();
              v56 = [v54 initWithFirst:v55 second:v57];

              v53 = v70;
            }

            if (!v53)
            {
            }
          }

          else
          {
            v56 = 0;
            v5 = v68;
            v6 = v67;
          }

          v28 = v56;
        }

        first = [v28 first];
        v15 = v71;
        if ([first intersectsOrderedSet:v71])
        {
          v14 = 1;
        }

        else
        {
          second = [v28 second];
          v14 = [second intersectsOrderedSet:v72];
        }

        v17 = v72;
        goto LABEL_68;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064C00();
    }

    v14 = 0;
    v11 = 0;
LABEL_68:

LABEL_69:
    goto LABEL_70;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064CF0();
  }

  v14 = 0;
  v11 = 0;
LABEL_70:
  videoScheduler = [(USBudgetTracker *)self videoScheduler];
  v61 = [v11 subscribeOn:videoScheduler];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100012E94;
  v74[3] = &unk_100086350;
  v74[4] = self;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100012EAC;
  v73[3] = &unk_100086378;
  v73[4] = self;
  v62 = [v61 sinkWithCompletion:v74 receiveInput:v73];
  [(USBudgetTracker *)self setVideoSubscription:v62];

  if (v14)
  {
    [(USBudgetTracker *)self _videoRegistrationDidFire];
  }
}

- (void)_registerForVideoUsage
{
  videoRegistration = [(USBudgetTracker *)self videoRegistration];
  v5 = &swift_defaultActor_destroy_ptr;
  if (videoRegistration)
  {
    v6 = +[_CDClientContext userContext];
    [v6 deregisterCallback:videoRegistration];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deregistered from CoreDuet user context video usage status changes", buf, 2u);
    }
  }

  xpc_set_event();
  v7 = +[USBudgetRegistration sharedRegistration];
  v22 = 0;
  v8 = [v7 areCategoriesBudgeted:&v22];
  v9 = v22;
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064E58();
    }

    goto LABEL_30;
  }

  if ([v8 BOOLValue])
  {
    v10 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
    v11 = [_CDContextualPredicate predicateForChangeAtKeyPath:v10];
    v12 = "";
    goto LABEL_23;
  }

  v21 = v9;
  v10 = [v7 fetchAllBudgetedApplicationsAndReturnError:&v21];
  v13 = v21;

  if (v10)
  {
    v20 = v13;
    v14 = [v7 fetchAllBudgetedWebDomainsAndReturnError:&v20];
    v9 = v20;

    if (!v14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100064D68();
      }

      v11 = 0;
      goto LABEL_22;
    }

    v11 = [v10 count];
    if ([v14 count])
    {
      v15 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
      v11 = [_CDContextualPredicate predicateForChangeAtKeyPath:v15];
    }

    else
    {
      if (!v11)
      {
LABEL_22:
        v5 = &swift_defaultActor_destroy_ptr;

        v12 = " not";
        goto LABEL_23;
      }

      v15 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
      v18 = +[_CDContextQueries appMediaUsageBundleID];
      v11 = [_CDContextualPredicate predicateForKeyPath:v15 withFormat:@"ANY SELF.%@.value.%K IN %@", v15, v18, v10];
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064DE0();
  }

  v11 = 0;
  v12 = " not";
  v9 = v13;
  v5 = &swift_defaultActor_destroy_ptr;
LABEL_23:

  if (!v11)
  {
LABEL_30:
    [(USBudgetTracker *)self setVideoRegistration:0];
    goto LABEL_31;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100013304;
  v19[3] = &unk_1000863A0;
  v19[4] = self;
  v19[5] = a2;
  v16 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.UsageTrackingAgent.registration.video" contextualPredicate:v11 clientIdentifier:@"com.apple.UsageTrackingAgent" callback:v19];
  [(USBudgetTracker *)self setVideoRegistration:v16];
  userContext = [v5[23] userContext];
  [userContext registerCallback:v16];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registered for CoreDuet user context video usage status changes, categories are%{public}s budgeted", buf, 0xCu);
  }

  if (([v11 firesOnAnyChange] & 1) != 0 || objc_msgSend(userContext, "evaluatePredicate:", v11))
  {
    [(USBudgetTracker *)self _videoRegistrationDidFire];
  }

LABEL_31:
}

- (void)_completion:(id)_completion streamIdentifier:(id)identifier
{
  _completionCopy = _completion;
  identifierCopy = identifier;
  state = [_completionCopy state];
  if (state == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064F44(identifierCopy, _completionCopy);
    }
  }

  else if (!state && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = identifierCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully subscribed for %{public}@", &v8, 0xCu);
  }
}

- (void)_applicationAlarmDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentBundleIdentifiers];
  }

  else
  {
    selfCopy = self;
    v4 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
    v5 = +[_CDContextQueries appUsageBundleID];
    v6 = +[_CDContextQueries appUsageType];
    v21 = +[_CDClientContext userContext];
    v7 = [v21 objectForKeyedSubscript:v4];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v6];
          v15 = v14;
          if (!v14 || [v14 integerValue] == 1)
          {
            if (v10)
            {
              v16 = [v13 objectForKeyedSubscript:v5];
              [v10 addObject:v16];
            }

            else
            {
              v17 = [NSMutableOrderedSet alloc];
              v16 = [v13 objectForKeyedSubscript:v5];
              v10 = [v17 initWithObjects:{v16, 0}];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:buf count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v3 = v10;

    self = selfCopy;
  }

  array = [v3 array];

  v19 = [array count];
  v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Application alarm fired, checking budgets for current applications", buf, 2u);
    }

    [(USBudgetTracker *)self _checkBudgetStatusForApplications:array];
  }

  else if (v20)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Application alarm fired, no applications in use so not checking budgets for current applications", buf, 2u);
  }
}

- (void)_applicationRegistrationDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentBundleIdentifiers];
  }

  else
  {
    selfCopy = self;
    v4 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
    v5 = +[_CDContextQueries appUsageBundleID];
    v6 = +[_CDContextQueries appUsageType];
    v21 = +[_CDClientContext userContext];
    v7 = [v21 objectForKeyedSubscript:v4];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v6];
          v15 = v14;
          if (!v14 || [v14 integerValue] == 1)
          {
            if (v10)
            {
              v16 = [v13 objectForKeyedSubscript:v5];
              [v10 addObject:v16];
            }

            else
            {
              v17 = [NSMutableOrderedSet alloc];
              v16 = [v13 objectForKeyedSubscript:v5];
              v10 = [v17 initWithObjects:{v16, 0}];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:buf count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v3 = v10;

    self = selfCopy;
  }

  array = [v3 array];

  v19 = [array count];
  v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Application CoreDuet registration fired, unregistering alarm and checking budgets for current applications", buf, 2u);
    }

    [(USBudgetTracker *)self _checkBudgetStatusForApplications:array];
  }

  else if (v20)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Application CoreDuet registration fired, unregistering alarm; no applications in use so not checking budgets for current applications", buf, 2u);
  }
}

- (void)_webDomainAlarmDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentWebDomains];
  }

  else
  {
    selfCopy = self;
    v4 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
    v5 = +[_CDContextQueries appWebUsageWebDomain];
    v6 = +[_CDContextQueries appWebUsageType];
    v20 = +[_CDClientContext userContext];
    v7 = [v20 objectForKeyedSubscript:v4];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v6];
          if ([v14 integerValue] == 1)
          {
            if (v10)
            {
              v15 = [v13 objectForKeyedSubscript:v5];
              [v10 addObject:v15];
            }

            else
            {
              v16 = [NSMutableOrderedSet alloc];
              v15 = [v13 objectForKeyedSubscript:v5];
              v10 = [v16 initWithObjects:{v15, 0}];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:buf count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v3 = v10;

    self = selfCopy;
  }

  array = [v3 array];

  v18 = [array count];
  v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Web alarm fired, checking budgets for current web domains", buf, 2u);
    }

    [(USBudgetTracker *)self _checkBudgetStatusForWebDomains:array];
  }

  else if (v19)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Web alarm fired, no web domains in use so not checking budgets for current web domains", buf, 2u);
  }
}

- (void)_webDomainRegistrationDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentWebDomains];
  }

  else
  {
    selfCopy = self;
    v4 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
    v5 = +[_CDContextQueries appWebUsageWebDomain];
    v6 = +[_CDContextQueries appWebUsageType];
    v20 = +[_CDClientContext userContext];
    v7 = [v20 objectForKeyedSubscript:v4];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v6];
          if ([v14 integerValue] == 1)
          {
            if (v10)
            {
              v15 = [v13 objectForKeyedSubscript:v5];
              [v10 addObject:v15];
            }

            else
            {
              v16 = [NSMutableOrderedSet alloc];
              v15 = [v13 objectForKeyedSubscript:v5];
              v10 = [v16 initWithObjects:{v15, 0}];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:buf count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v3 = v10;

    self = selfCopy;
  }

  array = [v3 array];

  v18 = [array count];
  v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Web CoreDuet registration fired, unregistering alarm and checking budgets for current web domains", buf, 2u);
    }

    [(USBudgetTracker *)self _checkBudgetStatusForWebDomains:array];
  }

  else if (v19)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Web CoreDuet registration fired, unregistering alarm; no web domains in use so not checking budgets for current web domains", buf, 2u);
  }
}

- (void)_nowPlayingAlarmDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    if (+[_TtC18UsageTrackingAgent22DeviceActivityQuerying isQuickLookVideoNowPlaying])
    {
      v3 = [NSMutableOrderedSet alloc];
      v4 = [v3 initWithObjects:{CTCategoryIdentifierEntertainment, 0}];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = +[_CDClientContext userContext];
    v6 = +[_CDContextQueries keyPathForNowPlayingDataDictionary];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7 && usageContextContainsPlayingQuickLookVideo())
    {
      v8 = [NSMutableOrderedSet alloc];
      v4 = [v8 initWithObjects:{CTCategoryIdentifierEntertainment, 0}];
    }

    else
    {
      v4 = 0;
    }
  }

  array = [v4 array];

  v10 = [array count];
  v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Now Playing alarm fired, checking budgets for current Now Playing", buf, 2u);
    }

    [(USBudgetTracker *)self _checkBudgetStatusForNowPlayingCategories:array];
  }

  else if (v11)
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Now Playing alarm fired, no Now Playing in use so not checking budgets for current Now Playing", v12, 2u);
  }
}

- (void)_nowPlayingRegistrationDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    if (+[_TtC18UsageTrackingAgent22DeviceActivityQuerying isQuickLookVideoNowPlaying])
    {
      v3 = [NSMutableOrderedSet alloc];
      v4 = [v3 initWithObjects:{CTCategoryIdentifierEntertainment, 0}];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = +[_CDClientContext userContext];
    v6 = +[_CDContextQueries keyPathForNowPlayingDataDictionary];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7 && usageContextContainsPlayingQuickLookVideo())
    {
      v8 = [NSMutableOrderedSet alloc];
      v4 = [v8 initWithObjects:{CTCategoryIdentifierEntertainment, 0}];
    }

    else
    {
      v4 = 0;
    }
  }

  array = [v4 array];

  v10 = [array count];
  v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Now Playing CoreDuet registration fired, unregistering alarm and checking budgets for current Now Playing", buf, 2u);
    }

    [(USBudgetTracker *)self _checkBudgetStatusForNowPlayingCategories:array];
  }

  else if (v11)
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Now Playing CoreDuet registration fired, unregistering alarm; no Now Playing in use so not checking budgets for current Now Playing", v12, 2u);
  }
}

- (void)_videoAlarmDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentVideoIdentifiers];
    goto LABEL_40;
  }

  v4 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
  v5 = +[_CDContextQueries appMediaUsageBundleID];
  v6 = +[_CDClientContext userContext];
  v7 = [v6 objectForKeyedSubscript:v4];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:buf count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v43;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        if (v10)
        {
          v14 = [*(*(&v42 + 1) + 8 * i) objectForKeyedSubscript:v5];
          [v10 addObject:v14];
        }

        else
        {
          v15 = [NSMutableOrderedSet alloc];
          v14 = [v13 objectForKeyedSubscript:v5];
          v10 = [v15 initWithObjects:{v14, 0}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v42 objects:buf count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;

  v17 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
  v18 = +[_CDContextQueries appMediaUsageURL];
  v40 = +[_CDClientContext userContext];
  v41 = v17;
  v19 = [v40 objectForKeyedSubscript:v17];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:buf count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v43;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = [*(*(&v42 + 1) + 8 * j) objectForKeyedSubscript:v18];
        v26 = v25;
        if (v25)
        {
          host = [v25 host];
          if (host)
          {
            if (v22)
            {
              [v22 addObject:host];
            }

            else
            {
              v22 = [[NSMutableOrderedSet alloc] initWithObjects:{host, 0}];
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:buf count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v28 = v22;

  if (!(v16 | v28))
  {
    v31 = 0;
    goto LABEL_39;
  }

  v29 = [BPSTuple alloc];
  v30 = v16;
  if (v16)
  {
    if (v28)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = objc_opt_new();
    if (v28)
    {
LABEL_33:
      v31 = [v29 initWithFirst:v30 second:v28];
      if (!v16)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  v32 = objc_opt_new();
  v31 = [v29 initWithFirst:v30 second:v32];

  if (!v16)
  {
LABEL_38:
  }

LABEL_39:
  v3 = v31;

LABEL_40:
  first = [v3 first];
  array = [first array];

  second = [v3 second];
  array2 = [second array];

  v37 = [array count];
  v38 = [array2 count];
  if (v37 | v38)
  {
    v39 = v38;
    if (v37)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Video alarm fired, checking budgets for current video bundle identifiers", buf, 2u);
      }

      [(USBudgetTracker *)self _checkBudgetStatusForVideoBundleIdentifiers:array];
    }

    if (v39)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Video alarm fired, checking budgets for current video web domains", buf, 2u);
      }

      [(USBudgetTracker *)self _checkBudgetStatusForVideoWebDomains:array2];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Video alarm fired, no video in use so not checking budgets for current video", buf, 2u);
  }
}

- (void)_videoRegistrationDidFire
{
  xpc_set_event();
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentVideoIdentifiers];
    goto LABEL_40;
  }

  v4 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
  v5 = +[_CDContextQueries appMediaUsageBundleID];
  v6 = +[_CDClientContext userContext];
  v7 = [v6 objectForKeyedSubscript:v4];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:buf count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v43;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        if (v10)
        {
          v14 = [*(*(&v42 + 1) + 8 * i) objectForKeyedSubscript:v5];
          [v10 addObject:v14];
        }

        else
        {
          v15 = [NSMutableOrderedSet alloc];
          v14 = [v13 objectForKeyedSubscript:v5];
          v10 = [v15 initWithObjects:{v14, 0}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v42 objects:buf count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;

  v17 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
  v18 = +[_CDContextQueries appMediaUsageURL];
  v40 = +[_CDClientContext userContext];
  v41 = v17;
  v19 = [v40 objectForKeyedSubscript:v17];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:buf count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v43;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = [*(*(&v42 + 1) + 8 * j) objectForKeyedSubscript:v18];
        v26 = v25;
        if (v25)
        {
          host = [v25 host];
          if (host)
          {
            if (v22)
            {
              [v22 addObject:host];
            }

            else
            {
              v22 = [[NSMutableOrderedSet alloc] initWithObjects:{host, 0}];
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:buf count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v28 = v22;

  if (!(v16 | v28))
  {
    v31 = 0;
    goto LABEL_39;
  }

  v29 = [BPSTuple alloc];
  v30 = v16;
  if (v16)
  {
    if (v28)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = objc_opt_new();
    if (v28)
    {
LABEL_33:
      v31 = [v29 initWithFirst:v30 second:v28];
      if (!v16)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  v32 = objc_opt_new();
  v31 = [v29 initWithFirst:v30 second:v32];

  if (!v16)
  {
LABEL_38:
  }

LABEL_39:
  v3 = v31;

LABEL_40:
  first = [v3 first];
  array = [first array];

  second = [v3 second];
  array2 = [second array];

  v37 = [array count];
  v38 = [array2 count];
  if (v37 | v38)
  {
    v39 = v38;
    if (v37)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Video CoreDuet registration fired, unregistering alarm and checking budgets for current video bundle identifiers", buf, 2u);
      }

      [(USBudgetTracker *)self _checkBudgetStatusForVideoBundleIdentifiers:array];
    }

    if (v39)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Video CoreDuet registration fired, unregistering alarm and checking budgets for current video web domains", buf, 2u);
      }

      [(USBudgetTracker *)self _checkBudgetStatusForVideoWebDomains:array2];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Video CoreDuet registration fired, unregistering alarm; no video in use so not checking budgets for current video", buf, 2u);
  }
}

- (void)_duetSyncCoordinatorDidIdle
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received Duet sync coordinator did idle distributed notification, checking all budgets", buf, 2u);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100014F3C;
  v3[3] = &unk_100085D00;
  v3[4] = self;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v3];
}

- (void)_deviceActivitySyncCoordinatorDidIdle:(id)idle
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received Device Activity sync coordinator did idle notification, checking all budgets", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001500C;
  v4[3] = &unk_100085D00;
  v4[4] = self;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:1 shouldSync:0 completionHandler:v4];
}

- (void)_didCollectLocalActivityForIdleSyncCoordinator
{
  v3 = +[USBudgetRegistration sharedRegistration];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000150A4;
  v4[3] = &unk_1000863C8;
  v4[4] = self;
  [v3 fetchAllRegisteredBudgetsAndEventsWithCompletionHandler:v4];
}

- (void)_budgetsResetAlarmDidFire:(id)fire
{
  fireCopy = fire;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = fireCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received budget reset alarm %{public}@; clearing all posted notifications, reseting alarms and checking all budgets for current usage", buf, 0xCu);
  }

  [fireCopy UTF8String];
  v5 = xpc_copy_event();
  v6 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v5, "CalendarIdentifier")];
  v7 = +[USBudgetRegistration sharedRegistration];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000152E4;
  v10[3] = &unk_1000863F0;
  v11 = v6;
  v12 = fireCopy;
  selfCopy = self;
  v8 = fireCopy;
  v9 = v6;
  [v7 clearPostedNotificationTimesWithCalendarIdentifier:v9 completionHandler:v10];
}

- (void)_budgetIntervalAlarmDidFire:(const char *)fire isWarning:(BOOL)warning isEndOfInterval:(BOOL)interval
{
  intervalCopy = interval;
  warningCopy = warning;
  v8 = xpc_copy_event();
  v9 = v8;
  if (v8)
  {
    string = xpc_dictionary_get_string(v8, "BudgetID");
    if (string)
    {
      v11 = [NSURL alloc];
      v12 = [NSString stringWithUTF8String:string];
      v13 = [v11 initWithString:v12];

      if (v13)
      {
        xpc_set_event();
        v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
        if (intervalCopy)
        {
          if (!v14)
          {
            goto LABEL_12;
          }

          *buf = 136446466;
          *&buf[4] = string;
          *&buf[12] = 1026;
          *&buf[14] = warningCopy;
          v15 = "Received budget interval end alarm for %{public}s, isWarning: %{public}d";
        }

        else
        {
          if (!v14)
          {
            goto LABEL_12;
          }

          *buf = 136446466;
          *&buf[4] = string;
          *&buf[12] = 1026;
          *&buf[14] = warningCopy;
          v15 = "Received budget interval start alarm for %{public}s, isWarning: %{public}d";
        }

        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, buf, 0x12u);
LABEL_12:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v21 = 0;
        v16 = +[USBudgetRegistration sharedRegistration];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100015A30;
        v17[3] = &unk_100086418;
        v18 = intervalCopy;
        v19 = warningCopy;
        v17[4] = self;
        v17[5] = buf;
        v17[6] = string;
        [v16 fetchBudgetForDeviceActivityWithURI:v13 completionHandler:v17];

        if (!warningCopy && *(*&buf[8] + 24) == 1)
        {
          [(USBudgetTracker *)self _registerForAllUsage];
        }

        _Block_object_dispose(buf, 8);

        goto LABEL_16;
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000650E4();
  }

LABEL_16:
}

- (void)_tombstoneEventDidFire:(const char *)fire
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    fireCopy = fire;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received Duet tombstone event %{public}s; clearing eligible posted notifications, reseting alarms and checking all budgets for current usage", buf, 0xCu);
  }

  v5 = +[NSDate now];
  [(USBudgetTracker *)self _cacheTimeRemainingForBudgetsAndEventsBeforeUsageDataDeletion:v5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015CB0;
  v7[3] = &unk_1000860C0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:0 shouldSync:1 completionHandler:v7];
}

- (void)_cacheTimeRemainingForBudgetsAndEventsBeforeUsageDataDeletion:(id)deletion
{
  deletionCopy = deletion;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015DD8;
  v7[3] = &unk_100086440;
  v7[4] = self;
  v8 = deletionCopy;
  v6 = deletionCopy;
  [v5 fetchAllRegisteredBudgetsAndEventsWithCompletionHandler:v7];
}

- (void)_calculateDeletedTimeForBudgetsAndEventsAfterUsageDataDeletion:(id)deletion
{
  deletionCopy = deletion;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000162A8;
  v7[3] = &unk_100086440;
  v7[4] = self;
  v8 = deletionCopy;
  v6 = deletionCopy;
  [v5 fetchAllRegisteredBudgetsAndEventsWithCompletionHandler:v7];
}

- (void)_clearPostedNotificationsForNoLongerExpiredBudgets
{
  v3 = +[USBudgetRegistration sharedRegistration];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000167A4;
  v4[3] = &unk_1000863C8;
  v4[4] = self;
  [v3 fetchBudgetsAndEventsWithPostedNotificationsWithCompletionHandler:v4];

  [(USBudgetTracker *)self _checkBudgetStatusForAllCurrentUsage];
}

- (void)_systemTimeDidChange
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received system time change notification; clearing eligible posted notifications, resetting alarms and checking all budgets for current usage", v3, 2u);
  }

  +[NSTimeZone resetSystemTimeZone];
  [(USBudgetTracker *)self _resetDeviceActivityAlarms];
  [(USBudgetTracker *)self _clearPostedNotificationsForNoLongerExpiredBudgets];
}

- (void)_resetDeviceActivityAlarms
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000170FC;
  v2[3] = &unk_100085D00;
  v2[4] = self;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v2];
}

- (void)_didCollectLocalActivityForDeviceActivityAlarmReset
{
  v3 = +[USBudgetRegistration sharedRegistration];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017194;
  v4[3] = &unk_100086468;
  v4[4] = self;
  [v3 fetchAllDeviceActivityBudgetsWithCompletionHandler:v4];
}

+ (void)checkStatusOfBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  budgetsCopy = budgets;
  v11 = +[USBudgetRegistration sharedRegistration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001730C;
  v13[3] = &unk_100086490;
  v14 = handlerCopy;
  selfCopy = self;
  v12 = handlerCopy;
  [v11 fetchBudgetsWithIdentifiers:budgetsCopy clientIdentifier:identifierCopy completionHandler:v13];
}

+ (void)checkStatusOfAllBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000173D8;
  v7[3] = &unk_100086490;
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  [v5 fetchAllBudgetsWithCompletionHandler:v7];
}

+ (void)checkStatusOfBudgets:(id)budgets clientIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  budgetsCopy = budgets;
  v11 = +[USBudgetRegistration sharedRegistration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000174D8;
  v13[3] = &unk_100086490;
  v14 = handlerCopy;
  selfCopy = self;
  v12 = handlerCopy;
  [v11 fetchBudgetsWithIdentifiers:budgetsCopy clientIdentifiers:identifiersCopy completionHandler:v13];
}

+ (void)_checkStatusOfBudgets:(id)budgets withError:(id)error completionHandler:(id)handler
{
  budgetsCopy = budgets;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (budgetsCopy)
  {
    v11 = objc_opt_new();
    v37 = 0;
    v12 = [self _getRemainingTimeForBudgets:budgetsCopy referenceDate:v11 error:&v37];
    v13 = v37;

    if (v12)
    {
      v29 = v13;
      v31 = v10;
      v32 = budgetsCopy;
      v14 = [v12 count];
      v15 = [[NSMutableArray alloc] initWithCapacity:v14];
      v16 = [[NSMutableArray alloc] initWithCapacity:v14];
      v17 = [[NSMutableArray alloc] initWithCapacity:v14];
      v18 = [[NSMutableArray alloc] initWithCapacity:v14];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = v12;
      v19 = v12;
      v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            identifier = [v24 identifier];
            [v15 addObject:identifier];

            clientIdentifier = [v24 clientIdentifier];
            [v16 addObject:clientIdentifier];

            darwinNotificationName = [v24 darwinNotificationName];
            [v17 addObject:darwinNotificationName];

            v28 = [v19 objectForKey:v24];
            [v18 addObject:v28];
          }

          v21 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v21);
      }

      v10 = v31;
      (v31)[2](v31, v15, v16, v17, v18, 0);

      budgetsCopy = v32;
      v13 = v29;
      v12 = v30;
    }

    else
    {
      (v10)[2](v10, 0, 0, 0, 0, v13);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, error);
  }
}

- (void)_checkBudgetStatusForApplications:(id)applications
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017878;
  v4[3] = &unk_1000860C0;
  v4[4] = self;
  applicationsCopy = applications;
  v3 = applicationsCopy;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v4];
}

- (void)_didCollectLocalActivityForApplications:(id)applications
{
  applicationsCopy = applications;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017940;
  v7[3] = &unk_100086440;
  v7[4] = self;
  v8 = applicationsCopy;
  v6 = applicationsCopy;
  [v5 fetchBudgetsAndEventsForApplications:v6 completionHandler:v7];
}

- (void)_checkBudgetStatusForWebDomains:(id)domains
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017A8C;
  v4[3] = &unk_1000860C0;
  v4[4] = self;
  domainsCopy = domains;
  v3 = domainsCopy;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v4];
}

- (void)_didCollectLocalActivityForWebDomains:(id)domains
{
  domainsCopy = domains;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017B54;
  v7[3] = &unk_100086440;
  v7[4] = self;
  v8 = domainsCopy;
  v6 = domainsCopy;
  [v5 fetchBudgetsAndEventsForWebDomains:v6 completionHandler:v7];
}

- (void)_checkBudgetStatusForNowPlayingCategories:(id)categories
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017CA0;
  v4[3] = &unk_1000860C0;
  v4[4] = self;
  categoriesCopy = categories;
  v3 = categoriesCopy;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v4];
}

- (void)_didCollectLocalActivityForNowPlayingCategories:(id)categories
{
  categoriesCopy = categories;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017D68;
  v7[3] = &unk_100086440;
  v7[4] = self;
  v8 = categoriesCopy;
  v6 = categoriesCopy;
  [v5 fetchBudgetsAndEventsForCategories:v6 completionHandler:v7];
}

- (void)_checkBudgetStatusForVideoBundleIdentifiers:(id)identifiers
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017EB4;
  v4[3] = &unk_1000860C0;
  v4[4] = self;
  identifiersCopy = identifiers;
  v3 = identifiersCopy;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v4];
}

- (void)_didCollectLocalActivityForVideoBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017F7C;
  v7[3] = &unk_100086440;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  [v5 fetchBudgetsAndEventsForApplications:v6 completionHandler:v7];
}

- (void)_checkBudgetStatusForVideoWebDomains:(id)domains
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000180C8;
  v4[3] = &unk_1000860C0;
  v4[4] = self;
  domainsCopy = domains;
  v3 = domainsCopy;
  [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:2 shouldSync:0 completionHandler:v4];
}

- (void)_didCollectLocalActivityForVideoWebDomains:(id)domains
{
  domainsCopy = domains;
  v5 = +[USBudgetRegistration sharedRegistration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018190;
  v7[3] = &unk_100086440;
  v7[4] = self;
  v8 = domainsCopy;
  v6 = domainsCopy;
  [v5 fetchBudgetsAndEventsForWebDomains:v6 completionHandler:v7];
}

- (void)_checkBudgetStatusForAllCurrentUsage
{
  selfCopy5 = self;
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentBundleIdentifiers];
  }

  else
  {
    v4 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
    v5 = +[_CDContextQueries appUsageBundleID];
    v6 = +[_CDContextQueries appUsageType];
    v89 = +[_CDClientContext userContext];
    v7 = [v89 objectForKeyedSubscript:v4];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v94 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v95;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v95 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v94 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v6];
          v15 = v14;
          if (!v14 || [v14 integerValue] == 1)
          {
            if (v10)
            {
              v16 = [v13 objectForKeyedSubscript:v5];
              [v10 addObject:v16];
            }

            else
            {
              v17 = [NSMutableOrderedSet alloc];
              v16 = [v13 objectForKeyedSubscript:v5];
              v10 = [v17 initWithObjects:{v16, 0}];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v94 objects:buf count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v3 = v10;

    selfCopy5 = self;
  }

  array = [v3 array];

  v19 = [array count];
  v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Checking budgets for current applications", buf, 2u);
    }

    [(USBudgetTracker *)selfCopy5 _checkBudgetStatusForApplications:array];
  }

  else if (v20)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No applications in use so not checking budgets for current applications", buf, 2u);
  }

  v92 = array;
  if (_os_feature_enabled_impl())
  {
    v21 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentWebDomains];
  }

  else
  {
    v22 = +[_CDContextQueries keyPathForAppWebUsageDataDictionaries];
    v23 = +[_CDContextQueries appWebUsageWebDomain];
    v24 = +[_CDContextQueries appWebUsageType];
    v87 = +[_CDClientContext userContext];
    v90 = v22;
    v25 = [v87 objectForKeyedSubscript:v22];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v94 objects:buf count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v95;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v95 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v94 + 1) + 8 * j);
          v32 = [v31 objectForKeyedSubscript:v24];
          if ([v32 integerValue] == 1)
          {
            if (v28)
            {
              v33 = [v31 objectForKeyedSubscript:v23];
              [v28 addObject:v33];
            }

            else
            {
              v34 = [NSMutableOrderedSet alloc];
              v33 = [v31 objectForKeyedSubscript:v23];
              v28 = [v34 initWithObjects:{v33, 0}];
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v94 objects:buf count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    v21 = v28;

    array = v92;
    selfCopy5 = self;
  }

  array2 = [v21 array];

  v36 = [array2 count];
  v37 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v36)
  {
    if (v37)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Checking budgets for current web domains", buf, 2u);
    }

    [(USBudgetTracker *)selfCopy5 _checkBudgetStatusForWebDomains:array2];
  }

  else if (v37)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No web domains in use so not checking budgets for current web domains", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    if (+[_TtC18UsageTrackingAgent22DeviceActivityQuerying isQuickLookVideoNowPlaying])
    {
      v38 = [NSMutableOrderedSet alloc];
      v39 = [v38 initWithObjects:{CTCategoryIdentifierEntertainment, 0}];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v40 = +[_CDClientContext userContext];
    v41 = +[_CDContextQueries keyPathForNowPlayingDataDictionary];
    v42 = [v40 objectForKeyedSubscript:v41];

    if (v42 && usageContextContainsPlayingQuickLookVideo())
    {
      v43 = [NSMutableOrderedSet alloc];
      v39 = [v43 initWithObjects:{CTCategoryIdentifierEntertainment, 0}];
    }

    else
    {
      v39 = 0;
    }
  }

  array3 = [v39 array];

  v45 = [array3 count];
  v46 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v45)
  {
    if (v46)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Checking budgets for current Now Playing", buf, 2u);
    }

    [(USBudgetTracker *)selfCopy5 _checkBudgetStatusForNowPlayingCategories:array3];
  }

  else if (v46)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No Now Playing in use so not checking budgets for current Now Playing", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v47 = +[_TtC18UsageTrackingAgent22DeviceActivityQuerying currentVideoIdentifiers];
    goto LABEL_102;
  }

  v88 = array3;
  v91 = array2;
  v48 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
  v49 = +[_CDContextQueries appMediaUsageBundleID];
  v50 = +[_CDClientContext userContext];
  v85 = v48;
  v51 = [v50 objectForKeyedSubscript:v48];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v52 = [v51 countByEnumeratingWithState:&v94 objects:buf count:16];
  if (v52)
  {
    v53 = v52;
    v54 = 0;
    v55 = *v95;
    do
    {
      for (k = 0; k != v53; k = k + 1)
      {
        if (*v95 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v94 + 1) + 8 * k);
        if (v54)
        {
          v58 = [*(*(&v94 + 1) + 8 * k) objectForKeyedSubscript:v49];
          [v54 addObject:v58];
        }

        else
        {
          v59 = [NSMutableOrderedSet alloc];
          v58 = [v57 objectForKeyedSubscript:v49];
          v54 = [v59 initWithObjects:{v58, 0}];
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v94 objects:buf count:16];
    }

    while (v53);
  }

  else
  {
    v54 = 0;
  }

  v60 = v54;

  v61 = +[_CDContextQueries keyPathForAppMediaUsageDataDictionaries];
  v62 = +[_CDContextQueries appMediaUsageURL];
  v84 = +[_CDClientContext userContext];
  v86 = v61;
  v63 = [v84 objectForKeyedSubscript:v61];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v64 = [v63 countByEnumeratingWithState:&v94 objects:buf count:16];
  if (v64)
  {
    v65 = v64;
    v66 = 0;
    v67 = *v95;
    do
    {
      for (m = 0; m != v65; m = m + 1)
      {
        if (*v95 != v67)
        {
          objc_enumerationMutation(v63);
        }

        v69 = [*(*(&v94 + 1) + 8 * m) objectForKeyedSubscript:v62];
        v70 = v69;
        if (v69)
        {
          host = [v69 host];
          if (host)
          {
            if (v66)
            {
              [v66 addObject:host];
            }

            else
            {
              v66 = [[NSMutableOrderedSet alloc] initWithObjects:{host, 0}];
            }
          }
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v94 objects:buf count:16];
    }

    while (v65);
  }

  else
  {
    v66 = 0;
  }

  v72 = v66;

  if (!(v60 | v72))
  {
    v75 = 0;
    array = v92;
    selfCopy5 = self;
    array3 = v88;
    array2 = v91;
    goto LABEL_101;
  }

  v73 = [BPSTuple alloc];
  v74 = v60;
  array = v92;
  selfCopy5 = self;
  array3 = v88;
  array2 = v91;
  if (v60)
  {
    if (v72)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v74 = objc_opt_new();
    if (v72)
    {
LABEL_95:
      v75 = [v73 initWithFirst:v74 second:v72];
      if (!v60)
      {
        goto LABEL_100;
      }

      goto LABEL_101;
    }
  }

  v76 = objc_opt_new();
  v75 = [v73 initWithFirst:v74 second:v76];

  if (!v60)
  {
LABEL_100:
  }

LABEL_101:
  v47 = v75;

LABEL_102:
  first = [v47 first];
  array4 = [first array];

  second = [v47 second];
  array5 = [second array];

  v81 = [array4 count];
  v82 = [array5 count];
  if (v81 | v82)
  {
    v83 = v82;
    if (v81)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Checking budgets for current video bundle identifiers", buf, 2u);
      }

      [(USBudgetTracker *)selfCopy5 _checkBudgetStatusForVideoBundleIdentifiers:array4];
    }

    if (v83)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Checking budgets for current video web domains", buf, 2u);
      }

      [(USBudgetTracker *)selfCopy5 _checkBudgetStatusForVideoWebDomains:array5];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No videos in use so not checking budgets for current videos", buf, 2u);
  }
}

+ (id)_getRemainingTimeForBudgets:(id)budgets referenceDate:(id)date error:(id *)error
{
  errorCopy = error;
  budgetsCopy = budgets;
  dateCopy = date;
  v39 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
  usageQuerying = [self usageQuerying];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = budgetsCopy;
  v43 = [v9 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v43)
  {
    obj = v9;
    v42 = *v49;
    while (2)
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = [NSCalendar alloc];
        calendarIdentifier = [v11 calendarIdentifier];
        v14 = [v12 initWithCalendarIdentifier:calendarIdentifier];

        v15 = [v14 components:512 fromDate:dateCopy];
        weekday = [v15 weekday];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        schedule = [v11 schedule];
        v18 = [schedule countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v45;
LABEL_8:
          v21 = 0;
          while (1)
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(schedule);
            }

            v22 = *(*(&v44 + 1) + 8 * v21);
            if ([v22 weekday] == weekday)
            {
              break;
            }

            if (v19 == ++v21)
            {
              v19 = [schedule countByEnumeratingWithState:&v44 objects:v52 count:16];
              if (v19)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v23 = v22;

          if (!v23)
          {
            goto LABEL_19;
          }

          v24 = [v14 startOfDayForDate:dateCopy];
          v25 = [[NSDateInterval alloc] initWithStartDate:v24 endDate:dateCopy];
          v26 = [v11 queryForInterval:v25];
          v27 = [usageQuerying query:v26 error:errorCopy];
          if (v27)
          {
            v28 = v27;
            [v23 timeLimit];
            v30 = v29;
            [v28 doubleValue];
            v32 = v30 - v31;
            [v11 deletedTime];
            v34 = [NSNumber numberWithDouble:v32 - v33];
            [v39 setObject:v34 forKey:v11];

            goto LABEL_18;
          }

          v9 = obj;
          v36 = 0;
          v35 = v39;
          goto LABEL_23;
        }

LABEL_14:
        v23 = schedule;
LABEL_18:

LABEL_19:
      }

      v9 = obj;
      v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  v35 = v39;
  v36 = v39;
LABEL_23:

  return v36;
}

+ (id)_getRemainingTimeForEvents:(id)events referenceDate:(id)date error:(id *)error
{
  eventsCopy = events;
  dateCopy = date;
  v44 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
  usageQuerying = [self usageQuerying];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = eventsCopy;
  v8 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v51;
    *&v9 = 138543874;
    v42 = v9;
LABEL_3:
    v12 = 0;
    v46 = v10;
    while (1)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v50 + 1) + 8 * v12);
      v49 = 0;
      v14 = [v13 nextThresholdDate:{&v49, v42}];
      v15 = v49;
      v16 = v15;
      if (v14)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          name = [v13 name];
          budget = [v13 budget];
          name2 = [budget name];
          budget2 = [v13 budget];
          clientIdentifier = [budget2 clientIdentifier];
          *buf = v42;
          v55 = name;
          v56 = 2114;
          v57 = name2;
          v58 = 2114;
          v59 = clientIdentifier;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not calculate next threshold or next interval for %{public}@/%{public}@/%{public}@", buf, 0x20u);
LABEL_23:

          v10 = v46;
        }
      }

      else
      {
        v23 = [v15 containsDate:dateCopy];
        if (v23)
        {
          startDate = [v16 startDate];
          v25 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:dateCopy];
          v26 = [v13 queryForInterval:v25];
          v27 = [usageQuerying query:v26 error:error];
          if (!v27)
          {

            v40 = 0;
            v39 = v44;
            goto LABEL_28;
          }

          v28 = v27;
          [v14 timeIntervalSinceDate:startDate];
          if (v29 >= 0.0)
          {
            v30 = v29;
          }

          else
          {
            v30 = -v29;
          }

          [v28 doubleValue];
          v32 = v31;
          [v13 thresholdAdjustmentTime];
          v34 = v32 - v33;
          if (v34 < 0.0)
          {
            v34 = 0.0;
          }

          v35 = v30 - v34;
          [v13 deletedTime];
          [NSNumber numberWithDouble:v35 - v36];
          v38 = v37 = v11;
          [v44 setObject:v38 forKey:v13];

          v11 = v37;
          v10 = v46;

          goto LABEL_24;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          name = [v13 name];
          budget = [v13 budget];
          name2 = [budget name];
          budget2 = [v13 budget];
          clientIdentifier = [budget2 clientIdentifier];
          *buf = v42;
          v55 = name;
          v56 = 2114;
          v57 = name2;
          v58 = 2114;
          v59 = clientIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ignoring no longer applicable event: %{public}@/%{public}@/%{public}@", buf, 0x20u);
          goto LABEL_23;
        }
      }

LABEL_24:

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v39 = v44;
  v40 = v44;
LABEL_28:

  return v40;
}

- (BOOL)_notifyForBudgets:(id)budgets events:(id)events nextNotificationEventName:(const char *)name syncForImpendingBudgets:(BOOL)impendingBudgets
{
  impendingBudgetsCopy = impendingBudgets;
  budgetsCopy = budgets;
  eventsCopy = events;
  if (impendingBudgetsCopy)
  {
    lastSyncDate = [(USBudgetTracker *)self lastSyncDate];
    if (lastSyncDate && (+[NSDate now](NSDate, "now"), v10 = objc_claimAutoreleasedReturnValue(), [v10 timeIntervalSinceDate:lastSyncDate], v12 = v11, v10, v12 < 300.0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100065638();
      }

      v103 = 0;
    }

    else
    {
      v103 = 1;
    }
  }

  else
  {
    v103 = 0;
  }

  v111 = objc_opt_new();
  v93 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v131 = 0;
  v112 = objc_opt_new();
  v13 = [objc_opt_class() _getRemainingTimeForBudgets:budgetsCopy referenceDate:v112 error:&v131];
  v94 = v131;
  selfCopy = self;
  v96 = v13;
  if (v13)
  {
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    obj = v13;
    v101 = [obj countByEnumeratingWithState:&v127 objects:v142 count:16];
    if (v101)
    {
      v102 = 0;
      v99 = *v128;
      v14 = 0.0;
      do
      {
        for (i = 0; i != v101; i = v51 + 1)
        {
          if (*v128 != v99)
          {
            objc_enumerationMutation(obj);
          }

          v107 = i;
          v16 = *(*(&v127 + 1) + 8 * i);
          v17 = [obj objectForKey:v16];
          [v17 doubleValue];
          v19 = v18;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            clientIdentifier = [v16 clientIdentifier];
            identifier = [v16 identifier];
            *buf = 138543874;
            nameCopy = clientIdentifier;
            v134 = 2114;
            v135 = *&identifier;
            v136 = 2048;
            v137 = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@ has %g seconds remaining", buf, 0x20u);
          }

          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          notificationTimes = [v16 notificationTimes];
          v23 = [notificationTimes countByEnumeratingWithState:&v123 objects:v141 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v124;
            v113 = notificationTimes;
            do
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v124 != v25)
                {
                  objc_enumerationMutation(notificationTimes);
                }

                v27 = *(*(&v123 + 1) + 8 * j);
                if (([v27 notificationWasPosted] & 1) == 0)
                {
                  [v27 remainingTime];
                  v29 = v28;
                  if (v19 <= v28)
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      clientIdentifier2 = [v16 clientIdentifier];
                      identifier2 = [v16 identifier];
                      *buf = 134218498;
                      nameCopy = *&v29;
                      v134 = 2114;
                      v135 = *&clientIdentifier2;
                      v136 = 2114;
                      v137 = *&identifier2;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posting %g second notification for %{public}@/%{public}@", buf, 0x20u);
                    }

                    v33 = v16;
                    v34 = v16;
                    v35 = v111;
                    darwinNotificationName = [v34 darwinNotificationName];
                    if ([v35 containsObject:darwinNotificationName])
                    {
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138543362;
                        nameCopy = darwinNotificationName;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Already posted darwin notification %{public}@, skipping", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v37 = notify_post([darwinNotificationName UTF8String]);
                      if (v37)
                      {
                        v38 = v37;
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          nameCopy = darwinNotificationName;
                          v134 = 1024;
                          LODWORD(v135) = v38;
                          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to post darwin notification %{public}@: %u", buf, 0x12u);
                        }
                      }

                      else
                      {
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138543362;
                          nameCopy = darwinNotificationName;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posted darwin notification %{public}@", buf, 0xCu);
                        }

                        [v35 addObject:darwinNotificationName];
                      }
                    }

                    [v27 setNotificationWasPosted:1];
                    calendarIdentifier = [v34 calendarIdentifier];
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      nameCopy = calendarIdentifier;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registering alarm for the end of today in %{public}@", buf, 0xCu);
                    }

                    v40 = v112;
                    v41 = calendarIdentifier;
                    v42 = [NSString alloc];
                    v43 = [NSString stringWithUTF8String:"com.apple.UsageTrackingAgent.alarm.budgets-reset-"];
                    v44 = [v42 initWithFormat:@"%@%@", v43, v41];
                    [v44 UTF8String];

                    v45 = [[NSCalendar alloc] initWithCalendarIdentifier:v41];
                    v46 = [v45 nextDateAfterDate:v40 matchingHour:0 minute:0 second:0 options:1024];

                    v47 = xpc_dictionary_create(0, 0, 0);
                    [v46 timeIntervalSince1970];
                    xpc_dictionary_set_date(v47, "Date", (v48 * 1000000000.0));
                    xpc_dictionary_set_BOOL(v47, "ShouldWake", 0);
                    uTF8String = [v41 UTF8String];

                    xpc_dictionary_set_string(v47, "CalendarIdentifier", uTF8String);
                    xpc_set_event();

                    v16 = v33;
                    notificationTimes = v113;
                  }

                  else if (v19 - v28 < v14 || v14 == 0.0)
                  {
                    v14 = v19 - v28;
                  }
                }
              }

              v24 = [notificationTimes countByEnumeratingWithState:&v123 objects:v141 count:16];
            }

            while (v24);
          }

          if (v19 <= 3600.0)
          {
            v50 = v103;
          }

          else
          {
            v50 = 0;
          }

          if (v50 == 1)
          {
            self = selfCopy;
            v51 = v107;
            if (v102)
            {
              clientIdentifier3 = [v16 clientIdentifier];
              identifier3 = [v16 identifier];
              [v102 appendFormat:@", %@/%@", clientIdentifier3, identifier3];
            }

            else
            {
              v54 = [NSMutableString alloc];
              clientIdentifier3 = [v16 clientIdentifier];
              identifier3 = [v16 identifier];
              v102 = [v54 initWithFormat:@"%@/%@", clientIdentifier3, identifier3];
            }
          }

          else
          {
            self = selfCopy;
            v51 = v107;
          }
        }

        v101 = [obj countByEnumeratingWithState:&v127 objects:v142 count:16];
      }

      while (v101);
    }

    else
    {
      v102 = 0;
      v14 = 0.0;
    }
  }

  else
  {
    v14 = 0.0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000651EC();
    }

    v102 = 0;
  }

  v122 = v94;
  v55 = [objc_opt_class() _getRemainingTimeForEvents:eventsCopy referenceDate:v112 error:&v122];
  v56 = v122;

  obja = v55;
  if (v55)
  {
    v100 = v56;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v57 = v55;
    v58 = [v57 countByEnumeratingWithState:&v118 objects:v140 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = 0;
      v61 = *v119;
      v109 = v57;
      v110 = *v119;
      do
      {
        v62 = 0;
        v114 = v59;
        do
        {
          if (*v119 != v61)
          {
            objc_enumerationMutation(v57);
          }

          v63 = *(*(&v118 + 1) + 8 * v62);
          v64 = [v57 objectForKey:v63];
          if (([v63 didReachThreshold] & 1) == 0 && v64)
          {
            name = [v63 name];
            budget = [v63 budget];
            name2 = [budget name];
            clientIdentifier4 = [budget clientIdentifier];
            [v64 doubleValue];
            v70 = v69;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              nameCopy = name;
              v134 = 2114;
              v135 = *&name2;
              v136 = 2114;
              v137 = *&clientIdentifier4;
              v138 = 2048;
              v139 = v70;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@/%{public}@ has %g seconds remaining", buf, 0x2Au);
            }

            if (v70 <= 0.0)
            {
              extensionIdentifier = [budget extensionIdentifier];
              v76 = [(USBudgetTracker *)self _notifyExtensionThatEventDidReachThreshold:name activity:name2 clientIdentifier:clientIdentifier4 extensionIdentifier:extensionIdentifier isWarning:0];

              if (v76)
              {
                didWarnForThreshold = 1;
                [v63 setDidReachThreshold:1];
              }

              else
              {
                [v63 setDidReachThreshold:{objc_msgSend(v63, "didReachThreshold")}];
                didWarnForThreshold = [v63 didWarnForThreshold];
              }

              v60 |= v76;
              [v63 setDidWarnForThreshold:didWarnForThreshold];
              v57 = v109;
            }

            else
            {
              nextWarningTime = [v63 nextWarningTime];
              v72 = nextWarningTime;
              if (nextWarningTime)
              {
                [nextWarningTime doubleValue];
                v74 = v70 - v73;
                if (v74 <= 0.0)
                {
                  v108 = v60;
                  extensionIdentifier2 = [budget extensionIdentifier];
                  v79 = [(USBudgetTracker *)selfCopy _notifyExtensionThatEventDidReachThreshold:name activity:name2 clientIdentifier:clientIdentifier4 extensionIdentifier:extensionIdentifier2 isWarning:1];

                  didWarnForThreshold2 = 1;
                  if ((v79 & 1) == 0)
                  {
                    didWarnForThreshold2 = [v63 didWarnForThreshold];
                  }

                  v60 = v108 | v79;
                  [v63 setDidWarnForThreshold:didWarnForThreshold2];
                  v57 = v109;
                }

                else if (v74 >= v70)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    nameCopy = name;
                    v134 = 2114;
                    v135 = *&name2;
                    v136 = 2114;
                    v137 = *&clientIdentifier4;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@/%{public}@/%{public}@ has a warning time that comes after its threshold is reached", buf, 0x20u);
                  }
                }

                else
                {
                  v70 = v74;
                }
              }

              if (v70 < v14 || v14 == 0.0)
              {
                v14 = v70;
              }
            }

            if (v70 <= 3600.0)
            {
              v82 = v103;
            }

            else
            {
              v82 = 0;
            }

            self = selfCopy;
            if (v82 == 1)
            {
              if (v102)
              {
                [v102 appendFormat:@", %@/%@/%@", clientIdentifier4, name2, name];
              }

              else
              {
                v102 = [[NSMutableString alloc] initWithFormat:@"%@/%@/%@", clientIdentifier4, name2, name];
              }
            }

            v61 = v110;
            v59 = v114;
          }

          v62 = v62 + 1;
        }

        while (v59 != v62);
        v59 = [v57 countByEnumeratingWithState:&v118 objects:v140 count:16];
      }

      while (v59);
    }

    else
    {
      LOBYTE(v60) = 0;
    }

    v56 = v100;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065264();
    }

    LOBYTE(v60) = 0;
  }

  if (!name)
  {
    v83 = v60;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_122;
    }

    *buf = 0;
    v85 = "Skipping alarm registration after checking budget status, no notification event name";
    goto LABEL_121;
  }

  v83 = v60;
  if (v14 <= 0.0)
  {
    if ([v96 count] || objc_msgSend(obja, "count"))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 0;
      v85 = "Skipping alarm registration after checking budget status, all budgets that apply to the current device state have been exceeded";
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 0;
      v85 = "Skipping alarm registration after checking budget status, no budgets apply to the current device state";
    }

LABEL_121:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v85, buf, 2u);
    goto LABEL_122;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    nameCopy = name;
    v134 = 2048;
    v135 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registering alarm for %{public}s to fire %g seconds from now", buf, 0x16u);
  }

  v84 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v84, "Type", "Monotonic");
  xpc_dictionary_set_uint64(v84, "Date", (v93 + v14 * 1000000000.0));
  xpc_dictionary_set_BOOL(v84, "ShouldWake", 0);
  xpc_set_event();

LABEL_122:
  v86 = v102;
  if (v102)
  {
    v87 = +[NSDate now];
    [(USBudgetTracker *)self setLastSyncDate:v87];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      nameCopy = v102;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requesting medium urgency synchronization for impending budgets and events %{public}@", buf, 0xCu);
    }

    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v116[2] = sub_10001A5C4;
    v116[3] = &unk_1000864B8;
    v86 = v102;
    v117 = v102;
    [_TtC18UsageTrackingAgent15SyncCoordinator uploadLocalDataWithCompletionHandler:v116];
    v88 = qos_class_self();
    v89 = dispatch_get_global_queue(v88, 0);
    v90 = +[_DKKnowledgeStore userKnowledgeStore];
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_10001A6A8;
    v115[3] = &unk_1000864B8;
    v115[4] = self;
    [v90 synchronizeWithUrgency:7 client:USDuetClientNameUsageTracking responseQueue:v89 completion:v115];
  }

  v91 = [v111 count] != 0;

  return (v91 | v83) & 1;
}

- (BOOL)_setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:(id)budgets notifyForIntervalEnd:(BOOL)end isEndOfInterval:(BOOL)interval
{
  intervalCopy = interval;
  endCopy = end;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = budgets;
  v6 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v6)
  {
    v7 = v6;
    v71 = 0;
    v8 = &swift_defaultActor_destroy_ptr;
    v9 = &_os_log_default;
    v80 = *v96;
    v72 = intervalCopy;
    while (1)
    {
      v10 = 0;
      v73 = v7;
      do
      {
        if (*v96 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v95 + 1) + 8 * v10);
        v12 = v8[69];
        intervalStart = [v11 intervalStart];
        intervalEnd = [v11 intervalEnd];
        v15 = [v12 nextIntervalForStartComponents:intervalStart endComponents:intervalEnd];

        if (intervalCopy && (([v11 repeats] ^ 1) & 1) != 0 || v15)
        {
          v17 = v9;
          name = [v11 name];
          clientIdentifier = [v11 clientIdentifier];
          extensionIdentifier = [v11 extensionIdentifier];
          warningTime = [v11 warningTime];
          intervalDidStart = [v11 intervalDidStart];
          didWarnForIntervalStart = [v11 didWarnForIntervalStart];
          didWarnForIntervalEnd = [v11 didWarnForIntervalEnd];
          startDate = [v15 startDate];
          [v15 endDate];
          v82 = v81 = name;
          v83 = warningTime;
          v84 = startDate;
          if (!startDate || ([startDate timeIntervalSinceNow], v22 > 0.0))
          {
            if (!intervalDidStart)
            {
              goto LABEL_27;
            }

            if (endCopy && (-[USBudgetTracker _notifyExtensionThatIntervalDidEndForActivity:clientIdentifier:extensionIdentifier:isWarning:](self, "_notifyExtensionThatIntervalDidEndForActivity:clientIdentifier:extensionIdentifier:isWarning:", name, clientIdentifier, extensionIdentifier, 0), intervalCopy) && ([v11 repeats] & 1) == 0)
            {
              v9 = v17;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                name2 = [v11 name];
                *buf = 138543362;
                v101 = name2;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Deleting budget for one-shot activity: %{public}@", buf, 0xCu);
              }

              managedObjectContext = [v11 managedObjectContext];
              [managedObjectContext deleteObject:v11];

              v71 = 1;
              v8 = &swift_defaultActor_destroy_ptr;
            }

            else
            {
              [v11 setIntervalStartDate:0];
              [v11 setIntervalDidStart:0];
              if (warningTime)
              {
                [v11 setDidWarnForIntervalEnd:0];
              }

              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              events = [v11 events];
              v24 = [events countByEnumeratingWithState:&v87 objects:v99 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v88;
                do
                {
                  for (i = 0; i != v25; i = i + 1)
                  {
                    if (*v88 != v26)
                    {
                      objc_enumerationMutation(events);
                    }

                    v28 = *(*(&v87 + 1) + 8 * i);
                    [v28 setDidReachThreshold:0];
                    [v28 setDidWarnForThreshold:0];
                    [v28 setThresholdAdjustmentTime:0.0];
                    [v28 setTimeRemainingBeforeUsageDeletion:0.0];
                    [v28 setDeletedTime:0.0];
                  }

                  v25 = [events countByEnumeratingWithState:&v87 objects:v99 count:16];
                }

                while (v25);
              }

              v71 = 1;
              warningTime = v83;
LABEL_27:
              v77 = v15;
              v29 = warningTime == 0;
              objectID = [v11 objectID];
              v31 = startDate;
              v32 = xpc_dictionary_create(0, 0, 0);
              [v31 timeIntervalSince1970];
              v34 = v33;

              xpc_dictionary_set_date(v32, "Date", (v34 * 1000000000.0));
              xpc_dictionary_set_BOOL(v32, "ShouldWake", 0);
              uRIRepresentation = [objectID URIRepresentation];
              absoluteString = [uRIRepresentation absoluteString];

              xpc_dictionary_set_string(v32, "BudgetID", [absoluteString UTF8String]);
              v37 = warningTime;
              v38 = [NSString alloc];
              v39 = [NSString stringWithUTF8String:"com.apple.UsageTrackingAgent.alarm.start-"];
              v40 = [v38 initWithFormat:@"%@%@", v39, absoluteString];

              [v40 UTF8String];
              xpc_set_event();

              if ((v29 | didWarnForIntervalStart))
              {
                intervalCopy = v72;
                v7 = v73;
                v8 = &swift_defaultActor_destroy_ptr;
                v9 = &_os_log_default;
                name = v81;
                v15 = v77;
              }

              else
              {
                objectID2 = [v11 objectID];
                LOBYTE(v68) = 1;
                name = v81;
                v42 = [(USBudgetTracker *)self _setWarningAlarmOrNotifyExtensionWithComponents:v37 referenceDate:v31 budgetID:objectID2 activity:v81 clientIdentifier:clientIdentifier extensionIdentifier:extensionIdentifier warnForStartOfInterval:v68];

                intervalCopy = v72;
                v7 = v73;
                v8 = &swift_defaultActor_destroy_ptr;
                v9 = &_os_log_default;
                v15 = v77;
                if (v42)
                {
                  v71 = 1;
                  [v11 setDidWarnForIntervalStart:1];
                }
              }
            }

LABEL_55:

            goto LABEL_56;
          }

          if (!intervalDidStart || intervalCopy)
          {
            v44 = startDate;
            if (!intervalDidStart)
            {
              goto LABEL_45;
            }
          }

          else
          {
            intervalStartDate = [v11 intervalStartDate];
            v44 = startDate;
            v45 = [intervalStartDate compare:startDate];

            warningTime = v83;
            if (v45 != -1)
            {
              if (intervalDidStart)
              {
LABEL_48:
                v79 = warningTime == 0;
                objectID3 = [v11 objectID];
                v53 = warningTime;
                v54 = v82;
                v55 = xpc_dictionary_create(0, 0, 0);
                [v54 timeIntervalSince1970];
                v57 = v56;

                xpc_dictionary_set_date(v55, "Date", (v57 * 1000000000.0));
                xpc_dictionary_set_BOOL(v55, "ShouldWake", 0);
                uRIRepresentation2 = [objectID3 URIRepresentation];
                absoluteString2 = [uRIRepresentation2 absoluteString];

                xpc_dictionary_set_string(v55, "BudgetID", [absoluteString2 UTF8String]);
                v60 = [NSString alloc];
                v61 = [NSString stringWithUTF8String:"com.apple.UsageTrackingAgent.alarm.end-"];
                v62 = [v60 initWithFormat:@"%@%@", v61, absoluteString2];

                [v62 UTF8String];
                xpc_set_event();

                if ((v79 | didWarnForIntervalEnd))
                {
                  intervalCopy = v72;
                  v7 = v73;
                  v8 = &swift_defaultActor_destroy_ptr;
                  v9 = &_os_log_default;
                  name = v81;
                }

                else
                {
                  objectID4 = [v11 objectID];
                  LOBYTE(v69) = 0;
                  name = v81;
                  v64 = [(USBudgetTracker *)self _setWarningAlarmOrNotifyExtensionWithComponents:v53 referenceDate:v54 budgetID:objectID4 activity:v81 clientIdentifier:clientIdentifier extensionIdentifier:extensionIdentifier warnForStartOfInterval:v69];

                  intervalCopy = v72;
                  v7 = v73;
                  v8 = &swift_defaultActor_destroy_ptr;
                  v9 = &_os_log_default;
                  if (v64)
                  {
                    v71 = 1;
                    [v11 setDidWarnForIntervalEnd:1];
                  }
                }

                goto LABEL_55;
              }

LABEL_45:
              [(USBudgetTracker *)self _notifyExtensionThatIntervalDidStartForActivity:name clientIdentifier:clientIdentifier extensionIdentifier:extensionIdentifier isWarning:0];
              [v11 setIntervalStartDate:v44];
              [v11 setIntervalDidStart:1];
              if (warningTime)
              {
                [v11 setDidWarnForIntervalStart:0];
              }

              v71 = 1;
              goto LABEL_48;
            }
          }

          [(USBudgetTracker *)self _notifyExtensionThatIntervalDidEndForActivity:name clientIdentifier:clientIdentifier extensionIdentifier:extensionIdentifier isWarning:0];
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          events2 = [v11 events];
          v47 = [events2 countByEnumeratingWithState:&v91 objects:v102 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v92;
            do
            {
              for (j = 0; j != v48; j = j + 1)
              {
                if (*v92 != v49)
                {
                  objc_enumerationMutation(events2);
                }

                v51 = *(*(&v91 + 1) + 8 * j);
                [v51 setDidReachThreshold:0];
                [v51 setDidWarnForThreshold:0];
                [v51 setThresholdAdjustmentTime:0.0];
                [v51 setTimeRemainingBeforeUsageDeletion:0.0];
                [v51 setDeletedTime:0.0];
              }

              v48 = [events2 countByEnumeratingWithState:&v91 objects:v102 count:16];
            }

            while (v48);
          }

          name = v81;
          warningTime = v83;
          goto LABEL_45;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [v11 name];
          *buf = 138543362;
          v101 = name3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not compute next interval for device activity: %{public}@", buf, 0xCu);
        }

LABEL_56:

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
      if (!v7)
      {
        goto LABEL_60;
      }
    }
  }

  v71 = 0;
LABEL_60:

  return v71 & 1;
}

- (BOOL)_cacheThresholdAdjustmentTimeForBudget:(id)budget
{
  budgetCopy = budget;
  intervalStart = [budgetCopy intervalStart];
  intervalEnd = [budgetCopy intervalEnd];
  v6 = [USDeviceActivitySchedule nextIntervalForStartComponents:intervalStart endComponents:intervalEnd];

  v7 = +[NSDate now];
  v25 = v6;
  LOBYTE(intervalEnd) = [v6 containsDate:v7];

  if (intervalEnd)
  {
    [objc_opt_class() usageQuerying];
    v24 = v23 = budgetCopy;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    events = [budgetCopy events];
    v9 = [events countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = 0;
      v14 = *v28;
      *&v10 = 138543618;
      v22 = v10;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(events);
          }

          v17 = *(*(&v27 + 1) + 8 * v15);
          if ([v17 includesPastActivity])
          {
            v13 = v16;
          }

          else
          {
            v18 = [v17 queryForInterval:v25];
            v26 = v16;
            v19 = [v24 query:v18 error:&v26];
            v13 = v26;

            if (v19)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                name = [v23 name];
                *buf = v22;
                v32 = v19;
                v33 = 2114;
                v34 = name;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Caching threshold adjustment time %{public}@ for %{public}@", buf, 0x16u);
              }

              [v19 doubleValue];
              [v17 setThresholdAdjustmentTime:?];
              v12 = 1;
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000657BC(v35, v13, &v36);
            }

            v16 = v13;
          }

          v15 = v15 + 1;
        }

        while (v11 != v15);
        v11 = [events countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    budgetCopy = v23;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006572C(budgetCopy);
    }

    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)_setWarningAlarmOrNotifyExtensionWithComponents:(id)components referenceDate:(id)date budgetID:(id)d activity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier warnForStartOfInterval:(BOOL)interval
{
  componentsCopy = components;
  dateCopy = date;
  dCopy = d;
  activityCopy = activity;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  v21 = [USDeviceActivitySchedule nextWarningDateForComponents:componentsCopy referenceDate:dateCopy];
  v22 = v21;
  if (!v21)
  {
    v40 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (interval)
    {
      if (v40)
      {
        sub_100065880();
      }
    }

    else if (v40)
    {
      sub_100065808();
    }

    goto LABEL_13;
  }

  [v21 timeIntervalSinceNow];
  if (v23 > 0.0)
  {
    v24 = "com.apple.UsageTrackingAgent.end-warning-";
    if (interval)
    {
      v24 = "com.apple.UsageTrackingAgent.alarm.start-warning-";
    }

    v43 = v24;
    v25 = dCopy;
    v26 = v22;
    v27 = xpc_dictionary_create(0, 0, 0);
    [v26 timeIntervalSince1970];
    v29 = v28;

    xpc_dictionary_set_date(v27, "Date", (v29 * 1000000000.0));
    xpc_dictionary_set_BOOL(v27, "ShouldWake", 0);
    uRIRepresentation = [v25 URIRepresentation];

    absoluteString = [uRIRepresentation absoluteString];

    xpc_dictionary_set_string(v27, "BudgetID", [absoluteString UTF8String]);
    v44 = dateCopy;
    v32 = componentsCopy;
    v33 = extensionIdentifierCopy;
    v34 = identifierCopy;
    v35 = activityCopy;
    v36 = dCopy;
    v37 = [NSString alloc];
    v38 = [NSString stringWithUTF8String:v43];
    v39 = [v37 initWithFormat:@"%@%@", v38, absoluteString];

    dCopy = v36;
    activityCopy = v35;
    identifierCopy = v34;
    extensionIdentifierCopy = v33;
    componentsCopy = v32;
    dateCopy = v44;
    [v39 UTF8String];
    xpc_set_event();

LABEL_13:
    v41 = 0;
    goto LABEL_14;
  }

  v41 = 1;
  if (interval)
  {
    [(USBudgetTracker *)self _notifyExtensionThatIntervalDidStartForActivity:activityCopy clientIdentifier:identifierCopy extensionIdentifier:extensionIdentifierCopy isWarning:1];
  }

  else
  {
    [(USBudgetTracker *)self _notifyExtensionThatIntervalDidEndForActivity:activityCopy clientIdentifier:identifierCopy extensionIdentifier:extensionIdentifierCopy isWarning:1];
  }

LABEL_14:

  return v41;
}

- (void)_notifyExtensionThatIntervalDidStartForActivity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier isWarning:(BOOL)warning
{
  warningCopy = warning;
  activityCopy = activity;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  v12 = [USDeviceActivityMonitorExtensionProxy alloc];
  if (extensionIdentifierCopy)
  {
    v28 = 0;
    v13 = &v28;
    v14 = [v12 initWithBundleIdentifier:extensionIdentifierCopy error:&v28];
  }

  else
  {
    v27 = 0;
    v13 = &v27;
    v14 = [v12 initWithClientIdentifier:identifierCopy error:&v27];
  }

  v15 = v14;
  v16 = *v13;
  if (v15)
  {
    v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (warningCopy)
    {
      if (v17)
      {
        *buf = 138543874;
        v30 = extensionIdentifierCopy;
        v31 = 2114;
        v32 = identifierCopy;
        v33 = 2114;
        v34 = activityCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notifying extension %{public}@ with client %{public}@ that %{public}@ will start", buf, 0x20u);
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001B960;
      v23[3] = &unk_1000864E0;
      v24 = extensionIdentifierCopy;
      v25 = activityCopy;
      v26 = v16;
      [v15 intervalWillStartWarningForActivity:v25 replyHandler:v23];

      v18 = v24;
    }

    else
    {
      if (v17)
      {
        *buf = 138543874;
        v30 = extensionIdentifierCopy;
        v31 = 2114;
        v32 = identifierCopy;
        v33 = 2114;
        v34 = activityCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notifying extension %{public}@ with client %{public}@ that %{public}@ did start", buf, 0x20u);
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10001B9B0;
      v19[3] = &unk_1000864E0;
      v20 = extensionIdentifierCopy;
      v21 = activityCopy;
      v22 = v16;
      [v15 intervalDidStartForActivity:v21 replyHandler:v19];

      v18 = v20;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000658F8();
  }
}

- (void)_notifyExtensionThatIntervalDidEndForActivity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier isWarning:(BOOL)warning
{
  warningCopy = warning;
  activityCopy = activity;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  v12 = [USDeviceActivityMonitorExtensionProxy alloc];
  if (extensionIdentifierCopy)
  {
    v28 = 0;
    v13 = &v28;
    v14 = [v12 initWithBundleIdentifier:extensionIdentifierCopy error:&v28];
  }

  else
  {
    v27 = 0;
    v13 = &v27;
    v14 = [v12 initWithClientIdentifier:identifierCopy error:&v27];
  }

  v15 = v14;
  v16 = *v13;
  if (v15)
  {
    v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (warningCopy)
    {
      if (v17)
      {
        *buf = 138543874;
        v30 = extensionIdentifierCopy;
        v31 = 2114;
        v32 = identifierCopy;
        v33 = 2114;
        v34 = activityCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notifying extension %{public}@ with client %{public}@ that %{public}@ will end", buf, 0x20u);
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001BCDC;
      v23[3] = &unk_1000864E0;
      v24 = extensionIdentifierCopy;
      v25 = activityCopy;
      v26 = v16;
      [v15 intervalWillEndWarningForActivity:v25 replyHandler:v23];

      v18 = v24;
    }

    else
    {
      if (v17)
      {
        *buf = 138543874;
        v30 = extensionIdentifierCopy;
        v31 = 2114;
        v32 = identifierCopy;
        v33 = 2114;
        v34 = activityCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notifying extension %{public}@ with client %{public}@ that %{public}@ did end", buf, 0x20u);
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10001BD2C;
      v19[3] = &unk_1000864E0;
      v20 = extensionIdentifierCopy;
      v21 = activityCopy;
      v22 = v16;
      [v15 intervalDidEndForActivity:v21 replyHandler:v19];

      v18 = v20;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000658F8();
  }
}

- (BOOL)_notifyExtensionThatEventDidReachThreshold:(id)threshold activity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier isWarning:(BOOL)warning
{
  warningCopy = warning;
  thresholdCopy = threshold;
  activityCopy = activity;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (extensionIdentifierCopy)
  {
    v31 = 0;
    v15 = &v31;
    v16 = [[USDeviceActivityMonitorExtensionProxy alloc] initWithBundleIdentifier:extensionIdentifierCopy error:&v31];
  }

  else
  {
    v30 = 0;
    v15 = &v30;
    v16 = [[USDeviceActivityMonitorExtensionProxy alloc] initWithClientIdentifier:identifierCopy error:&v30];
  }

  v17 = v16;
  v18 = *v15;
  if (v17)
  {
    v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (warningCopy)
    {
      if (v19)
      {
        *buf = 138544130;
        v37 = extensionIdentifierCopy;
        v38 = 2114;
        v39 = identifierCopy;
        v40 = 2114;
        v41 = thresholdCopy;
        v42 = 2114;
        v43 = activityCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notifying extension %{public}@ with client %{public}@ that %{public}@ from activity %{public}@ will reach its threshold", buf, 0x2Au);
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10001C0C8;
      v26[3] = &unk_100086508;
      v29 = &v32;
      v27 = extensionIdentifierCopy;
      v28 = thresholdCopy;
      [v17 eventWillReachThresholdWarning:v28 activity:activityCopy replyHandler:v26];
    }

    else
    {
      if (v19)
      {
        *buf = 138544130;
        v37 = extensionIdentifierCopy;
        v38 = 2114;
        v39 = identifierCopy;
        v40 = 2114;
        v41 = thresholdCopy;
        v42 = 2114;
        v43 = activityCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notifying extension %{public}@ with client %{public}@ that %{public}@ from activity %{public}@ reached its threshold", buf, 0x2Au);
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10001C12C;
      v22[3] = &unk_100086508;
      v25 = &v32;
      v23 = extensionIdentifierCopy;
      v24 = thresholdCopy;
      [v17 eventDidReachThreshold:v24 activity:activityCopy replyHandler:v22];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000658F8();
  }

  v20 = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  return v20 & 1;
}

- (BOOL)_notifyExtensionThatEventDidUnreachThreshold:(id)threshold activity:(id)activity clientIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier
{
  thresholdCopy = threshold;
  activityCopy = activity;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (extensionIdentifierCopy)
  {
    v24 = 0;
    v13 = &v24;
    v14 = [[USDeviceActivityMonitorExtensionProxy alloc] initWithBundleIdentifier:extensionIdentifierCopy error:&v24];
  }

  else
  {
    v23 = 0;
    v13 = &v23;
    v14 = [[USDeviceActivityMonitorExtensionProxy alloc] initWithClientIdentifier:identifierCopy error:&v23];
  }

  v15 = v14;
  v16 = *v13;
  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v30 = extensionIdentifierCopy;
      v31 = 2114;
      v32 = identifierCopy;
      v33 = 2114;
      v34 = thresholdCopy;
      v35 = 2114;
      v36 = activityCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notifying extension %{public}@ with client %{public}@ that %{public}@ from activity %{public}@ unreached its threshold", buf, 0x2Au);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001C3E4;
    v19[3] = &unk_100086508;
    v22 = &v25;
    v20 = extensionIdentifierCopy;
    v21 = thresholdCopy;
    [v15 eventDidUnreachThreshold:v21 activity:activityCopy replyHandler:v19];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000658F8();
  }

  v17 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v17 & 1;
}

@end