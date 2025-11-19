@interface SubscriptionOperation
- (BOOL)isRequestingOfflineSlot;
- (NSString)userAgent;
- (SSAuthenticationContext)authenticationContext;
- (SSVSubscriptionResponse)response;
- (id)_newMachineDataOperationWithAccount:(id)a3 response:(id)a4;
- (id)_requestPropertiesWithAccount:(id)a3 syncState:(id)a4 fairPlaySubscriptionController:(id)a5;
- (int64_t)operationType;
- (void)run;
- (void)setAuthenticationContext:(id)a3;
- (void)setOperationType:(int64_t)a3;
- (void)setRequestingOfflineSlot:(BOOL)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation SubscriptionOperation

- (SSAuthenticationContext)authenticationContext
{
  [(SubscriptionOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext copy];
  [(SubscriptionOperation *)self unlock];

  return v3;
}

- (BOOL)isRequestingOfflineSlot
{
  [(SubscriptionOperation *)self lock];
  requestingOfflineSlot = self->_requestingOfflineSlot;
  [(SubscriptionOperation *)self unlock];
  return requestingOfflineSlot;
}

- (int64_t)operationType
{
  [(SubscriptionOperation *)self lock];
  operationType = self->_operationType;
  [(SubscriptionOperation *)self unlock];
  return operationType;
}

- (SSVSubscriptionResponse)response
{
  [(SubscriptionOperation *)self lock];
  v3 = [(SSVSubscriptionResponse *)self->_response copy];
  [(SubscriptionOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)a3
{
  v6 = a3;
  [(SubscriptionOperation *)self lock];
  if (self->_authenticationContext != v6)
  {
    v4 = [(SSAuthenticationContext *)v6 copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(SubscriptionOperation *)self unlock];
}

- (void)setOperationType:(int64_t)a3
{
  [(SubscriptionOperation *)self lock];
  self->_operationType = a3;

  [(SubscriptionOperation *)self unlock];
}

- (void)setRequestingOfflineSlot:(BOOL)a3
{
  [(SubscriptionOperation *)self lock];
  self->_requestingOfflineSlot = a3;

  [(SubscriptionOperation *)self unlock];
}

- (void)setUserAgent:(id)a3
{
  v6 = a3;
  [(SubscriptionOperation *)self lock];
  if (self->_userAgent != v6)
  {
    v4 = [(NSString *)v6 copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(SubscriptionOperation *)self unlock];
}

- (NSString)userAgent
{
  [(SubscriptionOperation *)self lock];
  v3 = [(NSString *)self->_userAgent copy];
  [(SubscriptionOperation *)self unlock];

  return v3;
}

- (void)run
{
  v64 = [(SubscriptionOperation *)self authenticationContext];
  [v64 requiredUniqueIdentifier];
  v66 = v65 = 0;
  v62 = 0;
  v3 = 0;
  v4 = 1;
  v5 = &CFDictionaryGetValue_ptr;
  do
  {
    v6 = +[SSAccountStore defaultStore];
    if (![v66 longLongValue] || (objc_msgSend(v6, "accountWithUniqueIdentifier:", v66), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [v6 activeAccount];
    }

    v67 = v6;
    v8 = objc_alloc_init(ISStoreURLOperation);
    [v8 setAuthenticationContext:v64];
    v9 = +[DaemonProtocolDataProvider provider];
    [v8 setDataProvider:v9];

    [v8 setDelegate:self];
    [v8 setMachineDataStyle:0];
    [v8 setUseUserSpecificURLBag:1];
    v68 = objc_alloc_init(SSVFairPlaySubscriptionController);
    v69 = v7;
    v70 = [(SubscriptionOperation *)self _requestPropertiesWithAccount:v7 syncState:v65 fairPlaySubscriptionController:?];
    [v8 setRequestProperties:?];
    v10 = [v5[412] sharedDaemonConfig];
    if (!v10)
    {
      v10 = [v5[412] sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v11 |= 2u;
    }

    v12 = [v10 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = v14;
      [v70 URLBagKey];
      v17 = v16 = v4;
      v74 = 138412546;
      v75 = v14;
      v76 = 2112;
      v77 = v17;
      LODWORD(v61) = 22;
      v60 = &v74;
      v18 = _os_log_send_and_compose_impl();

      v4 = v16;
      v5 = &CFDictionaryGetValue_ptr;

      if (!v18)
      {
        goto LABEL_16;
      }

      v12 = [NSString stringWithCString:v18 encoding:4, &v74, v61];
      free(v18);
      v60 = v12;
      SSFileLog();
    }

LABEL_16:
    v73 = v3;
    v19 = [(SubscriptionOperation *)self runSubOperation:v8 returningError:&v73];
    v20 = v73;

    if (v19)
    {
      v21 = [v8 dataProvider];
      v22 = [v21 output];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_49;
      }

      v23 = SSVSubscriptionBagForDictionary();
      if (v23)
      {
        [v68 importSubscriptionKeyBagData:v23 returningError:0];
        v24 = objc_alloc_init(SSVSubscriptionResponse);
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100130F78;
        v71[3] = &unk_100329740;
        v25 = v24;
        v72 = v25;
        [v68 enumerateAccountSubscriptionStatusUsingBlock:v71];
        v26 = OBJC_IVAR___ISOperation__lock;
        [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__lock] lock];
        response = self->_response;
        self->_response = v25;
        v28 = v25;

        [*&self->ISOperation_opaque[v26] unlock];
      }

      v29 = [v22 objectForKey:{@"statusCode", v60}];
      v63 = v29;
      if ((objc_opt_respondsToSelector() & 1) == 0 || [v29 integerValue])
      {
        v30 = [v5[412] sharedDaemonConfig];
        if (!v30)
        {
          v30 = [v5[412] sharedConfig];
        }

        v31 = [v30 shouldLog];
        if ([v30 shouldLogToDisk])
        {
          v31 |= 2u;
        }

        v32 = [v30 OSLogObject];
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v31 &= 2u;
        }

        if (v31)
        {
          v33 = objc_opt_class();
          v74 = 138412546;
          v75 = v33;
          v76 = 2112;
          v77 = v63;
          v34 = v4;
          v35 = v33;
          LODWORD(v61) = 22;
          v60 = &v74;
          v36 = _os_log_send_and_compose_impl();

          v4 = v34;
          if (!v36)
          {
LABEL_32:

            v37 = [v8 response];
            v38 = [(SubscriptionOperation *)self _newMachineDataOperationWithAccount:v69 response:v37];

            if (v38)
            {
              v39 = [(SubscriptionOperation *)self runSubOperation:v38 returningError:0];
              v40 = [v38 syncState];

              v5 = &CFDictionaryGetValue_ptr;
              if ((v39 & 1) != 0 || (v65 = 0, v40))
              {

                v41 = [v8 authenticatedAccountDSID];
                v23 = v41;
                if (!v41)
                {
                  v42 = 1;
                  v65 = v40;
                  goto LABEL_66;
                }

                v23 = v41;
                v42 = 1;
                v43 = v66;
                v65 = v40;
                v66 = v23;
                v44 = v43;
                goto LABEL_65;
              }
            }

            else
            {
              v5 = &CFDictionaryGetValue_ptr;
            }

            v44 = v63;
            if (v63)
            {
              [v63 integerValue];
            }

            v51 = SSError();

            v42 = 0;
            v20 = v51;
LABEL_65:

            goto LABEL_66;
          }

          v32 = [NSString stringWithCString:v36 encoding:4, &v74, v61];
          free(v36);
          v60 = v32;
          SSFileLog();
        }

        goto LABEL_32;
      }

      v52 = [v5[412] sharedDaemonConfig];
      if (!v52)
      {
        v52 = [v5[412] sharedConfig];
      }

      v53 = [v52 shouldLog];
      if ([v52 shouldLogToDisk])
      {
        v53 |= 2u;
      }

      v54 = [v52 OSLogObject];
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v53 &= 2u;
      }

      if (v53)
      {
        v55 = objc_opt_class();
        v74 = 138412290;
        v75 = v55;
        v56 = v4;
        v57 = v55;
        LODWORD(v61) = 12;
        v60 = &v74;
        v58 = _os_log_send_and_compose_impl();

        v4 = v56;
        if (!v58)
        {
LABEL_64:

          v42 = 0;
          v62 = 1;
          v5 = &CFDictionaryGetValue_ptr;
          v44 = v63;
          goto LABEL_65;
        }

        v54 = [NSString stringWithCString:v58 encoding:4, &v74, v61];
        free(v58);
        v60 = v54;
        SSFileLog();
      }

      goto LABEL_64;
    }

    v22 = [v5[412] sharedDaemonConfig];
    if (!v22)
    {
      v22 = [v5[412] sharedConfig];
    }

    v45 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v46 = v45 | 2;
    }

    else
    {
      v46 = v45;
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 2;
    }

    if (v47)
    {
      v48 = objc_opt_class();
      v74 = 138412546;
      v75 = v48;
      v76 = 2112;
      v77 = v20;
      v49 = v48;
      LODWORD(v61) = 22;
      v60 = &v74;
      v50 = _os_log_send_and_compose_impl();

      if (!v50)
      {
LABEL_49:
        v42 = 0;
        goto LABEL_67;
      }

      v23 = [NSString stringWithCString:v50 encoding:4, &v74, v61];
      free(v50);
      v60 = v23;
      SSFileLog();
    }

    v42 = 0;
LABEL_66:

LABEL_67:
    v3 = v20;

    [v8 setDelegate:0];
    v59 = v42 & v4;
    v4 = 0;
  }

  while ((v59 & 1) != 0);
  [(SubscriptionOperation *)self setError:v20];
  [(SubscriptionOperation *)self setSuccess:v62 & 1];
}

- (id)_newMachineDataOperationWithAccount:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SSMachineDataRequest alloc] initWithURLResponse:v7];

  if (v8)
  {
    v9 = [v6 uniqueIdentifier];
    [v8 setAccountIdentifier:v9];

    [v8 setWaitsForPurchaseOperations:1];
    v10 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:v8];
    v11 = [(SubscriptionOperation *)self userAgent];
    [v10 setUserAgent:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_requestPropertiesWithAccount:(id)a3 syncState:(id)a4 fairPlaySubscriptionController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v48 = a5;
  v10 = objc_alloc_init(SSMutableURLRequestProperties);
  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v10 setValue:@"true" forHTTPHeaderField:@"x-apple-use-amd"];
  v11 = [(SubscriptionOperation *)self userAgent];
  [v10 setValue:v11 forHTTPHeaderField:SSHTTPHeaderUserAgent];

  v12 = [(SubscriptionOperation *)self operationType];
  if (v12 > 2)
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = dword_1002A8FB8[v12];
  [v10 setURLBagKey:off_100329760[v12]];
  if (v9)
  {
LABEL_5:
    [v10 setValue:v9 forHTTPHeaderField:SSHTTPHeaderXAppleAMDS];
  }

LABEL_6:
  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = +[ISDevice sharedInstance];
  v16 = [v15 guid];

  if (v16)
  {
    [v14 setObject:v16 forKey:@"guid"];
  }

  if ([(SubscriptionOperation *)self isRequestingOfflineSlot])
  {
    [v14 setObject:&__kCFBooleanTrue forKey:@"isRequestingSlot"];
  }

  v52 = 0;
  v53 = 0;
  v51 = 0;
  sub_1002442DC(-1, &v53, &v51 + 4, &v52, &v51);
  if (v17)
  {
    v18 = v17;
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v20 |= 2u;
    }

    v21 = [v19 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v54 = 138412546;
      v55 = v22;
      v56 = 2048;
      v57 = v18;
      v23 = v22;
      LODWORD(v44) = 22;
      v43 = &v54;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
        goto LABEL_44;
      }

      v21 = [NSString stringWithCString:v24 encoding:4, &v54, v44];
      free(v24);
      v43 = v21;
      SSFileLog();
    }

    goto LABEL_43;
  }

  if (HIDWORD(v51))
  {
    v25 = [NSData alloc];
    v26 = [v25 initWithBytesNoCopy:v53 length:HIDWORD(v51) freeWhenDone:0];
    v19 = v26;
    if (v26)
    {
      v27 = [v26 base64EncodedStringWithOptions:0];
      [v10 setValue:v27 forHTTPHeaderField:SSHTTPHeaderXAppleAMDM];
    }
  }

  else
  {
    v19 = 0;
  }

  if (v52)
  {
    v28 = [NSData alloc];
    v29 = [v28 initWithBytesNoCopy:v52 length:v51 freeWhenDone:0];
    v30 = [v29 base64EncodedStringWithOptions:0];
    [v10 setValue:v30 forHTTPHeaderField:SSHTTPHeaderXAppleAMD];
  }

  if (v8)
  {
    v31 = [v8 uniqueIdentifier];
    v32 = [v31 unsignedLongLongValue];

    v49 = 0;
    v50 = 0;
    [v48 generateSubscriptionBagRequestWithAccountUniqueIdentifier:v32 transactionType:v13 machineIDData:v19 returningSubscriptionBagData:&v50 error:&v49];
    v21 = v50;
    v33 = v49;
    v34 = v33;
    if (!v33)
    {
      v35 = [v21 base64EncodedStringWithOptions:0];
      if (v35)
      {
        [v14 setObject:v35 forKey:@"sbsync"];
      }

      goto LABEL_42;
    }

    v46 = v8;
    v47 = v33;
    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    v36 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v37 = v36 | 2;
    }

    else
    {
      v37 = v36;
    }

    v38 = [v35 OSLogObject];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v39 = objc_opt_class();
      v54 = 138412546;
      v55 = v39;
      v56 = 2112;
      v57 = v47;
      v45 = v39;
      LODWORD(v44) = 22;
      v43 = &v54;
      v40 = _os_log_send_and_compose_impl();

      if (!v40)
      {
        v8 = v46;
        v34 = v47;
        goto LABEL_42;
      }

      v38 = [NSString stringWithCString:v40 encoding:4, &v54, v44];
      free(v40);
      v43 = v38;
      SSFileLog();
    }

    v8 = v46;

    v34 = v47;
LABEL_42:

LABEL_43:
  }

LABEL_44:

  if (v53)
  {
    sub_100255DC4(v53);
  }

  if (v52)
  {
    sub_100255DC4(v52);
  }

  v41 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:0, v43];
  [v10 setHTTPBody:v41];

  return v10;
}

@end