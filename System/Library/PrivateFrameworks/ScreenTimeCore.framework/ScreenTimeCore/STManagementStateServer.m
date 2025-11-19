@interface STManagementStateServer
- (STManagementStateServer)initWithScreenTimeStateManager:(id)a3;
- (id)_observedManagerKeyPaths;
- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)a3;
- (void)applyIntroductionModel:(id)a3 forDSID:(id)a4 completionHandler:(id)a5;
- (void)authenticateRestrictionsPasscode:(id)a3 replyHandler:(id)a4;
- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)a3;
- (void)communicationPoliciesForDSID:(id)a3 withCompletionHandler:(id)a4;
- (void)communicationPoliciesWithCompletionHandler:(id)a3;
- (void)contactManagementStateForDSID:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6;
- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 replyHandler:(id)a5;
- (void)deleteAllWebApplicationHistory:(id)a3 replyHandler:(id)a4;
- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 replyHandler:(id)a5;
- (void)enableRemoteManagementForDSID:(id)a3 completionHandler:(id)a4;
- (void)enableScreenTimeForDSID:(id)a3 completionHandler:(id)a4;
- (void)enableWebContentFilterWithCompletionHandler:(id)a3;
- (void)exportDatabaseToURL:(id)a3 replyHandler:(id)a4;
- (void)fetchAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6;
- (void)fetchHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 completionHandler:(id)a4;
- (void)isContentPrivacyEnabledForDSID:(id)a3 completionHandler:(id)a4;
- (void)isExplicitContentRestrictedWithCompletionHandler:(id)a3;
- (void)isLocationSharingModificationAllowedForDSID:(id)a3 completionHandler:(id)a4;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)a3;
- (void)isWebContentRestrictedWithCompletionHandler:(id)a3;
- (void)lastCommunicationLimitsModifcationDateForDSID:(id)a3 completionHandler:(id)a4;
- (void)lastModifcationDateForDSID:(id)a3 completionHandler:(id)a4;
- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)a3;
- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performMigrationFromMCXSettings:(id)a3 completionHandler:(id)a4;
- (void)permitWebFilterURL:(id)a3 pageTitle:(id)a4 completionHandler:(id)a5;
- (void)postNotificationForContext:(id)a3;
- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)a3;
- (void)restrictionsForUserDSID:(id)a3 completionHandler:(id)a4;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)a3;
- (void)scheduleManagementStateUpdateNotification;
- (void)screenTimeStateWithCompletionHandler:(id)a3;
- (void)screenTimeSyncStateWithCompletionHandler:(id)a3;
- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)a3;
- (void)setContactManagementState:(int64_t)a3 forDSID:(id)a4 completionHandler:(id)a5;
- (void)setRestrictionsPasscode:(id)a3 completionHandler:(id)a4;
- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 replyHandler:(id)a4;
- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 replyHandler:(id)a4;
- (void)shouldAllowOneMoreMinuteForWebDomain:(id)a3 replyHandler:(id)a4;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)a3;
- (void)triggerDowngradeMigrationWithCompletionHandler:(id)a3;
@end

@implementation STManagementStateServer

- (STManagementStateServer)initWithScreenTimeStateManager:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = STManagementStateServer;
  v6 = [(STManagementStateServer *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screenTimeManager, a3);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(STManagementStateServer *)v7 _observedManagerKeyPaths];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          [v5 addObserver:v7 forKeyPath:*(*(&v14 + 1) + 8 * v12) options:0 context:"STManagementStateServerObservationContext"];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(STManagementStateServer *)self screenTimeManager];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(STManagementStateServer *)self _observedManagerKeyPaths];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v8) context:"STManagementStateServerObservationContext"];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "STManagementStateServerObservationContext")
  {

    [(STManagementStateServer *)self performSelectorOnMainThread:"scheduleManagementStateUpdateNotification" withObject:0 waitUntilDone:0];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = STManagementStateServer;
    [(STManagementStateServer *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)scheduleManagementStateUpdateNotification
{
  v3 = [(STManagementStateServer *)self notificationTimer];

  if (!v3)
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

- (void)screenTimeStateWithCompletionHandler:(id)a3
{
  v5 = a3;
  v7 = [(STManagementStateServer *)self screenTimeManager];
  if ([v7 isScreenTimeEnabled])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  (*(a3 + 2))(v5, v6, 0);
}

- (void)enableScreenTimeForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 enableScreenTimeForDSID:v7 completionHandler:v6];
}

- (void)enableRemoteManagementForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 enableRemoteManagementForDSID:v7 completionHandler:v6];
}

- (void)screenTimeSyncStateWithCompletionHandler:(id)a3
{
  v5 = a3;
  v7 = [(STManagementStateServer *)self screenTimeManager];
  if ([v7 isScreenTimeSyncingEnabled])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  (*(a3 + 2))(v5, v6, 0);
}

- (void)isContentPrivacyEnabledForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 isContentPrivacyEnabledForDSID:v7 completionHandler:v6];
}

- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  v9 = 0;
  v6 = [v5 clearRestrictionsPasscodeWithError:&v9];
  v7 = v9;

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  (v4)[2](v4, v8);
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v6 = [v5 getIsRestrictionsPasscodeSetAndReturnError:&v12];
  v7 = v12;

  v8 = [v6 BOOLValue];
  v9 = +[STLog screentime];
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"is not";
      if (v8)
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

  v4[2](v4, v8, v7);
}

- (void)needsToSetRestrictionsPasscodeWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  v8 = 0;
  v6 = [v5 getNeedsToSetRestrictionsPasscodeAndReturnError:&v8];
  v7 = v8;

  v4[2](v4, [v6 BOOLValue], v7);
}

- (void)setRestrictionsPasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  v10 = 0;
  [v8 setRestrictionsPasscode:v7 error:&v10];

  v9 = v10;
  v6[2](v6, v9);
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  [v5 restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:v4];
}

- (void)authenticateRestrictionsPasscode:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v9 = [v8 authenticateRestrictionsPasscode:v7 error:&v12];

  v10 = v12;
  if ((v9 & 1) == 0)
  {
    v11 = +[STLog screentime];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100118004();
    }
  }

  v6[2](v6, v10);
}

- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  [v5 sendPasscodeActivityToParentsWithCompletionHandler:v4];
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog screentime];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011806C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(STManagementStateServer *)self screenTimeManager];
  v4[2](v4, [v13 shouldRequestMoreTime], 0);
}

- (void)communicationPoliciesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  [v5 communicationPoliciesWithCompletionHandler:v4];
}

- (void)communicationPoliciesForDSID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 communicationPoliciesForDSID:v7 withCompletionHandler:v6];
}

- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  v9 = 0;
  v6 = [v5 getPrimaryiCloudCardDAVAccountIdentifierWithError:&v9];
  v7 = v9;

  if (!v6)
  {
    v8 = +[STLog screentime];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001180A4();
    }
  }

  v4[2](v4, v6, v7);
}

- (void)setContactManagementState:(int64_t)a3 forDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(STManagementStateServer *)self screenTimeManager];
  [v10 setContactManagementState:a3 forDSID:v9 completionHandler:v8];
}

- (void)contactManagementStateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 contactManagementStateForDSID:v7 completionHandler:v6];
}

- (void)isExplicitContentRestrictedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v6 = [v5 getIsExplicitContentRestrictedAndReturnError:&v12];
  v7 = v12;

  v8 = [v6 BOOLValue];
  v9 = +[STLog screentime];
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"is not";
      if (v8)
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

  v4[2](v4, v8, v7);
}

- (void)isWebContentRestrictedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v6 = [v5 getIsWebContentRestrictedAndReturnError:&v12];
  v7 = v12;

  v8 = [v6 BOOLValue];
  v9 = +[STLog screentime];
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = @"is not";
      if (v8)
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

  v4[2](v4, v8, v7);
}

- (void)enableWebContentFilterWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  [v5 enableWebContentFilterWithCompletionHandler:v4];
}

- (void)exportDatabaseToURL:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  v12 = 0;
  v9 = [v8 exportDatabaseToURL:v7 error:&v12];

  v10 = v12;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  (v6)[2](v6, v11);
}

- (void)fetchHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v10 = a7;
  v11 = [_TtC15ScreenTimeAgent14STEventStreams fetchURLsDuringInterval:a3 bundleIdentifier:a4 profileIdentifier:a5];
  v10[2](v10, v11, 0);
}

- (void)fetchAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6
{
  v8 = a6;
  v9 = [_TtC15ScreenTimeAgent14STEventStreams fetchAllURLsForBundleIdentifier:a3 profileIdentifier:a4];
  v8[2](v8, v9, 0);
}

- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
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
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v11 deleteHistoryForURL:v13 webApplication:v9 completionHandler:v14];
}

- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[STLog usage];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1001182AC(v7);
  }

  v11 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000480CC;
  v14[3] = &unk_1001A43C0;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v11 deleteHistoryForURLs:v13 webApplication:v9 completionHandler:v14];
}

- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
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
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v11 deleteHistoryForDomain:v13 webApplication:v9 completionHandler:v14];
}

- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
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
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v11 deleteHistoryDuringInterval:v13 webApplication:v9 completionHandler:v14];
}

- (void)deleteAllWebApplicationHistory:(id)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
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
  v18 = v5;
  v16 = v5;
  [v15 deleteAllHistoryForApplication:v6 completionHandler:v17];
}

- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
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
  v18 = v9;
  v19 = v10;
  v15 = v10;
  v16 = v9;
  [v14 deleteHistoryForURL:v16 webApplication:v12 profileIdentifier:v11 completionHandler:v17];
}

- (void)deleteWebHistoryForURLs:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
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
  v18 = v9;
  v19 = v10;
  v15 = v10;
  v16 = v9;
  [v14 deleteHistoryForURLs:v16 webApplication:v12 profileIdentifier:v11 completionHandler:v17];
}

- (void)deleteWebHistoryForDomain:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
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
  v18 = v9;
  v19 = v10;
  v15 = v10;
  v16 = v9;
  [v14 deleteHistoryForDomain:v16 webApplication:v12 profileIdentifier:v11 completionHandler:v17];
}

- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 replyHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
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
  v18 = v9;
  v19 = v10;
  v15 = v10;
  v16 = v9;
  [v14 deleteHistoryDuringInterval:v16 webApplication:v12 profileIdentifier:v11 completionHandler:v17];
}

- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
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
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v11 deleteAllHistoryForApplication:v13 profileIdentifier:v9 completionHandler:v14];
}

- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = a3;
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

  [v17 deleteHistoryForURL:v13 webApplication:v12 profileIdentifier:v11 completionHandler:v10];
}

- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = a3;
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

  [v17 deleteHistoryDuringInterval:v13 webApplication:v12 profileIdentifier:v11 completionHandler:v10];
}

- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
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

  [v14 deleteAllHistoryForApplication:v10 profileIdentifier:v9 completionHandler:v8];
}

- (void)performMigrationFromMCXSettings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 performMigrationFromMCXSettings:v7 completionHandler:v6];
}

- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  [v5 applyDefaultUserPoliciesWithCompletionHandler:v4];
}

- (void)permitWebFilterURL:(id)a3 pageTitle:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STManagementStateServer *)self screenTimeManager];
  [v11 permitWebFilterURL:v10 pageTitle:v9 completionHandler:v8];
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  v11 = 0;
  v9 = [v8 shouldAllowOneMoreMinuteForBundleIdentifier:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  v11 = 0;
  v9 = [v8 shouldAllowOneMoreMinuteForWebDomain:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  v11 = 0;
  v9 = [v8 shouldAllowOneMoreMinuteForCategoryIdentifier:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)applyIntroductionModel:(id)a3 forDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STManagementStateServer *)self screenTimeManager];
  [v11 applyIntroductionModel:v10 forDSID:v9 completionHandler:v8];
}

- (void)isLocationSharingModificationAllowedForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 isLocationSharingModificationAllowedForDSID:v7 completionHandler:v6];
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 lastCommunicationLimitsModifcationDateForDSID:v7 completionHandler:v6];
}

- (void)lastModifcationDateForDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 lastModifcationDateForDSID:v7 completionHandler:v6];
}

- (void)postNotificationForContext:(id)a3
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"STUserNotificationManagerShouldPostNotification" object:v3];
}

- (void)triggerDowngradeMigrationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  [v5 triggerDowngradeMigrationWithCompletionHandler:v4];
}

- (void)restrictionsForUserDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 restrictionsForUserDSID:v7 completionHandler:v6];
}

- (void)isCommunicationSafetyEnabledForUserDSID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STManagementStateServer *)self screenTimeManager];
  [v8 isCommunicationSafetyEnabledForUserDSID:v7 completionHandler:v6];
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STManagementStateServer *)self screenTimeManager];
  [v5 managingGuardianAppleIDsForLocalUserWithCompletionHandler:v4];
}

@end