@interface ApplicationWorkspaceClearProgressOperation
- (void)runWithCompletionBlock:(id)a3;
@end

@implementation ApplicationWorkspaceClearProgressOperation

- (void)runWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v6 = [(ApplicationWorkspaceOperation *)self applicationHandle];
  v7 = [v6 bundleID];
  v8 = [(ApplicationWorkspaceOperation *)self applicationIsInstalled:v7];

  if (v8)
  {
    v9 = [LSApplicationProxy applicationProxyForIdentifier:self->_bundleID placeholder:1];
    if (![v9 foundBackingBundle])
    {
      goto LABEL_37;
    }

    v10 = [v5 installProgressForApplication:v9 withPhase:0];
    v11 = v10;
    if (v10)
    {
      [v10 cancel];
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v12 OSLogObject];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v14 &= 2u;
      }

      if (!v14)
      {
        goto LABEL_34;
      }

      v16 = [(ApplicationWorkspaceOperation *)self applicationHandle];
      *v24 = 138412546;
      *&v24[4] = v16;
      *&v24[12] = 2112;
      *&v24[14] = v11;
      LODWORD(v23) = 22;
    }

    else
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v20 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v21 = v20 | 2;
      }

      else
      {
        v21 = v20;
      }

      v15 = [v12 OSLogObject];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 &= 2u;
      }

      if (!v21)
      {
        goto LABEL_34;
      }

      v16 = [(ApplicationWorkspaceOperation *)self applicationHandle];
      *v24 = 138412546;
      *&v24[4] = v16;
      *&v24[12] = 2112;
      *&v24[14] = 0;
      LODWORD(v23) = 22;
    }

    v22 = _os_log_send_and_compose_impl();

    if (!v22)
    {
LABEL_35:

      goto LABEL_36;
    }

    v15 = [NSString stringWithCString:v22 encoding:4, v24, v23, *v24, *&v24[16]];
    free(v22);
    SSFileLog();
LABEL_34:

    goto LABEL_35;
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v17 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v11 = [v9 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    [(ApplicationWorkspaceOperation *)self applicationHandle];
    *&v24[4] = *v24 = 138412290;
    LODWORD(v23) = 12;
    v19 = _os_log_send_and_compose_impl();

    if (!v19)
    {
      goto LABEL_37;
    }

    v11 = [NSString stringWithCString:v19 encoding:4, v24, v23];
    free(v19);
    SSFileLog();
  }

LABEL_36:

LABEL_37:
  if (v4)
  {
    (*(v4 + 2))(v4, v8 ^ 1, 0, 0);
  }
}

@end