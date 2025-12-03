@interface INMercuryPushNotificationHandler
- (INMercuryPushNotificationHandler)init;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation INMercuryPushNotificationHandler

- (INMercuryPushNotificationHandler)init
{
  v11.receiver = self;
  v11.super_class = INMercuryPushNotificationHandler;
  v2 = [(INMercuryPushNotificationHandler *)&v11 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.iCloudSettingsNotification"];
    center = v2->_center;
    v2->_center = v3;

    v5 = [UNNotificationCategory categoryWithIdentifier:@"asd-notification-default" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
    v6 = v2->_center;
    v12 = v5;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    v8 = [NSSet setWithArray:v7];
    [(UNUserNotificationCenter *)v6 setNotificationCategories:v8];

    [(UNUserNotificationCenter *)v2->_center setWantsNotificationResponsesDelivered];
    [(UNUserNotificationCenter *)v2->_center setDelegate:v2];
    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100036378(v9);
    }
  }

  return v2;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000363FC(responseCopy, v8);
  }

  if ([AMSUserNotification shouldHandleNotificationResponse:responseCopy])
  {
    v9 = +[AMSBag quotaBag];
    v10 = [AMSUserNotification handleNotificationResponse:responseCopy bag:v9];

    handlerCopy[2](handlerCopy);
  }
}

@end