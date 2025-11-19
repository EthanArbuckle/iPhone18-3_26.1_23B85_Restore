@interface ApplicationWorkspaceState
+ (BOOL)_completeNotification:(id)a3 bundleIdentifier:(id)a4;
+ (BOOL)_incompleteNotification:(id)a3 forDownload:(int64_t)a4 bundleIdentifier:(id)a5;
@end

@implementation ApplicationWorkspaceState

+ (BOOL)_completeNotification:(id)a3 bundleIdentifier:(id)a4
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
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

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = a4;
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

+ (BOOL)_incompleteNotification:(id)a3 forDownload:(int64_t)a4 bundleIdentifier:(id)a5
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

    v9 = [v8 shouldLog];
    v10 = [v8 shouldLogToDisk];
    v11 = [v8 OSLogObject];
    if (v10)
    {
      v9 |= 2u;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v12 = objc_opt_class();
      v13 = +[SSStackShot generateSymbolicatedStackShot];
      v32 = 138412802;
      v33 = v12;
      v34 = 2048;
      v35 = a4;
      v36 = 2112;
      v37 = v13;
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

    v17 = [v16 shouldLog];
    v18 = [v16 shouldLogToDisk];
    v19 = [v16 OSLogObject];
    if (v18)
    {
      v17 |= 2u;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v20 = objc_opt_class();
      v32 = 138412802;
      v33 = v20;
      v34 = 2112;
      v35 = a3;
      v36 = 2112;
      v37 = a5;
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
    if ([a5 length])
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000CDDB4;
      v27[3] = &unk_100328120;
      v27[4] = a5;
      v27[5] = a3;
      v27[6] = &v28;
      v27[7] = a4;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    }

    objc_autoreleasePoolPop(v23);
  }

  v24 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  return v24;
}

@end