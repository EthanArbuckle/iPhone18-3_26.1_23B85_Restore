@interface STToolServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (STToolServerDelegate)initWithPersistenceController:(id)controller screenTimeOrganizationController:(id)organizationController notificationManager:(id)manager;
- (void)getAppMonitorStatus:(id)status;
- (void)getMirroringMonitorStatus:(id)status;
- (void)killScreenTimeAgent:(id)agent completionHandler:(id)handler;
- (void)performCloudSync:(id)sync;
- (void)postNotificationWithContext:(id)context completionHandler:(id)handler;
- (void)postWeeklyReportNotificationWithCompletionHandler:(id)handler;
- (void)removeNotificationWithContext:(id)context completionHandler:(id)handler;
- (void)rollupUsageData:(id)data;
- (void)scheduleAppMonitorAppDiscovery;
- (void)setInstalledApps:(id)apps completion:(id)completion;
@end

@implementation STToolServerDelegate

- (STToolServerDelegate)initWithPersistenceController:(id)controller screenTimeOrganizationController:(id)organizationController notificationManager:(id)manager
{
  controllerCopy = controller;
  organizationControllerCopy = organizationController;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = STToolServerDelegate;
  v12 = [(STToolServerDelegate *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistenceController, controller);
    objc_storeStrong(&v13->_screenTimeOrganizationController, organizationController);
    objc_storeStrong(&v13->_notificationManager, manager);
    v14 = objc_opt_new();
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v14;

    [(NSOperationQueue *)v13->_operationQueue setName:@"com.apple.ScreenTimeAgent.cli"];
  }

  return v13;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = STEntitlementScreenTimePrivate;
  v7 = [connectionCopy valueForEntitlement:STEntitlementScreenTimePrivate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STToolXPCInterface];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    v10 = +[STLog tool];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001111F8(connectionCopy, v6, v10);
    }

    v9 = 0;
  }

  return v9;
}

- (void)rollupUsageData:(id)data
{
  dataCopy = data;
  screenTimeOrganizationController = [(STToolServerDelegate *)self screenTimeOrganizationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090900;
  v7[3] = &unk_1001A3978;
  v8 = dataCopy;
  v6 = dataCopy;
  [screenTimeOrganizationController rollupUsageDataWithCompletionHandler:v7];
}

- (void)setInstalledApps:(id)apps completion:(id)completion
{
  appsCopy = apps;
  completionCopy = completion;
  v8 = [STPersistLocalAppsOperation alloc];
  persistenceController = [(STToolServerDelegate *)self persistenceController];
  v10 = [(STPersistLocalAppsOperation *)v8 initWithPersistenceController:persistenceController installedApps:appsCopy];

  objc_initWeak(&location, v10);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100090B14;
  v13[3] = &unk_1001A5FA0;
  v11 = completionCopy;
  v14 = v11;
  objc_copyWeak(&v15, &location);
  [(STPersistLocalAppsOperation *)v10 setCompletionBlock:v13];
  operationQueue = [(STToolServerDelegate *)self operationQueue];
  [operationQueue addOperation:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)postNotificationWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  notificationManager = [(STToolServerDelegate *)self notificationManager];
  [notificationManager postNotificationForContext:contextCopy completionHandler:handlerCopy];
}

- (void)removeNotificationWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  notificationManager = [(STToolServerDelegate *)self notificationManager];
  [notificationManager removeNotificationForContext:contextCopy completionHandler:handlerCopy];
}

- (void)postWeeklyReportNotificationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  screenTimeOrganizationController = [(STToolServerDelegate *)self screenTimeOrganizationController];
  [screenTimeOrganizationController performWeeklyRollupWithCompletionHandler:handlerCopy];
}

- (void)getAppMonitorStatus:(id)status
{
  statusCopy = status;
  screenTimeOrganizationController = [(STToolServerDelegate *)self screenTimeOrganizationController];
  appMonitorStatus = [screenTimeOrganizationController appMonitorStatus];
  (*(status + 2))(statusCopy, appMonitorStatus);
}

- (void)scheduleAppMonitorAppDiscovery
{
  screenTimeOrganizationController = [(STToolServerDelegate *)self screenTimeOrganizationController];
  [screenTimeOrganizationController scheduleAppMonitorAppDiscovery];
}

- (void)getMirroringMonitorStatus:(id)status
{
  statusCopy = status;
  screenTimeOrganizationController = [(STToolServerDelegate *)self screenTimeOrganizationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090E78;
  v7[3] = &unk_1001A5FC8;
  v8 = statusCopy;
  v6 = statusCopy;
  [screenTimeOrganizationController fetchMirroringMonitorStatusWithCompletionHandler:v7];
}

- (void)performCloudSync:(id)sync
{
  syncCopy = sync;
  screenTimeOrganizationController = [(STToolServerDelegate *)self screenTimeOrganizationController];
  [screenTimeOrganizationController performCloudSync:syncCopy];
}

- (void)killScreenTimeAgent:(id)agent completionHandler:(id)handler
{
  agentCopy = agent;
  v5 = +[STLog tool];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v7 = agentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Killing ScreenTimeAgent with reason: %{public}@", buf, 0xCu);
  }

  [NSException raise:@"Incoming request to kill ScreenTimeAgent" format:@"Incoming request to kill ScreenTimeAgent with reason: %@", agentCopy];
}

@end