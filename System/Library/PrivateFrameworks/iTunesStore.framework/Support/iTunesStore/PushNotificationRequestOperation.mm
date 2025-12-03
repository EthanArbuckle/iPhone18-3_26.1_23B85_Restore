@interface PushNotificationRequestOperation
- (BOOL)_loadResponseWithAccountIdentifier:(id)identifier URL:(id)l error:(id *)error;
- (NSString)userAgent;
- (PushNotificationRequestOperation)initWithPushNotificationParameters:(id)parameters;
- (SSURLConnectionResponse)URLResponse;
- (void)dealloc;
- (void)run;
- (void)setUserAgent:(id)agent;
@end

@implementation PushNotificationRequestOperation

- (PushNotificationRequestOperation)initWithPushNotificationParameters:(id)parameters
{
  v6.receiver = self;
  v6.super_class = PushNotificationRequestOperation;
  v4 = [(PushNotificationRequestOperation *)&v6 init];
  if (v4)
  {
    v4->_parameters = [parameters copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PushNotificationRequestOperation;
  [(PushNotificationRequestOperation *)&v3 dealloc];
}

- (void)setUserAgent:(id)agent
{
  [(PushNotificationRequestOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(PushNotificationRequestOperation *)self unlock];
}

- (SSURLConnectionResponse)URLResponse
{
  [(PushNotificationRequestOperation *)self lock];
  v3 = self->_response;
  [(PushNotificationRequestOperation *)self unlock];

  return v3;
}

- (NSString)userAgent
{
  [(PushNotificationRequestOperation *)self lock];
  v3 = self->_userAgent;
  [(PushNotificationRequestOperation *)self unlock];

  return v3;
}

- (void)run
{
  v47 = 0;
  accountIdentifier = [(SSVPushNotificationParameters *)self->_parameters accountIdentifier];
  if (!accountIdentifier)
  {
    accountIdentifier = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    if (!accountIdentifier)
    {
      v27 = +[SSLogConfig sharedDaemonConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v29 = shouldLog | 2;
      }

      else
      {
        v29 = shouldLog;
      }

      if (!os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v48 = 138412290;
        v49 = objc_opt_class();
        LODWORD(v45) = 12;
        v44 = &v48;
        v30 = _os_log_send_and_compose_impl();
        if (v30)
        {
          v31 = v30;
          v32 = [NSString stringWithCString:v30 encoding:4, &v48, v45];
          free(v31);
          v44 = v32;
          SSFileLog();
        }
      }

      goto LABEL_46;
    }
  }

  v4 = accountIdentifier;
  v5 = [SSURLBagContext contextWithBagType:0];
  [(SSURLBagContext *)v5 setUserIdentifier:v4];
  userAgent = [(PushNotificationRequestOperation *)self userAgent];
  [(SSURLBagContext *)v5 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v7 = [(PushNotificationRequestOperation *)self loadedURLBagWithContext:v5 returningError:0];
  v8 = [v7 valueForKey:@"push-notification-types"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  requestType = [(SSVPushNotificationParameters *)self->_parameters requestType];
  if (!requestType)
  {
    v10 = [v8 objectForKey:@"add-push-notification-type-url"];
    LODWORD(v11) = 1;
    goto LABEL_20;
  }

  if (requestType == 1)
  {
    v10 = [v8 objectForKey:@"remove-push-notification-type-url"];
LABEL_19:
    LODWORD(v11) = 0;
    goto LABEL_20;
  }

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog2 | 2;
  }

  else
  {
    v14 = shouldLog2;
  }

  if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v15 = objc_opt_class();
  requestType2 = [(SSVPushNotificationParameters *)self->_parameters requestType];
  v48 = 138412546;
  v49 = v15;
  v50 = 2048;
  v51 = requestType2;
  LODWORD(v45) = 22;
  v44 = &v48;
  v11 = _os_log_send_and_compose_impl();
  if (v11)
  {
    v17 = [NSString stringWithCString:v11 encoding:4, &v48, v45];
    free(v11);
    v44 = v17;
    SSFileLog();
    goto LABEL_18;
  }

  v10 = 0;
LABEL_20:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = shouldLog3 | 2;
    }

    else
    {
      v22 = shouldLog3;
    }

    if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v48 = 138412290;
      v49 = v23;
      LODWORD(v45) = 12;
      v44 = &v48;
      v24 = _os_log_send_and_compose_impl();
      if (v24)
      {
        v25 = v24;
        v26 = [NSString stringWithCString:v24 encoding:4, &v48, v45];
        free(v25);
        v44 = v26;
        SSFileLog();
      }
    }

LABEL_46:
    v33 = SSError();
    v34 = 0;
    v47 = v33;
    goto LABEL_61;
  }

  if (v11)
  {
    environmentName = [(SSVPushNotificationParameters *)self->_parameters environmentName];
    if (!environmentName)
    {
      v19 = [v7 valueForKey:@"push-notifications"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        environmentName = [v19 objectForKey:@"environment"];
      }

      else
      {
        environmentName = 0;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = +[SSLogConfig sharedDaemonConfig];
      if (!v35)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v37 = shouldLog4 | 2;
      }

      else
      {
        v37 = shouldLog4;
      }

      if (!os_log_type_enabled([v35 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v37 &= 2u;
      }

      if (v37)
      {
        v38 = objc_opt_class();
        v48 = 138412802;
        v49 = v38;
        v50 = 2112;
        v51 = environmentName;
        v52 = 2112;
        v53 = v10;
        LODWORD(v45) = 32;
        v44 = &v48;
        v39 = _os_log_send_and_compose_impl();
        if (v39)
        {
          v40 = v39;
          v41 = [NSString stringWithCString:v39 encoding:4, &v48, v45];
          free(v40);
          v44 = v41;
          SSFileLog();
        }
      }

      v42 = dispatch_semaphore_create(0);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1001023D8;
      v46[3] = &unk_100327378;
      v46[4] = v42;
      [+[PushNotificationController sharedInstance](PushNotificationController registerTokenForEnvironmentName:"registerTokenForEnvironmentName:accountIdentifier:completionBlock:" accountIdentifier:environmentName completionBlock:v4, v46];
      v43 = dispatch_time(0, 60000000000);
      dispatch_semaphore_wait(v42, v43);
      dispatch_release(v42);
    }
  }

  v34 = [(PushNotificationRequestOperation *)self _loadResponseWithAccountIdentifier:v4 URL:[NSURL error:"URLWithString:" URLWithString:v10, v44], &v47];
  v33 = v47;
LABEL_61:
  [(PushNotificationRequestOperation *)self setError:v33, v44];
  [(PushNotificationRequestOperation *)self setSuccess:v34];
}

- (BOOL)_loadResponseWithAccountIdentifier:(id)identifier URL:(id)l error:(id *)error
{
  v28 = 0;
  v9 = objc_alloc_init(ISStoreURLOperation);
  [v9 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  v10 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:identifier];
  [v10 setPromptStyle:1000];
  userAgent = [(PushNotificationRequestOperation *)self userAgent];
  v12 = SSHTTPHeaderUserAgent;
  [v10 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v9 setAuthenticationContext:v10];

  v13 = objc_alloc_init(SSMutableURLRequestProperties);
  [v13 setHTTPMethod:@"POST"];
  [v13 setURL:l];
  [v13 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v13 setValue:-[PushNotificationRequestOperation userAgent](self forHTTPHeaderField:{"userAgent"), v12}];
  _copyParametersDictionary = [(SSVPushNotificationParameters *)self->_parameters _copyParametersDictionary];
  guid = [+[ISDevice sharedInstance](ISDevice guid];
  if (guid)
  {
    [_copyParametersDictionary setObject:guid forKey:@"guid"];
  }

  [v13 setRequestParameters:_copyParametersDictionary];

  [v9 setRequestProperties:v13];
  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = shouldLog | 2;
  }

  else
  {
    v18 = shouldLog;
  }

  if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    v29 = 138412546;
    v30 = objc_opt_class();
    v31 = 2112;
    lCopy = l;
    LODWORD(v27) = 22;
    v26 = &v29;
    v19 = _os_log_send_and_compose_impl();
    if (v19)
    {
      v20 = v19;
      v21 = [NSString stringWithCString:v19 encoding:4, &v29, v27];
      free(v20);
      v26 = v21;
      SSFileLog();
    }
  }

  v22 = [(PushNotificationRequestOperation *)self runSubOperation:v9 returningError:&v28, v26];
  if (v22)
  {
    v23 = [objc_msgSend(v9 "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [NSPropertyListSerialization dataWithPropertyList:v23 format:100 options:0 error:0];
    }

    else
    {
      v24 = 0;
    }

    [(PushNotificationRequestOperation *)self lock];

    self->_response = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v9 bodyData:{"response"), v24}];
    [(PushNotificationRequestOperation *)self unlock];
  }

  else
  {

    if (error)
    {
      *error = v28;
    }
  }

  return v22;
}

@end