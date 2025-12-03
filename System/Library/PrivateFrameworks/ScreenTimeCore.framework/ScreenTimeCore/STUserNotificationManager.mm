@interface STUserNotificationManager
- (STUserNotificationManager)init;
- (void)_postNotificationRequest:(id)request context:(id)context notificationCenter:(id)center withCompletionHandler:(id)handler;
- (void)_requestAuthorizationForNotificationRequest:(id)request context:(id)context notificationCenter:(id)center withCompletionHandler:(id)handler;
- (void)_shouldPostNotificationRequest:(id)request notificationCenter:(id)center withCompletionHandler:(id)handler;
- (void)postNotificationForContext:(id)context completionHandler:(id)handler;
- (void)postNotificationNotificationReceived:(id)received;
- (void)removeNotificationForContext:(id)context completionHandler:(id)handler;
- (void)removeNotificationNotificationReceived:(id)received;
- (void)resume;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
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
    allValues = [(NSDictionary *)v2->_notificationCenterByBundleIdentifier allValues];
    v9 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v14 + 1) + 8 * v12) setDelegate:v2];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v2;
}

- (void)resume
{
  notificationCenterByBundleIdentifier = [(STUserNotificationManager *)self notificationCenterByBundleIdentifier];
  allValues = [notificationCenterByBundleIdentifier allValues];
  [allValues makeObjectsPerformSelector:"setWantsNotificationResponsesDelivered"];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"postNotificationNotificationReceived:" name:@"STUserNotificationManagerShouldPostNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"removeNotificationNotificationReceived:" name:@"STUserNotificationManagerShouldRemoveNotification" object:0];
}

- (void)postNotificationNotificationReceived:(id)received
{
  receivedCopy = received;
  if (+[NSThread isMainThread])
  {
    object = [receivedCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = STShareMyLocationUnlockedUserNotificationContext_ptr;
    }

    else
    {
      object2 = [receivedCopy object];
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        v8 = STShareMyLocationLockedUserNotificationContext_ptr;
      }

      else
      {
        object3 = [receivedCopy object];
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();

        if (v12)
        {
          v8 = STLocationServicesUnlockedUserNotificationContext_ptr;
        }

        else
        {
          object4 = [receivedCopy object];
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();

          if ((v14 & 1) == 0)
          {
LABEL_12:
            object5 = [receivedCopy object];
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_10009C000;
            v18[3] = &unk_1001A4048;
            v19 = receivedCopy;
            [(STUserNotificationManager *)self postNotificationForContext:object5 completionHandler:v18];

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

  [(STUserNotificationManager *)self performSelectorOnMainThread:a2 withObject:receivedCopy waitUntilDone:0];
LABEL_13:
}

- (void)postNotificationForContext:(id)context completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009C12C;
  v8[3] = &unk_1001A6330;
  contextCopy = context;
  selfCopy = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = contextCopy;
  [v7 notificationContentWithCompletionBlock:v8];
}

- (void)_requestAuthorizationForNotificationRequest:(id)request context:(id)context notificationCenter:(id)center withCompletionHandler:(id)handler
{
  requestCopy = request;
  contextCopy = context;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009C368;
  v16[3] = &unk_1001A6358;
  centerCopy = center;
  handlerCopy = handler;
  v17 = contextCopy;
  selfCopy = self;
  v19 = requestCopy;
  v12 = centerCopy;
  v13 = requestCopy;
  v14 = handlerCopy;
  v15 = contextCopy;
  [v12 requestAuthorizationWithOptions:66 completionHandler:v16];
}

- (void)_postNotificationRequest:(id)request context:(id)context notificationCenter:(id)center withCompletionHandler:(id)handler
{
  requestCopy = request;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009C574;
  v15[3] = &unk_1001A6380;
  contextCopy = context;
  centerCopy = center;
  v18 = requestCopy;
  handlerCopy = handler;
  v11 = requestCopy;
  v12 = centerCopy;
  v13 = handlerCopy;
  v14 = contextCopy;
  [(STUserNotificationManager *)self _shouldPostNotificationRequest:v11 notificationCenter:v12 withCompletionHandler:v15];
}

- (void)_shouldPostNotificationRequest:(id)request notificationCenter:(id)center withCompletionHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009C880;
  v9[3] = &unk_1001A63A8;
  requestCopy = request;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = requestCopy;
  [center getDeliveredNotificationsWithCompletionHandler:v9];
}

- (void)removeNotificationNotificationReceived:(id)received
{
  receivedCopy = received;
  if (+[NSThread isMainThread])
  {
    object = [receivedCopy object];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009CA98;
    v7[3] = &unk_1001A4048;
    v8 = receivedCopy;
    [(STUserNotificationManager *)self removeNotificationForContext:object completionHandler:v7];
  }

  else
  {
    [(STUserNotificationManager *)self performSelectorOnMainThread:a2 withObject:receivedCopy waitUntilDone:0];
  }
}

- (void)removeNotificationForContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  notificationCenterByBundleIdentifier = [(STUserNotificationManager *)self notificationCenterByBundleIdentifier];
  notificationBundleIdentifier = [contextCopy notificationBundleIdentifier];
  v10 = [notificationCenterByBundleIdentifier objectForKeyedSubscript:notificationBundleIdentifier];

  identifier = [contextCopy identifier];

  v13 = identifier;
  v12 = [NSArray arrayWithObjects:&v13 count:1];
  [v10 removeDeliveredNotificationsWithIdentifiers:v12];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  notification = [responseCopy notification];
  request = [notification request];

  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  actionIdentifier = [responseCopy actionIdentifier];

  v14 = +[STLog userNotifications];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = categoryIdentifier;
    v38 = 2114;
    v39 = actionIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received notification response category: %{public}@ action: %{public}@", buf, 0x16u);
  }

  if ([categoryIdentifier isEqualToString:STNotificationCategoryAskForTime])
  {
    identifier = [request identifier];
    v16 = [actionIdentifier isEqualToString:STNotificationActionIdentifierApproveFifteen];
    v17 = STNotificationActionIdentifierApproveHour;
    if ((v16 & 1) != 0 || ([actionIdentifier isEqualToString:STNotificationActionIdentifierApproveHour] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", STNotificationActionIdentifierApproveDay))
    {
      if ([actionIdentifier isEqualToString:v17])
      {
        v18 = &off_1001B23C8;
      }

      else
      {
        v25 = [actionIdentifier isEqualToString:STNotificationActionIdentifierApproveDay];
        v18 = &off_1001B23B0;
        if (v25)
        {
          v18 = &off_1001B23E0;
        }
      }

      v34[0] = STUserNotificationAskForTimeKeyRequestIdentifier;
      v34[1] = STUserNotificationAskForTimeKeyTimeApproved;
      v35[0] = identifier;
      v35[1] = v18;
      v24 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
      v26 = +[STLog userNotifications];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = identifier;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Received approval for ask for time identifier %{public}@", buf, 0xCu);
      }

      v27 = +[NSNotificationCenter defaultCenter];
      v28 = v27;
      v29 = &STUserNotificationAskForTimeResponseReceivedApprove;
    }

    else
    {
      if (![actionIdentifier isEqualToString:STNotificationActionIdentifierDontApprove])
      {
        v24 = +[STLog userNotifications];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100121460(actionIdentifier, v24);
        }

        goto LABEL_26;
      }

      v32 = STUserNotificationAskForTimeKeyRequestIdentifier;
      v33 = identifier;
      v24 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v31 = +[STLog userNotifications];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = identifier;
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

  if ([categoryIdentifier isEqualToString:STNotificationCategoryManageContacts])
  {
    if ([actionIdentifier isEqualToString:STNotificationActionIdentifierApproveManagement])
    {
      v19 = +[STLog userNotifications];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received approval for ask to manage contacts", buf, 2u);
      }

      v20 = +[NSNotificationCenter defaultCenter];
      identifier = v20;
      v21 = &STUserNotificationAskToManageContactsResponseReceivedApprove;
    }

    else
    {
      if (![actionIdentifier isEqualToString:STNotificationActionIdentifierDontApproveManagement])
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
      identifier = v20;
      v21 = &STUserNotificationAskToManageContactsResponseReceivedDontApprove;
    }

    [v20 postNotificationName:*v21 object:self userInfo:0];
    goto LABEL_32;
  }

  if ([categoryIdentifier isEqualToString:STUserNotificationWeeklyReportCategoryIdentifier] && ((objc_msgSend(actionIdentifier, "isEqualToString:", STUserNotificationWeeklyReportPrimaryActionIdentifier) & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", @"RMUserNotificationWeeklyReportPrimaryActionIdentifier")))
  {
    v22 = +[STLog userNotifications];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = actionIdentifier;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received primary action for weekly notification %{public}@", buf, 0xCu);
    }

    identifier = +[LSApplicationWorkspace defaultWorkspace];
    v23 = objc_opt_new();
    [v23 setScheme:STPrefsURLComponentScheme];
    [v23 setPath:STPrefsURLComponentPathScreenTimeSummary];
    [v23 setFragment:STPrefsURLComponentFragmentLastWeek];
    v24 = [v23 URL];

    [identifier openSensitiveURL:v24 withOptions:0];
    goto LABEL_26;
  }

LABEL_33:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

@end