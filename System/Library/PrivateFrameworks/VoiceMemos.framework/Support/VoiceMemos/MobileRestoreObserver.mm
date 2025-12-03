@interface MobileRestoreObserver
- (MobileRestoreObserver)initWithQueue:(id)queue;
- (void)_pollBackupManager:(id)manager;
- (void)manager:(id)manager didFinishRestoreForPath:(id)path;
- (void)managerDidFinishRestore:(id)restore;
- (void)managerDidUpdateBackgroundRestoreProgress:(id)progress;
- (void)observeMobileRestore:(id)restore;
@end

@implementation MobileRestoreObserver

- (MobileRestoreObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = MobileRestoreObserver;
  v6 = [(MobileRestoreObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_completionQueue, queue);
  }

  return v7;
}

- (void)_pollBackupManager:(id)manager
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000322C;
  v12[3] = &unk_1000551C0;
  v12[4] = self;
  managerCopy = manager;
  v13 = managerCopy;
  v5 = objc_retainBlock(v12);
  backupManager = self->_backupManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000032F0;
  v9[3] = &unk_1000551E8;
  v9[4] = self;
  v10 = managerCopy;
  v11 = v5;
  v7 = v5;
  v8 = managerCopy;
  [(MBManager *)backupManager fetchiCloudRestoreIsCompleteWithCompletion:v9];
}

- (void)observeMobileRestore:(id)restore
{
  restoreCopy = restore;
  v5 = [[MBManager alloc] initWithDelegate:self eventQueue:self->_completionQueue];
  backupManager = self->_backupManager;
  self->_backupManager = v5;

  if (BYSetupAssistantNeedsToRun())
  {
    v7 = OSLogForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    v9 = BYSetupAssistantFinishedDarwinNotification;
    if (v8)
    {
      sub_100034390();
    }

    self->_waitingForMobileRestoreToFinish = 1;
    objc_initWeak(&location, self);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000036A0;
    v16[3] = &unk_100055210;
    v18 = &v20;
    objc_copyWeak(&v19, &location);
    v17 = restoreCopy;
    v10 = objc_retainBlock(v16);
    uTF8String = [v9 UTF8String];
    notify_register_dispatch(uTF8String, v21 + 6, self->_completionQueue, v10);
    if ((BYSetupAssistantNeedsToRun() & 1) == 0)
    {
      (v10[2])(v10, v21[6]);
    }

    objc_destroyWeak(&v19);
    _Block_object_dispose(&v20, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    restoreState = [(MBManager *)self->_backupManager restoreState];
    if ([restoreState state] - 1 > 2)
    {
      completionQueue = self->_completionQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000373C;
      block[3] = &unk_100055238;
      v15 = restoreCopy;
      dispatch_async(completionQueue, block);
    }

    else
    {
      self->_waitingForMobileRestoreToFinish = 1;
      [(MobileRestoreObserver *)self _pollBackupManager:restoreCopy];
    }
  }
}

- (void)managerDidFinishRestore:(id)restore
{
  restoreState = [restore restoreState];
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100034494(restoreState, v4);
  }
}

- (void)manager:(id)manager didFinishRestoreForPath:(id)path
{
  pathCopy = path;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100034534();
  }
}

- (void)managerDidUpdateBackgroundRestoreProgress:(id)progress
{
  restoreState = [progress restoreState];
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000345A8(restoreState, v4);
  }
}

@end