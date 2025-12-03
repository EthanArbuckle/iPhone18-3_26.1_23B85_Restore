@interface BTStateWatcher
+ (id)monitorBuddyStateWithAction:(id)action;
+ (id)monitorFirstUnlockWithAction:(id)action;
+ (id)monitorURL:(id)l action:(id)action;
- (BOOL)start;
- (BTStateWatcher)initWithURL:(id)l action:(id)action;
- (void)cancel;
- (void)dealloc;
- (void)directoryChanged;
- (void)fileDiscovered;
@end

@implementation BTStateWatcher

- (BTStateWatcher)initWithURL:(id)l action:(id)action
{
  lCopy = l;
  actionCopy = action;
  v19.receiver = self;
  v19.super_class = BTStateWatcher;
  v8 = [(BTStateWatcher *)&v19 init];
  if (v8)
  {
    v9 = v8;
    standardizedURL = [lCopy standardizedURL];
    v11 = CFURLCopyPath(standardizedURL);
    v12 = [(__CFString *)v11 hasSuffix:@"/"];
    CFRelease(v11);
    v18.receiver = v9;
    v18.super_class = BTStateWatcher;
    v13 = [(BTStateWatcher *)&v18 init];
    v14 = v13;
    if (v12)
    {
      [(BTStateWatcher *)v13 setDirectoryURL:standardizedURL];
      [(BTStateWatcher *)v14 setTargetFilename:0];
    }

    else
    {
      uRLByDeletingLastPathComponent = [(__CFURL *)standardizedURL URLByDeletingLastPathComponent];
      [(BTStateWatcher *)v14 setDirectoryURL:uRLByDeletingLastPathComponent];

      lastPathComponent = [(__CFURL *)standardizedURL lastPathComponent];
      [(BTStateWatcher *)v14 setTargetFilename:lastPathComponent];
    }

    [(BTStateWatcher *)v14 setBlock:actionCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)dealloc
{
  [(BTStateWatcher *)self cancel];
  v3.receiver = self;
  v3.super_class = BTStateWatcher;
  [(BTStateWatcher *)&v3 dealloc];
}

- (BOOL)start
{
  block = [(BTStateWatcher *)self block];

  if (block)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A427C;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    return 1;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = qword_100300AE8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      directoryURL = [(BTStateWatcher *)self directoryURL];
      targetFilename = [(BTStateWatcher *)self targetFilename];
      sub_1001F4038(directoryURL, targetFilename, buf, v5);
    }

    directoryURL2 = [(BTStateWatcher *)self directoryURL];
    path = [directoryURL2 path];
    v10 = path;
    -[BTStateWatcher setFd:](self, "setFd:", open([path fileSystemRepresentation], 0x8000));

    v11 = [(BTStateWatcher *)self fd];
    v4 = v11 > 0;
    if (v11 < 1)
    {
      v26 = qword_100300AE8;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        directoryURL3 = [(BTStateWatcher *)self directoryURL];
        sub_1001F40A8(directoryURL3, v40, v26);
      }
    }

    else
    {
      v12 = [(BTStateWatcher *)self fd];
      v13 = dispatch_get_global_queue(0, 0);
      v14 = dispatch_source_create(&_dispatch_source_type_vnode, v12, 2uLL, v13);
      [(BTStateWatcher *)self setDispatchSourceChange:v14];

      dispatchSourceChange = [(BTStateWatcher *)self dispatchSourceChange];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000A4300;
      handler[3] = &unk_1002B8218;
      handler[4] = self;
      objc_copyWeak(&v36, &location);
      dispatch_source_set_event_handler(dispatchSourceChange, handler);

      dispatchSourceChange2 = [(BTStateWatcher *)self dispatchSourceChange];
      dispatch_resume(dispatchSourceChange2);

      v17 = qword_100300AE8;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        directoryURL4 = [(BTStateWatcher *)self directoryURL];
        path2 = [directoryURL4 path];
        sub_1001F4100(path2, v40, v17, directoryURL4);
      }

      v20 = dispatch_source_create(&_dispatch_source_type_vnode, [(BTStateWatcher *)self fd], 0x61uLL, v13);
      [(BTStateWatcher *)self setDispatchSourceAbort:v20];

      dispatchSourceAbort = [(BTStateWatcher *)self dispatchSourceAbort];
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_1000A4360;
      v32 = &unk_1002B8218;
      selfCopy = self;
      objc_copyWeak(&v34, &location);
      dispatch_source_set_event_handler(dispatchSourceAbort, &v29);

      v22 = [(BTStateWatcher *)self dispatchSourceAbort:v29];
      dispatch_resume(v22);

      v23 = qword_100300AE8;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        directoryURL5 = [(BTStateWatcher *)self directoryURL];
        path3 = [directoryURL5 path];
        sub_1001F4160(path3, v39, v23, directoryURL5);
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v36);
    }

    objc_destroyWeak(&location);
  }

  return v4;
}

+ (id)monitorURL:(id)l action:(id)action
{
  actionCopy = action;
  lCopy = l;
  v7 = [[BTStateWatcher alloc] initWithURL:lCopy action:actionCopy];

  targetFilename = [(BTStateWatcher *)v7 targetFilename];

  if (targetFilename)
  {
    v9 = qword_100300AE8;
    if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001F4310(v9);
    }

    [(BTStateWatcher *)v7 directoryChanged];
  }

  if (![(BTStateWatcher *)v7 triggered]&& ![(BTStateWatcher *)v7 start])
  {
    [(BTStateWatcher *)v7 cancel];

    v7 = 0;
  }

  return v7;
}

+ (id)monitorBuddyStateWithAction:(id)action
{
  actionCopy = action;
  v4 = objc_opt_new();
  [v4 setIsWatchingBuddy:1];
  [v4 setBlock:actionCopy];

  out_token = -1;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000A45D8;
  v12 = &unk_1002B9C10;
  v14 = -1;
  v13 = v4;
  v5 = v4;
  notify_register_dispatch("com.apple.purplebuddy.setupdone", &out_token, &_dispatch_main_q, &v9);
  if ([v5 start])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

+ (id)monitorFirstUnlockWithAction:(id)action
{
  actionCopy = action;
  v4 = objc_opt_new();
  [v4 setBlock:actionCopy];

  out_token = -1;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000A4780;
  v12 = &unk_1002B9C10;
  v14 = -1;
  v13 = v4;
  v5 = v4;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, &_dispatch_main_q, &v9);
  if ([v5 start])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (void)directoryChanged
{
  targetFilename = [(BTStateWatcher *)self targetFilename];

  if (targetFilename)
  {
    v4 = +[NSFileManager defaultManager];
    directoryURL = [(BTStateWatcher *)self directoryURL];
    v23 = 0;
    v6 = [v4 contentsOfDirectoryAtURL:directoryURL includingPropertiesForKeys:0 options:0 error:&v23];
    v7 = v23;

    if (v7)
    {
      v8 = qword_100300AE8;
      if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_ERROR))
      {
        sub_1001F4354(v8, self, v7);
      }

      [(BTStateWatcher *)self cancel];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            lastPathComponent = [*(*(&v19 + 1) + 8 * v13) lastPathComponent];
            targetFilename2 = [(BTStateWatcher *)self targetFilename];
            v16 = [lastPathComponent isEqualToString:targetFilename2];

            if (v16)
            {
              [(BTStateWatcher *)self fileDiscovered];

              v6 = v18;
              goto LABEL_18;
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v17 = qword_100300AE8;
      v6 = v18;
      if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001F4410(v17);
      }
    }

LABEL_18:
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A4AB4;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)fileDiscovered
{
  v3 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F44A0(v3);
  }

  [(BTStateWatcher *)self setTriggered:1];
  [(BTStateWatcher *)self cancel];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4BC0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cancel
{
  v3 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F4530(v3);
  }

  dispatchSourceChange = [(BTStateWatcher *)self dispatchSourceChange];

  if (dispatchSourceChange)
  {
    dispatchSourceChange2 = [(BTStateWatcher *)self dispatchSourceChange];
    dispatch_source_cancel(dispatchSourceChange2);

    [(BTStateWatcher *)self setDispatchSourceChange:0];
  }

  dispatchSourceAbort = [(BTStateWatcher *)self dispatchSourceAbort];

  if (dispatchSourceAbort)
  {
    dispatchSourceAbort2 = [(BTStateWatcher *)self dispatchSourceAbort];
    dispatch_source_cancel(dispatchSourceAbort2);

    [(BTStateWatcher *)self setDispatchSourceAbort:0];
  }

  if ([(BTStateWatcher *)self fd]>= 1)
  {
    close([(BTStateWatcher *)self fd]);
    [(BTStateWatcher *)self setFd:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, BYSetupAssistantFinishedDarwinNotification, 0);
  }
}

@end