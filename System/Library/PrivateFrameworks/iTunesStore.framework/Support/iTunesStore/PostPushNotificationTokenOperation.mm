@interface PostPushNotificationTokenOperation
- (BOOL)_postTokenToURL:(id)l error:(id *)error;
- (NSData)tokenData;
- (NSString)environmentName;
- (PostPushNotificationTokenOperation)initWithEnvironmentName:(id)name tokenData:(id)data;
- (SSAuthenticationContext)authenticationContext;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)context;
@end

@implementation PostPushNotificationTokenOperation

- (PostPushNotificationTokenOperation)initWithEnvironmentName:(id)name tokenData:(id)data
{
  v8.receiver = self;
  v8.super_class = PostPushNotificationTokenOperation;
  v6 = [(PostPushNotificationTokenOperation *)&v8 init];
  if (v6)
  {
    v6->_environmentName = [name copy];
    v6->_tokenData = [data copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PostPushNotificationTokenOperation;
  [(PostPushNotificationTokenOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(PostPushNotificationTokenOperation *)self lock];
  v3 = self->_authenticationContext;
  [(PostPushNotificationTokenOperation *)self unlock];
  return v3;
}

- (NSString)environmentName
{
  v2 = self->_environmentName;

  return v2;
}

- (void)setAuthenticationContext:(id)context
{
  [(PostPushNotificationTokenOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context copy];
  }

  [(PostPushNotificationTokenOperation *)self unlock];
}

- (NSData)tokenData
{
  v2 = self->_tokenData;

  return v2;
}

- (void)run
{
  v27 = 0;
  if (self->_tokenData)
  {
    v3 = [(PostPushNotificationTokenOperation *)self loadedURLBagWithContext:[SSURLBagContext returningError:"contextWithBagType:" contextWithBagType:?], &v27];
    if (v3)
    {
      v4 = [v3 valueForKey:@"push-notifications"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      v5 = [v4 objectForKey:@"environment"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ![(NSString *)self->_environmentName isEqualToString:v5])
      {
        v18 = +[SSLogConfig sharedDaemonConfig];
        if (!v18)
        {
          v18 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v18 shouldLog];
        if ([v18 shouldLogToDisk])
        {
          v20 = shouldLog | 2;
        }

        else
        {
          v20 = shouldLog;
        }

        if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v20 &= 2u;
        }

        if (v20)
        {
          v21 = objc_opt_class();
          v28 = 138412290;
          v29 = v21;
          LODWORD(v26) = 12;
          v25 = &v28;
          v22 = _os_log_send_and_compose_impl();
          if (v22)
          {
            v23 = v22;
            v24 = [NSString stringWithCString:v22 encoding:4, &v28, v26];
            free(v23);
            v25 = v24;
            SSFileLog();
          }
        }

        v7 = 0;
      }

      else
      {
        v6 = [v4 objectForKey:@"register-success"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [[NSURL alloc] initWithString:v6]) == 0)
        {
LABEL_9:
          v8 = +[SSLogConfig sharedDaemonConfig];
          if (!v8)
          {
            v8 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v8 shouldLog];
          if ([v8 shouldLogToDisk])
          {
            v10 = shouldLog2 | 2;
          }

          else
          {
            v10 = shouldLog2;
          }

          if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v10 &= 2u;
          }

          if (v10)
          {
            v11 = objc_opt_class();
            v28 = 138412546;
            v29 = v11;
            v30 = 2112;
            v31 = @"register-success";
            LODWORD(v26) = 22;
            v25 = &v28;
            v12 = _os_log_send_and_compose_impl();
            if (!v12)
            {
              v7 = 0;
              goto LABEL_44;
            }

            v13 = [NSString stringWithCString:v12 encoding:4, &v28, v26];
            free(v12);
            v25 = v13;
            SSFileLog();
          }

          v7 = 0;
          v12 = 0;
LABEL_44:

          goto LABEL_45;
        }
      }

      v12 = [(PostPushNotificationTokenOperation *)self _postTokenToURL:v7 error:&v27, v25];
      goto LABEL_44;
    }

    goto LABEL_30;
  }

  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v16 = shouldLog3 | 2;
  }

  else
  {
    v16 = shouldLog3;
  }

  if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v16 &= 2u;
  }

  if (!v16)
  {
LABEL_30:
    v12 = 0;
    goto LABEL_45;
  }

  v28 = 138412290;
  v29 = objc_opt_class();
  LODWORD(v26) = 12;
  v25 = &v28;
  v12 = _os_log_send_and_compose_impl();
  if (v12)
  {
    v17 = [NSString stringWithCString:v12 encoding:4, &v28, v26];
    free(v12);
    v25 = v17;
    SSFileLog();
    goto LABEL_30;
  }

LABEL_45:
  [(PostPushNotificationTokenOperation *)self setError:v27, v25];
  [(PostPushNotificationTokenOperation *)self setSuccess:v12];
}

- (BOOL)_postTokenToURL:(id)l error:(id *)error
{
  v30 = 0;
  v7 = objc_alloc_init(ISStoreURLOperation);
  [v7 setAuthenticationContext:{-[PostPushNotificationTokenOperation authenticationContext](self, "authenticationContext")}];
  [v7 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v7 setDelegate:self];
  [v7 setUseUserSpecificURLBag:1];
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
    environmentName = self->_environmentName;
    tokenData = self->_tokenData;
    v31 = 138543874;
    v32 = v11;
    v33 = 2114;
    v34 = environmentName;
    v35 = 2112;
    v36 = tokenData;
    LODWORD(v29) = 32;
    v28 = &v31;
    v14 = _os_log_send_and_compose_impl();
    if (v14)
    {
      v15 = v14;
      v16 = [NSString stringWithCString:v14 encoding:4, &v31, v29];
      free(v15);
      v28 = v16;
      SSFileLog();
    }
  }

  v17 = [[SSMutableURLRequestProperties alloc] initWithURL:l];
  [v17 setHTTPMethod:@"POST"];
  [v17 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = +[ISDevice sharedInstance];
  v20 = self->_environmentName;
  if (v20)
  {
    [v18 setObject:v20 forKey:@"environment"];
  }

  v21 = self->_tokenData;
  if (v21)
  {
    [v18 setObject:v21 forKey:@"token"];
  }

  deviceName = [(ISDevice *)v19 deviceName];
  if (deviceName)
  {
    v23 = [deviceName dataUsingEncoding:4 allowLossyConversion:1];
    if (v23)
    {
      [v18 setObject:v23 forKey:@"device-name-data"];
    }
  }

  serialNumber = [(ISDevice *)v19 serialNumber];
  if (serialNumber)
  {
    [v18 setObject:serialNumber forKey:@"serial-number"];
  }

  guid = [(ISDevice *)v19 guid];
  if (guid)
  {
    [v18 setObject:guid forKey:@"guid"];
  }

  [v17 setRequestParameters:v18];

  [v7 setRequestProperties:v17];
  v26 = [(PostPushNotificationTokenOperation *)self runSubOperation:v7 returningError:&v30];
  [v7 setDelegate:0];

  if (error)
  {
    *error = v30;
  }

  return v26;
}

@end