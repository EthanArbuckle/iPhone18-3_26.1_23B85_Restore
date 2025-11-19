@interface WBSDistributedNotificationObserver
- (WBSDistributedNotificationObserver)initWithNotificationName:(id)a3 type:(int64_t)a4;
- (id)notificationHandler;
- (id)timeoutHandler;
- (void)_didReceiveNotification:(id)a3;
- (void)_didTimeOut;
- (void)_invalidateTimeoutTimer;
- (void)_scheduleTimeoutTimerWithTimeout:(double)a3;
- (void)_startObserving;
- (void)_stopObserving;
- (void)setNotificationHandler:(id)a3;
- (void)setTimeoutHandler:(id)a3;
- (void)stopWaiting;
- (void)waitWithTimeout:(double)a3;
@end

@implementation WBSDistributedNotificationObserver

- (WBSDistributedNotificationObserver)initWithNotificationName:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = WBSDistributedNotificationObserver;
  v7 = [(WBSDistributedNotificationObserver *)&v15 init];
  if (v7)
  {
    v8 = [v6 copy];
    notificationName = v7->_notificationName;
    v7->_notificationName = v8;

    v7->_notificationType = a4;
    v10 = [@"com.apple.Safari.WBSCloudBookmarksSyncAgentObserver." stringByAppendingString:v6];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v11;

    v13 = v7;
  }

  return v7;
}

- (void)setNotificationHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WBSDistributedNotificationObserver_setNotificationHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __61__WBSDistributedNotificationObserver_setNotificationHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1BFB13CE0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (id)notificationHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__WBSDistributedNotificationObserver_notificationHandler__block_invoke;
  v5[3] = &unk_1E7FB7490;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = MEMORY[0x1BFB13CE0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__WBSDistributedNotificationObserver_notificationHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setTimeoutHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WBSDistributedNotificationObserver_setTimeoutHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __56__WBSDistributedNotificationObserver_setTimeoutHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1BFB13CE0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

- (id)timeoutHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__WBSDistributedNotificationObserver_timeoutHandler__block_invoke;
  v5[3] = &unk_1E7FB7490;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = MEMORY[0x1BFB13CE0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__WBSDistributedNotificationObserver_timeoutHandler__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)waitWithTimeout:(double)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__WBSDistributedNotificationObserver_waitWithTimeout___block_invoke;
  v4[3] = &unk_1E7FB74E0;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_sync(internalQueue, v4);
}

uint64_t __54__WBSDistributedNotificationObserver_waitWithTimeout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startObserving];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _scheduleTimeoutTimerWithTimeout:v3];
}

- (void)stopWaiting
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WBSDistributedNotificationObserver_stopWaiting__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_startObserving
{
  if (!self->_observing)
  {
    notificationType = self->_notificationType;
    if (notificationType == 1)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, handleNotification, self->_notificationName, 0, 1024);
    }

    else if (!notificationType)
    {
      v4 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v4 addObserver:self selector:sel__didReceiveNotification_ name:self->_notificationName object:0 suspensionBehavior:4];
    }

    self->_observing = 1;
  }
}

- (void)_stopObserving
{
  [(WBSDistributedNotificationObserver *)self _invalidateTimeoutTimer];
  if (self->_observing)
  {
    notificationType = self->_notificationType;
    if (notificationType == 1)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, self->_notificationName, 0);
    }

    else if (!notificationType)
    {
      v4 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v4 removeObserver:self name:self->_notificationName object:0];
    }

    self->_observing = 0;
  }
}

- (void)_scheduleTimeoutTimerWithTimeout:(double)a3
{
  [(WBSDistributedNotificationObserver *)self _invalidateTimeoutTimer];
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v5;

  v7 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(self->_timeoutTimer, v7, 0xFFFFFFFFFFFFFFFFLL, (a3 / 10.0 * 1000000000.0));
  v8 = self->_timeoutTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __71__WBSDistributedNotificationObserver__scheduleTimeoutTimerWithTimeout___block_invoke;
  handler[3] = &unk_1E7FB6D90;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(self->_timeoutTimer);
}

uint64_t __71__WBSDistributedNotificationObserver__scheduleTimeoutTimerWithTimeout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didTimeOut];
  v2 = *(a1 + 32);

  return [v2 _stopObserving];
}

- (void)_invalidateTimeoutTimer
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

- (void)_didReceiveNotification:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__WBSDistributedNotificationObserver__didReceiveNotification___block_invoke;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __62__WBSDistributedNotificationObserver__didReceiveNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 24) == 1)
  {
    v3 = *(result + 48);
    if (v3)
    {
      result = (*(v3 + 16))(*(result + 48), *(a1 + 40));
      if (!result)
      {
        return result;
      }

      result = *(a1 + 32);
    }

    return [result _stopObserving];
  }

  return result;
}

- (void)_didTimeOut
{
  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2]();
  }
}

@end