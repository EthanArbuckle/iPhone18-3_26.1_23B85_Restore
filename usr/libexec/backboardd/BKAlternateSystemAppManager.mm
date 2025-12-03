@interface BKAlternateSystemAppManager
+ (BKAlternateSystemAppManager)sharedInstance;
- (BKAlternateSystemAppManager)init;
- (BOOL)isBlockingSystemApp;
- (NSString)alternateSystemAppBundleIdentifier;
- (void)_queue_cleanUpAfterAlternativeSystemApp:(id)app;
- (void)_setBlockingSystemApp:(BOOL)app;
- (void)blockSystemAppForAlternateSystemAppWithCompletion:(id)completion;
- (void)openAlternateSystemApp:(id)app options:(id)options withResult:(id)result andExitBlock:(id)block;
- (void)terminateAlternateSystemApp:(id)app forReason:(int)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion;
- (void)terminateAnyAlternateSystemApp;
- (void)unblockSystemAppForAlternateSystemAppWithCompletion:(id)completion;
@end

@implementation BKAlternateSystemAppManager

- (void)_setBlockingSystemApp:(BOOL)app
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005543C;
  v4[3] = &unk_1000FCD90;
  v4[4] = self;
  appCopy = app;
  dispatch_sync(queue, v4);
}

- (void)_queue_cleanUpAfterAlternativeSystemApp:(id)app
{
  appCopy = app;
  alternateSystemApp = [(BKAlternateSystemAppManager *)self alternateSystemApp];

  v6 = BKLogAlternateSystemApp();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (alternateSystemApp == appCopy)
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = appCopy;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Manager] clean up: %{public}@", &v9, 0xCu);
    }

    [(BKAlternateSystemAppManager *)self setAlternateSystemApp:0];
  }

  else
  {
    if (v7)
    {
      alternateSystemApp = self->_alternateSystemApp;
      v9 = 138543618;
      v10 = appCopy;
      v11 = 2114;
      v12 = alternateSystemApp;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Manager] clean up: %{public}@, but expected %{public}@", &v9, 0x16u);
    }
  }
}

- (void)unblockSystemAppForAlternateSystemAppWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Manager] Unblocking the system app", v7, 2u);
  }

  v6 = +[BKSystemShellSentinel sharedInstance];
  [v6 unblockSystemApp];

  [(BKAlternateSystemAppManager *)self _setBlockingSystemApp:0];
  if (completionCopy)
  {
    dispatch_async(self->_queue, completionCopy);
  }
}

- (void)terminateAnyAlternateSystemApp
{
  if (self->_openBundleId)
  {
    v3 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      openBundleId = self->_openBundleId;
      v5 = 138543362;
      v6 = openBundleId;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Manager] Terminating alternate system app with bundleID: %{public}@", &v5, 0xCu);
    }

    [(BKAlternateSystemAppManager *)self terminateAlternateSystemApp:self->_openBundleId forReason:0 andReport:0 withDescription:0 completion:0];
  }
}

- (void)terminateAlternateSystemApp:(id)app forReason:(int)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  if ([(NSString *)self->_openBundleId isEqualToString:appCopy])
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100055804;
    block[3] = &unk_1000FC468;
    v14 = appCopy;
    selfCopy = self;
    v16 = completionCopy;
    dispatch_async(queue, block);
    [(BKAlternateSystemAppManager *)self setOpenBundleId:0];
    v12 = +[BKSystemShellSentinel sharedInstance];
    [v12 setActiveAlternateSystemAppBundleIdentifier:0];
  }
}

- (void)openAlternateSystemApp:(id)app options:(id)options withResult:(id)result andExitBlock:(id)block
{
  appCopy = app;
  optionsCopy = options;
  resultCopy = result;
  blockCopy = block;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000559E8;
  block[3] = &unk_1000FB980;
  v20 = appCopy;
  v21 = optionsCopy;
  selfCopy = self;
  v23 = resultCopy;
  v24 = blockCopy;
  v15 = blockCopy;
  v16 = resultCopy;
  v17 = optionsCopy;
  v18 = appCopy;
  dispatch_async(queue, block);
}

- (void)blockSystemAppForAlternateSystemAppWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Manager] Blocking the system app", v7, 2u);
  }

  [(BKAlternateSystemAppManager *)self _setBlockingSystemApp:1];
  v6 = +[BKSystemShellSentinel sharedInstance];
  [v6 blockSystemApp];

  if (completionCopy)
  {
    dispatch_async(self->_queue, completionCopy);
  }
}

- (NSString)alternateSystemAppBundleIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100055EF0;
  v10 = sub_100055F00;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100055F08;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isBlockingSystemApp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100056004;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BKAlternateSystemAppManager)init
{
  v6.receiver = self;
  v6.super_class = BKAlternateSystemAppManager;
  v2 = [(BKAlternateSystemAppManager *)&v6 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;
  }

  return v2;
}

+ (BKAlternateSystemAppManager)sharedInstance
{
  if (qword_100125FA8 != -1)
  {
    dispatch_once(&qword_100125FA8, &stru_1000FB908);
  }

  v3 = qword_100125FA0;

  return v3;
}

@end