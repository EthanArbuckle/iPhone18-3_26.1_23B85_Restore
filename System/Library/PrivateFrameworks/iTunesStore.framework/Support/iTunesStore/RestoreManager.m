@interface RestoreManager
+ (id)sharedInstance;
+ (void)_applyRestoreCellularAccess;
- (BOOL)isCellularAllowed;
- (RestoreManager)init;
- (void)_queue_fetchRestoreCellularAccess;
- (void)_queue_restoreStateChangeHandler;
- (void)dealloc;
@end

@implementation RestoreManager

+ (id)sharedInstance
{
  if (qword_100384128 != -1)
  {
    sub_100272604();
  }

  v3 = qword_100384130;

  return v3;
}

- (RestoreManager)init
{
  v16.receiver = self;
  v16.super_class = RestoreManager;
  v2 = [(RestoreManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.itunesstored.RestoreManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    if (_os_feature_enabled_impl())
    {
      v6 = ISWeakLinkedStringConstantForString();
      v7 = [v6 UTF8String];

      v8 = v2->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001F83C0;
      handler[3] = &unk_10032C278;
      v9 = v2;
      v15 = v9;
      notify_register_dispatch(v7, &v2->_restoreStateToken, v8, handler);
      v10 = v2->_dispatchQueue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001F83C8;
      v12[3] = &unk_100327110;
      v13 = v9;
      dispatch_async(v10, v12);
    }
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_restoreCellularToken);
  notify_cancel(self->_restoreStateToken);
  v3.receiver = self;
  v3.super_class = RestoreManager;
  [(RestoreManager *)&v3 dealloc];
}

- (BOOL)isCellularAllowed
{
  if (_os_feature_enabled_impl())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001F84F0;
    v6[3] = &unk_1003274C0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(dispatchQueue, v6);
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

+ (void)_applyRestoreCellularAccess
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[DownloadsDatabase downloadsDatabase];
    [v2 modifyAsyncUsingTransactionBlock:&stru_10032C298];
  }
}

- (void)_queue_fetchRestoreCellularAccess
{
  if (_os_feature_enabled_impl())
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    restoreManager = self->_restoreManager;
    if (!restoreManager)
    {
      sub_100272618(a2, self, &self->_restoreManager, &v6);
      restoreManager = v6;
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001F8950;
    v5[3] = &unk_10032C2C0;
    v5[4] = self;
    [(MBManager *)restoreManager fetchBackgroundRestoreCellularAccessWithCompletion:v5];
  }
}

- (void)_queue_restoreStateChangeHandler
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  state64 = 0;
  state = notify_get_state(self->_restoreStateToken, &state64);
  v4 = +[SSLogConfig sharedDaemonConfig];
  v5 = v4;
  if (state)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v30 = 67109120;
      LODWORD(v31) = state;
      LODWORD(v27) = 8;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        return;
      }

      v8 = [NSString stringWithCString:v10 encoding:4, &v30, v27];
      free(v10);
      SSFileLog();
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v11 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v5 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 2;
  }

  if (!v14)
  {
    goto LABEL_27;
  }

  v30 = 134217984;
  v31 = state64;
  LODWORD(v27) = 12;
  v26 = &v30;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v13 = [NSString stringWithCString:v15 encoding:4, &v30, v27];
    free(v15);
    v26 = v13;
    SSFileLog();
LABEL_27:
  }

  if (!self->_restoreManager && state64 - 1 <= 1)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      LOWORD(v30) = 0;
      LODWORD(v27) = 2;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_42:

        v22 = objc_alloc_init(sub_10016B19C());
        restoreManager = self->_restoreManager;
        self->_restoreManager = v22;

        v24 = [@"com.apple.private.restrict-post.MobileBackup.backgroundCellularAccessChanged" UTF8String];
        dispatchQueue = self->_dispatchQueue;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1001F8FE0;
        handler[3] = &unk_10032C278;
        handler[4] = self;
        notify_register_dispatch(v24, &self->_restoreCellularToken, dispatchQueue, handler);
        [(RestoreManager *)self _queue_fetchRestoreCellularAccess];
        return;
      }

      v19 = [NSString stringWithCString:v21 encoding:4, &v30, v27];
      free(v21);
      SSFileLog();
    }

    goto LABEL_42;
  }
}

@end