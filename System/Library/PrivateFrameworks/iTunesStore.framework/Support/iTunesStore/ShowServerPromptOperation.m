@interface ShowServerPromptOperation
- (BOOL)_automaticDownloadsPromptNeedsDisplay;
- (BOOL)_promptNeedsDisplay;
- (NSString)promptIdentifier;
- (ShowServerPromptOperation)initWithPromptIdentifier:(id)a3;
- (id)_newStoreURLOperation:(id *)a3;
- (void)dealloc;
- (void)run;
@end

@implementation ShowServerPromptOperation

- (ShowServerPromptOperation)initWithPromptIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = ShowServerPromptOperation;
  v4 = [(ShowServerPromptOperation *)&v6 init];
  if (v4)
  {
    v4->_promptIdentifier = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ShowServerPromptOperation;
  [(ShowServerPromptOperation *)&v3 dealloc];
}

- (NSString)promptIdentifier
{
  v2 = self->_promptIdentifier;

  return v2;
}

- (void)run
{
  if ([(ShowServerPromptOperation *)self _promptNeedsDisplay])
  {
    v31 = 0;
    v3 = [(ShowServerPromptOperation *)self _newStoreURLOperation:&v31];
    v4 = +[SSLogConfig sharedDaemonConfig];
    v5 = v4;
    if (v3)
    {
      if (!v4)
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
        v8 = objc_opt_class();
        promptIdentifier = self->_promptIdentifier;
        v32 = 138412546;
        v33 = v8;
        v34 = 2112;
        v35 = promptIdentifier;
        LODWORD(v30) = 22;
        v29 = &v32;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          v12 = [NSString stringWithCString:v10 encoding:4, &v32, v30];
          free(v11);
          v29 = v12;
          SSFileLog();
        }
      }

      v13 = [(ShowServerPromptOperation *)self runSubOperation:v3 returningError:&v31, v29];
      if (v13)
      {
        [SSDevice setPromptWithIdentifier:self->_promptIdentifier needsDisplay:0];
      }

      else
      {
        +[SSDevice setLastPromptAttemptDate:forPromptWithIdentifier:](SSDevice, "setLastPromptAttemptDate:forPromptWithIdentifier:", +[NSDate date], self->_promptIdentifier);
      }

      CFPreferencesAppSynchronize(kSSUserDefaultsIdentifier);
    }

    else
    {
      if (!v4)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v22 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v23 = v22 | 2;
      }

      else
      {
        v23 = v22;
      }

      if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v23 &= 2u;
      }

      if (v23)
      {
        v24 = objc_opt_class();
        v25 = self->_promptIdentifier;
        v32 = 138412546;
        v33 = v24;
        v34 = 2112;
        v35 = v25;
        LODWORD(v30) = 22;
        v29 = &v32;
        v26 = _os_log_send_and_compose_impl();
        if (v26)
        {
          v27 = v26;
          v28 = [NSString stringWithCString:v26 encoding:4, &v32, v30];
          free(v27);
          v29 = v28;
          SSFileLog();
        }
      }

      v13 = 0;
    }

    [(ShowServerPromptOperation *)self setError:v31, v29];
    [(ShowServerPromptOperation *)self setSuccess:v13];
  }

  else
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
      v18 = self->_promptIdentifier;
      v32 = 138412546;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      LODWORD(v30) = 22;
      v29 = &v32;
      v19 = _os_log_send_and_compose_impl();
      if (v19)
      {
        v20 = v19;
        v21 = [NSString stringWithCString:v19 encoding:4, &v32, v30];
        free(v20);
        v29 = v21;
        SSFileLog();
      }
    }

    [(ShowServerPromptOperation *)self setSuccess:1, v29];
    +[SSDevice setLastPromptAttemptDate:forPromptWithIdentifier:](SSDevice, "setLastPromptAttemptDate:forPromptWithIdentifier:", +[NSDate date], self->_promptIdentifier);
    CFPreferencesAppSynchronize(kSSUserDefaultsIdentifier);
  }
}

- (BOOL)_automaticDownloadsPromptNeedsDisplay
{
  v2 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  v3 = [v2 isManagedAppleID] ^ 1;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)_newStoreURLOperation:(id *)a3
{
  if (![(NSString *)self->_promptIdentifier isEqualToString:SSDevicePromptIdentifierAutomaticDownloadsAvailable])
  {
    return 0;
  }

  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v3 setUseUserSpecificURLBag:1];
  v4 = [[SSAuthenticationContext alloc] initWithAccount:{objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), "activeAccount")}];
  [v3 setAuthenticationContext:v4];

  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  [v5 setURLBagURLBlock:&stru_100329058];
  [v5 setValue:-[ISDevice guid](+[ISDevice sharedInstance](ISDevice forRequestParameter:{"sharedInstance"), "guid"), @"guid"}];
  [v3 setRequestProperties:v5];

  return v3;
}

- (BOOL)_promptNeedsDisplay
{
  CFPreferencesAppSynchronize(kSSUserDefaultsIdentifier);
  if (![SSDevice promptNeedsDisplay:self->_promptIdentifier]|| ![(NSString *)self->_promptIdentifier isEqualToString:SSDevicePromptIdentifierAutomaticDownloadsAvailable])
  {
    return 0;
  }

  return [(ShowServerPromptOperation *)self _automaticDownloadsPromptNeedsDisplay];
}

@end