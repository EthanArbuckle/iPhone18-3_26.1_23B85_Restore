@interface _VVMFLogInterceptor
+ (id)sharedInstance;
+ (void)flushLog:(BOOL)log forConnection:(id)connection;
+ (void)logConnection:(id)connection type:(int64_t)type data:(id)data;
- (_VVMFLogInterceptor)init;
- (void)configureLoggingClass;
- (void)dealloc;
- (void)handleMFReloadNetworkLoggingNotification:(id)notification;
@end

@implementation _VVMFLogInterceptor

+ (id)sharedInstance
{
  if (qword_10010D810 != -1)
  {
    sub_10009C5B8();
  }

  v3 = qword_10010D808;

  return v3;
}

- (_VVMFLogInterceptor)init
{
  v18.receiver = self;
  v18.super_class = _VVMFLogInterceptor;
  v2 = [(_VVMFLogInterceptor *)&v18 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v3 bundleIdentifier];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v6];
    v8 = NSStringFromSelector("serialQueue");
    v9 = [NSString stringWithFormat:@"%@.%@", v7, v8];

    v10 = dispatch_queue_create([v9 UTF8String], 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v10;

    v12 = objc_opt_new();
    all = v2->_all;
    v2->_all = v12;

    [(_VVMFLogInterceptor *)v2 configureLoggingClass];
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"handleMFReloadNetworkLoggingNotification:" name:MFReloadNetworkLoggingNotification object:0];

    v15 = sub_10002EE18();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I _VVMFLogInterceptor created", buf, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  serialQueue = self->_serialQueue;
  self->_serialQueue = 0;

  v5 = sub_10002EE18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I _VVMFLogInterceptor destroyed", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = _VVMFLogInterceptor;
  [(_VVMFLogInterceptor *)&v6 dealloc];
}

- (void)configureLoggingClass
{
  v3 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [MFConnection setLogClasses:v2];

  [MFConnection setLogAllSocketActivity:1];
}

+ (void)flushLog:(BOOL)log forConnection:(id)connection
{
  connectionCopy = connection;
  sharedInstance = [self sharedInstance];
  rumbaID = [connectionCopy rumbaID];
  serialQueue = [sharedInstance serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F130;
  block[3] = &unk_1000EDFC8;
  v13 = rumbaID;
  v14 = sharedInstance;
  logCopy = log;
  v10 = sharedInstance;
  v11 = rumbaID;
  dispatch_sync(serialQueue, block);
}

+ (void)logConnection:(id)connection type:(int64_t)type data:(id)data
{
  connectionCopy = connection;
  dataCopy = data;
  sharedInstance = [self sharedInstance];
  rumbaID = [connectionCopy rumbaID];
  mambaID = [connectionCopy mambaID];
  socket_rumbaID = [connectionCopy socket_rumbaID];
  serialQueue = [sharedInstance serialQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002F700;
  v19[3] = &unk_1000EDFF0;
  v20 = rumbaID;
  v21 = sharedInstance;
  v24 = mambaID;
  typeCopy = type;
  v22 = socket_rumbaID;
  v23 = dataCopy;
  v15 = dataCopy;
  v16 = socket_rumbaID;
  v17 = sharedInstance;
  v18 = rumbaID;
  dispatch_sync(serialQueue, v19);
}

- (void)handleMFReloadNetworkLoggingNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_10002EE18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = notificationCopy;
    v6 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %@ is handling <%@>", &v7, 0x16u);
  }

  [(_VVMFLogInterceptor *)self configureLoggingClass];
}

@end