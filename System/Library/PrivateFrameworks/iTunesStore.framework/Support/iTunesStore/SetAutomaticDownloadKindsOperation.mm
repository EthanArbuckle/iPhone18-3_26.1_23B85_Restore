@interface SetAutomaticDownloadKindsOperation
- (BOOL)_postDownloadKinds:(id)kinds error:(id *)error;
- (BOOL)runsOnlyIfKindsAreDirty;
- (BOOL)shouldSuppressServerDialogs;
- (NSSet)downloadKinds;
- (NSSet)previousDownloadKinds;
- (NSString)clientIdentifierHeader;
- (SSAuthenticationContext)authenticationContext;
- (SetAutomaticDownloadKindsOperation)initWithDownloadKinds:(id)kinds;
- (id)_copyFilteredDownloadKinds;
- (void)_run;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setClientIdentifierHeader:(id)header;
- (void)setPreviousDownloadKinds:(id)kinds;
- (void)setRunsOnlyIfKindsAreDirty:(BOOL)dirty;
- (void)setShouldSuppressServerDialogs:(BOOL)dialogs;
@end

@implementation SetAutomaticDownloadKindsOperation

- (SetAutomaticDownloadKindsOperation)initWithDownloadKinds:(id)kinds
{
  v6.receiver = self;
  v6.super_class = SetAutomaticDownloadKindsOperation;
  v4 = [(SetAutomaticDownloadKindsOperation *)&v6 init];
  if (v4)
  {
    v4->_downloadKinds = [kinds copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SetAutomaticDownloadKindsOperation;
  [(SetAutomaticDownloadKindsOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext copy];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (NSSet)downloadKinds
{
  v2 = self->_downloadKinds;

  return v2;
}

- (NSSet)previousDownloadKinds
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  v3 = [(NSSet *)self->_previousDownloadKinds copy];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return v3;
}

- (BOOL)runsOnlyIfKindsAreDirty
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  runsOnlyIfKindsAreDirty = self->_runsOnlyIfKindsAreDirty;
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return runsOnlyIfKindsAreDirty;
}

- (void)setAuthenticationContext:(id)context
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context copy];
  }

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = header;
  }

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setPreviousDownloadKinds:(id)kinds
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  previousDownloadKinds = self->_previousDownloadKinds;
  if (previousDownloadKinds != kinds)
  {

    self->_previousDownloadKinds = [kinds copy];
  }

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setRunsOnlyIfKindsAreDirty:(BOOL)dirty
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  self->_runsOnlyIfKindsAreDirty = dirty;

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (void)setShouldSuppressServerDialogs:(BOOL)dialogs
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  self->_shouldSuppressServerDialogs = dialogs;

  [(SetAutomaticDownloadKindsOperation *)self unlock];
}

- (BOOL)shouldSuppressServerDialogs
{
  [(SetAutomaticDownloadKindsOperation *)self lock];
  shouldSuppressServerDialogs = self->_shouldSuppressServerDialogs;
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  return shouldSuppressServerDialogs;
}

- (void)run
{
  if ([(SetAutomaticDownloadKindsOperation *)self runsOnlyIfKindsAreDirty]&& !CFPreferencesGetAppBooleanValue(@"DirtyAutoDownloadKinds", kITunesStoreDaemonDefaultsID, 0))
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
      v11 = 138412290;
      v12 = objc_opt_class();
      LODWORD(v10) = 12;
      v9 = &v11;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [NSString stringWithCString:v6 encoding:4, &v11, v10];
        free(v7);
        v9 = v8;
        SSFileLog();
      }
    }

    [(SetAutomaticDownloadKindsOperation *)self setSuccess:1, v9];
  }

  else
  {

    [(SetAutomaticDownloadKindsOperation *)self _run];
  }
}

- (id)_copyFilteredDownloadKinds
{
  v3 = [(NSSet *)self->_downloadKinds mutableCopy];
  v4 = [SSURLBagContext contextWithBagType:0];
  [(SetAutomaticDownloadKindsOperation *)self lock];
  [(SSURLBagContext *)v4 setUserIdentifier:[(SSAuthenticationContext *)self->_authenticationContext requiredUniqueIdentifier]];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  if ([(SetAutomaticDownloadKindsOperation *)self loadURLBagWithContext:v4 returningError:0])
  {
    v5 = [ISURLBag copyAllowedAutomaticDownloadKindsInBagContext:v4];
    [v3 intersectSet:v5];
  }

  v6 = [(NSSet *)self->_downloadKinds count];
  if (v6 != [v3 count])
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v10 = objc_opt_class();
      downloadKinds = self->_downloadKinds;
      v18 = 138412802;
      v19 = v10;
      v20 = 2112;
      v21 = downloadKinds;
      v22 = 2112;
      v23 = v3;
      LODWORD(v17) = 32;
      v16 = &v18;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v18, v17];
        free(v13);
        v16 = v14;
        SSFileLog();
      }
    }

    [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
  }

  return v3;
}

- (BOOL)_postDownloadKinds:(id)kinds error:(id *)error
{
  v7 = objc_alloc_init(ISStoreURLOperation);
  [v7 setUseUserSpecificURLBag:1];
  shouldSuppressServerDialogs = [(SetAutomaticDownloadKindsOperation *)self shouldSuppressServerDialogs];
  v9 = objc_alloc_init(DaemonProtocolDataProvider);
  [(DaemonProtocolDataProvider *)v9 setShouldProcessAuthenticationDialogs:shouldSuppressServerDialogs ^ 1];
  [(DaemonProtocolDataProvider *)v9 setShouldProcessDialogs:shouldSuppressServerDialogs ^ 1];
  [v7 setDataProvider:v9];
  [(SetAutomaticDownloadKindsOperation *)self lock];
  [v7 setAuthenticationContext:self->_authenticationContext];
  [(SetAutomaticDownloadKindsOperation *)self unlock];
  v10 = objc_alloc_init(SSMutableURLRequestProperties);
  [v10 setClientIdentifier:{-[SetAutomaticDownloadKindsOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  if ([+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")])
  {
    [v10 setValue:@"true" forHTTPHeaderField:SSHTTPHeaderXAppleMMeMultiUser];
  }

  [v10 setHTTPMethod:@"POST"];
  v11 = objc_alloc_init(NSMutableDictionary);
  guid = [+[ISDevice sharedInstance](ISDevice guid];
  if (guid)
  {
    [v11 setObject:guid forKey:@"guid"];
  }

  if (kinds)
  {
    [v11 setObject:objc_msgSend(kinds forKey:{"allObjects"), @"media-types"}];
  }

  [v10 setRequestParameters:v11];

  [v10 setURLBagURLBlock:&stru_100329038];
  [v7 setRequestProperties:v10];
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = shouldLog | 2;
  }

  else
  {
    v15 = shouldLog;
  }

  if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v31 = 138412546;
    v32 = objc_opt_class();
    v33 = 2112;
    kindsCopy = kinds;
    LODWORD(v29) = 22;
    v28 = &v31;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4, &v31, v29];
      free(v17);
      v28 = v18;
      SSFileLog();
    }
  }

  v30 = 0;
  if ([(SetAutomaticDownloadKindsOperation *)self runSubOperation:v7 returningError:&v30, v28])
  {
    v19 = [-[DaemonProtocolDataProvider output](v9 "output")];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v19 intValue])
    {
      v26 = 1;
    }

    else
    {
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = shouldLog2 | 2;
      }

      else
      {
        v22 = shouldLog2;
      }

      if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v23 = objc_opt_class();
        v31 = 138412546;
        v32 = v23;
        v33 = 2112;
        kindsCopy = v19;
        LODWORD(v29) = 22;
        v24 = _os_log_send_and_compose_impl();
        if (v24)
        {
          v25 = v24;
          [NSString stringWithCString:v24 encoding:4, &v31, v29];
          free(v25);
          SSFileLog();
        }
      }

      v26 = 0;
      v30 = ISError();
    }
  }

  else
  {
    v26 = 0;
  }

  if (error)
  {
    *error = v30;
  }

  return v26;
}

- (void)_run
{
  v17 = 0;
  _copyFilteredDownloadKinds = [(SetAutomaticDownloadKindsOperation *)self _copyFilteredDownloadKinds];
  v4 = [(SetAutomaticDownloadKindsOperation *)self _postDownloadKinds:_copyFilteredDownloadKinds error:&v17];
  if (v4)
  {
    v5 = kITunesStoreDaemonDefaultsID;
    CFPreferencesSetAppValue(@"DirtyAutoDownloadKinds", kCFBooleanFalse, kITunesStoreDaemonDefaultsID);
    CFPreferencesAppSynchronize(v5);
  }

  else if ([(SetAutomaticDownloadKindsOperation *)self _isFatalError:v17])
  {
    previousDownloadKinds = [(SetAutomaticDownloadKindsOperation *)self previousDownloadKinds];
    if (previousDownloadKinds)
    {
      v7 = previousDownloadKinds;
      v8 = +[SSLogConfig sharedDaemonConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = shouldLog | 2;
      }

      else
      {
        v10 = shouldLog;
      }

      if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v11 = objc_opt_class();
        v18 = 138412546;
        v19 = v11;
        v20 = 2112;
        v21 = v17;
        LODWORD(v16) = 22;
        v15 = &v18;
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          v13 = v12;
          v14 = [NSString stringWithCString:v12 encoding:4, &v18, v16];
          free(v13);
          v15 = v14;
          SSFileLog();
        }
      }

      [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue sharedDownloadQueue];
    }
  }

  [(SetAutomaticDownloadKindsOperation *)self setSuccess:v4];
  [(SetAutomaticDownloadKindsOperation *)self setError:v17];
}

@end