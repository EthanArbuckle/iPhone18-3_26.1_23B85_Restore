@interface ApplicationWorkspaceFinishOperation
- (ApplicationWorkspaceFinishOperation)initWithApplicationHandle:(id)a3 isPlaceholderRestore:(BOOL)a4;
- (void)runWithCompletionBlock:(id)a3;
@end

@implementation ApplicationWorkspaceFinishOperation

- (ApplicationWorkspaceFinishOperation)initWithApplicationHandle:(id)a3 isPlaceholderRestore:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = ApplicationWorkspaceFinishOperation;
  result = [(ApplicationWorkspaceOperation *)&v6 initWithApplicationHandle:a3];
  if (result)
  {
    result->_isPlaceholderRestore = a4;
  }

  return result;
}

- (void)runWithCompletionBlock:(id)a3
{
  v5 = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  isPlaceholderRestore = self->_isPlaceholderRestore;
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (isPlaceholderRestore)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
LABEL_19:
      *v33 = 138412290;
      *&v33[4] = [(ApplicationWorkspaceOperation *)self applicationHandle];
      LODWORD(v32) = 12;
      v31 = v33;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4, v33, v32, *v33];
        free(v15);
        v31 = v16;
        SSFileLog();
      }
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v12 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      goto LABEL_19;
    }
  }

  if ([(ApplicationWorkspaceOperation *)self applicationIsInstalled:v5, v31])
  {
    v17 = [LSApplicationProxy applicationProxyForIdentifier:v5 placeholder:1];
    if (v17)
    {
      v18 = [v6 installProgressForApplication:v17 withPhase:0];
      if ([v18 installState] != 5)
      {
        [v18 setCompletedUnitCount:1];
        [v18 setInstallState:5];
        [v18 setTotalUnitCount:1];
      }

      if ([v6 installPhaseFinishedForProgress:v18])
      {
        v17 = 1;
      }

      else
      {
        v24 = [v6 installProgressForApplication:v17 withPhase:0];
        if ([v24 installState] != 5)
        {
          [v24 setCompletedUnitCount:1];
          [v24 setInstallState:5];
          [v24 setTotalUnitCount:1];
        }

        v17 = [v6 installPhaseFinishedForProgress:v24];
      }

      v25 = +[SSLogConfig sharedDaemonConfig];
      if (!v25)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      v26 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v27 = v26 | 2;
      }

      else
      {
        v27 = v26;
      }

      if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v27 &= 2u;
      }

      if (v27)
      {
        v28 = self->_isPlaceholderRestore ? @"restored" : @"updated";
        v29 = [(ApplicationWorkspaceOperation *)self applicationHandle];
        *v33 = 138412802;
        *&v33[4] = v28;
        *&v33[12] = 2112;
        *&v33[14] = v29;
        v34 = 1024;
        v35 = v17;
        LODWORD(v32) = 28;
        v23 = _os_log_send_and_compose_impl();
        if (v23)
        {
LABEL_53:
          v30 = v23;
          [NSString stringWithCString:v23 encoding:4, v33, v32];
          free(v30);
          SSFileLog();
        }
      }
    }
  }

  else
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    if (!os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (!v21)
    {
      v17 = 0;
      goto LABEL_54;
    }

    v22 = [(ApplicationWorkspaceOperation *)self applicationHandle];
    *v33 = 138412290;
    *&v33[4] = v22;
    LODWORD(v32) = 12;
    v23 = _os_log_send_and_compose_impl();
    v17 = 0;
    if (v23)
    {
      goto LABEL_53;
    }
  }

LABEL_54:
  if (a3)
  {
    (*(a3 + 2))(a3, v17, 0, 0);
  }
}

@end