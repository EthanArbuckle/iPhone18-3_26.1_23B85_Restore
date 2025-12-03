@interface ICDBackgroundTaskManager
- (ICDBackgroundTaskManager)initWithAccountManager:(id)manager handlerCoordinator:(id)coordinator;
- (id)_taskWithName:(id)name;
- (int64_t)_pollingRefreshIntervalSecondsUsingBag:(id)bag;
- (void)_handleJaliscoDeferredPushUpdateTask:(id)task completion:(id)completion;
- (void)_handleSagaDeferredPushUpdateTask:(id)task completion:(id)completion;
- (void)_handleTask:(id)task completion:(id)completion;
- (void)_restoreCurrentTasks;
- (void)_saveCurrentTasks;
- (void)_scheduleTask:(id)task withStartTime:(int64_t)time;
- (void)_startTask:(id)task;
- (void)_stopTask:(id)task;
- (void)_unscheduleTask:(id)task;
- (void)scheduleTaskOfType:(int64_t)type forConfiguration:(id)configuration;
- (void)startPeriodicPolling;
@end

@implementation ICDBackgroundTaskManager

- (void)_handleJaliscoDeferredPushUpdateTask:(id)task completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    type = [taskCopy type];
    v10 = @"com.apple.itunescloudd.deferredPushUpdate.jalisco";
    if (!type)
    {
      v10 = @"com.apple.itunescloudd.deferredPushUpdate.saga";
    }

    *buf = 134218242;
    selfCopy = self;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - Job Fired: jaliscoDeferredPushUpate [%{public}@]", buf, 0x16u);
  }

  configuration = [taskCopy configuration];
  v12 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
  configuration2 = [taskCopy configuration];
  clientIdentity = [configuration2 clientIdentity];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10014651C;
  v16[3] = &unk_1001DFC28;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [v12 updateJaliscoLibraryWithClientIdentity:clientIdentity forReason:1000 completionHandler:v16];
}

- (void)_handleSagaDeferredPushUpdateTask:(id)task completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    type = [taskCopy type];
    v10 = @"com.apple.itunescloudd.deferredPushUpdate.jalisco";
    if (!type)
    {
      v10 = @"com.apple.itunescloudd.deferredPushUpdate.saga";
    }

    *buf = 134218242;
    selfCopy = self;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - Job Fired: sagaDeferredPushUpate [%{public}@]", buf, 0x16u);
  }

  configuration = [taskCopy configuration];
  v12 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
  configuration2 = [taskCopy configuration];
  clientIdentity = [configuration2 clientIdentity];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100146828;
  v16[3] = &unk_1001DFC28;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [v12 updateSagaLibraryWithClientIdentity:clientIdentity forReason:1000 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:v16];
}

- (int64_t)_pollingRefreshIntervalSecondsUsingBag:(id)bag
{
  v4 = [bag dictionaryForBagKey:@"purchase-daap"];
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
  bypassBagSanityChecks = [v12 bypassBagSanityChecks];

  if ((bypassBagSanityChecks & 1) == 0 && v11 <= 86399)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      selfCopy = self;
      v18 = 2048;
      v19 = 86400;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - startPeriodicPolling -  Adjusting bag refresh interval of %lldmin --> 7 days", &v16, 0x16u);
    }

    v11 = 86400;
  }

  return v11;
}

- (void)_handleTask:(id)task completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  type = [taskCopy type];
  if (type == 1)
  {
    [(ICDBackgroundTaskManager *)self _handleJaliscoDeferredPushUpdateTask:taskCopy completion:completionCopy];
  }

  else if (!type)
  {
    [(ICDBackgroundTaskManager *)self _handleSagaDeferredPushUpdateTask:taskCopy completion:completionCopy];
  }
}

- (id)_taskWithName:(id)name
{
  nameCopy = name;
  currentTasks = [(ICDBackgroundTaskManager *)self currentTasks];
  objc_sync_enter(currentTasks);
  currentTasks2 = [(ICDBackgroundTaskManager *)self currentTasks];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100146D24;
  v13[3] = &unk_1001DFC00;
  v8 = nameCopy;
  v14 = v8;
  v9 = [currentTasks2 objectsPassingTest:v13];

  objc_sync_exit(currentTasks);
  if ([v9 count] >= 2)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ICDBackgroundTaskManager.m" lineNumber:265 description:@"More tasks than expected have the same name"];
  }

  anyObject = [v9 anyObject];

  return anyObject;
}

- (void)_unscheduleTask:(id)task
{
  taskCopy = task;
  v5 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [taskCopy name];
    v7 = name;
    v8 = @"no-name";
    if (name)
    {
      v8 = name;
    }

    v11 = 134218242;
    selfCopy = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - Unregistering task: %@", &v11, 0x16u);
  }

  v9 = +[ICBGTaskScheduler sharedTaskScheduler];
  name2 = [taskCopy name];
  [v9 cancelTask:name2];
}

- (void)_scheduleTask:(id)task withStartTime:(int64_t)time
{
  taskCopy = task;
  name = [taskCopy name];
  v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v18 = 2112;
    v19 = name;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ICDBackgroundTaskManager %p - scheduleTask - taskName=%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = +[ICBGTaskScheduler sharedTaskScheduler];
  [v9 scheduleTask:name afterDelay:0 withUserData:time];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100147078;
  v12[3] = &unk_1001DFBD8;
  objc_copyWeak(&v15, buf);
  v10 = taskCopy;
  v13 = v10;
  v11 = name;
  v14 = v11;
  [v9 registerForTask:v11 handler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_stopTask:(id)task
{
  taskCopy = task;
  currentTasks = [(ICDBackgroundTaskManager *)self currentTasks];
  objc_sync_enter(currentTasks);
  currentTasks2 = [(ICDBackgroundTaskManager *)self currentTasks];
  [currentTasks2 removeObject:taskCopy];

  [(ICDBackgroundTaskManager *)self _saveCurrentTasks];
  objc_sync_exit(currentTasks);

  [(ICDBackgroundTaskManager *)self _unscheduleTask:taskCopy];
}

- (void)_startTask:(id)task
{
  taskCopy = task;
  currentTasks = [(ICDBackgroundTaskManager *)self currentTasks];
  objc_sync_enter(currentTasks);
  currentTasks2 = [(ICDBackgroundTaskManager *)self currentTasks];
  [currentTasks2 addObject:taskCopy];

  [(ICDBackgroundTaskManager *)self _saveCurrentTasks];
  objc_sync_exit(currentTasks);

  if ([taskCopy type] < 2)
  {
    [(ICDBackgroundTaskManager *)self _scheduleTask:taskCopy withStartTime:60];
  }
}

- (void)_saveCurrentTasks
{
  currentTasks = [(ICDBackgroundTaskManager *)self currentTasks];
  v4 = [currentTasks copy];
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
      selfCopy2 = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "ICDBackgroundTaskManager %p - _saveCurrentTasks - Saving current tasks failed - error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      currentTasks2 = [(ICDBackgroundTaskManager *)self currentTasks];
      v10 = [currentTasks2 count];
      currentTasks3 = [(ICDBackgroundTaskManager *)self currentTasks];
      *buf = 134218498;
      selfCopy2 = self;
      v15 = 2048;
      v16 = v10;
      v17 = 2112;
      v18 = currentTasks3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ICDBackgroundTaskManager %p - _saveCurrentTasks - State saved [%lu tasks] - tasks=%@", buf, 0x20u);
    }

    v8 = +[ICDDefaults daemonDefaults];
    [v8 setPendingBackgroundTasksData:v5];
  }
}

- (void)_restoreCurrentTasks
{
  v3 = +[ICDDefaults daemonDefaults];
  pendingBackgroundTasksData = [v3 pendingBackgroundTasksData];

  if (pendingBackgroundTasksData)
  {
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    v13 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:pendingBackgroundTasksData error:&v13];
    v8 = v13;
    v9 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    currentTasks = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        selfCopy3 = self;
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
        selfCopy3 = self;
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
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - _restoreCurrentTasks - No state to restore", buf, 0xCu);
    }
  }
}

- (void)scheduleTaskOfType:(int64_t)type forConfiguration:(id)configuration
{
  v5 = [_ICDBackgroundTask taskWithType:type configuration:configuration];
  v6 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [v5 name];
    currentTasks = [(ICDBackgroundTaskManager *)self currentTasks];
    v13 = 134218498;
    selfCopy2 = self;
    v15 = 2114;
    v16 = name;
    v17 = 2112;
    v18 = currentTasks;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - scheduleTaskOfType:forConfiguration: - newTask=%{public}@ - currentTasks=%@", &v13, 0x20u);
  }

  name2 = [v5 name];
  v10 = [(ICDBackgroundTaskManager *)self _taskWithName:name2];

  if (v10)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name3 = [v5 name];
      v13 = 134218242;
      selfCopy2 = self;
      v15 = 2114;
      v16 = name3;
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
    selfCopy = self;
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

- (ICDBackgroundTaskManager)initWithAccountManager:(id)manager handlerCoordinator:(id)coordinator
{
  managerCopy = manager;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = ICDBackgroundTaskManager;
  v9 = [(ICDBackgroundTaskManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handlerCoordinator, coordinator);
    objc_storeStrong(&v10->_accountManager, manager);
    v11 = [[NSMutableSet alloc] initWithCapacity:7];
    currentTasks = v10->_currentTasks;
    v10->_currentTasks = v11;

    [(ICDBackgroundTaskManager *)v10 _restoreCurrentTasks];
  }

  return v10;
}

@end