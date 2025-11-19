@interface GetPlayInfoOperation
- (GetPlayInfoOperation)initWithPlayInfoRequestContext:(id)a3;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSPlayInfoRequestContext)playInfoContext;
- (SSPlayInfoResponse)playInfoResponse;
- (id)_copyRequestBody:(id *)a3;
- (void)_failWithError:(id)a3;
- (void)_setPlayInfoResponse:(id)a3;
- (void)_setResponseForOutput:(id)a3;
- (void)dealloc;
- (void)run;
- (void)setClientIdentifierHeader:(id)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation GetPlayInfoOperation

- (GetPlayInfoOperation)initWithPlayInfoRequestContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = GetPlayInfoOperation;
  v4 = [(GetPlayInfoOperation *)&v6 init];
  if (v4)
  {
    v4->_context = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GetPlayInfoOperation;
  [(GetPlayInfoOperation *)&v3 dealloc];
}

- (NSString)clientIdentifierHeader
{
  [(GetPlayInfoOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(GetPlayInfoOperation *)self unlock];
  return v3;
}

- (SSPlayInfoRequestContext)playInfoContext
{
  v2 = [(SSPlayInfoRequestContext *)self->_context copy];

  return v2;
}

- (SSPlayInfoResponse)playInfoResponse
{
  [(GetPlayInfoOperation *)self lock];
  v3 = self->_response;
  [(GetPlayInfoOperation *)self unlock];
  return v3;
}

- (void)setClientIdentifierHeader:(id)a3
{
  [(GetPlayInfoOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != a3)
  {

    self->_clientIdentifierHeader = [a3 copy];
  }

  [(GetPlayInfoOperation *)self unlock];
}

- (void)setUserAgent:(id)a3
{
  [(GetPlayInfoOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != a3)
  {

    self->_userAgent = [a3 copy];
  }

  [(GetPlayInfoOperation *)self unlock];
}

- (NSString)userAgent
{
  [(GetPlayInfoOperation *)self lock];
  v3 = self->_userAgent;
  [(GetPlayInfoOperation *)self unlock];

  return v3;
}

- (void)run
{
  v31 = 0;
  v3 = [(GetPlayInfoOperation *)self _copyRequestBody:&v31];
  if (!v3)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_22:
    v17 = objc_opt_class();
    v32 = 138412546;
    v33 = v17;
    v34 = 2112;
    v35 = v31;
    LODWORD(v30) = 22;
    v18 = _os_log_send_and_compose_impl();
    if (v18)
    {
      v19 = v18;
      [NSString stringWithCString:v18 encoding:4, &v32, v30];
      free(v19);
      SSFileLog();
    }

LABEL_24:
    [(GetPlayInfoOperation *)self _failWithError:SSErrorWithUnderlyingError()];
    goto LABEL_40;
  }

  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:&v31];
  if (!v4)
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

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v5 = v4;
  v6 = objc_alloc_init(ISStoreURLOperation);
  v7 = [(GetPlayInfoOperation *)self userAgent];
  v8 = [v3 objectForKey:@"dsid"];
  if (v8)
  {
    v9 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:v8];
    v10 = SSHTTPHeaderUserAgent;
    [v9 setValue:v7 forHTTPHeaderField:SSHTTPHeaderUserAgent];
    [v6 setAuthenticationContext:v9];
  }

  else
  {
    v10 = SSHTTPHeaderUserAgent;
  }

  v20 = objc_alloc_init(DaemonProtocolDataProvider);
  [v6 setDataProvider:v20];
  v21 = objc_alloc_init(SSMutableURLRequestProperties);
  [v21 setCachePolicy:1];
  [v21 setClientIdentifier:{-[GetPlayInfoOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v21 setHTTPBody:v5];
  [v21 setHTTPMethod:@"POST"];
  [v21 setURLBagKey:@"get-play-info"];
  [v21 setValue:v7 forHTTPHeaderField:v10];
  [v6 setRequestProperties:v21];

  v22 = +[SSLogConfig sharedDaemonConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = v23 | 2;
  }

  else
  {
    v24 = v23;
  }

  if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v24 &= 2u;
  }

  if (v24)
  {
    v25 = objc_opt_class();
    v32 = 138412290;
    v33 = v25;
    LODWORD(v30) = 12;
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

  if ([(GetPlayInfoOperation *)self runSubOperation:v6 returningError:&v31, v29])
  {
    [(GetPlayInfoOperation *)self _setResponseForOutput:[(DaemonProtocolDataProvider *)v20 output]];
  }

  else
  {
    [(GetPlayInfoOperation *)self _failWithError:v31];
  }

LABEL_40:
}

- (id)_copyRequestBody:(id *)a3
{
  v37 = 0;
  v5 = [(SSPlayInfoRequestContext *)self->_context sinfs];
  if ([v5 count])
  {
    v6 = [[SinfsArray alloc] initWithSINFs:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SSPlayInfoRequestContext *)self->_context accountIdentifier];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    v7 = [(SinfsArray *)v6 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:&v37];
  }

  if (v7)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:v7 forKey:@"dsid"];
    v10 = [(SSPlayInfoRequestContext *)self->_context contentIdentifier];
    if (v10)
    {
      [v9 setObject:v10 forKey:@"content-id"];
    }

    else
    {
      v17 = [(SinfsArray *)v6 copyValueForProperty:@"SinfPropertyFairPlayKeyIdentifier" error:&v37];
      if (v17)
      {
        v18 = v17;
        v19 = [[NSArray alloc] initWithObjects:{v17, 0}];
        v20 = [(SinfsArray *)v6 copyValueForProperty:@"SinfPropertyRentalInformation" error:0];
        if (v20)
        {
          v21 = @"rental-ids";
        }

        else
        {
          v21 = @"key-ids";
        }

        [v9 setObject:v19 forKey:v21];
      }

      else
      {
        v28 = +[SSLogConfig sharedDaemonConfig];
        if (!v28)
        {
          v28 = +[SSLogConfig sharedConfig];
        }

        v29 = [v28 shouldLog];
        if ([v28 shouldLogToDisk])
        {
          v30 = v29 | 2;
        }

        else
        {
          v30 = v29;
        }

        if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v30 &= 2u;
        }

        if (v30)
        {
          v31 = objc_opt_class();
          v38 = 138412546;
          v39 = v31;
          v40 = 2112;
          v41 = v37;
          LODWORD(v36) = 22;
          v35 = &v38;
          v32 = _os_log_send_and_compose_impl();
          if (v32)
          {
            v33 = v32;
            v34 = [NSString stringWithCString:v32 encoding:4, &v38, v36];
            free(v33);
            v35 = v34;
            SSFileLog();
          }
        }
      }
    }

    v22 = [(SSPlayInfoRequestContext *)self->_context playbackType];
    if (v22)
    {
      [v9 setObject:v22 forKey:@"subPlayType"];
    }

    v23 = [+[ISDevice sharedInstance](ISDevice guid];
    if (v23)
    {
      [v9 setObject:v23 forKey:@"guid"];
    }

    v24 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
    if (v24)
    {
      [v9 setObject:v24 forKey:@"hw.model"];
    }

    v25 = [(SSPlayInfoRequestContext *)self->_context playerGUID];
    if (v25)
    {
      [v9 setObject:v25 forKey:@"player-guid"];
    }

    v26 = [(SSPlayInfoRequestContext *)self->_context SICData];
    if (v26)
    {
      [v9 setObject:v26 forKey:@"sic"];
    }
  }

  else
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v38 = 138412546;
      v39 = v14;
      v40 = 2112;
      v41 = v37;
      LODWORD(v36) = 22;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        [NSString stringWithCString:v15 encoding:4, &v38, v36];
        free(v16);
        SSFileLog();
      }
    }

    v9 = 0;
  }

  if (v37)
  {

    v9 = 0;
  }

  if (a3)
  {
    *a3 = v37;
  }

  return v9;
}

- (void)_failWithError:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v3 = SSError();
  }

  v5 = [[SSPlayInfoResponse alloc] initWithPlayInfoData:0 error:v3];
  [(GetPlayInfoOperation *)self _setPlayInfoResponse:v5];
  [(GetPlayInfoOperation *)self setError:v3];
}

- (void)_setPlayInfoResponse:(id)a3
{
  [(GetPlayInfoOperation *)self lock];
  response = self->_response;
  if (response != a3)
  {

    self->_response = a3;
  }

  [(GetPlayInfoOperation *)self unlock];
}

- (void)_setResponseForOutput:(id)a3
{
  v5 = [a3 objectForKey:@"status"];
  if (v5 && (v6 = v5, (objc_opt_respondsToSelector() & 1) != 0) && [v6 intValue])
  {
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v6;
      LODWORD(v15) = 22;
      v14 = &v17;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v17, v15];
        free(v11);
        v14 = v12;
        SSFileLog();
      }
    }

    [v6 intValue];
    [(GetPlayInfoOperation *)self _failWithError:SSError()];
  }

  else
  {
    v13 = [a3 objectForKey:@"play-info"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
    }

    v16 = [[SSPlayInfoResponse alloc] initWithPlayInfoData:v13 error:0];
    [(GetPlayInfoOperation *)self _setPlayInfoResponse:?];
    [(GetPlayInfoOperation *)self setSuccess:1];
  }
}

@end