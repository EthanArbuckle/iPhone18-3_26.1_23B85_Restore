@interface RescueAbandonedPlaceholderOperation
- (BOOL)_attemptRescueForBundleID:(id)a3 error:(id *)a4;
- (BOOL)_canRescueInstallTypeForBundleID:(id)a3 proxy:(id)a4 error:(id *)a5;
- (BOOL)_isRestoreRunning;
- (RescueAbandonedPlaceholderOperation)initWithBundleIdentifier:(id)a3;
- (id)_fetchAppProxyForBundleID:(id)a3 error:(id *)a4;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)a3;
@end

@implementation RescueAbandonedPlaceholderOperation

- (RescueAbandonedPlaceholderOperation)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RescueAbandonedPlaceholderOperation;
  v5 = [(RescueAbandonedPlaceholderOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (id)outputBlock
{
  [(RescueAbandonedPlaceholderOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(RescueAbandonedPlaceholderOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setOutputBlock:(id)a3
{
  v4 = a3;
  [(RescueAbandonedPlaceholderOperation *)self lock];
  v5 = [v4 copy];

  outputBlock = self->_outputBlock;
  self->_outputBlock = v5;

  [(RescueAbandonedPlaceholderOperation *)self unlock];
}

- (void)run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    bundleID = self->_bundleID;
    v25 = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = bundleID;
    v9 = v7;
    LODWORD(v21) = 22;
    v20 = &v25;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = [NSString stringWithCString:v10 encoding:4, &v25, v21];
    free(v10);
    v20 = v6;
    SSFileLog();
  }

LABEL_12:
  v11 = self->_bundleID;
  if (v11)
  {
    v24 = 0;
    v12 = [(RescueAbandonedPlaceholderOperation *)self _fetchAppProxyForBundleID:v11 error:&v24];
    v13 = v24;
    v14 = 0;
    if (!v13)
    {
      if (v12)
      {
        v15 = self->_bundleID;
        v23 = 0;
        v16 = [(RescueAbandonedPlaceholderOperation *)self _canRescueInstallTypeForBundleID:v15 proxy:v12 error:&v23];
        v13 = v23;
        v14 = 0;
        if (!v13)
        {
          if (v16)
          {
            v17 = self->_bundleID;
            v22 = 0;
            v14 = [(RescueAbandonedPlaceholderOperation *)self _attemptRescueForBundleID:v17 error:&v22];
            v13 = v22;
          }
        }
      }
    }
  }

  else
  {
    v13 = SSError();
    v12 = 0;
    v14 = 0;
  }

  [(RescueAbandonedPlaceholderOperation *)self setError:v13, v20];
  [(RescueAbandonedPlaceholderOperation *)self setSuccess:v14];
  v18 = [(RescueAbandonedPlaceholderOperation *)self outputBlock];
  v19 = v18;
  if (v18)
  {
    (*(v18 + 16))(v18, v14, v13);
    [(RescueAbandonedPlaceholderOperation *)self setOutputBlock:0];
  }
}

- (BOOL)_attemptRescueForBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v27 = 138412546;
    v28 = objc_opt_class();
    v29 = 2112;
    v30 = v6;
    v11 = v28;
    LODWORD(v25) = 22;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_12;
    }

    v10 = [NSString stringWithCString:v12 encoding:4, &v27, v25];
    free(v12);
    SSFileLog();
  }

LABEL_12:
  v13 = [[NSArray alloc] initWithObjects:{v6, 0}];
  v14 = [[RestoreDemotedApplicationsOperation alloc] initWithBundleIdentifiers:v13 options:0];
  v26 = 0;
  [(RescueAbandonedPlaceholderOperation *)self runSubOperation:v14 returningError:&v26];
  v15 = v26;
  if (!v15)
  {
    goto LABEL_25;
  }

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
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  v20 = objc_opt_class();
  v27 = 138412802;
  v28 = v20;
  v29 = 2112;
  v30 = v6;
  v31 = 2112;
  v32 = v15;
  v21 = v20;
  LODWORD(v25) = 32;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    v19 = [NSString stringWithCString:v22 encoding:4, &v27, v25];
    free(v22);
    SSFileLog();
LABEL_23:
  }

LABEL_25:
  if (a4)
  {
    v23 = v15;
    *a4 = v15;
  }

  return v15 == 0;
}

- (BOOL)_canRescueInstallTypeForBundleID:(id)a3 proxy:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 installType];
  if (v9 != 2)
  {
    if (v9 == 4)
    {
      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      v13 = [v10 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_27:
    v18 = 0;
    v19 = 1;
    if (!a5)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (![(RescueAbandonedPlaceholderOperation *)self _isRestoreRunning])
  {
    goto LABEL_27;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v14 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v13 = [v10 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_21:
  *v22 = 138412546;
  *&v22[4] = objc_opt_class();
  *&v22[12] = 2112;
  *&v22[14] = v8;
  v16 = *&v22[4];
  LODWORD(v21) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (!v17)
  {
    goto LABEL_24;
  }

  v13 = [NSString stringWithCString:v17 encoding:4, v22, v21, *v22, *&v22[16]];
  free(v17);
  SSFileLog();
LABEL_23:

LABEL_24:
  v18 = SSError();
  v19 = 0;
  if (a5)
  {
LABEL_25:
    v18 = v18;
    *a5 = v18;
  }

LABEL_26:

  return v19;
}

- (id)_fetchAppProxyForBundleID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [LSApplicationProxy applicationProxyForIdentifier:v5];
  if (!v6)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
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

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v24 = 138412546;
      *&v24[4] = objc_opt_class();
      *&v24[12] = 2112;
      *&v24[14] = v5;
      v13 = *&v24[4];
      LODWORD(v23) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_17:

        v8 = SSError();
        goto LABEL_30;
      }

      v12 = [NSString stringWithCString:v14 encoding:4, v24, v23, *v24, *&v24[16]];
      free(v14);
      SSFileLog();
    }

    goto LABEL_17;
  }

  v7 = v6;
  if ([v6 isInstalled] && (objc_msgSend(v7, "isPlaceholder") & 1) == 0)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      *v24 = 138412546;
      *&v24[4] = objc_opt_class();
      *&v24[12] = 2112;
      *&v24[14] = v5;
      v19 = *&v24[4];
      LODWORD(v23) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_29:

        v8 = SSError();

LABEL_30:
        v7 = 0;
        if (!a4)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, v24, v23, *v24, *&v24[8]];
      free(v20);
      SSFileLog();
    }

    goto LABEL_29;
  }

  v8 = 0;
  if (a4)
  {
LABEL_31:
    v21 = v8;
    *a4 = v8;
  }

LABEL_32:

  return v7;
}

- (BOOL)_isRestoreRunning
{
  v2 = objc_alloc_init(sub_10016B19C());
  v3 = [v2 restoreState];
  v4 = [v3 state] == 2;

  return v4;
}

@end