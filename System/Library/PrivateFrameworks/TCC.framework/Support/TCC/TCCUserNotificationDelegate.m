@interface TCCUserNotificationDelegate
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation TCCUserNotificationDelegate

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [v6 notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v11 = [v10 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"TCCServiceName"];

  v13 = +[TCCDPlatform currentPlatform];
  v14 = [v13 serviceByName:v12];
  v15 = [v14 notificationActionURL];

  v16 = tcc_access_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = 138543618;
    v19 = v12;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "user responded to notification for %{public}@ with %{public}@", &v18, 0x16u);
  }

  v17 = [v6 actionIdentifier];
  [v17 isEqual:@"BUTTON_ACTION_ID"];

  v7[2](v7);
}

@end