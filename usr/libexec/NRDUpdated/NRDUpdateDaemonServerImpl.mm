@interface NRDUpdateDaemonServerImpl
+ (id)sharedInstance;
- (BOOL)_isBrainRelaunchRequired:(id)required;
- (BOOL)isConnectionEntitled:(id)entitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NRDUpdateDaemonServerImpl)init;
- (void)getNRDUpdateBrainEndpoint:(id)endpoint;
- (void)requestExit:(int)exit reason:(id)reason relaunchError:(id)error;
- (void)runUntilExit;
- (void)updateCompleted:(id)completed;
- (void)updateHelper:(id)helper callback:(id)callback;
@end

@implementation NRDUpdateDaemonServerImpl

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[NRDUpdateDaemonServerImpl sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __43__NRDUpdateDaemonServerImpl_sharedInstance__block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(NRDUpdateDaemonServerImpl);
  v3 = sharedInstance___instance;
  sharedInstance___instance = v2;

  objc_autoreleasePoolPop(v1);
}

- (void)runUntilExit
{
  allowBackgroundActivity = [(NRDUpdateDaemonServerImpl *)self allowBackgroundActivity];
  v4 = objc_autoreleasePoolPush();
  +[NSXPCListener enableTransactions];
  v5 = dispatch_queue_create("com.apple.NRDUpdated.connectionQueue", &_dispatch_queue_attr_concurrent);
  v6 = __connectionQueue;
  __connectionQueue = v5;

  v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.NRDUpdated"];
  v8 = __listener;
  __listener = v7;

  [__listener setDelegate:self];
  [__listener _setQueue:__connectionQueue];
  v9 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download"];
  [v9 setPreregistered:1];
  v10 = [v9 description];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke;
  v27[3] = &unk_100018890;
  v28 = allowBackgroundActivity;
  v27[4] = self;
  v11 = objc_retainBlock(v27);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_309;
  v24[3] = &unk_1000188B8;
  v12 = v10;
  v25 = v12;
  v26 = @"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download";
  [v9 setCheckInHandler:v24];
  if (allowBackgroundActivity)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_310;
    v20[3] = &unk_1000188E0;
    v21 = v12;
    v22 = @"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download";
    v23 = v11;
    [v9 scheduleWithBlock:v20];
  }

  v13 = dispatch_get_global_queue(17, 0);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_312;
  v18 = &unk_100018908;
  v19 = v11;
  v14 = v11;
  dispatch_async(v13, &v15);

  objc_autoreleasePoolPop(v4);
  [(NRDUpdateDaemonServerImpl *)self _run:v15];
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_2;
  v1[3] = &unk_100018890;
  v2 = *(a1 + 40);
  v1[4] = *(a1 + 32);
  if (__listener_block_invoke_onceToken != -1)
  {
    dispatch_once(&__listener_block_invoke_onceToken, v1);
  }
}

id __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_2(uint64_t a1)
{
  v2 = MGCopyAnswer();
  if (v2 != kCFBooleanFalse)
  {
    goto LABEL_3;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *buf = 0u;
  v19 = 0u;
  v17 = 256;
  if (sysctlbyname("kern.bootargs", buf, &v17, 0, 0))
  {
LABEL_3:
    CFRelease(v2);
    v3 = (a1 + 40);
    if (*(a1 + 40))
    {
      goto LABEL_4;
    }

LABEL_18:
    v10 = nrdSharedLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Skipping RecoveryOSUpdateBrain launch on startup because background activity is not allowed.";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v13 = strstr(buf, "msu_nrd_brain_no_launch=1");
  CFRelease(v2);
  v3 = (a1 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    v10 = nrdSharedLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Skipping RecoveryOSUpdateBrain launch on startup due to nvram boot-arg msu_nrd_brain_no_launch=1";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_4:
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"EnableUpdateOnLaunch"];
  if (v5)
  {
    v6 = v5;
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:@"EnableUpdateOnLaunch"];

    if (!v8)
    {
      v9 = nrdSharedLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipping RecoveryOSUpdateBrain launch on startup", buf, 2u);
      }

      v10 = nrdSharedLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v11 = "To enable RecoveryOSUpdateBrain launch on startup set the following for the 'mobile' user: defaults write com.apple.mobile.NRDUpdated EnableUpdateOnLaunch -BOOL YES";
      goto LABEL_20;
    }
  }

  else
  {
  }

  v12 = nrdSharedLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting RecoveryOSUpdateBrain download/launch on startup", buf, 2u);
  }

  [*(a1 + 32) update:&__block_literal_global_308];
LABEL_22:
  if (*v3 == 1)
  {
    v14 = [*(a1 + 32) core];
    [v14 scheduleNRDUpdateBrainReScan:1];

    v15 = [*(a1 + 32) core];
    [v15 scheduleNRDUpdateBrainPeriodicScan];
  }

  return [__listener resume];
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_305(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nrdSharedLogger();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_305_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RecoveryOSUpdateBrain launch completed successfully", v5, 2u);
  }
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_309(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in.", &v8, 0x16u);
  }

  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in complete.", &v8, 0x16u);
  }
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_310(void *a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ fired.", &v10, 0x16u);
  }

  (*(a1[6] + 16))();
  v7 = nrdSharedLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ completed.", &v10, 0x16u);
  }

  v3[2](v3, 1);
}

void __41__NRDUpdateDaemonServerImpl_runUntilExit__block_invoke_312(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Startup task executing", buf, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v3 = nrdSharedLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Startup task execution complete.", v4, 2u);
  }
}

- (NRDUpdateDaemonServerImpl)init
{
  v8.receiver = self;
  v8.super_class = NRDUpdateDaemonServerImpl;
  v2 = [(NRDUpdateDaemonServerImpl *)&v8 init];
  if (v2)
  {
    v3 = [objc_opt_new() initWithDelegate:v2];
    [(NRDUpdateDaemonServerImpl *)v2 setCore:v3];
    v4 = dispatch_queue_create("com.apple.NRDUpdateDServer.update", 0);
    [(NRDUpdateDaemonServerImpl *)v2 setUpdateQueue:v4];

    v5 = dispatch_semaphore_create(0);
    updateSemaphore = v2->_updateSemaphore;
    v2->_updateSemaphore = v5;
  }

  return v2;
}

- (void)updateHelper:(id)helper callback:(id)callback
{
  helperCopy = helper;
  callbackCopy = callback;
  updateQueue = [(NRDUpdateDaemonServerImpl *)self updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__NRDUpdateDaemonServerImpl_updateHelper_callback___block_invoke;
  block[3] = &unk_100018930;
  v12 = helperCopy;
  v13 = callbackCopy;
  block[4] = self;
  v9 = helperCopy;
  v10 = callbackCopy;
  dispatch_async(updateQueue, block);
}

void __51__NRDUpdateDaemonServerImpl_updateHelper_callback___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) needsRelaunchError];
  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) core];
    [v3 setUpdateOptions:v2];

    v4 = [*(a1 + 32) core];
    [v4 performUpdate:0];

    dispatch_semaphore_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) completedWithError];
    (*(v5 + 16))(v5, v6);
  }
}

- (BOOL)_isBrainRelaunchRequired:(id)required
{
  requiredCopy = required;
  if (!requiredCopy)
  {
    return 0;
  }

  v4 = requiredCopy;
  do
  {
    domain = [v4 domain];
    if ([domain isEqualToString:@"NRDUpdateErrorDomain"])
    {
      code = [v4 code];

      if (code == 112)
      {
        v9 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    userInfo = [v4 userInfo];
    v8 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    v4 = v8;
  }

  while (v8);
  v9 = 0;
LABEL_10:

  return v9;
}

- (void)updateCompleted:(id)completed
{
  completedCopy = completed;
  [(NRDUpdateDaemonServerImpl *)self setCompletedWithError:completedCopy];
  v5 = nrdSharedLogger();
  v6 = v5;
  if (completedCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl updateCompleted:];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "update completed successfully", v7, 2u);
  }

  if ([(NRDUpdateDaemonServerImpl *)self _isBrainRelaunchRequired:completedCopy])
  {
    [(NRDUpdateDaemonServerImpl *)self requestExit:0 reason:@"NRD brain has downloaded a new brain (via NSError)" relaunchError:completedCopy];
  }

  dispatch_semaphore_signal(self->_updateSemaphore);
}

- (void)requestExit:(int)exit reason:(id)reason relaunchError:(id)error
{
  reasonCopy = reason;
  errorCopy = error;
  v10 = nrdSharedLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Daemon exit requested for reason: %{public}@", buf, 0xCu);
  }

  if (errorCopy)
  {
    [(NRDUpdateDaemonServerImpl *)self setNeedsRelaunchError:errorCopy];
  }

  updateQueue = [(NRDUpdateDaemonServerImpl *)self updateQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __62__NRDUpdateDaemonServerImpl_requestExit_reason_relaunchError___block_invoke;
  v13[3] = &unk_100018958;
  exitCopy = exit;
  v14 = reasonCopy;
  v12 = reasonCopy;
  dispatch_async(updateQueue, v13);
}

void __62__NRDUpdateDaemonServerImpl_requestExit_reason_relaunchError___block_invoke(uint64_t a1)
{
  sleep(1u);
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5[0] = 67109378;
    v5[1] = v3;
    v6 = 2114;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Exiting with status:%d for reason:%{public}@", v5, 0x12u);
  }

  exit(*(a1 + 40));
}

- (void)getNRDUpdateBrainEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  core = [(NRDUpdateDaemonServerImpl *)self core];

  if (!core)
  {
    v15 = NSDebugDescriptionErrorKey;
    v16 = @"core is not initialized";
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = 604;
LABEL_6:
    v12 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:v11 userInfo:v10];
    endpointCopy[2](endpointCopy, 0, v12);

    goto LABEL_7;
  }

  core2 = [(NRDUpdateDaemonServerImpl *)self core];
  runningBrain = [core2 runningBrain];

  if (!runningBrain)
  {
    v13 = NSDebugDescriptionErrorKey;
    v14 = @"no running brain";
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = 605;
    goto LABEL_6;
  }

  core3 = [(NRDUpdateDaemonServerImpl *)self core];
  runningBrain2 = [core3 runningBrain];
  [runningBrain2 getListenerEndpoint:endpointCopy];

LABEL_7:
}

- (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.allow-NRDUpdated"];
  if (!v3)
  {
    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl isConnectionEntitled:];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl isConnectionEntitled:];
    }

    goto LABEL_11;
  }

  if (([v3 BOOLValue] & 1) == 0)
  {
    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl isConnectionEntitled:];
    }

LABEL_11:

    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
LABEL_12:

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = nrdSharedLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection", buf, 2u);
  }

  v7 = [(NRDUpdateDaemonServerImpl *)self isConnectionEntitled:connectionCopy];
  if (v7)
  {
    [connectionCopy _setQueue:__connectionQueue];
    [connectionCopy setInterruptionHandler:&__block_literal_global_337];
    [connectionCopy setInvalidationHandler:&__block_literal_global_340];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDUpdatedProtocol];
    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    v9 = nrdSharedLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection resumed", v12, 2u);
    }
  }

  else
  {
    v10 = nrdSharedLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDaemonServerImpl listener:shouldAcceptNewConnection:];
    }

    [connectionCopy invalidate];
  }

  return v7;
}

void __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke(id a1)
{
  v1 = nrdSharedLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke_338(id a1)
{
  v1 = nrdSharedLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __64__NRDUpdateDaemonServerImpl_listener_shouldAcceptNewConnection___block_invoke_338_cold_1();
  }
}

@end