@interface SyncRentalOperation
- (BOOL)_handleResponse:(id)a3 error:(id *)a4;
- (SyncRentalOperation)initWithAccountIdentifier:(id)a3;
- (SyncRentalOperation)initWithSinfs:(id)a3;
- (id)_bodyData;
- (void)_run;
@end

@implementation SyncRentalOperation

- (SyncRentalOperation)initWithSinfs:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    sub_10027202C(a2, self);
  }

  v13.receiver = self;
  v13.super_class = SyncRentalOperation;
  v6 = [(SyncRentalOperation *)&v13 init];
  if (v6)
  {
    v7 = [v5 copy];
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

- (SyncRentalOperation)initWithAccountIdentifier:(id)a3
{
  v5 = a3;
  if (![v5 unsignedLongLongValue])
  {
    sub_1002720A0(a2, self);
  }

  v10.receiver = self;
  v10.super_class = SyncRentalOperation;
  v6 = [(SyncRentalOperation *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
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
        v12 = [v11 guid];

        if (v12)
        {
          [v9 setObject:v12 forKey:@"guid"];
        }

        v13 = +[SSDevice currentDevice];
        v14 = [v13 productType];

        if (v14)
        {
          [v9 setObject:v14 forKey:@"hw.model"];
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

      v21 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      v23 = [v16 OSLogObject];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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
        v23 = [NSString stringWithCString:v26 encoding:4, &v36, v33];
        free(v26);
        v32 = v23;
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

        v19 = [NSString stringWithCString:v6 encoding:4, &v36, v33];
        free(v6);
        v32 = v19;
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

  v27 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v28 = v27 | 2;
  }

  else
  {
    v28 = v27;
  }

  v14 = [v9 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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

    v14 = [NSString stringWithCString:v15 encoding:4, &v36, v33];
    free(v15);
    SSFileLog();
  }

  v15 = 0;
LABEL_51:

LABEL_52:

  return v15;
}

- (BOOL)_handleResponse:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 objectForKey:kISFailureTypeKey];
  v6 = [v4 objectForKey:@"rental-bag-response"];
  v7 = v6;
  if (v5)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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

      v11 = [NSString stringWithCString:v13 encoding:4, &v46, v44];
      free(v13);
      v43 = v11;
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

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v27 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
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

      v30 = [NSString stringWithCString:v32 encoding:4, &v46, v44];
      free(v32);
      v43 = v30;
      SSFileLog();
    }

    goto LABEL_45;
  }

  if (!sub_1000B2C3C(v6))
  {
    goto LABEL_21;
  }

  v16 = [v4 objectForKey:@"device-diversity"];
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

      v19 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v18 OSLogObject];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
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

        v21 = [NSString stringWithCString:v23 encoding:4, &v46, v44];
        free(v23);
        v43 = v21;
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

  v34 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v35 = v34 | 2;
  }

  else
  {
    v35 = v34;
  }

  v36 = [v33 OSLogObject];
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v35 &= 2u;
  }

  if (v35)
  {
    v37 = objc_opt_class();
    v46 = 138412546;
    v47 = v37;
    v48 = 2112;
    v49 = v4;
    v38 = v37;
    LODWORD(v44) = 22;
    v39 = _os_log_send_and_compose_impl();

    v40 = a4;
    if (!v39)
    {
      goto LABEL_60;
    }

    v36 = [NSString stringWithCString:v39 encoding:4, &v46, v44];
    free(v39);
    SSFileLog();
  }

  else
  {
    v40 = a4;
  }

LABEL_60:
  if (v40)
  {
    v41 = v15;
    *v40 = v15;
  }

  return v26;
}

- (void)_run
{
  v3 = [(SyncRentalOperation *)self _bodyData];
  if (!v3)
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
  v7 = [(SyncRentalOperation *)self clientIdentifierHeader];
  [v6 setClientIdentifier:v7];

  [v6 setHTTPBody:v3];
  [v6 setHTTPMethod:@"POST"];
  [v6 setURLBagKey:@"rental-sync"];
  v8 = [(SyncRentalOperation *)self userAgent];
  [v6 setValue:v8 forHTTPHeaderField:SSHTTPHeaderUserAgent];

  [v4 setRequestProperties:v6];
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
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
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
    v12 = [NSString stringWithCString:v15 encoding:4, &v30, v25];
    free(v15);
    v24 = v12;
    SSFileLog();
LABEL_13:
  }

  v29 = 0;
  v16 = [(SyncRentalOperation *)self runSubOperation:v4 returningError:&v29];
  v17 = v29;
  if (v16)
  {
    v18 = [(DaemonProtocolDataProvider *)v5 output];
    v28 = v17;
    v16 = [(SyncRentalOperation *)self _handleResponse:v18 error:&v28];
    v26 = v28;

    v19 = [NSPropertyListSerialization dataWithPropertyList:v18 format:100 options:0 error:0];
    [(SyncRentalOperation *)self lock];
    v20 = [SSURLConnectionResponse alloc];
    v21 = [v4 response];
    v22 = [v20 initWithURLResponse:v21 bodyData:v19];
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