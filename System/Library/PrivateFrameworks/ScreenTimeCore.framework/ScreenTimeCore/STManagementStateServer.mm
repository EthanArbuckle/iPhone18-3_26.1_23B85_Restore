@interface STManagementStateServer
- (STManagementStateServer)initWithScreenTimeStateManager:(id)manager;
- (id)_observedManagerKeyPaths;
- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler;
- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler;
- (void)authenticateRestrictionsPasscode:(id)passcode replyHandler:(id)handler;
- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler;
- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler;
- (void)communicationPoliciesWithCompletionHandler:(id)handler;
- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(id)history replyHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application replyHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application replyHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application replyHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application replyHandler:(id)handler;
- (void)enableRemoteManagementForDSID:(id)d completionHandler:(id)handler;
- (void)enableScreenTimeForDSID:(id)d completionHandler:(id)handler;
- (void)enableWebContentFilterWithCompletionHandler:(id)handler;
- (void)exportDatabaseToURL:(id)l replyHandler:(id)handler;
- (void)fetchAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)fetchHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)isCommunicationSafetyEnabledForUserDSID:(id)d completionHandler:(id)handler;
- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler;
- (void)isExplicitContentRestrictedWithCompletionHandler:(id)handler;
- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler;
- (void)isWebContentRestrictedWithCompletionHandler:(id)handler;
- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler;
- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performMigrationFromMCXSettings:(id)settings completionHandler:(id)handler;
- (void)permitWebFilterURL:(id)l pageTitle:(id)title completionHandler:(id)handler;
- (void)postNotificationForContext:(id)context;
- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler;
- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
- (void)scheduleManagementStateUpdateNotification;
- (void)screenTimeStateWithCompletionHandler:(id)handler;
- (void)screenTimeSyncStateWithCompletionHandler:(id)handler;
- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)handler;
- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler;
- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier replyHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier replyHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForWebDomain:(id)domain replyHandler:(id)handler;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler;
- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler;
@end

@implementation STManagementStateServer

- (STManagementStateServer)initWithScreenTimeStateManager:(id)manager
{
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = STManagementStateServer;
  v6 = [(STManagementStateServer *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screenTimeManager, manager);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _observedManagerKeyPaths = [(STManagementStateServer *)v7 _observedManagerKeyPaths];
    v9 = [_observedManagerKeyPaths countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(_observedManagerKeyPaths);
          }

          [managerCopy addObserver:v7 forKeyPath:*(*(&v14 + 1) + 8 * v12) options:0 context:"STManagementStateServerObservationContext"];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [_observedManagerKeyPaths countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (void)dealloc
{
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _observedManagerKeyPaths = [(STManagementStateServer *)self _observedManagerKeyPaths];
  v5 = [_observedManagerKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_observedManagerKeyPaths);
        }

        [screenTimeManager removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v8) context:"STManagementStateServerObservationContext"];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [_observedManagerKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = STManagementStateServer;
  [(STManagementStateServer *)&v9 dealloc];
}

- (id)_observedManagerKeyPaths
{
  v4[0] = @"screenTimeEnabled";
  v4[1] = @"screenTimeSyncingEnabled";
  v4[2] = @"shouldRequestMoreTime";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STManagementStateServerObservationContext")
  {

    [(STManagementStateServer *)self performSelectorOnMainThread:"scheduleManagementStateUpdateNotification" withObject:0 waitUntilDone:0];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = STManagementStateServer;
    [(STManagementStateServer *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)scheduleManagementStateUpdateNotification
{
  notificationTimer = [(STManagementStateServer *)self notificationTimer];

  if (!notificationTimer)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_100046D38;
    v8 = &unk_1001A4398;
    objc_copyWeak(&v9, &location);
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v5 block:0.5];
    [(STManagementStateServer *)self setNotificationTimer:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)screenTimeStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  if ([screenTimeManager isScreenTimeEnabled])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  (*(handler + 2))(handlerCopy, v6, 0);
}

- (void)enableScreenTimeForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager enableScreenTimeForDSID:dCopy completionHandler:handlerCopy];
}

- (void)enableRemoteManagementForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager enableRemoteManagementForDSID:dCopy completionHandler:handlerCopy];
}

- (void)screenTimeSyncStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  if ([screenTimeManager isScreenTimeSyncingEnabled])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  (*(handler + 2))(handlerCopy, v6, 0);
}

- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager isContentPrivacyEnabledForDSID:dCopy completionHandler:handlerCopy];
}

- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v9 = 0;
  v6 = [screenTimeManager clearRestrictionsPasscodeWithError:&v9];
  v7 = v9;

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  (handlerCopy)[2](handlerCopy, v8);
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v6 = [screenTimeManager getIsRestrictionsPasscodeSetAndReturnError:&v12];
  v7 = v12;

  bOOLValue = [v6 BOOLValue];
  v9 = +[STLog screentime];
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"is not";
      if (bOOLValue)
      {
        v11 = @"is";
      }

      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Restrictions passcode %{public}@ set", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100117F9C();
  }

  handlerCopy[2](handlerCopy, bOOLValue, v7);
}

- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v8 = 0;
  v6 = [screenTimeManager getNeedsToSetRestrictionsPasscodeAndReturnError:&v8];
  v7 = v8;

  handlerCopy[2](handlerCopy, [v6 BOOLValue], v7);
}

- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v10 = 0;
  [screenTimeManager setRestrictionsPasscode:passcodeCopy error:&v10];

  v9 = v10;
  handlerCopy[2](handlerCopy, v9);
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:handlerCopy];
}

- (void)authenticateRestrictionsPasscode:(id)passcode replyHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v9 = [screenTimeManager authenticateRestrictionsPasscode:passcodeCopy error:&v12];

  v10 = v12;
  if ((v9 & 1) == 0)
  {
    v11 = +[STLog screentime];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100118004();
    }
  }

  handlerCopy[2](handlerCopy, v10);
}

- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager sendPasscodeActivityToParentsWithCompletionHandler:handlerCopy];
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[STLog screentime];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011806C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  handlerCopy[2](handlerCopy, [screenTimeManager shouldRequestMoreTime], 0);
}

- (void)communicationPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager communicationPoliciesWithCompletionHandler:handlerCopy];
}

- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager communicationPoliciesForDSID:dCopy withCompletionHandler:handlerCopy];
}

- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v9 = 0;
  v6 = [screenTimeManager getPrimaryiCloudCardDAVAccountIdentifierWithError:&v9];
  v7 = v9;

  if (!v6)
  {
    v8 = +[STLog screentime];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001180A4();
    }
  }

  handlerCopy[2](handlerCopy, v6, v7);
}

- (void)setContactManagementState:(int64_t)state forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager setContactManagementState:state forDSID:dCopy completionHandler:handlerCopy];
}

- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager contactManagementStateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)isExplicitContentRestrictedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v6 = [screenTimeManager getIsExplicitContentRestrictedAndReturnError:&v12];
  v7 = v12;

  bOOLValue = [v6 BOOLValue];
  v9 = +[STLog screentime];
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"is not";
      if (bOOLValue)
      {
        v11 = @"is";
      }

      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Explicit content %{public}@ restricted", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10011810C();
  }

  handlerCopy[2](handlerCopy, bOOLValue, v7);
}

- (void)isWebContentRestrictedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v6 = [screenTimeManager getIsWebContentRestrictedAndReturnError:&v12];
  v7 = v12;

  bOOLValue = [v6 BOOLValue];
  v9 = +[STLog screentime];
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"is not";
      if (bOOLValue)
      {
        v11 = @"is";
      }

      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Web content %{public}@ restricted", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100118174();
  }

  handlerCopy[2](handlerCopy, bOOLValue, v7);
}

- (void)enableWebContentFilterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager enableWebContentFilterWithCompletionHandler:handlerCopy];
}

- (void)exportDatabaseToURL:(id)l replyHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v9 = [screenTimeManager exportDatabaseToURL:lCopy error:&v12];

  v10 = v12;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  (handlerCopy)[2](handlerCopy, v11);
}

- (void)fetchHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  v11 = [_TtC15ScreenTimeAgent14STEventStreams fetchURLsDuringInterval:interval bundleIdentifier:application profileIdentifier:identifier];
  handlerCopy[2](handlerCopy, v11, 0);
}

- (void)fetchAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [_TtC15ScreenTimeAgent14STEventStreams fetchAllURLsForBundleIdentifier:history profileIdentifier:identifier];
  handlerCopy[2](handlerCopy, v9, 0);
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application replyHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  applicationCopy = application;
  v10 = +[STLog usage];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1001181DC();
  }

  v11 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100047F24;
  v14[3] = &unk_1001A43C0;
  v15 = lCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = lCopy;
  [v11 deleteHistoryForURL:v13 webApplication:applicationCopy completionHandler:v14];
}

- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application replyHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
  applicationCopy = application;
  v10 = +[STLog usage];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1001182AC(lsCopy);
  }

  v11 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000480CC;
  v14[3] = &unk_1001A43C0;
  v15 = lsCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = lsCopy;
  [v11 deleteHistoryForURLs:v13 webApplication:applicationCopy completionHandler:v14];
}

- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application replyHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  applicationCopy = application;
  v10 = +[STLog usage];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1001181DC();
  }

  v11 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100048274;
  v14[3] = &unk_1001A43C0;
  v15 = domainCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = domainCopy;
  [v11 deleteHistoryForDomain:v13 webApplication:applicationCopy completionHandler:v14];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application replyHandler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  applicationCopy = application;
  v10 = +[STLog usage];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1001181DC();
  }

  v11 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004841C;
  v14[3] = &unk_1001A43C0;
  v15 = intervalCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = intervalCopy;
  [v11 deleteHistoryDuringInterval:v13 webApplication:applicationCopy completionHandler:v14];
}

- (void)deleteAllWebApplicationHistory:(id)history replyHandler:(id)handler
{
  handlerCopy = handler;
  historyCopy = history;
  v7 = +[STLog usage];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1001183A0(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = objc_opt_new();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100048594;
  v17[3] = &unk_1001A3978;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [v15 deleteAllHistoryForApplication:historyCopy completionHandler:v17];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  v13 = +[STLog usage];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1001181DC();
  }

  v14 = objc_opt_new();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004874C;
  v17[3] = &unk_1001A43C0;
  v18 = lCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = lCopy;
  [v14 deleteHistoryForURL:v16 webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v17];
}

- (void)deleteWebHistoryForURLs:(id)ls webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  v13 = +[STLog usage];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1001181DC();
  }

  v14 = objc_opt_new();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100048908;
  v17[3] = &unk_1001A43C0;
  v18 = lsCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = lsCopy;
  [v14 deleteHistoryForURLs:v16 webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v17];
}

- (void)deleteWebHistoryForDomain:(id)domain webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  v13 = +[STLog usage];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1001181DC();
  }

  v14 = objc_opt_new();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100048AC4;
  v17[3] = &unk_1001A43C0;
  v18 = domainCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = domainCopy;
  [v14 deleteHistoryForDomain:v16 webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v17];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier replyHandler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  v13 = +[STLog usage];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100118410();
  }

  v14 = objc_opt_new();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100048C80;
  v17[3] = &unk_1001A43C0;
  v18 = intervalCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = intervalCopy;
  [v14 deleteHistoryDuringInterval:v16 webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v17];
}

- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier replyHandler:(id)handler
{
  historyCopy = history;
  handlerCopy = handler;
  identifierCopy = identifier;
  v10 = +[STLog usage];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1001181DC();
  }

  v11 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100048E28;
  v14[3] = &unk_1001A43C0;
  v15 = historyCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = historyCopy;
  [v11 deleteAllHistoryForApplication:v13 profileIdentifier:identifierCopy completionHandler:v14];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  lCopy = l;
  v14 = [USWebHistory alloc];
  v15 = +[NSXPCConnection currentConnection];
  v16 = v15;
  if (v15)
  {
    [v15 auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v17 = [v14 initWithAuditToken:v18];

  [v17 deleteHistoryForURL:lCopy webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  v14 = [USWebHistory alloc];
  v15 = +[NSXPCConnection currentConnection];
  v16 = v15;
  if (v15)
  {
    [v15 auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v17 = [v14 initWithAuditToken:v18];

  [v17 deleteHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  historyCopy = history;
  v11 = [USWebHistory alloc];
  v12 = +[NSXPCConnection currentConnection];
  v13 = v12;
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = [v11 initWithAuditToken:v15];

  [v14 deleteAllHistoryForApplication:historyCopy profileIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)performMigrationFromMCXSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager performMigrationFromMCXSettings:settingsCopy completionHandler:handlerCopy];
}

- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager applyDefaultUserPoliciesWithCompletionHandler:handlerCopy];
}

- (void)permitWebFilterURL:(id)l pageTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  lCopy = l;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager permitWebFilterURL:lCopy pageTitle:titleCopy completionHandler:handlerCopy];
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v11 = 0;
  v9 = [screenTimeManager shouldAllowOneMoreMinuteForBundleIdentifier:identifierCopy error:&v11];

  v10 = v11;
  handlerCopy[2](handlerCopy, v9, v10);
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(id)domain replyHandler:(id)handler
{
  handlerCopy = handler;
  domainCopy = domain;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v11 = 0;
  v9 = [screenTimeManager shouldAllowOneMoreMinuteForWebDomain:domainCopy error:&v11];

  v10 = v11;
  handlerCopy[2](handlerCopy, v9, v10);
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  v11 = 0;
  v9 = [screenTimeManager shouldAllowOneMoreMinuteForCategoryIdentifier:identifierCopy error:&v11];

  v10 = v11;
  handlerCopy[2](handlerCopy, v9, v10);
}

- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  modelCopy = model;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager applyIntroductionModel:modelCopy forDSID:dCopy completionHandler:handlerCopy];
}

- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager isLocationSharingModificationAllowedForDSID:dCopy completionHandler:handlerCopy];
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager lastCommunicationLimitsModifcationDateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager lastModifcationDateForDSID:dCopy completionHandler:handlerCopy];
}

- (void)postNotificationForContext:(id)context
{
  contextCopy = context;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"STUserNotificationManagerShouldPostNotification" object:contextCopy];
}

- (void)triggerDowngradeMigrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager triggerDowngradeMigrationWithCompletionHandler:handlerCopy];
}

- (void)restrictionsForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager restrictionsForUserDSID:dCopy completionHandler:handlerCopy];
}

- (void)isCommunicationSafetyEnabledForUserDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager isCommunicationSafetyEnabledForUserDSID:dCopy completionHandler:handlerCopy];
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeManager = [(STManagementStateServer *)self screenTimeManager];
  [screenTimeManager managingGuardianAppleIDsForLocalUserWithCompletionHandler:handlerCopy];
}

@end