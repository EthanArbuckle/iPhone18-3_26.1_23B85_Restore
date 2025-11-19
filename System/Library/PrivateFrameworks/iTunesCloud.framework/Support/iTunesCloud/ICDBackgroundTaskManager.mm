@interface ICDBackgroundTaskManager
- (ICDBackgroundTaskManager)initWithAccountManager:(id)a3 handlerCoordinator:(id)a4;
- (id)_taskWithName:(id)a3;
- (int64_t)_pollingRefreshIntervalSecondsUsingBag:(id)a3;
- (void)_handleJaliscoDeferredPushUpdateTask:(id)a3 completion:(id)a4;
- (void)_handleSagaDeferredPushUpdateTask:(id)a3 completion:(id)a4;
- (void)_handleTask:(id)a3 completion:(id)a4;
- (void)_restoreCurrentTasks;
- (void)_saveCurrentTasks;
- (void)_scheduleTask:(id)a3 withStartTime:(int64_t)a4;
- (void)_startTask:(id)a3;
- (void)_stopTask:(id)a3;
- (void)_unscheduleTask:(id)a3;
- (void)scheduleTaskOfType:(int64_t)a3 forConfiguration:(id)a4;
- (void)startPeriodicPolling;
@end

@implementation ICDBackgroundTaskManager

- (void)_handleJaliscoDeferredPushUpdateTask:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 type];
    v10 = @"com.apple.itunescloudd.deferredPushUpdate.jalisco";
    if (!v9)
    {
      v10 = @"com.apple.itunescloudd.deferredPushUpdate.saga";
    }

    *buf = 134218242;
    v19 = self;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - Job Fired: jaliscoDeferredPushUpate [%{public}@]", buf, 0x16u);
  }

  v11 = [v6 configuration];
  v12 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v11];
  v13 = [v6 configuration];
  v14 = [v13 clientIdentity];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10014651C;
  v16[3] = &unk_1001DFC28;
  v16[4] = self;
  v17 = v7;
  v15 = v7;
  [v12 updateJaliscoLibraryWithClientIdentity:v14 forReason:1000 completionHandler:v16];
}

- (void)_handleSagaDeferredPushUpdateTask:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 type];
    v10 = @"com.apple.itunescloudd.deferredPushUpdate.jalisco";
    if (!v9)
    {
      v10 = @"com.apple.itunescloudd.deferredPushUpdate.saga";
    }

    *buf = 134218242;
    v19 = self;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - Job Fired: sagaDeferredPushUpate [%{public}@]", buf, 0x16u);
  }

  v11 = [v6 configuration];
  v12 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v11];
  v13 = [v6 configuration];
  v14 = [v13 clientIdentity];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100146828;
  v16[3] = &unk_1001DFC28;
  v16[4] = self;
  v17 = v7;
  v15 = v7;
  [v12 updateSagaLibraryWithClientIdentity:v14 forReason:1000 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:v16];
}

- (int64_t)_pollingRefreshIntervalSecondsUsingBag:(id)a3
{
  v4 = [a3 dictionaryForBagKey:@"purchase-daap"];
  v5 = ICGetCloudDAAPClientPrefix();
  v6 = [v5 stringByAppendingString:@"forced-refresh-frequency-minutes"];

  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"forced-refresh-frequency-minutes"];
  }

  v10 = v9;

  if (_NSIsNSNumber())
  {
    v11 = 60 * [v10 longLongValue];
  }

  else
  {
    v11 = 604800;
  }

  v12 = +[ICDefaults standardDefaults];
  v13 = [v12 bypassBagSanityChecks];

  if ((v13 & 1) == 0 && v11 <= 86399)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = self;
      v18 = 2048;
      v19 = 86400;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - startPeriodicPolling -  Adjusting bag refresh interval of %lldmin --> 7 days", &v16, 0x16u);
    }

    v11 = 86400;
  }

  return v11;
}

- (void)_handleTask:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 type];
  if (v7 == 1)
  {
    [(ICDBackgroundTaskManager *)self _handleJaliscoDeferredPushUpdateTask:v8 completion:v6];
  }

  else if (!v7)
  {
    [(ICDBackgroundTaskManager *)self _handleSagaDeferredPushUpdateTask:v8 completion:v6];
  }
}

- (id)_taskWithName:(id)a3
{
  v5 = a3;
  v6 = [(ICDBackgroundTaskManager *)self currentTasks];
  objc_sync_enter(v6);
  v7 = [(ICDBackgroundTaskManager *)self currentTasks];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100146D24;
  v13[3] = &unk_1001DFC00;
  v8 = v5;
  v14 = v8;
  v9 = [v7 objectsPassingTest:v13];

  objc_sync_exit(v6);
  if ([v9 count] >= 2)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ICDBackgroundTaskManager.m" lineNumber:265 description:@"More tasks than expected have the same name"];
  }

  v10 = [v9 anyObject];

  return v10;
}

- (void)_unscheduleTask:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = v6;
    v8 = @"no-name";
    if (v6)
    {
      v8 = v6;
    }

    v11 = 134218242;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - Unregistering task: %@", &v11, 0x16u);
  }

  v9 = +[ICBGTaskScheduler sharedTaskScheduler];
  v10 = [v4 name];
  [v9 cancelTask:v10];
}

- (void)_scheduleTask:(id)a3 withStartTime:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 name];
  v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ICDBackgroundTaskManager %p - scheduleTask - taskName=%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = +[ICBGTaskScheduler sharedTaskScheduler];
  [v9 scheduleTask:v7 afterDelay:0 withUserData:a4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100147078;
  v12[3] = &unk_1001DFBD8;
  objc_copyWeak(&v15, buf);
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v9 registerForTask:v11 handler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_stopTask:(id)a3
{
  v6 = a3;
  v4 = [(ICDBackgroundTaskManager *)self currentTasks];
  objc_sync_enter(v4);
  v5 = [(ICDBackgroundTaskManager *)self currentTasks];
  [v5 removeObject:v6];

  [(ICDBackgroundTaskManager *)self _saveCurrentTasks];
  objc_sync_exit(v4);

  [(ICDBackgroundTaskManager *)self _unscheduleTask:v6];
}

- (void)_startTask:(id)a3
{
  v6 = a3;
  v4 = [(ICDBackgroundTaskManager *)self currentTasks];
  objc_sync_enter(v4);
  v5 = [(ICDBackgroundTaskManager *)self currentTasks];
  [v5 addObject:v6];

  [(ICDBackgroundTaskManager *)self _saveCurrentTasks];
  objc_sync_exit(v4);

  if ([v6 type] < 2)
  {
    [(ICDBackgroundTaskManager *)self _scheduleTask:v6 withStartTime:60];
  }
}

- (void)_saveCurrentTasks
{
  v3 = [(ICDBackgroundTaskManager *)self currentTasks];
  v4 = [v3 copy];
  v12 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
  v6 = v12;

  v7 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v14 = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "ICDBackgroundTaskManager %p - _saveCurrentTasks - Saving current tasks failed - error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(ICDBackgroundTaskManager *)self currentTasks];
      v10 = [v9 count];
      v11 = [(ICDBackgroundTaskManager *)self currentTasks];
      *buf = 134218498;
      v14 = self;
      v15 = 2048;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ICDBackgroundTaskManager %p - _saveCurrentTasks - State saved [%lu tasks] - tasks=%@", buf, 0x20u);
    }

    v8 = +[ICDDefaults daemonDefaults];
    [v8 setPendingBackgroundTasksData:v5];
  }
}

- (void)_restoreCurrentTasks
{
  v3 = +[ICDDefaults daemonDefaults];
  v4 = [v3 pendingBackgroundTasksData];

  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    v13 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v4 error:&v13];
    v8 = v13;
    v9 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    currentTasks = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v15 = self;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, &currentTasks->super.super, OS_LOG_TYPE_ERROR, "ICDBackgroundTaskManager %p - _restoreCurrentTasks - Restoring current tasks failed - error=%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v7 count];
        *buf = 134218498;
        v15 = self;
        v16 = 2048;
        v17 = v11;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, &currentTasks->super.super, OS_LOG_TYPE_DEBUG, "ICDBackgroundTaskManager %p - _restoreCurrentTasks - State restored [%lu tasks] - tasks=%@", buf, 0x20u);
      }

      v12 = [v7 mutableCopy];
      currentTasks = self->_currentTasks;
      self->_currentTasks = v12;
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - _restoreCurrentTasks - No state to restore", buf, 0xCu);
    }
  }
}

- (void)scheduleTaskOfType:(int64_t)a3 forConfiguration:(id)a4
{
  v5 = [_ICDBackgroundTask taskWithType:a3 configuration:a4];
  v6 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 name];
    v8 = [(ICDBackgroundTaskManager *)self currentTasks];
    v13 = 134218498;
    v14 = self;
    v15 = 2114;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - scheduleTaskOfType:forConfiguration: - newTask=%{public}@ - currentTasks=%@", &v13, 0x20u);
  }

  v9 = [v5 name];
  v10 = [(ICDBackgroundTaskManager *)self _taskWithName:v9];

  if (v10)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 name];
      v13 = 134218242;
      v14 = self;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - scheduleTaskOfType:forConfiguration: - Task already on-going [%{public}@]", &v13, 0x16u);
    }
  }

  else
  {
    [(ICDBackgroundTaskManager *)self _startTask:v5];
  }
}

- (void)startPeriodicPolling
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - startPeriodicPolling", buf, 0xCu);
  }

  v4 = [[MSVXPCTransaction alloc] initWithName:@"ICDBackgroundTaskManager - Polling setup - LoadBag"];
  [v4 beginTransaction];
  v5 = [ICStoreRequestContext alloc];
  v6 = +[ICUserIdentity activeAccount];
  v7 = [v5 initWithIdentity:v6];

  v8 = +[ICURLBagProvider sharedBagProvider];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100147BB0;
  v10[3] = &unk_1001DFB88;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 getBagForRequestContext:v7 withCompletionHandler:v10];
}

- (ICDBackgroundTaskManager)initWithAccountManager:(id)a3 handlerCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICDBackgroundTaskManager;
  v9 = [(ICDBackgroundTaskManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handlerCoordinator, a4);
    objc_storeStrong(&v10->_accountManager, a3);
    v11 = [[NSMutableSet alloc] initWithCapacity:7];
    currentTasks = v10->_currentTasks;
    v10->_currentTasks = v11;

    [(ICDBackgroundTaskManager *)v10 _restoreCurrentTasks];
  }

  return v10;
}

@end