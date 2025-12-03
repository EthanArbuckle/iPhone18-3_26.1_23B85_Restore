@interface SyncRentalOperation
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (SyncRentalOperation)initWithAccountIdentifier:(id)identifier;
- (SyncRentalOperation)initWithSinfs:(id)sinfs;
- (id)_bodyData;
- (void)_run;
@end

@implementation SyncRentalOperation

- (SyncRentalOperation)initWithSinfs:(id)sinfs
{
  sinfsCopy = sinfs;
  if (![sinfsCopy count])
  {
    sub_10027202C(a2, self);
  }

  v13.receiver = self;
  v13.super_class = SyncRentalOperation;
  v6 = [(SyncRentalOperation *)&v13 init];
  if (v6)
  {
    v7 = [sinfsCopy copy];
    sinfs = v6->_sinfs;
    v6->_sinfs = v7;

    if (v6->_sinfs)
    {
      v9 = [[SinfsArray alloc] initWithSINFs:v6->_sinfs];
      v10 = [(SinfsArray *)v9 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v10;
    }
  }

  return v6;
}

- (SyncRentalOperation)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy unsignedLongLongValue])
  {
    sub_1002720A0(a2, self);
  }

  v10.receiver = self;
  v10.super_class = SyncRentalOperation;
  v6 = [(SyncRentalOperation *)&v10 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    accountIdentifier = v6->_accountIdentifier;
    v6->_accountIdentifier = v7;
  }

  return v6;
}

- (id)_bodyData
{
  if ([(NSNumber *)self->_accountIdentifier unsignedLongLongValue])
  {
    v3 = sub_1000B1E14();
    if (v3)
    {
      v4 = v3;
      v34 = 0;
      v35 = 0;
      v5 = sub_1000B208C(&v35, &v34);
      v6 = v35;
      v7 = v34;
      if (v5)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = v8;
        if (v6)
        {
          [v8 setObject:v6 forKey:@"device-diversity"];
        }

        accountIdentifier = self->_accountIdentifier;
        if (accountIdentifier)
        {
          [v9 setObject:accountIdentifier forKey:@"dsid"];
        }

        v11 = +[ISDevice sharedInstance];
        guid = [v11 guid];

        if (guid)
        {
          [v9 setObject:guid forKey:@"guid"];
        }

        v13 = +[SSDevice currentDevice];
        productType = [v13 productType];

        if (productType)
        {
          [v9 setObject:productType forKey:@"hw.model"];
        }

        if (v7)
        {
          [v9 setObject:v7 forKey:@"rbsync"];
        }

        [v9 setObject:v4 forKey:@"rental-bag"];
        v15 = [NSPropertyListSerialization dataWithPropertyList:v9 format:100 options:0 error:0];
        goto LABEL_51;
      }

      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v22 = shouldLog | 2;
      }

      else
      {
        v22 = shouldLog;
      }

      oSLogObject = [v16 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v22 &= 2u;
      }

      if (!v22)
      {
        goto LABEL_37;
      }

      v24 = objc_opt_class();
      v36 = 138412290;
      v37 = v24;
      v25 = v24;
      LODWORD(v33) = 12;
      v32 = &v36;
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        oSLogObject = [NSString stringWithCString:v26 encoding:4, &v36, v33];
        free(v26);
        v32 = oSLogObject;
        SSFileLog();
LABEL_37:
      }
    }

    else
    {
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v18 = shouldLog2 | 2;
      }

      else
      {
        v18 = shouldLog2;
      }

      oSLogObject2 = [v16 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v36 = 138412290;
        v37 = objc_opt_class();
        v20 = v37;
        LODWORD(v33) = 12;
        v32 = &v36;
        v6 = _os_log_send_and_compose_impl();

        if (!v6)
        {
          v4 = 0;
          v7 = 0;
          goto LABEL_39;
        }

        oSLogObject2 = [NSString stringWithCString:v6 encoding:4, &v36, v33];
        free(v6);
        v32 = oSLogObject2;
        SSFileLog();
      }

      v4 = 0;
      v7 = 0;
      v6 = 0;
    }

LABEL_39:

    goto LABEL_40;
  }

  v4 = 0;
  v7 = 0;
  v6 = 0;
LABEL_40:
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v28 = shouldLog3 | 2;
  }

  else
  {
    v28 = shouldLog3;
  }

  productType = [v9 OSLogObject];
  if (!os_log_type_enabled(productType, OS_LOG_TYPE_DEFAULT))
  {
    v28 &= 2u;
  }

  if (v28)
  {
    v29 = objc_opt_class();
    v36 = 138412290;
    v37 = v29;
    v30 = v29;
    LODWORD(v33) = 12;
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
      goto LABEL_52;
    }

    productType = [NSString stringWithCString:v15 encoding:4, &v36, v33];
    free(v15);
    SSFileLog();
  }

  v15 = 0;
LABEL_51:

LABEL_52:

  return v15;
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v5 = [responseCopy objectForKey:kISFailureTypeKey];
  v6 = [responseCopy objectForKey:@"rental-bag-response"];
  v7 = v6;
  if (v5)
  {
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

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v46 = 138412546;
      v47 = objc_opt_class();
      v48 = 2112;
      v49 = v5;
      v12 = v47;
      LODWORD(v44) = 22;
      v43 = &v46;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 intValue] == 5102)
        {
          v14 = ISError();
          v15 = [v14 errorBySettingFatalError:1];
        }

        else
        {
          v15 = ISError();
        }

        goto LABEL_33;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4, &v46, v44];
      free(v13);
      v43 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_13;
  }

  if (!v6)
  {
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = shouldLog2 | 2;
    }

    else
    {
      v29 = shouldLog2;
    }

    oSLogObject2 = [v27 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v46 = 138412290;
      v47 = objc_opt_class();
      v31 = v47;
      LODWORD(v44) = 12;
      v43 = &v46;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
LABEL_45:

LABEL_46:
        v15 = 0;
        goto LABEL_47;
      }

      oSLogObject2 = [NSString stringWithCString:v32 encoding:4, &v46, v44];
      free(v32);
      v43 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_45;
  }

  if (!sub_1000B2C3C(v6))
  {
    goto LABEL_21;
  }

  v16 = [responseCopy objectForKey:@"device-diversity"];
  v15 = v16;
  if (v16)
  {
    v17 = sub_1000B2D94(v16);

    if (!v17)
    {
LABEL_21:
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

      oSLogObject3 = [v18 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v46 = 138412290;
        v47 = objc_opt_class();
        v22 = v47;
        LODWORD(v44) = 12;
        v43 = &v46;
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
LABEL_32:

          v24 = ISError();
          v25 = [NSNumber numberWithBool:1];
          v15 = SSErrorBySettingUserInfoValue();

LABEL_33:
          v26 = 0;
          goto LABEL_48;
        }

        oSLogObject3 = [NSString stringWithCString:v23 encoding:4, &v46, v44];
        free(v23);
        v43 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_32;
    }

    goto LABEL_46;
  }

LABEL_47:
  v26 = 1;
LABEL_48:
  v33 = +[SSLogConfig sharedWriteToDiskConfig];
  if (!v33)
  {
    v33 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v35 = shouldLog4 | 2;
  }

  else
  {
    v35 = shouldLog4;
  }

  oSLogObject4 = [v33 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v35 &= 2u;
  }

  if (v35)
  {
    v37 = objc_opt_class();
    v46 = 138412546;
    v47 = v37;
    v48 = 2112;
    v49 = responseCopy;
    v38 = v37;
    LODWORD(v44) = 22;
    v39 = _os_log_send_and_compose_impl();

    errorCopy2 = error;
    if (!v39)
    {
      goto LABEL_60;
    }

    oSLogObject4 = [NSString stringWithCString:v39 encoding:4, &v46, v44];
    free(v39);
    SSFileLog();
  }

  else
  {
    errorCopy2 = error;
  }

LABEL_60:
  if (errorCopy2)
  {
    v41 = v15;
    *errorCopy2 = v15;
  }

  return v26;
}

- (void)_run
{
  _bodyData = [(SyncRentalOperation *)self _bodyData];
  if (!_bodyData)
  {
    v17 = ISError();
    v16 = 0;
    goto LABEL_18;
  }

  v4 = objc_alloc_init(ISStoreURLOperation);
  v27 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountIdentifier];
  [v4 setAuthenticationContext:?];
  v5 = objc_alloc_init(DaemonProtocolDataProvider);
  [v4 setDataProvider:v5];
  [(DaemonProtocolDataProvider *)v5 setShouldProcessDialogs:0];
  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setCachePolicy:1];
  clientIdentifierHeader = [(SyncRentalOperation *)self clientIdentifierHeader];
  [v6 setClientIdentifier:clientIdentifierHeader];

  [v6 setHTTPBody:_bodyData];
  [v6 setHTTPMethod:@"POST"];
  [v6 setURLBagKey:@"rental-sync"];
  userAgent = [(SyncRentalOperation *)self userAgent];
  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];

  [v4 setRequestProperties:v6];
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

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v30 = 138412290;
  v31 = objc_opt_class();
  v14 = v31;
  LODWORD(v25) = 12;
  v24 = &v30;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4, &v30, v25];
    free(v15);
    v24 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  v29 = 0;
  v16 = [(SyncRentalOperation *)self runSubOperation:v4 returningError:&v29];
  v17 = v29;
  if (v16)
  {
    output = [(DaemonProtocolDataProvider *)v5 output];
    v28 = v17;
    v16 = [(SyncRentalOperation *)self _handleResponse:output error:&v28];
    v26 = v28;

    v19 = [NSPropertyListSerialization dataWithPropertyList:output format:100 options:0 error:0];
    [(SyncRentalOperation *)self lock];
    v20 = [SSURLConnectionResponse alloc];
    response = [v4 response];
    v22 = [v20 initWithURLResponse:response bodyData:v19];
    URLResponse = self->_URLResponse;
    self->_URLResponse = v22;

    [(SyncRentalOperation *)self unlock];
    v17 = v26;
  }

LABEL_18:
  [(SyncRentalOperation *)self setError:v17, v24];
  [(SyncRentalOperation *)self setSuccess:v16];
}

@end