@interface LoadMatchStatusOperation
- (LoadMatchStatusOperation)initWithAccountIdentifier:(id)identifier;
- (NSString)userAgent;
- (id)_newMatchStatusOperationWithURLBag:(id)bag;
- (unint64_t)matchStatus;
- (void)dealloc;
- (void)run;
- (void)setUserAgent:(id)agent;
@end

@implementation LoadMatchStatusOperation

- (LoadMatchStatusOperation)initWithAccountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = LoadMatchStatusOperation;
  v4 = [(LoadMatchStatusOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = [identifier copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMatchStatusOperation;
  [(LoadMatchStatusOperation *)&v3 dealloc];
}

- (unint64_t)matchStatus
{
  [(LoadMatchStatusOperation *)self lock];
  matchStatus = self->_matchStatus;
  [(LoadMatchStatusOperation *)self unlock];
  return matchStatus;
}

- (void)setUserAgent:(id)agent
{
  [(LoadMatchStatusOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(LoadMatchStatusOperation *)self unlock];
}

- (NSString)userAgent
{
  [(LoadMatchStatusOperation *)self lock];
  v3 = self->_userAgent;
  [(LoadMatchStatusOperation *)self unlock];

  return v3;
}

- (void)run
{
  v36 = 0;
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
    accountID = self->_accountID;
    v37 = 138412546;
    v38 = v6;
    v39 = 2112;
    v40 = accountID;
    LODWORD(v35) = 22;
    v33 = &v37;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, &v37, v35];
      free(v9);
      v33 = v10;
      SSFileLog();
    }
  }

  v11 = [SSURLBagContext contextWithBagType:0, v33];
  [(SSURLBagContext *)v11 setIgnoresCaches:1];
  [(SSURLBagContext *)v11 setUserIdentifier:self->_accountID];
  userAgent = [(LoadMatchStatusOperation *)self userAgent];
  [(SSURLBagContext *)v11 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v13 = [(LoadMatchStatusOperation *)self loadedURLBagWithContext:v11 returningError:&v36];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 valueForKey:@"isMatchServiceEnabled"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v15 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [v14 valueForKey:@"cloud-welcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue |= 2uLL;
    }

    v17 = [(LoadMatchStatusOperation *)self _newMatchStatusOperationWithURLBag:v14];
    if (v17)
    {
      v18 = v17;
      if ([(LoadMatchStatusOperation *)self runSubOperation:v17 returningError:&v36])
      {
        v19 = [objc_msgSend(objc_msgSend(v18 "dataProvider")];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v19 BOOLValue])
        {
          bOOLValue |= 4uLL;
        }

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

        v23 = 1;
        if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v22 &= 2u;
        }

        if (!v22)
        {
          goto LABEL_45;
        }

        v24 = objc_opt_class();
        v25 = self->_accountID;
        v37 = 138412802;
        v38 = v24;
        v39 = 2048;
        v40 = bOOLValue;
        v41 = 2112;
        v42 = v25;
        LODWORD(v35) = 32;
        v34 = &v37;
        v26 = _os_log_send_and_compose_impl();
        if (!v26)
        {
          goto LABEL_45;
        }

LABEL_43:
        v31 = v26;
        v32 = [NSString stringWithCString:v26 encoding:4, &v37, v35];
        free(v31);
        v34 = v32;
        SSFileLog();
        goto LABEL_45;
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v27 = +[SSLogConfig sharedDaemonConfig];
  if (!v27)
  {
    v27 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v27 shouldLog];
  if ([v27 shouldLogToDisk])
  {
    v29 = shouldLog3 | 2;
  }

  else
  {
    v29 = shouldLog3;
  }

  if (!os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v29 &= 2u;
  }

  if (!v29)
  {
    v23 = 0;
    goto LABEL_45;
  }

  v30 = objc_opt_class();
  v37 = 138412546;
  v38 = v30;
  v39 = 2112;
  v40 = v36;
  LODWORD(v35) = 22;
  v34 = &v37;
  v26 = _os_log_send_and_compose_impl();
  v23 = 0;
  if (v26)
  {
    goto LABEL_43;
  }

LABEL_45:
  [(LoadMatchStatusOperation *)self lock];
  self->_matchStatus = bOOLValue;
  [(LoadMatchStatusOperation *)self unlock];
  [(LoadMatchStatusOperation *)self setError:v36];
  [(LoadMatchStatusOperation *)self setSuccess:v23];
}

- (id)_newMatchStatusOperationWithURLBag:(id)bag
{
  v4 = [bag valueForKey:@"getMatchStatusSrv"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = objc_alloc_init(ISStoreURLOperation);
  [v5 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v5 setUseUserSpecificURLBag:1];
  v6 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  userAgent = [(LoadMatchStatusOperation *)self userAgent];
  v8 = SSHTTPHeaderUserAgent;
  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v5 setAuthenticationContext:v6];

  v9 = [[SSMutableURLRequestProperties alloc] initWithURL:{+[NSURL URLWithString:](NSURL, "URLWithString:", v4)}];
  [v9 setITunesStoreRequest:1];
  [v9 setValue:-[LoadMatchStatusOperation userAgent](self forHTTPHeaderField:{"userAgent"), v8}];
  [v5 setRequestProperties:v9];

  return v5;
}

@end