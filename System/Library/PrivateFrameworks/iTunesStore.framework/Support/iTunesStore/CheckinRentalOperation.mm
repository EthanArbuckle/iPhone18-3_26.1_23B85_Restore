@interface CheckinRentalOperation
- (BOOL)_handleCheckinAckResponse:(id)response error:(id *)error;
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (BOOL)_runCheckinAckOperationWithResponseData:(id)data error:(id *)error;
- (CheckinRentalOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier;
- (CheckinRentalOperation)initWithCheckinRequest:(id)request;
- (CheckinRentalOperation)initWithSinfs:(id)sinfs;
- (NSNumber)accountIdentifier;
- (NSNumber)rentalKeyIdentifier;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSURLConnectionResponse)URLResponse;
- (id)_bodyData;
- (id)_bodyDataWithCheckinAckResponseData:(id)data;
- (void)_run;
- (void)dealloc;
- (void)setClientIdentifierHeader:(id)header;
- (void)setUserAgent:(id)agent;
@end

@implementation CheckinRentalOperation

- (CheckinRentalOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier
{
  if (![identifier unsignedLongLongValue] || !objc_msgSend(keyIdentifier, "unsignedLongLongValue"))
  {
    sub_100272318(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CheckinRentalOperation;
  v8 = [(CheckinRentalOperation *)&v10 init];
  if (v8)
  {
    v8->_accountIdentifier = [identifier copy];
    v8->_rentalKeyIdentifier = [keyIdentifier copy];
  }

  return v8;
}

- (CheckinRentalOperation)initWithSinfs:(id)sinfs
{
  if (![sinfs count])
  {
    sub_100272374(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CheckinRentalOperation;
  v6 = [(CheckinRentalOperation *)&v10 init];
  if (v6)
  {
    v7 = [sinfs copy];
    v6->_sinfs = v7;
    if (v7)
    {
      v8 = [[SinfsArray alloc] initWithSINFs:v6->_sinfs];
      v6->_accountIdentifier = [(SinfsArray *)v8 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];
      v6->_rentalKeyIdentifier = [(SinfsArray *)v8 copyValueForProperty:@"SinfPropertyFairPlayKeyIdentifier" error:0];
    }
  }

  return v6;
}

- (CheckinRentalOperation)initWithCheckinRequest:(id)request
{
  accountIdentifier = [request accountIdentifier];
  rentalKeyIdentifier = [request rentalKeyIdentifier];
  sinfs = [request sinfs];
  if (accountIdentifier && rentalKeyIdentifier)
  {

    return [(CheckinRentalOperation *)self initWithAccountIdentifier:accountIdentifier rentalKeyIdentifier:rentalKeyIdentifier];
  }

  else if (sinfs)
  {

    return [(CheckinRentalOperation *)self initWithSinfs:sinfs];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckinRentalOperation;
  [(CheckinRentalOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountIdentifier;

  return v2;
}

- (NSString)clientIdentifierHeader
{
  [(CheckinRentalOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(CheckinRentalOperation *)self unlock];
  return v3;
}

- (NSNumber)rentalKeyIdentifier
{
  v2 = self->_rentalKeyIdentifier;

  return v2;
}

- (void)setClientIdentifierHeader:(id)header
{
  [(CheckinRentalOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(CheckinRentalOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  [(CheckinRentalOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(CheckinRentalOperation *)self unlock];
}

- (SSURLConnectionResponse)URLResponse
{
  [(CheckinRentalOperation *)self lock];
  v3 = self->_urlResponse;
  [(CheckinRentalOperation *)self unlock];
  return v3;
}

- (NSString)userAgent
{
  [(CheckinRentalOperation *)self lock];
  v3 = self->_userAgent;
  [(CheckinRentalOperation *)self unlock];

  return v3;
}

- (id)_bodyData
{
  if (![(NSNumber *)self->_accountIdentifier unsignedLongLongValue]|| ![(NSNumber *)self->_rentalKeyIdentifier unsignedLongLongValue])
  {
LABEL_28:
    v4 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_29;
  }

  v3 = sub_1000B1E14();
  if (!v3)
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v34 = 138412290;
      v35 = objc_opt_class();
      LODWORD(v31) = 12;
      v30 = &v34;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4, &v34, v31];
        free(v16);
        v30 = v17;
        SSFileLog();
      }
    }

    goto LABEL_28;
  }

  v4 = v3;
  v32 = 0;
  v33 = 0;
  if ((sub_1000B208C(&v33, &v32) & 1) == 0)
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = shouldLog2 | 2;
    }

    else
    {
      v25 = shouldLog2;
    }

    if (!os_log_type_enabled([v23 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v34 = 138412290;
      v35 = v26;
      LODWORD(v31) = 12;
      v30 = &v34;
      v27 = _os_log_send_and_compose_impl();
      if (v27)
      {
        v28 = v27;
        v29 = [NSString stringWithCString:v27 encoding:4, &v34, v31];
        free(v28);
        v30 = v29;
        SSFileLog();
      }
    }

LABEL_29:
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog3 | 2;
    }

    else
    {
      v20 = shouldLog3;
    }

    if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v34 = 138412290;
      v35 = v21;
      LODWORD(v31) = 12;
      v11 = _os_log_send_and_compose_impl();
      if (!v11)
      {
        goto LABEL_40;
      }

      [NSString stringWithCString:v11 encoding:4, &v34, v31];
      free(v11);
      SSFileLog();
    }

    v11 = 0;
    goto LABEL_40;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v5;
  if (v33)
  {
    [v5 setObject:v33 forKey:@"device-diversity"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v6 setObject:accountIdentifier forKey:@"dsid"];
  }

  guid = [+[ISDevice sharedInstance](ISDevice guid];
  if (guid)
  {
    [v6 setObject:guid forKey:@"guid"];
  }

  v9 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  if (v9)
  {
    [v6 setObject:v9 forKey:@"hw.model"];
  }

  if (v32)
  {
    [v6 setObject:v32 forKey:@"rbsync"];
  }

  [v6 setObject:v4 forKey:@"rental-bag"];
  rentalKeyIdentifier = self->_rentalKeyIdentifier;
  if (rentalKeyIdentifier)
  {
    [v6 setObject:rentalKeyIdentifier forKey:@"rental-id"];
  }

  v11 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:0];

LABEL_40:
  return v11;
}

- (id)_bodyDataWithCheckinAckResponseData:(id)data
{
  if (-[NSNumber unsignedLongLongValue](self->_accountIdentifier, "unsignedLongLongValue") && -[NSNumber unsignedLongLongValue](self->_rentalKeyIdentifier, "unsignedLongLongValue") && [data length])
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = v5;
    if (data)
    {
      [v5 setObject:data forKey:@"checkin-ack-sar"];
    }

    accountIdentifier = self->_accountIdentifier;
    if (accountIdentifier)
    {
      [v6 setObject:accountIdentifier forKey:@"dsid"];
    }

    guid = [+[ISDevice sharedInstance](ISDevice guid];
    if (guid)
    {
      [v6 setObject:guid forKey:@"guid"];
    }

    v9 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
    if (v9)
    {
      [v6 setObject:v9 forKey:@"hw.model"];
    }

    rentalKeyIdentifier = self->_rentalKeyIdentifier;
    if (rentalKeyIdentifier)
    {
      [v6 setObject:rentalKeyIdentifier forKey:@"rental-id"];
    }

    v11 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:0];

    return v11;
  }

  else
  {
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

    if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      LODWORD(v18) = 12;
      v16 = _os_log_send_and_compose_impl();
      if (v16)
      {
        v17 = v16;
        [NSString stringWithCString:v16 encoding:4, &v19, v18];
        free(v17);
        SSFileLog();
      }
    }

    return 0;
  }
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  v24 = 0;
  v7 = [response objectForKey:kISFailureTypeKey];
  if (v7)
  {
    v8 = v7;
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v25 = 138412546;
      *&v25[4] = objc_opt_class();
      v26 = 2112;
      v27 = v8;
      LODWORD(v23) = 22;
      v22 = v25;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, v25, v23];
        free(v13);
        v22 = v14;
        SSFileLog();
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v20 = ISError();
      goto LABEL_22;
    }

    [v8 intValue];
    v15 = SSError();
  }

  else
  {
    *v25 = 0;
    v16 = [response objectForKey:@"rental-bag-response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [response objectForKey:@"checkin-sar"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && sub_1000B2CB8(v16, v17))
      {
        v18 = [(CheckinRentalOperation *)self _runCheckinAckOperationWithResponseData:*v25 error:&v24];

        if (v18)
        {
          result = 1;
          goto LABEL_23;
        }
      }
    }

    v15 = ISError();
  }

  v20 = [v15 errorBySettingFatalError:{1, v22}];
LABEL_22:
  v21 = v20;
  result = 0;
  v24 = v21;
LABEL_23:
  if (error)
  {
    *error = v24;
  }

  return result;
}

- (BOOL)_handleCheckinAckResponse:(id)response error:(id *)error
{
  v5 = [response objectForKey:kISFailureTypeKey];
  v6 = v5;
  if (v5)
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
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = v6;
      LODWORD(v13) = 22;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        [NSString stringWithCString:v10 encoding:4, &v14, v13];
        free(v11);
        SSFileLog();
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = ISError();
      if (!error)
      {
        return v6 == 0;
      }

      goto LABEL_15;
    }

    v5 = [ISError() errorBySettingFatalError:1];
  }

  if (error)
  {
LABEL_15:
    *error = v5;
  }

  return v6 == 0;
}

- (void)_run
{
  v20 = 0;
  _bodyData = [(CheckinRentalOperation *)self _bodyData];
  if (_bodyData)
  {
    v4 = objc_alloc_init(ISStoreURLOperation);
    v5 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountIdentifier];
    [v4 setAuthenticationContext:v5];

    v6 = objc_alloc_init(DaemonProtocolDataProvider);
    [v4 setDataProvider:v6];
    [(DaemonProtocolDataProvider *)v6 setShouldProcessDialogs:0];
    v7 = objc_alloc_init(SSMutableURLRequestProperties);
    [v7 setCachePolicy:1];
    [v7 setClientIdentifier:{-[CheckinRentalOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
    [v7 setHTTPBody:_bodyData];
    [v7 setHTTPMethod:@"POST"];
    [v7 setURLBagKey:@"rental-checkin"];
    userAgent = [(CheckinRentalOperation *)self userAgent];
    [v7 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
    [v4 setRequestProperties:v7];

    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v21 = 138412290;
      v22 = objc_opt_class();
      LODWORD(v19) = 12;
      v18 = &v21;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v21, v19];
        free(v13);
        v18 = v14;
        SSFileLog();
      }
    }

    if ([(CheckinRentalOperation *)self runSubOperation:v4 returningError:&v20, v18])
    {
      output = [(DaemonProtocolDataProvider *)v6 output];
      _bodyData = [(CheckinRentalOperation *)self _handleResponse:output error:&v20];
      v16 = [NSPropertyListSerialization dataWithPropertyList:output format:100 options:0 error:0];
      [(CheckinRentalOperation *)self lock];

      self->_urlResponse = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v4 bodyData:{"response"), v16}];
      [(CheckinRentalOperation *)self unlock];
    }

    else
    {
      _bodyData = 0;
    }

    v17 = v20;
  }

  else
  {
    v17 = ISError();
    v20 = v17;
  }

  [(CheckinRentalOperation *)self setError:v17];
  [(CheckinRentalOperation *)self setSuccess:_bodyData];
}

- (BOOL)_runCheckinAckOperationWithResponseData:(id)data error:(id *)error
{
  v23 = 0;
  v6 = [(CheckinRentalOperation *)self _bodyDataWithCheckinAckResponseData:data];
  if (!v6)
  {
    v19 = 0;
    v23 = ISError();
    if (!error)
    {
      return v19;
    }

    goto LABEL_18;
  }

  v7 = v6;
  v8 = objc_alloc_init(ISStoreURLOperation);
  v9 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountIdentifier];
  [v8 setAuthenticationContext:v9];

  v10 = objc_alloc_init(DaemonProtocolDataProvider);
  [v8 setDataProvider:v10];
  [(DaemonProtocolDataProvider *)v10 setShouldProcessDialogs:0];
  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  [v11 setCachePolicy:1];
  [v11 setClientIdentifier:{-[CheckinRentalOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v11 setHTTPBody:v7];
  [v11 setHTTPMethod:@"POST"];
  [v11 setURLBagKey:@"rental-ack-checkin"];
  userAgent = [(CheckinRentalOperation *)self userAgent];
  [v11 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v8 setRequestProperties:v11];

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
    v24 = 138412290;
    v25 = objc_opt_class();
    LODWORD(v22) = 12;
    v21 = &v24;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4, &v24, v22];
      free(v17);
      v21 = v18;
      SSFileLog();
    }
  }

  if ([(CheckinRentalOperation *)self runSubOperation:v8 returningError:&v23, v21])
  {
    v19 = [(CheckinRentalOperation *)self _handleCheckinAckResponse:[(DaemonProtocolDataProvider *)v10 output] error:&v23];
  }

  else
  {
    v19 = 0;
  }

  if (error)
  {
LABEL_18:
    *error = v23;
  }

  return v19;
}

@end