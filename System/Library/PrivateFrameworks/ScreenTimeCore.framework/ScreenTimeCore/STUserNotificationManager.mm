@interface STUserNotificationManager
- (STUserNotificationManager)init;
- (void)_postNotificationRequest:(id)a3 context:(id)a4 notificationCenter:(id)a5 withCompletionHandler:(id)a6;
- (void)_requestAuthorizationForNotificationRequest:(id)a3 context:(id)a4 notificationCenter:(id)a5 withCompletionHandler:(id)a6;
- (void)_shouldPostNotificationRequest:(id)a3 notificationCenter:(id)a4 withCompletionHandler:(id)a5;
- (void)postNotificationForContext:(id)a3 completionHandler:(id)a4;
- (void)postNotificationNotificationReceived:(id)a3;
- (void)removeNotificationForContext:(id)a3 completionHandler:(id)a4;
- (void)removeNotificationNotificationReceived:(id)a3;
- (void)resume;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation STUserNotificationManager

- (STUserNotificationManager)init
{
  v18.receiver = self;
  v18.super_class = STUserNotificationManager;
  v2 = [(STUserNotificationManager *)&v18 init];
  if (v2)
  {
    v20[0] = STScreenTimeNotificationsBundleIdentifier;
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:STScreenTimeNotificationsBundleIdentifier];
    v21[0] = v3;
    v20[1] = STScreenTimeDowntimeNotificationBundleIdentifier;
    v4 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:STScreenTimeDowntimeNotificationBundleIdentifier];
    v21[1] = v4;
    v20[2] = STScreenTimeEnabledNotificationBundleIdentifier;
    v5 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:STScreenTimeEnabledNotificationBundleIdentifier];
    v21[2] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    notificationCenterByBundleIdentifier = v2->_notificationCenterByBundleIdentifier;
    v2->_notificationCenterByBundleIdentifier = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(NSDictionary *)v2->_notificationCenterByBundleIdentifier allValues];
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

          [*(*(&v14 + 1) + 8 * v12) setDelegate:v2];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v2;
}

- (void)resume
{
  v3 = [(STUserNotificationManager *)self notificationCenterByBundleIdentifier];
  v4 = [v3 allValues];
  [v4 makeObjectsPerformSelector:"setWantsNotificationResponsesDelivered"];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"postNotificationNotificationReceived:" name:@"STUserNotificationManagerShouldPostNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"removeNotificationNotificationReceived:" name:@"STUserNotificationManagerShouldRemoveNotification" object:0];
}

- (void)postNotificationNotificationReceived:(id)a3
{
  v5 = a3;
  if (+[NSThread isMainThread])
  {
    v6 = [v5 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = STShareMyLocationUnlockedUserNotificationContext_ptr;
    }

    else
    {
      v9 = [v5 object];
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        v8 = STShareMyLocationLockedUserNotificationContext_ptr;
      }

      else
      {
        v11 = [v5 object];
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();

        if (v12)
        {
          v8 = STLocationServicesUnlockedUserNotificationContext_ptr;
        }

        else
        {
          v13 = [v5 object];
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();

          if ((v14 & 1) == 0)
          {
LABEL_12:
            v17 = [v5 object];
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_10009C000;
            v18[3] = &unk_1001A4048;
            v19 = v5;
            [(STUserNotificationManager *)self postNotificationForContext:v17 completionHandler:v18];

            goto LABEL_13;
          }

          v8 = STLocationServicesLockedUserNotificationContext_ptr;
        }
      }
    }

    v15 = *v8;
    v16 = objc_opt_new();
    [(STUserNotificationManager *)self removeNotificationForContext:v16 completionHandler:0];

    goto LABEL_12;
  }

  [(STUserNotificationManager *)self performSelectorOnMainThread:a2 withObject:v5 waitUntilDone:0];
LABEL_13:
}

- (void)postNotificationForContext:(id)a3 completionHandler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009C12C;
  v8[3] = &unk_1001A6330;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [v7 notificationContentWithCompletionBlock:v8];
}

- (void)_requestAuthorizationForNotificationRequest:(id)a3 context:(id)a4 notificationCenter:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009C368;
  v16[3] = &unk_1001A6358;
  v20 = a5;
  v21 = a6;
  v17 = v11;
  v18 = self;
  v19 = v10;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v15 = v11;
  [v12 requestAuthorizationWithOptions:66 completionHandler:v16];
}

- (void)_postNotificationRequest:(id)a3 context:(id)a4 notificationCenter:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009C574;
  v15[3] = &unk_1001A6380;
  v16 = a4;
  v17 = a5;
  v18 = v10;
  v19 = a6;
  v11 = v10;
  v12 = v17;
  v13 = v19;
  v14 = v16;
  [(STUserNotificationManager *)self _shouldPostNotificationRequest:v11 notificationCenter:v12 withCompletionHandler:v15];
}

- (void)_shouldPostNotificationRequest:(id)a3 notificationCenter:(id)a4 withCompletionHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009C880;
  v9[3] = &unk_1001A63A8;
  v10 = a3;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  [a4 getDeliveredNotificationsWithCompletionHandler:v9];
}

- (void)removeNotificationNotificationReceived:(id)a3
{
  v5 = a3;
  if (+[NSThread isMainThread])
  {
    v6 = [v5 object];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009CA98;
    v7[3] = &unk_1001A4048;
    v8 = v5;
    [(STUserNotificationManager *)self removeNotificationForContext:v6 completionHandler:v7];
  }

  else
  {
    [(STUserNotificationManager *)self performSelectorOnMainThread:a2 withObject:v5 waitUntilDone:0];
  }
}

- (void)removeNotificationForContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STUserNotificationManager *)self notificationCenterByBundleIdentifier];
  v9 = [v7 notificationBundleIdentifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v7 identifier];

  v13 = v11;
  v12 = [NSArray arrayWithObjects:&v13 count:1];
  [v10 removeDeliveredNotificationsWithIdentifiers:v12];

  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 notification];
  v10 = [v9 request];

  v11 = [v10 content];
  v12 = [v11 categoryIdentifier];

  v13 = [v8 actionIdentifier];

  v14 = +[STLog userNotifications];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = v12;
    v38 = 2114;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received notification response category: %{public}@ action: %{public}@", buf, 0x16u);
  }

  if ([v12 isEqualToString:STNotificationCategoryAskForTime])
  {
    v15 = [v10 identifier];
    v16 = [v13 isEqualToString:STNotificationActionIdentifierApproveFifteen];
    v17 = STNotificationActionIdentifierApproveHour;
    if ((v16 & 1) != 0 || ([v13 isEqualToString:STNotificationActionIdentifierApproveHour] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", STNotificationActionIdentifierApproveDay))
    {
      if ([v13 isEqualToString:v17])
      {
        v18 = &off_1001B23C8;
      }

      else
      {
        v25 = [v13 isEqualToString:STNotificationActionIdentifierApproveDay];
        v18 = &off_1001B23B0;
        if (v25)
        {
          v18 = &off_1001B23E0;
        }
      }

      v34[0] = STUserNotificationAskForTimeKeyRequestIdentifier;
      v34[1] = STUserNotificationAskForTimeKeyTimeApproved;
      v35[0] = v15;
      v35[1] = v18;
      v24 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
      v26 = +[STLog userNotifications];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v15;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Received approval for ask for time identifier %{public}@", buf, 0xCu);
      }

      v27 = +[NSNotificationCenter defaultCenter];
      v28 = v27;
      v29 = &STUserNotificationAskForTimeResponseReceivedApprove;
    }

    else
    {
      if (![v13 isEqualToString:STNotificationActionIdentifierDontApprove])
      {
        v24 = +[STLog userNotifications];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100121460(v13, v24);
        }

        goto LABEL_26;
      }

      v32 = STUserNotificationAskForTimeKeyRequestIdentifier;
      v33 = v15;
      v24 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v31 = +[STLog userNotifications];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v15;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received rejection of ask for time identifier %{public}@", buf, 0xCu);
      }

      v27 = +[NSNotificationCenter defaultCenter];
      v28 = v27;
      v29 = &STUserNotificationAskForTimeResponseReceivedDontApprove;
    }

    [v27 postNotificationName:*v29 object:self userInfo:v24];

LABEL_26:
LABEL_32:

    goto LABEL_33;
  }

  if ([v12 isEqualToString:STNotificationCategoryManageContacts])
  {
    if ([v13 isEqualToString:STNotificationActionIdentifierApproveManagement])
    {
      v19 = +[STLog userNotifications];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received approval for ask to manage contacts", buf, 2u);
      }

      v20 = +[NSNotificationCenter defaultCenter];
      v15 = v20;
      v21 = &STUserNotificationAskToManageContactsResponseReceivedApprove;
    }

    else
    {
      if (![v13 isEqualToString:STNotificationActionIdentifierDontApproveManagement])
      {
        goto LABEL_33;
      }

      v30 = +[STLog userNotifications];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Received rejection for ask to manage contacts", buf, 2u);
      }

      v20 = +[NSNotificationCenter defaultCenter];
      v15 = v20;
      v21 = &STUserNotificationAskToManageContactsResponseReceivedDontApprove;
    }

    [v20 postNotificationName:*v21 object:self userInfo:0];
    goto LABEL_32;
  }

  if ([v12 isEqualToString:STUserNotificationWeeklyReportCategoryIdentifier] && ((objc_msgSend(v13, "isEqualToString:", STUserNotificationWeeklyReportPrimaryActionIdentifier) & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"RMUserNotificationWeeklyReportPrimaryActionIdentifier")))
  {
    v22 = +[STLog userNotifications];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received primary action for weekly notification %{public}@", buf, 0xCu);
    }

    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v23 = objc_opt_new();
    [v23 setScheme:STPrefsURLComponentScheme];
    [v23 setPath:STPrefsURLComponentPathScreenTimeSummary];
    [v23 setFragment:STPrefsURLComponentFragmentLastWeek];
    v24 = [v23 URL];

    [v15 openSensitiveURL:v24 withOptions:0];
    goto LABEL_26;
  }

LABEL_33:
  if (v7)
  {
    v7[2](v7);
  }
}

@end