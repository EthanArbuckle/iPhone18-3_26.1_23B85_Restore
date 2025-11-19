@interface GetAutomaticDownloadKindsOperation
- (NSArray)enabledDownloadKinds;
- (SSAuthenticationContext)authenticationContext;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)a3;
@end

@implementation GetAutomaticDownloadKindsOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GetAutomaticDownloadKindsOperation;
  [(GetAutomaticDownloadKindsOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(GetAutomaticDownloadKindsOperation *)self lock];
  v3 = self->_authContext;
  [(GetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (NSArray)enabledDownloadKinds
{
  [(GetAutomaticDownloadKindsOperation *)self lock];
  v3 = self->_enabledDownloadKinds;
  [(GetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (void)setAuthenticationContext:(id)a3
{
  [(GetAutomaticDownloadKindsOperation *)self lock];
  authContext = self->_authContext;
  if (authContext != a3)
  {

    self->_authContext = [a3 copy];
  }

  [(GetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setAuthenticationContext:{-[GetAutomaticDownloadKindsOperation authenticationContext](self, "authenticationContext")}];
  [v3 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v3 setUseUserSpecificURLBag:1];
  v4 = objc_alloc_init(SSMutableURLRequestProperties);
  [v4 setURLBagKey:@"enabled-media-types"];
  [v3 setRequestProperties:v4];

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

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v32 = 138412290;
    v33 = objc_opt_class();
    LODWORD(v30) = 12;
    v28 = &v32;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, &v32, v30];
      free(v9);
      v28 = v10;
      SSFileLog();
    }
  }

  v31 = 0;
  v11 = [(GetAutomaticDownloadKindsOperation *)self runSubOperation:v3 returningError:&v31, v28];
  if (v11)
  {
    v12 = [objc_msgSend(v3 "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKey:@"enabled-media-kinds"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        v15 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v16 = v15 | 2;
        }

        else
        {
          v16 = v15;
        }

        if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v16 &= 2u;
        }

        if (v16)
        {
          v17 = objc_opt_class();
          v32 = 138412546;
          v33 = v17;
          v34 = 2112;
          v35 = v13;
          LODWORD(v30) = 22;
          v29 = &v32;
          v18 = _os_log_send_and_compose_impl();
          if (v18)
          {
            v19 = v18;
            v20 = [NSString stringWithCString:v18 encoding:4, &v32, v30];
            free(v19);
            v29 = v20;
            SSFileLog();
          }
        }

        [(GetAutomaticDownloadKindsOperation *)self lock];

        self->_enabledDownloadKinds = v13;
        [(GetAutomaticDownloadKindsOperation *)self unlock];
      }
    }
  }

  else
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v24 = objc_opt_class();
      v32 = 138412546;
      v33 = v24;
      v34 = 2112;
      v35 = v31;
      LODWORD(v30) = 22;
      v29 = &v32;
      v25 = _os_log_send_and_compose_impl();
      if (v25)
      {
        v26 = v25;
        v27 = [NSString stringWithCString:v25 encoding:4, &v32, v30];
        free(v26);
        v29 = v27;
        SSFileLog();
      }
    }
  }

  [(GetAutomaticDownloadKindsOperation *)self setError:v31, v29];
  [(GetAutomaticDownloadKindsOperation *)self setSuccess:v11];
}

@end