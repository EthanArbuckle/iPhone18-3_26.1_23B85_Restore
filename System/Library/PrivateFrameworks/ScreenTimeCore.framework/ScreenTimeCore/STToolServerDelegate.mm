@interface STToolServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STToolServerDelegate)initWithPersistenceController:(id)a3 screenTimeOrganizationController:(id)a4 notificationManager:(id)a5;
- (void)getAppMonitorStatus:(id)a3;
- (void)getMirroringMonitorStatus:(id)a3;
- (void)killScreenTimeAgent:(id)a3 completionHandler:(id)a4;
- (void)performCloudSync:(id)a3;
- (void)postNotificationWithContext:(id)a3 completionHandler:(id)a4;
- (void)postWeeklyReportNotificationWithCompletionHandler:(id)a3;
- (void)removeNotificationWithContext:(id)a3 completionHandler:(id)a4;
- (void)rollupUsageData:(id)a3;
- (void)scheduleAppMonitorAppDiscovery;
- (void)setInstalledApps:(id)a3 completion:(id)a4;
@end

@implementation STToolServerDelegate

- (STToolServerDelegate)initWithPersistenceController:(id)a3 screenTimeOrganizationController:(id)a4 notificationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = STToolServerDelegate;
  v12 = [(STToolServerDelegate *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistenceController, a3);
    objc_storeStrong(&v13->_screenTimeOrganizationController, a4);
    objc_storeStrong(&v13->_notificationManager, a5);
    v14 = objc_opt_new();
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v14;

    [(NSOperationQueue *)v13->_operationQueue setName:@"com.apple.ScreenTimeAgent.cli"];
  }

  return v13;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = STEntitlementScreenTimePrivate;
  v7 = [v5 valueForEntitlement:STEntitlementScreenTimePrivate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STToolXPCInterface];
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    [v5 resume];
    v9 = 1;
  }

  else
  {
    v10 = +[STLog tool];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001111F8(v5, v6, v10);
    }

    v9 = 0;
  }

  return v9;
}

- (void)rollupUsageData:(id)a3
{
  v4 = a3;
  v5 = [(STToolServerDelegate *)self screenTimeOrganizationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090900;
  v7[3] = &unk_1001A3978;
  v8 = v4;
  v6 = v4;
  [v5 rollupUsageDataWithCompletionHandler:v7];
}

- (void)setInstalledApps:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [STPersistLocalAppsOperation alloc];
  v9 = [(STToolServerDelegate *)self persistenceController];
  v10 = [(STPersistLocalAppsOperation *)v8 initWithPersistenceController:v9 installedApps:v6];

  objc_initWeak(&location, v10);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100090B14;
  v13[3] = &unk_1001A5FA0;
  v11 = v7;
  v14 = v11;
  objc_copyWeak(&v15, &location);
  [(STPersistLocalAppsOperation *)v10 setCompletionBlock:v13];
  v12 = [(STToolServerDelegate *)self operationQueue];
  [v12 addOperation:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)postNotificationWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STToolServerDelegate *)self notificationManager];
  [v8 postNotificationForContext:v7 completionHandler:v6];
}

- (void)removeNotificationWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STToolServerDelegate *)self notificationManager];
  [v8 removeNotificationForContext:v7 completionHandler:v6];
}

- (void)postWeeklyReportNotificationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STToolServerDelegate *)self screenTimeOrganizationController];
  [v5 performWeeklyRollupWithCompletionHandler:v4];
}

- (void)getAppMonitorStatus:(id)a3
{
  v5 = a3;
  v7 = [(STToolServerDelegate *)self screenTimeOrganizationController];
  v6 = [v7 appMonitorStatus];
  (*(a3 + 2))(v5, v6);
}

- (void)scheduleAppMonitorAppDiscovery
{
  v2 = [(STToolServerDelegate *)self screenTimeOrganizationController];
  [v2 scheduleAppMonitorAppDiscovery];
}

- (void)getMirroringMonitorStatus:(id)a3
{
  v4 = a3;
  v5 = [(STToolServerDelegate *)self screenTimeOrganizationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090E78;
  v7[3] = &unk_1001A5FC8;
  v8 = v4;
  v6 = v4;
  [v5 fetchMirroringMonitorStatusWithCompletionHandler:v7];
}

- (void)performCloudSync:(id)a3
{
  v4 = a3;
  v5 = [(STToolServerDelegate *)self screenTimeOrganizationController];
  [v5 performCloudSync:v4];
}

- (void)killScreenTimeAgent:(id)a3 completionHandler:(id)a4
{
  v4 = a3;
  v5 = +[STLog tool];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Killing ScreenTimeAgent with reason: %{public}@", buf, 0xCu);
  }

  [NSException raise:@"Incoming request to kill ScreenTimeAgent" format:@"Incoming request to kill ScreenTimeAgent with reason: %@", v4];
}

@end