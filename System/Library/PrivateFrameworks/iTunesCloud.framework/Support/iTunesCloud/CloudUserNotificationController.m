@interface CloudUserNotificationController
- (CloudBadgeControllerProtocol)badgeControllerProtocol;
- (CloudUserNotificationController)init;
- (void)badgeAppWithRequest:(id)a3;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CloudUserNotificationController

- (CloudBadgeControllerProtocol)badgeControllerProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeControllerProtocol);

  return WeakRetained;
}

- (void)badgeAppWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 enabled];
  v6 = [(CloudUserNotificationController *)self badgeControllerProtocol];
  v7 = [v4 actionMetricsEvent];
  v8 = [(CloudUserNotificationController *)self _createBag];
  v9 = [(CloudUserNotificationController *)self center];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100059CE0;
  v14[3] = &unk_1001DE0A8;
  v15 = v4;
  v16 = v8;
  v17 = v7;
  v18 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v4;
  [v9 setBadgeCount:v5 withCompletionHandler:v14];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([AMSUserNotification shouldHandleNotificationResponse:v7])
  {
    v9 = [(CloudUserNotificationController *)self _createBag];
    v10 = [AMSUserNotification handleNotificationResponse:v7 bag:v9];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005A0BC;
    v11[3] = &unk_1001DE1C8;
    v12 = v8;
    [v10 addFinishBlock:v11];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User notification did change settings", v14, 2u);
  }

  v15 = ICUserNotificationSettingsAreAuthorizedUserInfoKey;
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 authorizationStatus] == 2);
  v16 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v11 = +[NSDistributedNotificationCenter defaultCenter];
  [v11 postNotificationName:ICUserNotificationSettingsDidChangeNotification object:0 userInfo:v10];

  v12 = [(CloudUserNotificationController *)self _createBag];
  v13 = [AMSUserNotification notificationCenter:v6 didChangeSettings:v7 bag:v12];
}

- (CloudUserNotificationController)init
{
  v11.receiver = self;
  v11.super_class = CloudUserNotificationController;
  v2 = [(CloudUserNotificationController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloudd.usernotifications", 0);
    centerQueue = v2->_centerQueue;
    v2->_centerQueue = v3;

    v5 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Music" queue:v2->_centerQueue];
    center = v2->_center;
    v2->_center = v5;

    [(UNUserNotificationCenter *)v2->_center setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setPrivateDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setWantsNotificationResponsesDelivered];
    v7 = [UNNotificationCategory categoryWithIdentifier:@"music-notification-default" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
    v8 = v2->_center;
    v9 = [NSSet setWithObject:v7];
    [(UNUserNotificationCenter *)v8 setNotificationCategories:v9];
  }

  return v2;
}

@end