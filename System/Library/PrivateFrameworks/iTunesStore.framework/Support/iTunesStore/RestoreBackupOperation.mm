@interface RestoreBackupOperation
+ (BOOL)cancelApplicationRestoreWithBundleID:(id)d error:(id *)error;
+ (BOOL)cancelApplicationRestoresWithBundleIDs:(id)ds;
+ (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size;
- (NSString)bundleIdentifier;
- (RestoreBackupOperation)initWithBundleIdentifier:(id)identifier withPriority:(int64_t)priority isFailed:(BOOL)failed;
- (void)cancel;
- (void)dealloc;
- (void)manager:(id)manager didFailBackupWithError:(id)error;
- (void)manager:(id)manager didFailRestoreWithError:(id)error;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)managerDidFinishBackup:(id)backup;
- (void)managerDidFinishRestore:(id)restore;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)run;
@end

@implementation RestoreBackupOperation

- (RestoreBackupOperation)initWithBundleIdentifier:(id)identifier withPriority:(int64_t)priority isFailed:(BOOL)failed
{
  v10.receiver = self;
  v10.super_class = RestoreBackupOperation;
  v8 = [(RestoreBackupOperation *)&v10 init];
  if (v8)
  {
    v8->_bundleID = [identifier copy];
    v8->_priority = priority;
    v8->_isFailed = failed;
    v8->_semaphore = dispatch_semaphore_create(0);
  }

  return v8;
}

- (void)dealloc
{
  semaphore = self->_semaphore;
  if (semaphore)
  {
    dispatch_release(semaphore);
  }

  v4.receiver = self;
  v4.super_class = RestoreBackupOperation;
  [(RestoreBackupOperation *)&v4 dealloc];
}

+ (BOOL)cancelApplicationRestoreWithBundleID:(id)d error:(id *)error
{
  v6 = objc_alloc_init(ISWeakLinkedClassForString());
  v7 = [v6 cancelApplicationRestoreWithBundleID:d error:error];

  return v7;
}

+ (BOOL)cancelApplicationRestoresWithBundleIDs:(id)ds
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = [ds countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *v37;
  v6 = 1;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v37 != v5)
      {
        objc_enumerationMutation(ds);
      }

      v8 = *(*(&v36 + 1) + 8 * i);
      v9 = [ApplicationWorkspace keepSafeHarborDataForBundleID:v8, v31];
      v10 = +[SSLogConfig sharedDaemonConfig];
      v11 = v10;
      if (v9)
      {
        if (!v10)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v26 = shouldLog | 2;
        }

        else
        {
          v26 = shouldLog;
        }

        if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v26 &= 2u;
        }

        if (v26)
        {
          v27 = objc_opt_class();
          v40 = 138412546;
          v41 = v27;
          v42 = 2112;
          v43 = v8;
          LODWORD(v33) = 22;
          v28 = _os_log_send_and_compose_impl();
          if (v28)
          {
            v29 = v28;
            [NSString stringWithCString:v28 encoding:4, &v40, v33];
            free(v29);
            SSFileLog();
          }
        }

        return 0;
      }

      if (!v10)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_INFO))
      {
        shouldLog2 &= 2u;
      }

      if (shouldLog2)
      {
        v13 = objc_opt_class();
        v40 = 138412546;
        v41 = v13;
        v42 = 2112;
        v43 = v8;
        LODWORD(v33) = 22;
        v32 = &v40;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          v16 = [NSString stringWithCString:v14 encoding:4, &v40, v33];
          free(v15);
          v32 = v16;
          SSFileLog();
        }
      }

      v35 = 0;
      if (![RestoreBackupOperation cancelApplicationRestoreWithBundleID:v8 error:&v35, v32])
      {
        v17 = +[SSLogConfig sharedDaemonConfig];
        if (!v17)
        {
          v17 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v17 shouldLog];
        if ([v17 shouldLogToDisk])
        {
          v19 = shouldLog3 | 2;
        }

        else
        {
          v19 = shouldLog3;
        }

        if (os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 2;
        }

        if (v20)
        {
          v21 = objc_opt_class();
          v40 = 138412802;
          v41 = v21;
          v42 = 2112;
          v43 = v8;
          v44 = 2112;
          v45 = v35;
          LODWORD(v33) = 32;
          v31 = &v40;
          v22 = _os_log_send_and_compose_impl();
          if (v22)
          {
            v23 = v22;
            v24 = [NSString stringWithCString:v22 encoding:4, &v40, v33];
            free(v23);
            v31 = v24;
            SSFileLog();
          }
        }

        v6 = 0;
      }
    }

    v4 = [ds countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  return v6;
}

+ (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size
{
  v6 = objc_alloc_init(ISWeakLinkedClassForString());
  v7 = [v6 restoreDataExistsForApplicationWithBundleID:d size:size];

  return v7;
}

- (NSString)bundleIdentifier
{
  v2 = self->_bundleID;

  return v2;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = RestoreBackupOperation;
  [(RestoreBackupOperation *)&v3 cancel];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)run
{
  [(RestoreBackupOperation *)self lock];
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:10000];
  [(RestoreBackupOperation *)self unlock];
  [(RestoreBackupOperation *)self sendProgressToDelegate];
  if ([objc_opt_class() restoreDataExistsForApplicationWithBundleID:self->_bundleID size:0])
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

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v6 = objc_opt_class();
      bundleID = self->_bundleID;
      isFailed = self->_isFailed;
      v76 = 138412802;
      v77 = v6;
      v78 = 2112;
      v79 = bundleID;
      v80 = 1024;
      LODWORD(v81) = isFailed;
      LODWORD(v74) = 28;
      v69 = &v76;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v76, v74];
        free(v10);
        v69 = v11;
        SSFileLog();
      }
    }

    v12 = 0;
    do
    {
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      if (os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v15 = shouldLog2;
      }

      else
      {
        v15 = shouldLog2 & 2;
      }

      if (v15)
      {
        v16 = objc_opt_class();
        v17 = self->_bundleID;
        v18 = self->_isFailed;
        v76 = 138413058;
        v77 = v16;
        v78 = 2048;
        v79 = v12;
        v80 = 2112;
        v81 = v17;
        v82 = 1024;
        v83 = v18;
        LODWORD(v74) = 38;
        v70 = &v76;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          v21 = [NSString stringWithCString:v19 encoding:4, &v76, v74];
          free(v20);
          v70 = v21;
          SSFileLog();
        }
      }

      v22 = [objc_alloc(ISWeakLinkedClassForString()) initWithDelegate:self];
      v75 = 0;
      v23 = +[SSLogConfig sharedDaemonConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v23 shouldLog];
      shouldLogToDisk = [v23 shouldLogToDisk];
      oSLogObject = [v23 OSLogObject];
      if (shouldLogToDisk)
      {
        shouldLog3 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        shouldLog3 &= 2u;
      }

      if (shouldLog3)
      {
        v27 = objc_opt_class();
        priority = self->_priority;
        v76 = 138412546;
        v77 = v27;
        v78 = 2048;
        v79 = priority;
        LODWORD(v74) = 22;
        v71 = &v76;
        v29 = _os_log_send_and_compose_impl();
        if (v29)
        {
          v30 = v29;
          v31 = [NSString stringWithCString:v29 encoding:4, &v76, v74];
          free(v30);
          v71 = v31;
          SSFileLog();
        }
      }

      if (self->_priority == 1)
      {
        v32 = +[SSLogConfig sharedDaemonConfig];
        if (!v32)
        {
          v32 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v32 shouldLog];
        shouldLogToDisk2 = [v32 shouldLogToDisk];
        oSLogObject2 = [v32 OSLogObject];
        if (shouldLogToDisk2)
        {
          shouldLog4 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          shouldLog4 &= 2u;
        }

        if (shouldLog4)
        {
          v36 = objc_opt_class();
          v37 = self->_priority;
          v76 = 138412546;
          v77 = v36;
          v78 = 2048;
          v79 = v37;
          LODWORD(v74) = 22;
          v72 = &v76;
          v38 = _os_log_send_and_compose_impl();
          if (v38)
          {
            v39 = v38;
            v40 = [NSString stringWithCString:v38 encoding:4, &v76, v74];
            free(v39);
            v72 = v40;
            SSFileLog();
          }
        }

        v41 = [v22 restoreApplicationWithBundleID:self->_bundleID failed:self->_isFailed withQOS:25 context:0 error:{&v75, v72}];
      }

      else
      {
        v42 = +[SSLogConfig sharedDaemonConfig];
        if (!v42)
        {
          v42 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v42 shouldLog];
        shouldLogToDisk3 = [v42 shouldLogToDisk];
        oSLogObject3 = [v42 OSLogObject];
        if (shouldLogToDisk3)
        {
          shouldLog5 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
        {
          shouldLog5 &= 2u;
        }

        if (shouldLog5)
        {
          v46 = objc_opt_class();
          v47 = self->_priority;
          v76 = 138412546;
          v77 = v46;
          v78 = 2048;
          v79 = v47;
          LODWORD(v74) = 22;
          v73 = &v76;
          v48 = _os_log_send_and_compose_impl();
          if (v48)
          {
            v49 = v48;
            v50 = [NSString stringWithCString:v48 encoding:4, &v76, v74];
            free(v49);
            v73 = v50;
            SSFileLog();
          }
        }

        v41 = [v22 restoreApplicationWithBundleID:self->_bundleID failed:self->_isFailed error:{&v75, v73}];
      }

      if (v41)
      {
        dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
        if ([(RestoreBackupOperation *)self isCancelled])
        {
          [v22 cancel];
        }
      }

      else
      {
        v51 = +[SSLogConfig sharedDaemonConfig];
        if (!v51)
        {
          v51 = +[SSLogConfig sharedConfig];
        }

        shouldLog6 = [v51 shouldLog];
        shouldLogToDisk4 = [v51 shouldLogToDisk];
        oSLogObject4 = [v51 OSLogObject];
        if (shouldLogToDisk4)
        {
          shouldLog6 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog6 &= 2u;
        }

        if (shouldLog6)
        {
          v55 = objc_opt_class();
          v76 = 138412546;
          v77 = v55;
          v78 = 2112;
          v79 = v75;
          LODWORD(v74) = 22;
          v69 = &v76;
          v56 = _os_log_send_and_compose_impl();
          if (v56)
          {
            v57 = v56;
            v58 = [NSString stringWithCString:v56 encoding:4, &v76, v74];
            free(v57);
            v69 = v58;
            SSFileLog();
          }
        }

        [(RestoreBackupOperation *)self setSuccess:0, v69];
        if (!v75)
        {
          SSError();
        }

        [(RestoreBackupOperation *)self setError:?];
      }

      [v22 setDelegate:0];

      if (([(RestoreBackupOperation *)self success]& 1) != 0 || [(RestoreBackupOperation *)self error])
      {
        break;
      }

      isCancelled = [(RestoreBackupOperation *)self isCancelled];
      v60 = v12++ > 3 ? 1 : isCancelled;
    }

    while ((v60 & 1) == 0);
  }

  else
  {
    [(RestoreBackupOperation *)self setSuccess:1];
    v61 = +[SSLogConfig sharedDaemonConfig];
    if (!v61)
    {
      v61 = +[SSLogConfig sharedConfig];
    }

    shouldLog7 = [v61 shouldLog];
    if ([v61 shouldLogToDisk])
    {
      v63 = shouldLog7 | 2;
    }

    else
    {
      v63 = shouldLog7;
    }

    if (!os_log_type_enabled([v61 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v63 &= 2u;
    }

    if (v63)
    {
      v64 = objc_opt_class();
      v65 = self->_bundleID;
      v66 = self->_isFailed;
      v76 = 138412802;
      v77 = v64;
      v78 = 2112;
      v79 = v65;
      v80 = 1024;
      LODWORD(v81) = v66;
      LODWORD(v74) = 28;
      v67 = _os_log_send_and_compose_impl();
      if (v67)
      {
        v68 = v67;
        [NSString stringWithCString:v67 encoding:4, &v76, v74];
        free(v68);
        SSFileLog();
      }
    }
  }
}

- (void)manager:(id)manager didFailBackupWithError:(id)error
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

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    bundleID = self->_bundleID;
    v16 = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = bundleID;
    v20 = 2112;
    errorCopy = error;
    LODWORD(v15) = 32;
    v14 = &v16;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v16, v15];
      free(v12);
      v14 = v13;
      SSFileLog();
    }
  }

  if (!error)
  {
    error = SSError();
  }

  [(RestoreBackupOperation *)self setError:error, v14];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)manager:(id)manager didFailRestoreWithError:(id)error
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

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    bundleID = self->_bundleID;
    v16 = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = bundleID;
    v20 = 2112;
    errorCopy = error;
    LODWORD(v15) = 32;
    v14 = &v16;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v16, v15];
      free(v12);
      v14 = v13;
      SSFileLog();
    }
  }

  if (!error)
  {
    error = SSError();
  }

  [(RestoreBackupOperation *)self setError:error, v14];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining
{
  v7 = [SSLogConfig sharedDaemonConfig:manager];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v16 = 138412546;
    v17 = objc_opt_class();
    v18 = 2048;
    progressCopy = progress;
    LODWORD(v15) = 22;
    v14 = &v16;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4, &v16, v15];
      free(v11);
      v14 = v12;
      SSFileLog();
    }
  }

  [(RestoreBackupOperation *)self lock];
  v13 = OBJC_IVAR___ISOperation__progress;
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setCurrentValue:{(objc_msgSend(*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress], "maxValue") * progress)}];
  [*&self->ISOperation_opaque[v13] snapshot];
  [(RestoreBackupOperation *)self unlock];
  [(RestoreBackupOperation *)self sendProgressToDelegate];
}

- (void)managerDidFinishBackup:(id)backup
{
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

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    bundleID = self->_bundleID;
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = bundleID;
    LODWORD(v13) = 22;
    v12 = &v14;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4, &v14, v13];
      free(v10);
      v12 = v11;
      SSFileLog();
    }
  }

  [(RestoreBackupOperation *)self setSuccess:1, v12];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)managerDidFinishRestore:(id)restore
{
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

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    bundleID = self->_bundleID;
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = bundleID;
    LODWORD(v13) = 22;
    v12 = &v14;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4, &v14, v13];
      free(v10);
      v12 = v11;
      SSFileLog();
    }
  }

  [(RestoreBackupOperation *)self setSuccess:1, v12];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)managerDidLoseConnectionToService:(id)service
{
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

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    bundleID = self->_bundleID;
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = bundleID;
    LODWORD(v11) = 22;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      [NSString stringWithCString:v9 encoding:4, &v12, v11];
      free(v10);
      SSFileLog();
    }
  }

  dispatch_semaphore_signal(self->_semaphore);
}

@end