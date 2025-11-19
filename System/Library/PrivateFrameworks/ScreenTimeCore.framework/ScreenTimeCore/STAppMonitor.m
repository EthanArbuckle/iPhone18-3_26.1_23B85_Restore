@interface STAppMonitor
- (STAppMonitor)initWithPersistenceController:(id)a3;
- (void)_didDetectNewAppUsage:(id)a3;
- (void)_scheduleAppDiscoveryBackgroundActivity;
- (void)_updateLocalAppsWithBackgroundActivity:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)resume;
@end

@implementation STAppMonitor

- (STAppMonitor)initWithPersistenceController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = STAppMonitor;
  v6 = [(STAppMonitor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceController, a3);
    v8 = objc_opt_new();
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v8;

    [(NSOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_operationQueue setName:@"com.apple.ScreenTimeAgent.app-monitor"];
    [(NSOperationQueue *)v7->_operationQueue setQualityOfService:17];
    [(NSOperationQueue *)v7->_operationQueue setSuspended:0];
    v7->_operationInProgress = 0;
    v10 = objc_opt_new();
    cachedAppBundleIdentifiers = v7->_cachedAppBundleIdentifiers;
    v7->_cachedAppBundleIdentifiers = v10;

    v7->_running = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = STAppMonitor;
  [(STAppMonitor *)&v4 dealloc];
}

- (void)resume
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 addObserver:self];

  [(STAppMonitor *)self _updateLocalAppsWithBackgroundActivity:0 completionHandler:0];

  [(STAppMonitor *)self setRunning:1];
}

- (void)_didDetectNewAppUsage:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:@"AppMonitorUsageUpdatedBundleIdentifiers"];

  if (v7)
  {
    v5 = [(STAppMonitor *)self cachedAppBundleIdentifiers];
    v6 = [NSMutableSet setWithArray:v7];
    [v6 minusSet:v5];
    if ([v6 count])
    {
      [(STAppMonitor *)self _scheduleAppDiscoveryBackgroundActivity];
      [v5 unionSet:v6];
    }
  }

  else
  {
    [(STAppMonitor *)self _scheduleAppDiscoveryBackgroundActivity];
  }
}

- (void)_scheduleAppDiscoveryBackgroundActivity
{
  v3 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.ScreenTimeAgent.app-discovery"];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_DISK_INTENSIVE, 1);
  [v3 _setAdditionalXPCActivityProperties:v4];
  v5 = +[STLog appMonitor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling app discovery activity", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009510;
  v7[3] = &unk_1001A2C90;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [v6 scheduleWithBlock:v7];
}

- (void)_updateLocalAppsWithBackgroundActivity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_operationQueue;
  objc_sync_enter(v8);
  if (self->_operationInProgress)
  {
    v9 = +[STLog appMonitor];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100111110(v9);
    }

    objc_sync_exit(v8);
    v10 = v8;
  }

  else
  {
    self->_operationInProgress = 1;
    objc_sync_exit(v8);

    v11 = [[STPersistLocalAppsOperation alloc] initWithPersistenceController:self->_persistenceController installedApps:0 backgroundActivity:v6];
    [(NSOperationQueue *)v8 addOperation:v11];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000096A4;
    v12[3] = &unk_1001A2CB8;
    v12[4] = self;
    v13 = v11;
    v14 = v7;
    v10 = v11;
    [(NSOperationQueue *)v8 addOperationWithBlock:v12];
  }
}

@end