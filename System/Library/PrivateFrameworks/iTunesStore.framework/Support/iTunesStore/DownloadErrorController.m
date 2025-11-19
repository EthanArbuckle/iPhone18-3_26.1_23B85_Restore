@interface DownloadErrorController
+ (id)sharedErrorController;
- (DownloadErrorController)init;
- (void)_cancelErrorsPassingTest:(id)a3;
- (void)_displayScheduledErrors;
- (void)_networkTypeChangedNotification:(id)a3;
- (void)_scheduleErrorDisplay:(id)a3;
- (void)cancelDialogsWithDownloadIdentifier:(int64_t)a3;
- (void)dealloc;
- (void)showDownloadError:(id)a3;
@end

@implementation DownloadErrorController

- (DownloadErrorController)init
{
  v5.receiver = self;
  v5.super_class = DownloadErrorController;
  v2 = [(DownloadErrorController *)&v5 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.DownloadErrorController", 0);
    v2->_errors = objc_alloc_init(NSMutableArray);
    v2->_scheduledErrors = objc_alloc_init(NSMutableOrderedSet);
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:v2 selector:"_networkTypeChangedNotification:" name:ISNetworkTypeChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
  dispatch_release(self->_dispatchQueue);

  scheduledErrorTimer = self->_scheduledErrorTimer;
  if (scheduledErrorTimer)
  {
    dispatch_source_cancel(scheduledErrorTimer);
    dispatch_release(self->_scheduledErrorTimer);
  }

  v5.receiver = self;
  v5.super_class = DownloadErrorController;
  [(DownloadErrorController *)&v5 dealloc];
}

+ (id)sharedErrorController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100185A9C;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100383F80 != -1)
  {
    dispatch_once(&qword_100383F80, block);
  }

  return qword_100383F78;
}

- (void)cancelDialogsWithDownloadIdentifier:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100185B38;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)showDownloadError:(id)a3
{
  v4 = [a3 copy];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100185C44;
  v6[3] = &unk_100327350;
  v6[4] = v4;
  v6[5] = self;
  dispatch_async(dispatchQueue, v6);
}

- (void)_networkTypeChangedNotification:(id)a3
{
  if ([+[ISNetworkObserver networkType:a3]]>= 1)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100185E5C;
    block[3] = &unk_100327378;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_cancelErrorsPassingTest:(id)a3
{
  v9 = objc_alloc_init(NSMutableArray);
  v5 = [(NSMutableArray *)self->_errors count];
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      v7 = [(NSMutableArray *)self->_errors objectAtIndex:v6 - 2];
      if ((*(a3 + 2))(a3, v7))
      {
        v8 = [v7 _notification];
        if (v8)
        {
          [v9 addObject:v8];
        }

        [(NSMutableOrderedSet *)self->_scheduledErrors removeObject:v7];
        [(NSMutableArray *)self->_errors removeObjectAtIndex:v6 - 2];
      }

      --v6;
    }

    while (v6 > 1);
  }

  [+[UserNotificationCenter defaultCenter](UserNotificationCenter "defaultCenter")];
}

- (void)_displayScheduledErrors
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_scheduledErrors;
  v3 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 copyUserNotification];
        v9 = +[UserNotificationCenter defaultCenter];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100186138;
        v12[3] = &unk_10032A7B0;
        v12[4] = v7;
        v12[5] = self;
        [v7 _setNotification:{objc_msgSend(v9, "showUserNotification:withCompletionBlock:", v8, v12)}];
      }

      v4 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  if ([(NSMutableOrderedSet *)self->_scheduledErrors count])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  [(NSMutableOrderedSet *)self->_scheduledErrors removeAllObjects];
  scheduledErrorTimer = self->_scheduledErrorTimer;
  if (scheduledErrorTimer)
  {
    dispatch_source_cancel(scheduledErrorTimer);
    dispatch_release(self->_scheduledErrorTimer);
    self->_scheduledErrorTimer = 0;
  }
}

- (void)_scheduleErrorDisplay:(id)a3
{
  if (![(NSMutableOrderedSet *)self->_scheduledErrors count])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  [(NSMutableOrderedSet *)self->_scheduledErrors addObject:a3];
  if (!self->_scheduledErrorTimer)
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    self->_scheduledErrorTimer = v5;
    v6 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v5, v6, 0, 0);
    scheduledErrorTimer = self->_scheduledErrorTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001862D8;
    handler[3] = &unk_100327378;
    handler[4] = self;
    dispatch_source_set_event_handler(scheduledErrorTimer, handler);
    dispatch_resume(self->_scheduledErrorTimer);
  }
}

@end