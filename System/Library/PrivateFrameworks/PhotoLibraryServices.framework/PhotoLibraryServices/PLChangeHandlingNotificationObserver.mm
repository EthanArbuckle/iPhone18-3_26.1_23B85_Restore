@interface PLChangeHandlingNotificationObserver
- (BOOL)_lock_stopObservingRemoteNotifications;
- (BOOL)stopObservingRemoteNotifications;
- (PLChangeHandlingNotificationObserver)initWithLowPriorityThrottleInterval:(double)interval targetWorkloop:(id)workloop;
- (id)notificationBlock;
- (id)stateCaptureDictionary;
- (int)notifyTokenHigh;
- (int)notifyTokenLow;
- (void)_lock_startObservingRemoteNotificationsWithBlock:(id)block;
- (void)_workloop_handleHighPriorityNotification;
- (void)_workloop_handleLowPriorityNotification;
- (void)_workloop_handleThrottleTimer;
- (void)_workloop_suspendIfThrottlingWithDebugEvent:(id)event;
- (void)dealloc;
- (void)startObservingRemoteNotificationsWithBlock:(id)block;
@end

@implementation PLChangeHandlingNotificationObserver

- (int)notifyTokenLow
{
  os_unfair_lock_lock(&self->_lock);
  lock_notifyTokenLow = self->_lock_notifyTokenLow;
  os_unfair_lock_unlock(&self->_lock);
  return lock_notifyTokenLow;
}

- (void)_workloop_handleThrottleTimer
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workloop);
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLChangeHandlingNotificationObserver _workloop_handleThrottleTimer]"];
  v4 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    qos_class_self();
    v5 = PLStringFromQoSClass();
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Change handling notification: Resuming low priority notifications at QoS: %@", &v6, 0xCu);
  }

  notify_resume([(PLChangeHandlingNotificationObserver *)self notifyTokenLow]);
  [v3 stillAlive];
}

- (void)_workloop_handleLowPriorityNotification
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workloop);
  addEvent = [(PFStateCaptureEventLog *)self->_eventLog addEvent];
  [addEvent startPostNotification];
  [addEvent setNotificationType:0];
  v4 = [MEMORY[0x1E69BF360] transaction:"-[PLChangeHandlingNotificationObserver _workloop_handleLowPriorityNotification]"];
  v5 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    qos_class_self();
    v6 = PLStringFromQoSClass();
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Change handling notification: Handling low priority notification at QoS: %@", buf, 0xCu);
  }

  [(PLChangeHandlingNotificationObserver *)self _workloop_suspendIfThrottlingWithDebugEvent:addEvent];
  notificationBlock = [(PLChangeHandlingNotificationObserver *)self notificationBlock];
  v8 = +[PLConcurrencyLimiter sharedLimiter];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PLChangeHandlingNotificationObserver__workloop_handleLowPriorityNotification__block_invoke;
  v12[3] = &unk_1E7576F38;
  v14 = v4;
  v15 = notificationBlock;
  v13 = addEvent;
  v9 = v4;
  v10 = notificationBlock;
  v11 = addEvent;
  [v8 sync:v12 identifyingBlock:0 library:0];
}

- (id)notificationBlock
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __57__PLChangeHandlingNotificationObserver_notificationBlock__block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 72));

  return v1;
}

uint64_t __79__PLChangeHandlingNotificationObserver__workloop_handleLowPriorityNotification__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setNotificationPostTimestamp:?];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 40));
  }

  v3 = *(a1 + 32);

  return [v3 end];
}

- (id)stateCaptureDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  eventDescriptions = [(PFStateCaptureEventLog *)self->_eventLog eventDescriptions];
  [dictionary setObject:eventDescriptions forKeyedSubscript:@"events"];

  return dictionary;
}

- (BOOL)_lock_stopObservingRemoteNotifications
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = _Block_copy(self->_lock_notificationBlock);
    v10 = 134217984;
    v11 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Change handling notification: Stop observing notifications with block: %p", &v10, 0xCu);
  }

  lock_notifyTokenLow = self->_lock_notifyTokenLow;
  if (lock_notifyTokenLow == -1)
  {
    lock_notifyTokenHigh = self->_lock_notifyTokenHigh;
    if (lock_notifyTokenHigh == -1)
    {
      v7 = self->_lock_notificationBlock != 0;
      goto LABEL_9;
    }
  }

  else
  {
    notify_cancel(lock_notifyTokenLow);
    lock_notifyTokenHigh = self->_lock_notifyTokenHigh;
    if (lock_notifyTokenHigh == -1)
    {
      goto LABEL_8;
    }
  }

  notify_cancel(lock_notifyTokenHigh);
LABEL_8:
  v7 = 1;
LABEL_9:
  *&self->_lock_notifyTokenLow = -1;
  lock_notificationBlock = self->_lock_notificationBlock;
  self->_lock_notificationBlock = 0;

  return v7;
}

- (BOOL)stopObservingRemoteNotifications
{
  selfCopy = self;
  addEvent = [(PFStateCaptureEventLog *)self->_eventLog addEvent];
  [addEvent startEndObserving];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = MEMORY[0x1E69E9820];
  PLSafeRunWithUnfairLock();
  [addEvent setWasObserving:{*(v7 + 24), v5, 3221225472, __72__PLChangeHandlingNotificationObserver_stopObservingRemoteNotifications__block_invoke, &unk_1E7578910, selfCopy, &v6}];
  [addEvent end];
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return selfCopy;
}

uint64_t __72__PLChangeHandlingNotificationObserver_stopObservingRemoteNotifications__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_stopObservingRemoteNotifications];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_workloop_handleHighPriorityNotification
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workloop);
  addEvent = [(PFStateCaptureEventLog *)self->_eventLog addEvent];
  [addEvent startPostNotification];
  [addEvent setNotificationType:1];
  v4 = [MEMORY[0x1E69BF360] transaction:"-[PLChangeHandlingNotificationObserver _workloop_handleHighPriorityNotification]"];
  v5 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    qos_class_self();
    v6 = PLStringFromQoSClass();
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Change handling notification: Handling high priority notification at QoS: %@", buf, 0xCu);
  }

  notificationBlock = [(PLChangeHandlingNotificationObserver *)self notificationBlock];
  v8 = +[PLConcurrencyLimiter sharedLimiter];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__PLChangeHandlingNotificationObserver__workloop_handleHighPriorityNotification__block_invoke;
  v12[3] = &unk_1E7576F38;
  v14 = v4;
  v15 = notificationBlock;
  v13 = addEvent;
  v9 = v4;
  v10 = notificationBlock;
  v11 = addEvent;
  [v8 sync:v12 identifyingBlock:0 library:0];
}

uint64_t __80__PLChangeHandlingNotificationObserver__workloop_handleHighPriorityNotification__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setNotificationPostTimestamp:?];
  [*(a1 + 32) setNotificationBlock:*(a1 + 48)];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, 1, *(a1 + 40));
  }

  v3 = *(a1 + 32);

  return [v3 end];
}

- (void)_workloop_suspendIfThrottlingWithDebugEvent:(id)event
{
  v13 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_workloop);
  if (self->_throttleInterval > 0.0)
  {
    v5 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      qos_class_self();
      v6 = PLStringFromQoSClass();
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Change handling notification: Suspending low priority notifications at QoS: %@", buf, 0xCu);
    }

    [eventCopy setDidSuspendLowPriority:1];
    notify_suspend([(PLChangeHandlingNotificationObserver *)self notifyTokenLow]);
    objc_initWeak(buf, self);
    [eventCopy setThrottleInterval:self->_throttleInterval];
    v7 = dispatch_time(0, (self->_throttleInterval * 1000000000.0));
    lowNotifyQueue = self->_lowNotifyQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__PLChangeHandlingNotificationObserver__workloop_suspendIfThrottlingWithDebugEvent___block_invoke;
    v9[3] = &unk_1E75782A8;
    v9[4] = self;
    objc_copyWeak(&v10, buf);
    dispatch_after(v7, lowNotifyQueue, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __84__PLChangeHandlingNotificationObserver__workloop_suspendIfThrottlingWithDebugEvent___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 40) addEvent];
  [v3 startResumeLowPriority];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _workloop_handleThrottleTimer];

  [v3 end];
}

- (void)_lock_startObservingRemoteNotificationsWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLChangeHandlingNotificationObserver.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"notificationBlock != nil"}];
  }

  if (self->_lock_notifyTokenLow != -1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLChangeHandlingNotificationObserver.m" lineNumber:139 description:{@"Notify token should be invalid, but is: %d (low)", self->_lock_notifyTokenLow}];
  }

  if (self->_lock_notifyTokenHigh != -1)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLChangeHandlingNotificationObserver.m" lineNumber:140 description:{@"Notify token should be invalid, but is: %d (high)", self->_lock_notifyTokenHigh}];
  }

  if (self->_lock_notificationBlock)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLChangeHandlingNotificationObserver.m" lineNumber:141 description:@"Notification block is already set"];
  }

  v6 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = _Block_copy(blockCopy);
    *buf = 134217984;
    v17 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Change handling notification: Start observing notifications with block: %p", buf, 0xCu);
  }

  v8 = [blockCopy copy];
  lock_notificationBlock = self->_lock_notificationBlock;
  self->_lock_notificationBlock = v8;

  objc_initWeak(buf, self);
  v14[1] = MEMORY[0x1E69E9820];
  v14[2] = 3221225472;
  v14[3] = __89__PLChangeHandlingNotificationObserver__lock_startObservingRemoteNotificationsWithBlock___block_invoke;
  v14[4] = &unk_1E756AD78;
  objc_copyWeak(&v15, buf);
  pl_notify_register_dispatch_with_retry();
  objc_copyWeak(v14, buf);
  pl_notify_register_dispatch_with_retry();
  objc_destroyWeak(v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __89__PLChangeHandlingNotificationObserver__lock_startObservingRemoteNotificationsWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workloop_handleLowPriorityNotification];
}

void __89__PLChangeHandlingNotificationObserver__lock_startObservingRemoteNotificationsWithBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workloop_handleHighPriorityNotification];
}

- (void)startObservingRemoteNotificationsWithBlock:(id)block
{
  blockCopy = block;
  addEvent = [(PFStateCaptureEventLog *)self->_eventLog addEvent];
  [addEvent startBeginObserving];
  [addEvent setNotificationBlock:blockCopy];
  v7 = MEMORY[0x1E69E9820];
  v8 = blockCopy;
  v6 = blockCopy;
  PLSafeRunWithUnfairLock();
  [addEvent end];
}

- (int)notifyTokenHigh
{
  os_unfair_lock_lock(&self->_lock);
  lock_notifyTokenHigh = self->_lock_notifyTokenHigh;
  os_unfair_lock_unlock(&self->_lock);
  return lock_notifyTokenHigh;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  if ([(PLChangeHandlingNotificationObserver *)self stopObservingRemoteNotifications])
  {
    v4 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_FAULT, "Deallocated PLChangeHandlingNotificationObserver while still observing notifications", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = PLChangeHandlingNotificationObserver;
  [(PLChangeHandlingNotificationObserver *)&v5 dealloc];
}

- (PLChangeHandlingNotificationObserver)initWithLowPriorityThrottleInterval:(double)interval targetWorkloop:(id)workloop
{
  v32 = *MEMORY[0x1E69E9840];
  workloopCopy = workloop;
  if (!workloopCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLChangeHandlingNotificationObserver.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"targetWorkloop"}];
  }

  v25.receiver = self;
  v25.super_class = PLChangeHandlingNotificationObserver;
  v9 = [(PLChangeHandlingNotificationObserver *)&v25 init];
  v10 = v9;
  if (v9)
  {
    v9->_throttleInterval = interval;
    *&v9->_lock._os_unfair_lock_opaque = 0xFFFFFFFF00000000;
    v9->_lock_notifyTokenHigh = -1;
    lock_notificationBlock = v9->_lock_notificationBlock;
    v9->_lock_notificationBlock = 0;

    v12 = [objc_alloc(MEMORY[0x1E69BDD78]) initWithEventClass:objc_opt_class() maxEvents:50];
    eventLog = v10->_eventLog;
    v10->_eventLog = v12;

    objc_storeStrong(&v10->_workloop, workloop);
    v14 = s_dispatch_queue_create_for_notifications("com.apple.photos.PLChangeHandlingNotificationObserver.lowNotifyQueue", v10->_workloop);
    lowNotifyQueue = v10->_lowNotifyQueue;
    v10->_lowNotifyQueue = v14;

    PLIsForegroundApplication();
    v16 = s_dispatch_queue_create_for_notifications("com.apple.photos.PLChangeHandlingNotificationObserver.highNotifyQueue", v10->_workloop);
    highNotifyQueue = v10->_highNotifyQueue;
    v10->_highNotifyQueue = v16;

    v18 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:v10];
    stateHandler = v10->_stateHandler;
    v10->_stateHandler = v18;

    v20 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      *buf = 138412802;
      v27 = v21;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "%@ %p initWithLowPriorityThrottleInterval:%f", buf, 0x20u);
    }

    v22 = v10;
  }

  return v10;
}

@end