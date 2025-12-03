@interface DownloadsDatabaseGarbageCollectionOperation
+ (BOOL)garbageCollectionTimerIsExpired;
- (void)_garbageCollectPersistentManagers;
- (void)_garbageCollectSoftwareDownloads;
- (void)_garbageCollectWorkingDirectory;
- (void)_garbageCollectWorkingDirectoryPath:(id)path;
- (void)run;
@end

@implementation DownloadsDatabaseGarbageCollectionOperation

+ (BOOL)garbageCollectionTimerIsExpired
{
  v2 = CFPreferencesCopyAppValue(@"DownloadsScratchGarbageCollectionTime", kSSUserDefaultsIdentifier);
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v5 = v4 < -86400.0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)run
{
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectWorkingDirectory];
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectPersistentManagers];
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectSoftwareDownloads];
  v3 = +[NSDate date];
  v4 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"DownloadsScratchGarbageCollectionTime", v3, kSSUserDefaultsIdentifier);
  CFPreferencesAppSynchronize(v4);

  [(DownloadsDatabaseGarbageCollectionOperation *)self setSuccess:1];
}

- (void)_garbageCollectPersistentManagers
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[DownloadsDatabase downloadsDatabase];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10020A328;
  v20[3] = &unk_10032C4E0;
  v4 = v2;
  v21 = v4;
  [v3 readUsingTransactionBlock:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10020A508;
  v18[3] = &unk_10032C508;
  v5 = objc_alloc_init(NSMutableArray);
  v19 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
  if ([v5 count])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v5 count];
      v22 = 138412546;
      v23 = v10;
      v24 = 2048;
      v25 = v12;
      LODWORD(v15) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10020A57C;
        v16[3] = &unk_100329558;
        v17 = v5;
        v14 = [v3 modifyUsingTransactionBlock:v16];

        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4, &v22, v15];
      free(v13);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)_garbageCollectSoftwareDownloads
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v13 = 138412290;
  v14 = objc_opt_class();
  v7 = v14;
  LODWORD(v11) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [NSString stringWithCString:v8 encoding:4, &v13, v11];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  v9 = +[DownloadsDatabase downloadsDatabase];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10020A888;
  v12[3] = &unk_100329558;
  v12[4] = self;
  v10 = [v9 modifyUsingTransactionBlock:v12];
}

- (void)_garbageCollectWorkingDirectory
{
  v3 = +[ScratchManager baseDirectoryPath];
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectWorkingDirectoryPath:v3];

  v4 = +[ApplicationWorkspace defaultWorkspace];
  isMultiUser = [v4 isMultiUser];

  if (isMultiUser)
  {
    v6 = +[ScratchManager containerDirectoryPath];
    [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectWorkingDirectoryPath:v6];
  }
}

- (void)_garbageCollectWorkingDirectoryPath:(id)path
{
  pathCopy = path;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v68 = 138412546;
    v69 = objc_opt_class();
    v70 = 2112;
    v71 = pathCopy;
    v8 = v69;
    LODWORD(v46) = 22;
    v44 = &v68;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v68, v46];
    free(v9);
    v44 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  v10 = objc_alloc_init(NSFileManager);
  v11 = objc_alloc_init(NSMutableSet);
  [v10 contentsOfDirectoryAtPath:pathCopy error:0];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v12 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(obj);
        }

        longLongValue = [*(*(&v62 + 1) + 8 * i) longLongValue];
        if (longLongValue)
        {
          v17 = [[NSNumber alloc] initWithLongLong:longLongValue];
          [v11 addObject:v17];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    v18 = +[DownloadsDatabase downloadsDatabase];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10020B3B4;
    v57[3] = &unk_10032B650;
    v19 = v11;
    v58 = v19;
    selfCopy = self;
    v49 = pathCopy;
    v20 = pathCopy;
    v60 = v20;
    v48 = v10;
    v21 = v10;
    v61 = v21;
    [v18 readUsingTransactionBlock:v57];

    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v47 = v11;
    shouldLog2 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = shouldLog2 | 2;
    }

    else
    {
      v24 = shouldLog2;
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 2;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [v19 count];
      v68 = 138412546;
      v69 = v27;
      v70 = 2048;
      v71 = v29;
      LODWORD(v46) = 22;
      v45 = &v68;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
LABEL_34:

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v50 = v19;
        v31 = [v50 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (!v31)
        {
          goto LABEL_51;
        }

        v32 = v31;
        v33 = *v54;
        while (1)
        {
          v34 = 0;
          v35 = &CFDictionaryGetValue_ptr;
          do
          {
            if (*v54 != v33)
            {
              objc_enumerationMutation(v50);
            }

            stringValue = [*(*(&v53 + 1) + 8 * v34) stringValue];
            v37 = [v20 stringByAppendingPathComponent:stringValue];

            [v21 removeItemAtPath:v37 error:0];
            sharedDaemonConfig = [v35[412] sharedDaemonConfig];
            if (!sharedDaemonConfig)
            {
              sharedDaemonConfig = [v35[412] sharedConfig];
            }

            shouldLog3 = [sharedDaemonConfig shouldLog];
            if ([sharedDaemonConfig shouldLogToDisk])
            {
              shouldLog3 |= 2u;
            }

            oSLogObject3 = [sharedDaemonConfig OSLogObject];
            if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
            {
              shouldLog3 &= 2u;
            }

            if (shouldLog3)
            {
              v41 = objc_opt_class();
              v68 = 138412546;
              v69 = v41;
              v70 = 2112;
              v71 = v37;
              v42 = v41;
              LODWORD(v46) = 22;
              v45 = &v68;
              v43 = _os_log_send_and_compose_impl();

              v35 = &CFDictionaryGetValue_ptr;
              if (!v43)
              {
                goto LABEL_49;
              }

              oSLogObject3 = [NSString stringWithCString:v43 encoding:4, &v68, v46];
              free(v43);
              v45 = oSLogObject3;
              SSFileLog();
            }

LABEL_49:
            v34 = v34 + 1;
          }

          while (v32 != v34);
          v32 = [v50 countByEnumeratingWithState:&v53 objects:v66 count:16];
          if (!v32)
          {
LABEL_51:

            v10 = v48;
            pathCopy = v49;
            v11 = v47;
            goto LABEL_52;
          }
        }
      }

      oSLogObject2 = [NSString stringWithCString:v30 encoding:4, &v68, v46];
      free(v30);
      v45 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_34;
  }

LABEL_52:
}

@end