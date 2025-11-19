@interface DDMain
+ (id)sharedInstance;
- (BOOL)isValidMessage:(id)a3;
- (DDMain)init;
- (void)addConnection:(id)a3;
- (void)availableDestinationsWithCompletion:(id)a3;
- (void)removeConnection:(id)a3;
@end

@implementation DDMain

- (DDMain)init
{
  v10.receiver = self;
  v10.super_class = DDMain;
  v2 = [(DDMain *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = objc_opt_new();
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = v5;

    v7 = [[DDIDSService alloc] initWithServiceType:0];
    pairedService = v2->_pairedService;
    v2->_pairedService = v7;

    [(DDIDSService *)v2->_pairedService setReceiver:v2];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000263C8 != -1)
  {
    sub_10000DC84();
  }

  v3 = qword_1000263C0;

  return v3;
}

- (void)addConnection:(id)a3
{
  v4 = a3;
  v5 = [(DDMain *)self connections];
  objc_sync_enter(v5);
  v6 = [(DDMain *)self connections];
  [v6 addObject:v4];

  objc_sync_exit(v5);
  v7 = [(DDMain *)self pendingTasks];
  objc_sync_enter(v7);
  v8 = [(DDMain *)self pendingTasks];
  v9 = [v8 count];

  if (v9)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(DDMain *)self pendingTasks];
      *buf = 134217984;
      v23 = [v11 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DDMain] Executing pending tasks, count: %lu", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [(DDMain *)self pendingTasks];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    v16 = [(DDMain *)self pendingTasks];
    [v16 removeAllObjects];
  }

  objc_sync_exit(v7);
}

- (void)removeConnection:(id)a3
{
  v8 = a3;
  v4 = [(DDMain *)self connections];
  objc_sync_enter(v4);
  v5 = [(DDMain *)self connections];
  [v5 removeObject:v8];

  v6 = [(DDMain *)self localReceiver];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(DDMain *)self setLocalReceiver:0];
  }

  objc_sync_exit(v4);
}

- (void)availableDestinationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(DDMain *)self pairedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005660;
  v9[3] = &unk_10001C8A0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 availableDestinationsWithCompletion:v9];
}

- (BOOL)isValidMessage:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithObjects:@"wakeDevice", @"idleDevice", @"endDevice", @"deviceState", @"requestDeviceState", @"requestAssessmentMode", @"requestSuiteFinish", 0];
  v5 = [v4 containsObject:v3];

  return v5;
}

@end