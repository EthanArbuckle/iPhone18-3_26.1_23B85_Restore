@interface ApplicationWorkspaceState
+ (BOOL)_completeNotification:(id)notification bundleIdentifier:(id)identifier;
+ (BOOL)_incompleteNotification:(id)notification forDownload:(int64_t)download bundleIdentifier:(id)identifier;
@end

@implementation ApplicationWorkspaceState

+ (BOOL)_completeNotification:(id)notification bundleIdentifier:(id)identifier
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    identifierCopy = identifier;
    LODWORD(v11) = 22;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4, &v12, v11];
      free(v9);
      SSFileLog();
    }
  }

  return 0;
}

+ (BOOL)_incompleteNotification:(id)notification forDownload:(int64_t)download bundleIdentifier:(id)identifier
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (SSDebugShouldUseAppstored())
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    shouldLogToDisk = [v8 shouldLogToDisk];
    oSLogObject = [v8 OSLogObject];
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v12 = objc_opt_class();
      v13 = +[SSStackShot generateSymbolicatedStackShot];
      v32 = 138412802;
      v33 = v12;
      v34 = 2048;
      notificationCopy = download;
      v36 = 2112;
      identifierCopy = v13;
      LODWORD(v26) = 32;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        [NSString stringWithCString:v14 encoding:4, &v32, v26];
        free(v15);
        SSFileLog();
      }
    }
  }

  else
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v16 shouldLog];
    shouldLogToDisk2 = [v16 shouldLogToDisk];
    oSLogObject2 = [v16 OSLogObject];
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v20 = objc_opt_class();
      v32 = 138412802;
      v33 = v20;
      v34 = 2112;
      notificationCopy = notification;
      v36 = 2112;
      identifierCopy = identifier;
      LODWORD(v26) = 32;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        [NSString stringWithCString:v21 encoding:4, &v32, v26];
        free(v22);
        SSFileLog();
      }
    }

    v23 = objc_autoreleasePoolPush();
    if ([identifier length])
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000CDDB4;
      v27[3] = &unk_100328120;
      v27[4] = identifier;
      v27[5] = notification;
      v27[6] = &v28;
      v27[7] = download;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    }

    objc_autoreleasePoolPop(v23);
  }

  v24 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  return v24;
}

@end