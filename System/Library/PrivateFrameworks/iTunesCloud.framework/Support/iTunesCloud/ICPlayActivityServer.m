@interface ICPlayActivityServer
+ (id)PlayActivityStorageDirectoryPath;
+ (id)sharedInstance;
- (BOOL)hasPendingPlayEvents;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICPlayActivityServer)init;
- (id)_init;
- (id)_supportedInterfaceForXPCConnection;
- (void)_dispatchCompletionHandler:(id)a3 withError:(id)a4;
- (void)_handleFlushRequestNotification:(id)a3;
- (void)_scheduleNextPlayActivityFlushOperationReplacingExisting:(BOOL)a3;
- (void)flushPendingPlayActivityEventsWithCompletionHandler:(id)a3;
- (void)insertPlayActivityEvents:(id)a3 shouldFlush:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation ICPlayActivityServer

- (void)_scheduleNextPlayActivityFlushOperationReplacingExisting:(BOOL)a3
{
  v5 = +[ICBGTaskScheduler sharedTaskScheduler];
  if ([(ICPlayActivityServer *)self hasPendingPlayEvents])
  {
    if (a3 || ![v5 hasScheduledTask:@"com.apple.itunescloud.ICPlayActivityServer.flush_task"])
    {
      v8 = [ICStoreRequestContext alloc];
      v9 = +[ICUserIdentity activeAccount];
      v6 = [v8 initWithIdentity:v9];

      v10 = +[ICURLBagProvider sharedBagProvider];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000D9684;
      v11[3] = &unk_1001DFB88;
      v11[4] = self;
      v12 = v5;
      [v10 getBagForRequestContext:v6 withCompletionHandler:v11];
    }

    else
    {
      v6 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Not scheduling a flush because one is already scheduled", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ No pending events - canceling any previously scheduled task", buf, 0xCu);
    }

    [v5 cancelTask:@"com.apple.itunescloud.ICPlayActivityServer.flush_task"];
  }
}

- (BOOL)hasPendingPlayEvents
{
  v2 = self->_table;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1000D9920;
  v10[4] = sub_1000D9930;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D9938;
  v6[3] = &unk_1001DD640;
  v3 = v2;
  v7 = v3;
  v8 = &v12;
  v9 = v10;
  [(ICPlayActivityTable *)v3 performTransactionWithBlock:v6];
  v4 = *(v13 + 24);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  return v4;
}

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213D28 != -1)
  {
    dispatch_once(&qword_100213D28, &stru_1001DD618);
  }

  v3 = qword_100213D20;

  return v3;
}

- (void)_dispatchCompletionHandler:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D9B74;
    v9[3] = &unk_1001DF5A0;
    v11 = v6;
    v10 = v7;
    dispatch_async(queue, v9);
  }
}

- (void)_handleFlushRequestNotification:(id)a3
{
  if (MSVDeviceOSIsInternalInstall())
  {

    [(ICPlayActivityServer *)self flushPendingPlayActivityEventsWithCompletionHandler:0];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 processIdentifier];
  v7 = sub_1000D1624(v5, @"com.apple.itunesstored.private");
  if (v7)
  {
    v8 = [(ICPlayActivityServer *)self _supportedInterfaceForXPCConnection];
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D9E98;
    v15[3] = &unk_1001DF780;
    v15[4] = self;
    v16 = v6;
    [v5 setInterruptionHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D9F5C;
    v13[3] = &unk_1001DF780;
    v13[4] = self;
    v14 = v6;
    [v5 setInvalidationHandler:v13];
    [v5 resume];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v18 = self;
      v19 = 1024;
      v20 = v6;
      v21 = 2080;
      v22 = "com.apple.itunescloudd.playactivity";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ pid %i is not entitled to connect to %s", buf, 0x1Cu);
    }
  }

  v10 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "will not";
    *buf = 138543874;
    v18 = self;
    if (v7)
    {
      v11 = "will";
    }

    v19 = 1024;
    v20 = v6;
    v21 = 2080;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i %s be accepted", buf, 0x1Cu);
  }

  return v7;
}

- (void)insertPlayActivityEvents:(id)a3 shouldFlush:(BOOL)a4 withCompletionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ Recording play activity events: %@", buf, 0x16u);
  }

  if ([v8 count])
  {
    v11 = self->_table;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = sub_1000D9920;
    v31 = sub_1000D9930;
    v32 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000DA348;
    v22 = &unk_1001DD5F8;
    v12 = v8;
    v23 = v12;
    v25 = v27;
    v13 = v11;
    v24 = v13;
    v26 = buf;
    [(ICPlayActivityTable *)v13 performTransactionWithBlock:&v19];
    if (MSVDeviceOSIsInternalInstall() && CFPreferencesGetAppBooleanValue(@"ShouldDebugLogRecordedEvents", @"com.apple.PlayActivityFeed", 0))
    {
      debugLogOperationQueue = self->_debugLogOperationQueue;
      if (!debugLogOperationQueue)
      {
        v15 = objc_alloc_init(NSOperationQueue);
        v16 = self->_debugLogOperationQueue;
        self->_debugLogOperationQueue = v15;

        [(NSOperationQueue *)self->_debugLogOperationQueue setMaxConcurrentOperationCount:1, v19, v20, v21, v22, v23];
        [(NSOperationQueue *)self->_debugLogOperationQueue setName:@"com.apple.iTunesCloud.ICPlayActivityController.debugLogOperationQueue"];
        [(NSOperationQueue *)self->_debugLogOperationQueue setQualityOfService:17];
        debugLogOperationQueue = self->_debugLogOperationQueue;
      }

      v17 = debugLogOperationQueue;
      v18 = objc_alloc_init(ICPlayActivityDebugLogOperation);
      [(ICPlayActivityDebugLogOperation *)v18 setPlayActivityEvents:v12];
      [(NSOperationQueue *)v17 addOperation:v18];
    }

    if (v6)
    {
      [(ICPlayActivityServer *)self flushPendingPlayActivityEventsWithCompletionHandler:v9];
    }

    else
    {
      [(ICPlayActivityServer *)self _scheduleNextPlayActivityFlushOperationReplacingExisting:0];
      if (v9)
      {
        v9[2](v9, 0);
      }
    }

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(ICPlayActivityServer *)self _dispatchCompletionHandler:v9 withError:0];
  }
}

- (void)flushPendingPlayActivityEventsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[ICFlushPlayActivityEventsOperation alloc] initWithPlayActivityTable:self->_table];
  objc_initWeak(&location, v5);
  v6 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ starting operation to flush play activity events", buf, 0xCu);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000DA6A4;
  v11 = &unk_1001DD5D0;
  objc_copyWeak(&v14, &location);
  v12 = self;
  v7 = v4;
  v13 = v7;
  [(ICFlushPlayActivityEventsOperation *)v5 setCompletionBlock:&v8];
  [(NSOperationQueue *)self->_flushOperationQueue addOperation:v5, v8, v9, v10, v11, v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)stop
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping ....", &v4, 0xCu);
  }

  [(NSXPCListener *)self->_listener invalidate];
}

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting ....", buf, 0xCu);
  }

  [(NSXPCListener *)self->_listener resume];
  v4 = +[ICBGTaskScheduler sharedTaskScheduler];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DAA60;
  v5[3] = &unk_1001DD5A8;
  v5[4] = self;
  [v4 registerForTask:@"com.apple.itunescloud.ICPlayActivityServer.flush_task" handler:v5];
  [(ICPlayActivityServer *)self _scheduleNextPlayActivityFlushOperationReplacingExisting:1];
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = ICPlayActivityServer;
  v2 = [(ICPlayActivityServer *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloudd.playactivityserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(NSOperationQueue);
    flushOperationQueue = v2->_flushOperationQueue;
    v2->_flushOperationQueue = v5;

    [(NSOperationQueue *)v2->_flushOperationQueue setName:@"com.apple.itunescloudd.CloudPlayActivityServer.flushOperationQueue"];
    [(NSOperationQueue *)v2->_flushOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_flushOperationQueue setQualityOfService:17];
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.itunescloudd.playactivity"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v9 = objc_alloc_init(ICPlayActivityTable);
    table = v2->_table;
    v2->_table = v9;

    v11 = +[NSDistributedNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_handleFlushRequestNotification:" name:@"com.apple.itunescloud.ICPlayActivityFlushInternalTestRequestNotification" object:0];
  }

  return v2;
}

- (ICPlayActivityServer)init
{
  [NSException raise:NSInvalidArgumentException format:@"-init is not supported, use +sharedInstance"];

  return 0;
}

+ (id)PlayActivityStorageDirectoryPath
{
  v2 = [[NSMutableArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"com.apple.iTunesCloud", @"play_activity", 0}];
  v3 = [NSString pathWithComponents:v2];

  return v3;
}

+ (id)sharedInstance
{
  if (qword_100213D10 != -1)
  {
    dispatch_once(&qword_100213D10, &stru_1001DD580);
  }

  v3 = qword_100213D18;

  return v3;
}

@end