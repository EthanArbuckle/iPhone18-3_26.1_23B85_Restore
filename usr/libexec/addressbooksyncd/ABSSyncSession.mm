@interface ABSSyncSession
- (ABSSyncSession)init;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)lateSetupForSession:(id)session;
- (void)resetDataStoreForSyncSession:(id)session completion:(id)completion;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation ABSSyncSession

- (ABSSyncSession)init
{
  v9.receiver = self;
  v9.super_class = ABSSyncSession;
  v2 = [(ABSSyncSession *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isFirstEnqueue = 257;
    v4 = os_transaction_create();
    keepAliveTransaction = v3->_keepAliveTransaction;
    v3->_keepAliveTransaction = v4;

    v3->_abortAfter = 0;
    v6 = objc_alloc_init(NSMutableSet);
    accountIdentifiers = v3->_accountIdentifiers;
    v3->_accountIdentifiers = v6;
  }

  return v3;
}

- (void)lateSetupForSession:(id)session
{
  sessionCopy = session;
  v5 = objc_opt_new();
  v6 = +[SYDevice targetableDevice];
  systemBuildVersion = [v6 systemBuildVersion];
  [v5 setObject:systemBuildVersion forKeyedSubscript:off_100071988];

  sessionMetadata = [sessionCopy sessionMetadata];
  if (sessionMetadata)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003BBAC(v9);
      }

      sessionMetadata = 0;
    }
  }

  v10 = CFPreferencesCopyAppValue(@"internal_forceEncoding", @"com.apple.addressbooksync");
  if (!v10)
  {
    v11 = off_100071998;
    v12 = [sessionMetadata objectForKeyedSubscript:off_100071990];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;

      v13 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543362;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received encoding handshake: %{public}@", &v23, 0xCu);
      }
    }

    else
    {
      v10 = v11;
    }
  }

  if ([v10 isEqualToString:off_100071998])
  {
    v14 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using vCard encoder.", &v23, 2u);
    }

LABEL_25:
    v16 = &off_100071998;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:off_1000719A0])
  {
    v15 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Using fast encoder.", &v23, 2u);
    }

    v16 = &off_1000719A0;
  }

  else
  {
    v17 = [v10 isEqualToString:off_1000719B0];
    v18 = *(qword_100071D00 + 8);
    if (!v17)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003BC54(v18);
      }

      goto LABEL_25;
    }

    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Using protobuf encoding.", &v23, 2u);
    }

    v16 = &off_1000719B0;
  }

LABEL_26:
  [v5 setObject:*v16 forKeyedSubscript:off_100071990];
  v19 = [sessionMetadata objectForKeyedSubscript:off_1000719B8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v19 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v21 = [NSNumber numberWithBool:bOOLValue];
  [v5 setObject:v21 forKeyedSubscript:off_1000719B8];

  v22 = [[ABSSerializer alloc] initWithOptions:v5];
  [sessionCopy setSerializer:v22];

  [(ABSSyncSession *)self setOptions:v5];
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  if (self->_isFirstEnqueue)
  {
    self->_isFirstEnqueue = 0;
    [(ABSSyncSession *)self lateSetupForSession:session, changes, error, v5, v6];
  }

  return 2;
}

- (void)resetDataStoreForSyncSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  sessionCopy = session;
  v8 = os_transaction_create();
  targetQueue = [sessionCopy targetQueue];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000339F0;
  block[3] = &unk_10005CF80;
  v13 = v8;
  v14 = completionCopy;
  block[4] = self;
  v10 = v8;
  v11 = completionCopy;
  dispatch_async(targetQueue, block);
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  sessionCopy = session;
  changesCopy = changes;
  completionCopy = completion;
  v9 = &qword_100071D00;
  v10 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v39 = "ABSSyncSession.m";
    v40 = 1024;
    v41 = 135;
    v42 = 2080;
    v43 = "[ABSSyncSession syncSession:applyChanges:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d %s --mark--", buf, 0x1Cu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.watch.eventkitsync.stall", 0, 0, 1u);
  context = objc_autoreleasePoolPush();
  if (self->_isFirstApplyChange)
  {
    self->_isFirstApplyChange = 0;
  }

  v12 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Applying changes", buf, 2u);
  }

  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(changesCopy, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = changesCopy;
  v32 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v15 = *v34;
    v31 = *v34;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        if ([(ABSSyncSession *)self abortAfter]>= 1)
        {
          if (+[NDTLog isInternalDevice])
          {
            [(ABSSyncSession *)self setAbortAfter:[(ABSSyncSession *)self abortAfter]- 1];
            if (![(ABSSyncSession *)self abortAfter])
            {
              sub_10003B450();
            }
          }
        }

        v18 = objc_autoreleasePoolPush();
        if ([SYDegenerateChange isDegenerate:v17])
        {
          v19 = *(*v9 + 8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Deserialization failed.", buf, 2u);
          }
        }

        else
        {
          changeType = [v17 changeType];
          if (changeType == 1)
          {
            [v13 addObject:v17];
            goto LABEL_29;
          }

          v21 = changeType;
          if ([v13 count])
          {
            v22 = v14;
            v23 = v9;
            v24 = *(*v9 + 8);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Flushing outstanding batch adds.", buf, 2u);
            }

            syncController = [(ABSSyncSession *)self syncController];
            [syncController addSyChanges:v13 forSession:self];

            [v13 removeAllObjects];
            v9 = v23;
            v14 = v22;
            v15 = v31;
          }

          if (v21 == 3)
          {
            syncController2 = [(ABSSyncSession *)self syncController];
            [syncController2 deleteSyChange:v17];
          }

          else
          {
            if (v21 != 2)
            {
              goto LABEL_29;
            }

            syncController2 = [(ABSSyncSession *)self syncController];
            [syncController2 updateSyChange:v17 forSession:self];
          }
        }

LABEL_29:
        objc_autoreleasePoolPop(v18);
      }

      v32 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  if ([v13 count])
  {
    syncController3 = [(ABSSyncSession *)self syncController];
    [syncController3 addSyChanges:v13 forSession:self];
  }

  completionCopy[2](completionCopy, 1, 0);

  objc_autoreleasePoolPop(context);
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  errorCopy = error;
  capturedError = [(ABSSyncSession *)self capturedError];

  if (!errorCopy && capturedError)
  {
    errorCopy = [(ABSSyncSession *)self capturedError];
  }

  v7 = *(qword_100071D00 + 8);
  if (errorCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003BC98(errorCopy, v7);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sync complete with no error.", v12, 2u);
  }

  domain = [errorCopy domain];
  v9 = [domain isEqualToString:SYErrorDomain];

  if (v9)
  {
    v10 = [errorCopy code] != 2023;
  }

  else
  {
    v10 = 1;
  }

  progressReporter = [(ABSSyncSession *)self progressReporter];
  [progressReporter doneForRealNotifyingPairedSync:v10];

  [(ABSSyncSession *)self setProgressReporter:0];
}

@end