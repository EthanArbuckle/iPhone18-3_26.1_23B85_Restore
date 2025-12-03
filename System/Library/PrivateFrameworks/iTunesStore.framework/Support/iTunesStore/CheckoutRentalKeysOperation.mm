@interface CheckoutRentalKeysOperation
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (BOOL)_haveValidRentalInformation;
- (BOOL)_performCheckout:(id *)checkout;
- (CheckoutRentalKeysOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier;
- (CheckoutRentalKeysOperation)initWithSinfs:(id)sinfs;
- (CheckoutRentalKeysOperation)initWithStoreDownloadSinfs:(id)sinfs;
- (NSArray)sinfs;
- (NSNumber)accountIdentifier;
- (NSNumber)rentalKeyIdentifier;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSURLConnectionResponse)URLResponse;
- (id)_bodyData;
- (id)_copyAccountIdentifier;
- (id)_copyRentalIdentifier;
- (id)_primarySINF;
- (void)_run;
- (void)_showErrorDialogForOutput:(id)output;
- (void)dealloc;
- (void)setClientIdentifierHeader:(id)header;
- (void)setUserAgent:(id)agent;
@end

@implementation CheckoutRentalKeysOperation

- (CheckoutRentalKeysOperation)initWithSinfs:(id)sinfs
{
  if (![sinfs count])
  {
    sub_100271F04(a2, self);
  }

  v8.receiver = self;
  v8.super_class = CheckoutRentalKeysOperation;
  v6 = [(CheckoutRentalKeysOperation *)&v8 init];
  if (v6)
  {
    v6->_sinfs = [sinfs copy];
    v6->_shouldValidateRentalInfo = 1;
  }

  return v6;
}

- (CheckoutRentalKeysOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier
{
  if (![identifier unsignedLongLongValue] || !objc_msgSend(keyIdentifier, "unsignedLongLongValue"))
  {
    sub_100271F60(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CheckoutRentalKeysOperation;
  v8 = [(CheckoutRentalKeysOperation *)&v10 init];
  if (v8)
  {
    v8->_accountIdentifier = [identifier copy];
    v8->_rentalKeyIdentifier = [keyIdentifier copy];
    v8->_shouldValidateRentalInfo = 1;
  }

  return v8;
}

- (CheckoutRentalKeysOperation)initWithStoreDownloadSinfs:(id)sinfs
{
  v4 = [[DownloadDRM alloc] initWithSinfArray:sinfs];
  v5 = objc_alloc_init(NSMutableArray);
  sinfs = [(DownloadDRM *)v4 sinfs];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSArray *)sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(sinfs);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) dataForSinfDataKey:off_100382E78];
        if (v11)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(CheckoutRentalKeysOperation *)self initWithSinfs:v5];

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckoutRentalKeysOperation;
  [(CheckoutRentalKeysOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountIdentifier;

  return v2;
}

- (NSString)clientIdentifierHeader
{
  [(CheckoutRentalKeysOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(CheckoutRentalKeysOperation *)self unlock];
  return v3;
}

- (NSNumber)rentalKeyIdentifier
{
  v2 = self->_rentalKeyIdentifier;

  return v2;
}

- (void)setClientIdentifierHeader:(id)header
{
  [(CheckoutRentalKeysOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(CheckoutRentalKeysOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  [(CheckoutRentalKeysOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(CheckoutRentalKeysOperation *)self unlock];
}

- (NSArray)sinfs
{
  v2 = self->_sinfs;

  return v2;
}

- (SSURLConnectionResponse)URLResponse
{
  [(CheckoutRentalKeysOperation *)self lock];
  v3 = self->_urlResponse;
  [(CheckoutRentalKeysOperation *)self unlock];
  return v3;
}

- (NSString)userAgent
{
  [(CheckoutRentalKeysOperation *)self lock];
  v3 = self->_userAgent;
  [(CheckoutRentalKeysOperation *)self unlock];

  return v3;
}

- (id)_bodyData
{
  if (![-[CheckoutRentalKeysOperation _primarySINF](self "_primarySINF")] && (!-[NSNumber unsignedLongLongValue](self->_accountIdentifier, "unsignedLongLongValue") || !-[NSNumber unsignedLongLongValue](self->_rentalKeyIdentifier, "unsignedLongLongValue")))
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v3 = sub_1000B1E14();
  if (v3)
  {
    v4 = v3;
    v56 = 0;
    v57 = 0;
    if (sub_1000B208C(&v57, &v56))
    {
      _copyAccountIdentifier = [(CheckoutRentalKeysOperation *)self _copyAccountIdentifier];
      if (_copyAccountIdentifier)
      {
        v6 = _copyAccountIdentifier;
        _copyRentalIdentifier = [(CheckoutRentalKeysOperation *)self _copyRentalIdentifier];
        if (!_copyRentalIdentifier)
        {
          v39 = +[SSLogConfig sharedDaemonConfig];
          if (!v39)
          {
            v39 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v39 shouldLog];
          if ([v39 shouldLogToDisk])
          {
            v41 = shouldLog2 | 2;
          }

          else
          {
            v41 = shouldLog2;
          }

          if (!os_log_type_enabled([v39 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v41 &= 2u;
          }

          if (v41)
          {
            v42 = objc_opt_class();
            v58 = 138412290;
            v59 = v42;
            LODWORD(v55) = 12;
            v54 = &v58;
            v43 = _os_log_send_and_compose_impl();
            if (v43)
            {
              v44 = v43;
              v45 = [NSString stringWithCString:v43 encoding:4, &v58, v55];
              free(v44);
              v54 = v45;
              SSFileLog();
            }
          }

          goto LABEL_62;
        }

        v8 = _copyRentalIdentifier;
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = @"play";
        if (MGGetSInt32Answer() != 4 && ![(CheckoutRentalKeysOperation *)self shouldCheckoutWithPlay])
        {
          v10 = @"download-done";
        }

        [v9 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), v10}];
        [v9 setObject:v6 forKey:@"dsid"];
        guid = [+[ISDevice sharedInstance](ISDevice guid];
        if (guid)
        {
          [v9 setObject:guid forKey:@"guid"];
        }

        v12 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
        if (v12)
        {
          [v9 setObject:v12 forKey:@"hw.model"];
        }

        if (v57)
        {
          [v9 setObject:v57 forKey:@"device-diversity"];
        }

        if (v56)
        {
          [v9 setObject:v56 forKey:@"rbsync"];
        }

        [v9 setObject:v4 forKey:@"rental-bag"];
        [v9 setObject:v8 forKey:@"rental-id"];
        checkoutType = [(CheckoutRentalKeysOperation *)self checkoutType];
        if (checkoutType == 1)
        {
          v14 = @"download";
        }

        else
        {
          if (checkoutType != 2)
          {
LABEL_86:
            v46 = +[SSLogConfig sharedWriteToDiskConfig];
            if (!v46)
            {
              v46 = +[SSLogConfig sharedConfig];
            }

            shouldLog3 = [v46 shouldLog];
            if ([v46 shouldLogToDisk])
            {
              v48 = shouldLog3 | 2;
            }

            else
            {
              v48 = shouldLog3;
            }

            if (!os_log_type_enabled([v46 OSLogObject], OS_LOG_TYPE_DEFAULT))
            {
              v48 &= 2u;
            }

            if (v48)
            {
              v49 = objc_opt_class();
              v58 = 138412546;
              v59 = v49;
              v60 = 2112;
              v61 = v9;
              LODWORD(v55) = 22;
              v54 = &v58;
              v50 = _os_log_send_and_compose_impl();
              if (v50)
              {
                v51 = v50;
                v52 = [NSString stringWithCString:v50 encoding:4, &v58, v55];
                free(v51);
                v54 = v52;
                SSFileLog();
              }
            }

            v38 = [NSPropertyListSerialization dataWithPropertyList:v9 format:100 options:0 error:0, v54];

            goto LABEL_97;
          }

          v14 = @"stream";
        }

        [v9 setObject:v14 forKey:@"checkout-type"];
        goto LABEL_86;
      }

      v27 = +[SSLogConfig sharedDaemonConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v29 = shouldLog4 | 2;
      }

      else
      {
        v29 = shouldLog4;
      }

      if (!os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v29 &= 2u;
      }

      if (!v29)
      {
LABEL_61:
        v6 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = shouldLog5 | 2;
      }

      else
      {
        v26 = shouldLog5;
      }

      if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v26 &= 2u;
      }

      if (!v26)
      {
        goto LABEL_61;
      }
    }

    v30 = objc_opt_class();
    v58 = 138412290;
    v59 = v30;
    LODWORD(v55) = 12;
    v54 = &v58;
    v31 = _os_log_send_and_compose_impl();
    if (v31)
    {
      v32 = v31;
      v33 = [NSString stringWithCString:v31 encoding:4, &v58, v55];
      free(v32);
      v54 = v33;
      SSFileLog();
    }

    goto LABEL_61;
  }

  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = shouldLog6 | 2;
  }

  else
  {
    v20 = shouldLog6;
  }

  if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_41;
  }

LABEL_39:
  v58 = 138412290;
  v59 = objc_opt_class();
  LODWORD(v55) = 12;
  v54 = &v58;
  v21 = _os_log_send_and_compose_impl();
  if (v21)
  {
    v22 = v21;
    v23 = [NSString stringWithCString:v21 encoding:4, &v58, v55];
    free(v22);
    v54 = v23;
    SSFileLog();
  }

LABEL_41:
  v6 = 0;
  v4 = 0;
  v56 = 0;
  v57 = 0;
LABEL_62:
  v34 = +[SSLogConfig sharedDaemonConfig];
  if (!v34)
  {
    v34 = +[SSLogConfig sharedConfig];
  }

  shouldLog7 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v36 = shouldLog7 | 2;
  }

  else
  {
    v36 = shouldLog7;
  }

  if (!os_log_type_enabled([v34 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v36 &= 2u;
  }

  if (v36)
  {
    v37 = objc_opt_class();
    v58 = 138412290;
    v59 = v37;
    LODWORD(v55) = 12;
    v38 = _os_log_send_and_compose_impl();
    if (!v38)
    {
      v8 = 0;
      goto LABEL_97;
    }

    [NSString stringWithCString:v38 encoding:4, &v58, v55];
    free(v38);
    SSFileLog();
  }

  v8 = 0;
  v38 = 0;
LABEL_97:

  return v38;
}

- (id)_copyAccountIdentifier
{
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {

    return [(NSNumber *)accountIdentifier copy];
  }

  else
  {
    v5 = [[SinfsArray alloc] initWithSINFs:self->_sinfs];
    v6 = [(SinfsArray *)v5 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

    return v6;
  }
}

- (id)_copyRentalIdentifier
{
  rentalKeyIdentifier = self->_rentalKeyIdentifier;
  if (rentalKeyIdentifier)
  {

    return [(NSNumber *)rentalKeyIdentifier copy];
  }

  else
  {
    v5 = [[SinfsArray alloc] initWithSINFs:self->_sinfs];
    v6 = [(SinfsArray *)v5 copyValueForProperty:@"SinfPropertyFairPlayKeyIdentifier" error:0];

    return v6;
  }
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  v7 = [response objectForKey:kISFailureTypeKey];
  v8 = [response objectForKey:@"rental-bag-response"];
  if (v7)
  {
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
      v40 = 138412546;
      v41 = objc_opt_class();
      v42 = 2112;
      responseCopy = v7;
      LODWORD(v39) = 22;
      v38 = &v40;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v40, v39];
        free(v13);
        v38 = v14;
        SSFileLog();
      }
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 intValue] == 5102)
    {
      v15 = [ISError() errorBySettingFatalError:1];
      [(CheckoutRentalKeysOperation *)self _showErrorDialogForOutput:response];
LABEL_32:
      v24 = 0;
      goto LABEL_33;
    }

    v16 = ISError();
LABEL_31:
    v15 = v16;
    goto LABEL_32;
  }

  if (v8)
  {
    if (!sub_1000B2C3C(v8) || (v17 = [response objectForKey:@"device-diversity"]) != 0 && !sub_1000B2D94(v17))
    {
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = shouldLog2 | 2;
      }

      else
      {
        v20 = shouldLog2;
      }

      if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v40 = 138412290;
        v41 = objc_opt_class();
        LODWORD(v39) = 12;
        v38 = &v40;
        v21 = _os_log_send_and_compose_impl();
        if (v21)
        {
          v22 = v21;
          v23 = [NSString stringWithCString:v21 encoding:4, &v40, v39];
          free(v22);
          v38 = v23;
          SSFileLog();
        }
      }

      ISError();
      [NSNumber numberWithBool:1];
      v16 = SSErrorBySettingUserInfoValue();
      goto LABEL_31;
    }

    goto LABEL_56;
  }

  v32 = +[SSLogConfig sharedDaemonConfig];
  if (!v32)
  {
    v32 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v32 shouldLog];
  if ([v32 shouldLogToDisk])
  {
    v34 = shouldLog3 | 2;
  }

  else
  {
    v34 = shouldLog3;
  }

  v24 = 1;
  if (!os_log_type_enabled([v32 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v34 &= 2u;
  }

  if (v34)
  {
    v40 = 138412290;
    v41 = objc_opt_class();
    LODWORD(v39) = 12;
    v38 = &v40;
    v35 = _os_log_send_and_compose_impl();
    if (v35)
    {
      v36 = v35;
      v37 = [NSString stringWithCString:v35 encoding:4, &v40, v39];
      free(v36);
      v38 = v37;
      SSFileLog();
LABEL_56:
      v15 = 0;
      v24 = 1;
      goto LABEL_33;
    }
  }

  v15 = 0;
LABEL_33:
  v25 = +[SSLogConfig sharedWriteToDiskConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = shouldLog4 | 2;
  }

  else
  {
    v27 = shouldLog4;
  }

  if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v27 &= 2u;
  }

  if (v27)
  {
    v28 = objc_opt_class();
    v40 = 138412546;
    v41 = v28;
    v42 = 2112;
    responseCopy = response;
    LODWORD(v39) = 22;
    v29 = _os_log_send_and_compose_impl();
    if (v29)
    {
      v30 = v29;
      [NSString stringWithCString:v29 encoding:4, &v40, v39];
      free(v30);
      SSFileLog();
    }
  }

  if (error)
  {
    *error = v15;
  }

  return v24;
}

- (BOOL)_haveValidRentalInformation
{
  if ([(NSArray *)self->_sinfs count])
  {
    v3 = [[SinfsArray alloc] initWithSINFs:self->_sinfs];
    v4 = [(SinfsArray *)v3 copyValueForProperty:@"SinfPropertyRentalInformation" error:0];

    if (!v4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v4 = sub_1000B23FC([(NSNumber *)self->_accountIdentifier unsignedLongLongValue], [(NSNumber *)self->_rentalKeyIdentifier unsignedLongLongValue]);
    if (!v4)
    {
      goto LABEL_37;
    }
  }

  if (![+[SSLogConfig sharedWriteToDiskConfig](SSLogConfig "sharedWriteToDiskConfig")])
  {
    goto LABEL_37;
  }

  v5 = [NSDate dateWithTimeInterval:[NSDate dateWithTimeIntervalSince1970:[(ISFairPlayRentalInfo *)v4 rentalStartTime]] sinceDate:[(ISFairPlayRentalInfo *)v4 rentalDuration]];
  v6 = +[SSLogConfig sharedWriteToDiskConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    [(NSDate *)v5 timeIntervalSinceNow];
    *v30 = 138412802;
    *&v30[4] = v9;
    *&v30[12] = 2048;
    *&v30[14] = v10;
    *&v30[22] = 2112;
    v31 = v5;
    LODWORD(v29) = 32;
    v28 = v30;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, v30, v29];
      free(v12);
      v28 = v13;
      SSFileLog();
    }
  }

  if ([(ISFairPlayRentalInfo *)v4 playbackStartTime]== -1)
  {
    v20 = +[SSLogConfig sharedWriteToDiskConfig];
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

    if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      playbackDuration = [(ISFairPlayRentalInfo *)v4 playbackDuration];
      *v30 = 138412546;
      *&v30[4] = v23;
      *&v30[12] = 2048;
      *&v30[14] = playbackDuration;
      LODWORD(v29) = 22;
LABEL_35:
      v25 = _os_log_send_and_compose_impl();
      if (v25)
      {
        v26 = v25;
        [NSString stringWithCString:v25 encoding:4, v30, v29, *v30, *&v30[16]];
        free(v26);
        SSFileLog();
      }
    }
  }

  else
  {
    v14 = [NSDate dateWithTimeInterval:[NSDate dateWithTimeIntervalSince1970:[(ISFairPlayRentalInfo *)v4 playbackStartTime]] sinceDate:[(ISFairPlayRentalInfo *)v4 playbackDuration]];
    v15 = +[SSLogConfig sharedWriteToDiskConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog3 | 2;
    }

    else
    {
      v17 = shouldLog3;
    }

    if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      [(NSDate *)v14 timeIntervalSinceNow];
      *v30 = 138412802;
      *&v30[4] = v18;
      *&v30[12] = 2048;
      *&v30[14] = v19;
      *&v30[22] = 2112;
      v31 = v14;
      LODWORD(v29) = 32;
      goto LABEL_35;
    }
  }

LABEL_37:

  return v4 != 0;
}

- (BOOL)_performCheckout:(id *)checkout
{
  v24 = 0;
  _bodyData = [(CheckoutRentalKeysOperation *)self _bodyData];
  if (!_bodyData)
  {
    v24 = ISError();
    if (!checkout)
    {
      return _bodyData;
    }

    goto LABEL_22;
  }

  v6 = objc_alloc_init(ISStoreURLOperation);
  _copyAccountIdentifier = [(CheckoutRentalKeysOperation *)self _copyAccountIdentifier];
  if (_copyAccountIdentifier)
  {
    v8 = _copyAccountIdentifier;
    v9 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:_copyAccountIdentifier];
    [v6 setAuthenticationContext:v9];
  }

  v10 = objc_alloc_init(DaemonProtocolDataProvider);
  [v6 setDataProvider:v10];
  if ([(CheckoutRentalKeysOperation *)self isBackgroundCheckout])
  {
    [(DaemonProtocolDataProvider *)v10 setShouldProcessDialogs:0];
  }

  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  [v11 setCachePolicy:1];
  [v11 setClientIdentifier:{-[CheckoutRentalKeysOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v11 setHTTPBody:_bodyData];
  [v11 setHTTPMethod:@"POST"];
  [v11 setURLBagKey:@"rental-checkout"];
  userAgent = [(CheckoutRentalKeysOperation *)self userAgent];
  [v11 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v6 setRequestProperties:v11];

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
    v25 = 138412290;
    v26 = objc_opt_class();
    LODWORD(v23) = 12;
    v22 = &v25;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4, &v25, v23];
      free(v17);
      v22 = v18;
      SSFileLog();
    }
  }

  if ([(CheckoutRentalKeysOperation *)self runSubOperation:v6 returningError:&v24, v22])
  {
    output = [(DaemonProtocolDataProvider *)v10 output];
    LOBYTE(_bodyData) = [(CheckoutRentalKeysOperation *)self _handleResponse:output error:&v24];
    v20 = [NSPropertyListSerialization dataWithPropertyList:output format:100 options:0 error:0];
    [(CheckoutRentalKeysOperation *)self lock];

    self->_urlResponse = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v6 bodyData:{"response"), v20}];
    [(CheckoutRentalKeysOperation *)self unlock];
  }

  else
  {
    LOBYTE(_bodyData) = 0;
  }

  if (checkout)
  {
LABEL_22:
    *checkout = v24;
  }

  return _bodyData;
}

- (id)_primarySINF
{
  result = [(NSArray *)self->_sinfs count];
  if (result)
  {
    sinfs = self->_sinfs;

    return [(NSArray *)sinfs objectAtIndex:0];
  }

  return result;
}

- (void)_run
{
  v37 = 0;
  v3 = SSErrorAllowRetryKey;
  v4 = 1;
  while (1)
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v38 = 138412802;
      v39 = v8;
      v40 = 2048;
      v41 = v4;
      v42 = 1024;
      v43 = 3;
      LODWORD(v36) = 28;
      v35 = &v38;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v38, v36];
        free(v10);
        v35 = v11;
        SSFileLog();
      }
    }

    if ([(CheckoutRentalKeysOperation *)self _performCheckout:&v37, v35])
    {
      if (!self->_shouldValidateRentalInfo || [(CheckoutRentalKeysOperation *)self _haveValidRentalInformation])
      {
        v21 = +[SSLogConfig sharedDaemonConfig];
        if (!v21)
        {
          v21 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v21 shouldLog];
        if ([v21 shouldLogToDisk])
        {
          v23 = shouldLog2 | 2;
        }

        else
        {
          v23 = shouldLog2;
        }

        if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v23 &= 2u;
        }

        if (v23)
        {
          v24 = objc_opt_class();
          v38 = 138412290;
          v39 = v24;
          LODWORD(v36) = 12;
          v35 = &v38;
          v25 = _os_log_send_and_compose_impl();
          if (v25)
          {
            v26 = v25;
            v27 = [NSString stringWithCString:v25 encoding:4, &v38, v36];
            free(v26);
            v35 = v27;
            SSFileLog();
          }
        }

        if ([(CheckoutRentalKeysOperation *)self isBackgroundCheckout])
        {
          [+[DistributedNotificationCenter defaultCenter](DistributedNotificationCenter "defaultCenter")];
        }

        v20 = 1;
        goto LABEL_53;
      }

      goto LABEL_17;
    }

    if (([objc_msgSend(objc_msgSend(v37 "userInfo")] & 1) == 0)
    {
      break;
    }

LABEL_17:
    v12 = v4++ - 1;
    if (v12 >= 2)
    {
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = shouldLog3 | 2;
      }

      else
      {
        v15 = shouldLog3;
      }

      if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v16 = objc_opt_class();
        v38 = 138412290;
        v39 = v16;
        LODWORD(v36) = 12;
        v35 = &v38;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
          v18 = v17;
          v19 = [NSString stringWithCString:v17 encoding:4, &v38, v36];
          free(v18);
          v35 = v19;
          SSFileLog();
        }
      }

      v20 = 0;
      v37 = ISError();
      goto LABEL_53;
    }
  }

  v28 = +[SSLogConfig sharedDaemonConfig];
  if (!v28)
  {
    v28 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v28 shouldLog];
  if ([v28 shouldLogToDisk])
  {
    v30 = shouldLog4 | 2;
  }

  else
  {
    v30 = shouldLog4;
  }

  if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v30 &= 2u;
  }

  if (v30)
  {
    v31 = objc_opt_class();
    v38 = 138412290;
    v39 = v31;
    LODWORD(v36) = 12;
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

  v20 = 0;
LABEL_53:
  [(CheckoutRentalKeysOperation *)self setError:v37, v35];
  [(CheckoutRentalKeysOperation *)self setSuccess:v20];
}

- (void)_showErrorDialogForOutput:(id)output
{
  v5 = [output objectForKey:@"customerMessage"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length] && v5 && !objc_msgSend(output, "objectForKey:", kISDialogKey) && !-[CheckoutRentalKeysOperation isBackgroundCheckout](self, "isBackgroundCheckout"))
  {
    v6 = [ISDialogOperation operationWithError:ISError()];
    v7 = +[ISOperationQueue mainQueue];

    [v7 addOperation:v6];
  }
}

@end