@interface DDMain
+ (id)sharedInstance;
- (BOOL)isValidMessage:(id)message;
- (DDMain)init;
- (void)addConnection:(id)connection;
- (void)availableDestinationsWithCompletion:(id)completion;
- (void)removeConnection:(id)connection;
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

- (void)addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(DDMain *)self connections];
  objc_sync_enter(connections);
  connections2 = [(DDMain *)self connections];
  [connections2 addObject:connectionCopy];

  objc_sync_exit(connections);
  pendingTasks = [(DDMain *)self pendingTasks];
  objc_sync_enter(pendingTasks);
  pendingTasks2 = [(DDMain *)self pendingTasks];
  v9 = [pendingTasks2 count];

  if (v9)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      pendingTasks3 = [(DDMain *)self pendingTasks];
      *buf = 134217984;
      v23 = [pendingTasks3 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DDMain] Executing pending tasks, count: %lu", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    pendingTasks4 = [(DDMain *)self pendingTasks];
    v13 = [pendingTasks4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(pendingTasks4);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [pendingTasks4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    pendingTasks5 = [(DDMain *)self pendingTasks];
    [pendingTasks5 removeAllObjects];
  }

  objc_sync_exit(pendingTasks);
}

- (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(DDMain *)self connections];
  objc_sync_enter(connections);
  connections2 = [(DDMain *)self connections];
  [connections2 removeObject:connectionCopy];

  localReceiver = [(DDMain *)self localReceiver];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(DDMain *)self setLocalReceiver:0];
  }

  objc_sync_exit(connections);
}

- (void)availableDestinationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  pairedService = [(DDMain *)self pairedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005660;
  v9[3] = &unk_10001C8A0;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  [pairedService availableDestinationsWithCompletion:v9];
}

- (BOOL)isValidMessage:(id)message
{
  messageCopy = message;
  v4 = [NSSet setWithObjects:@"wakeDevice", @"idleDevice", @"endDevice", @"deviceState", @"requestDeviceState", @"requestAssessmentMode", @"requestSuiteFinish", 0];
  v5 = [v4 containsObject:messageCopy];

  return v5;
}

@end