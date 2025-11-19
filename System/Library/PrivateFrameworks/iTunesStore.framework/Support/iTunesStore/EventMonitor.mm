@interface EventMonitor
+ (id)sharedEventMonitor;
- (EventMonitor)init;
- (id)monitorEvent:(id)a3;
- (void)_cancelPollTimer;
- (void)_fireEventsAfterPollTimer;
- (void)_reloadPollTimer;
- (void)_willRemoveEvent:(id)a3;
- (void)dealloc;
- (void)removeEvent:(id)a3;
@end

@implementation EventMonitor

- (EventMonitor)init
{
  v4.receiver = self;
  v4.super_class = EventMonitor;
  v2 = [(EventMonitor *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.EventMonitor", 0);
  }

  return v2;
}

- (void)dealloc
{
  [(EventMonitor *)self _cancelPollTimer];
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = EventMonitor;
  [(EventMonitor *)&v3 dealloc];
}

+ (id)sharedEventMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F70C;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100384000 != -1)
  {
    dispatch_once(&qword_100384000, block);
  }

  return qword_100383FF8;
}

- (id)monitorEvent:(id)a3
{
  v4 = [a3 copy];
  [v4 _setLastOccurrenceCheckTime:CFAbsoluteTimeGetCurrent()];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019F7D0;
  v7[3] = &unk_100327350;
  v7[4] = self;
  v7[5] = v4;
  dispatch_sync(dispatchQueue, v7);
  return v4;
}

- (void)removeEvent:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019F8CC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)_cancelPollTimer
{
  pollTimer = self->_pollTimer;
  if (pollTimer)
  {
    dispatch_source_cancel(pollTimer);
    dispatch_release(self->_pollTimer);
    self->_pollTimer = 0;
  }
}

- (void)_fireEventsAfterPollTimer
{
  v3 = objc_alloc_init(NSMutableArray);
  Current = CFAbsoluteTimeGetCurrent();
  [+[Daemon daemon](Daemon "daemon")];
  v5 = [(NSMutableArray *)self->_events count];
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      v7 = [(NSMutableArray *)self->_events objectAtIndex:v6 - 2];
      [v7 _lastOccurrenceCheckTime];
      if (vabdd_f64(Current, v8 + [v7 pollInterval]) < 0.5)
      {
        if ([v7 hasOccurred])
        {
          [v3 addObject:v7];
          [(EventMonitor *)self _willRemoveEvent:v7];
          [(NSMutableArray *)self->_events removeObjectAtIndex:v6 - 2];
        }

        else
        {
          [v7 _setLastOccurrenceCheckTime:Current];
        }
      }

      --v6;
    }

    while (v6 > 1);
  }

  if ([v3 count])
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019FB20;
    block[3] = &unk_100327378;
    block[4] = v3;
    dispatch_async(global_queue, block);
  }

  else
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  [(EventMonitor *)self _cancelPollTimer];
  [(EventMonitor *)self _reloadPollTimer];
}

- (void)_reloadPollTimer
{
  if ([(NSMutableArray *)self->_events count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    events = self->_events;
    v4 = [(NSMutableArray *)events countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      v7 = 1.79769313e308;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(events);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          if (v7 >= [v9 pollInterval])
          {
            v7 = [v9 pollInterval];
          }
        }

        v5 = [(NSMutableArray *)events countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 1.79769313e308;
    }

    v10 = fmax(v7, 10.0);
    if (self->_pollTimer)
    {
      v11 = v10 + self->_lastPollTime;
      Current = CFAbsoluteTimeGetCurrent();
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = v11 - Current;
      v15 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v16 = v15 | 2;
      }

      else
      {
        v16 = v15;
      }

      if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v17 = objc_opt_class();
        v37 = 138412546;
        v38 = v17;
        v39 = 2048;
        v40 = v14;
        LODWORD(v31) = 22;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          v19 = v18;
          [NSString stringWithCString:v18 encoding:4, &v37, v31];
          free(v19);
          SSFileLog();
        }
      }

      pollTimer = self->_pollTimer;
      v21 = dispatch_time(0, (v14 * 1000000000.0));
      dispatch_source_set_timer(pollTimer, v21, (v10 * 1000000000.0), 0);
    }

    else
    {
      v22 = +[SSLogConfig sharedDaemonConfig];
      if (!v22)
      {
        v22 = +[SSLogConfig sharedConfig];
      }

      v23 = [v22 shouldLog];
      if ([v22 shouldLogToDisk])
      {
        v24 = v23 | 2;
      }

      else
      {
        v24 = v23;
      }

      if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v24 &= 2u;
      }

      if (v24)
      {
        v25 = objc_opt_class();
        v37 = 138412546;
        v38 = v25;
        v39 = 2048;
        v40 = v10;
        LODWORD(v31) = 22;
        v26 = _os_log_send_and_compose_impl();
        if (v26)
        {
          v27 = v26;
          [NSString stringWithCString:v26 encoding:4, &v37, v31];
          free(v27);
          SSFileLog();
        }
      }

      self->_lastPollTime = CFAbsoluteTimeGetCurrent();
      v28 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      self->_pollTimer = v28;
      v29 = dispatch_time(0, (v10 * 1000000000.0));
      dispatch_source_set_timer(v28, v29, (v10 * 1000000000.0), 0);
      v30 = self->_pollTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001A002C;
      handler[3] = &unk_100327378;
      handler[4] = self;
      dispatch_source_set_event_handler(v30, handler);
      dispatch_resume(self->_pollTimer);
    }
  }

  else
  {

    [(EventMonitor *)self _cancelPollTimer];
  }
}

- (void)_willRemoveEvent:(id)a3
{
  if ([a3 shouldKeepDaemonAlive])
  {
    v3 = +[Daemon daemon];

    [v3 releaseKeepAliveAssertion:@"EventMonitor"];
  }
}

@end