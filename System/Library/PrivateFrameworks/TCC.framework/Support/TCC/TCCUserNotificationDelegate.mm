@interface TCCUserNotificationDelegate
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation TCCUserNotificationDelegate

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"TCCServiceName"];

  v13 = +[TCCDPlatform currentPlatform];
  v14 = [v13 serviceByName:v12];
  notificationActionURL = [v14 notificationActionURL];

  v16 = tcc_access_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = 138543618;
    v19 = v12;
    v20 = 2114;
    v21 = responseCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "user responded to notification for %{public}@ with %{public}@", &v18, 0x16u);
  }

  actionIdentifier = [responseCopy actionIdentifier];
  [actionIdentifier isEqual:@"BUTTON_ACTION_ID"];

  handlerCopy[2](handlerCopy);
}

@end