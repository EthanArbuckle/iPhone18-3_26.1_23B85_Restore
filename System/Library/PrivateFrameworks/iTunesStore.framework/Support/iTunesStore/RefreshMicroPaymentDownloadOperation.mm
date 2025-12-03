@interface RefreshMicroPaymentDownloadOperation
- (BOOL)_refreshDownload:(id)download error:(id *)error;
- (BOOL)_updateDownload:(id)download withDictionary:(id)dictionary;
- (RefreshMicroPaymentDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier;
- (id)_newIdentityForPayment:(id)payment;
- (id)_newRequestWithIdentity:(id)identity transactionID:(id)d;
- (void)run;
@end

@implementation RefreshMicroPaymentDownloadOperation

- (RefreshMicroPaymentDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = RefreshMicroPaymentDownloadOperation;
  result = [(RefreshMicroPaymentDownloadOperation *)&v5 init];
  if (result)
  {
    result->_downloadID = identifier;
  }

  return result;
}

- (void)run
{
  v23 = 0;
  v3 = +[NSThread beginManagedContextSession];
  v4 = objc_alloc_init(NSFetchRequest);
  [v4 setEntity:{+[MicroPaymentDownload downloadEntityFromContext:](MicroPaymentDownload, "downloadEntityFromContext:", v3)}];
  [v4 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"downloadID=%lld", self->_downloadID)}];
  v5 = [v3 executeFetchRequest:v4 error:&v23];
  if (!v5 || (v6 = v5, [v5 count] != 1))
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

    if (v17)
    {
      v18 = objc_opt_class();
      downloadID = self->_downloadID;
      v24 = 138412802;
      v25 = v18;
      v26 = 2048;
      v27 = downloadID;
      v28 = 2112;
      v29 = v23;
      LODWORD(v22) = 32;
      v20 = _os_log_send_and_compose_impl();
      if (v20)
      {
        v21 = v20;
        [NSString stringWithCString:v20 encoding:4, &v24, v22];
        free(v21);
        SSFileLog();
      }
    }

    goto LABEL_25;
  }

  if (!-[RefreshMicroPaymentDownloadOperation _refreshDownload:error:](self, "_refreshDownload:error:", [v6 objectAtIndex:0], &v23))
  {
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog2 | 2;
  }

  else
  {
    v9 = shouldLog2;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = self->_downloadID;
    v24 = 138412546;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    LODWORD(v22) = 22;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      [NSString stringWithCString:v12 encoding:4, &v24, v22];
      free(v13);
      SSFileLog();
    }
  }

  sub_1000CE00C(v3);
  v14 = 1;
LABEL_26:

  +[NSThread endManagedContextSession];
  [(RefreshMicroPaymentDownloadOperation *)self setError:v23];
  [(RefreshMicroPaymentDownloadOperation *)self setSuccess:v14];
}

- (id)_newIdentityForPayment:(id)payment
{
  client = [payment client];
  if (!client)
  {
    return 0;
  }

  v5 = client;
  if ([objc_msgSend(client "usesIdentityAttributes")])
  {
    v6 = objc_alloc_init(StoreKitClientIdentity);
    -[StoreKitClientIdentity setAccountIdentifier:](v6, "setAccountIdentifier:", [payment userDSID]);
    -[StoreKitClientIdentity setBundleIdentifier:](v6, "setBundleIdentifier:", [v5 identifier]);
    -[StoreKitClientIdentity setBundleVersion:](v6, "setBundleVersion:", [v5 bundleVersion]);
    storeIdentifier = [v5 storeIdentifier];
    storeVersion = [v5 storeVersion];
    [(StoreKitClientIdentity *)v6 setStoreIdentifier:storeIdentifier];
    [(StoreKitClientIdentity *)v6 setStoreVersion:storeVersion];
    if (storeIdentifier)
    {
      v9 = storeVersion == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    [(StoreKitClientIdentity *)v6 setSandboxed:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = +[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy, "applicationProxyForIdentifier:", [v5 identifier]);
    if (v12)
    {
      v13 = v12;
      v6 = objc_alloc_init(StoreKitClientIdentity);
      [(StoreKitClientIdentity *)v6 setValuesWithSoftwareApplicationProxy:v13];
      -[StoreKitClientIdentity setSandboxed:](v6, "setSandboxed:", [objc_msgSend(v5 "sandboxed")]);
    }

    else
    {
      v6 = 0;
    }

    objc_autoreleasePoolPop(v11);
  }

  return v6;
}

- (id)_newRequestWithIdentity:(id)identity transactionID:(id)d
{
  v6 = objc_alloc_init(MicroPaymentQueueRequest);
  [(MicroPaymentQueueRequest *)v6 setClientIdentity:identity];
  -[MicroPaymentQueueRequest setUserIdentifier:](v6, "setUserIdentifier:", [identity accountIdentifier]);
  v7 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(d, "longLongValue")}];
  [(MicroPaymentQueueRequest *)v6 setRangeEndIdentifier:v7];
  [(MicroPaymentQueueRequest *)v6 setRangeStartIdentifier:v7];

  return v6;
}

- (BOOL)_refreshDownload:(id)download error:(id *)error
{
  v45 = 0;
  payment = [download payment];
  transactionIdentifier = [payment transactionIdentifier];
  if (transactionIdentifier)
  {
    v9 = transactionIdentifier;
    v10 = [(RefreshMicroPaymentDownloadOperation *)self _newIdentityForPayment:payment];
    if (v10)
    {
      v11 = v10;
      v12 = [(RefreshMicroPaymentDownloadOperation *)self _newRequestWithIdentity:v10 transactionID:v9];
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
        v16 = objc_opt_class();
        downloadID = self->_downloadID;
        v46 = 138412802;
        v47 = v16;
        v48 = 2048;
        v49 = downloadID;
        v50 = 2112;
        v51 = v9;
        LODWORD(v44) = 32;
        v43 = &v46;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          v19 = v18;
          v20 = [NSString stringWithCString:v18 encoding:4, &v46, v44];
          free(v19);
          v43 = v20;
          SSFileLog();
        }
      }

      v21 = objc_alloc_init(LoadMicroPaymentQueuePaymentsOperation);
      [(LoadMicroPaymentQueuePaymentsOperation *)v21 setRequest:v12];
      [(LoadMicroPaymentQueuePaymentsOperation *)v21 setURLBagKey:@"p2-in-app-pending-transactions"];
      if (([(RefreshMicroPaymentDownloadOperation *)self runSubOperation:v21 returningError:&v45]& 1) != 0)
      {
        payments = [(MicroPaymentQueueResponse *)[(LoadMicroPaymentQueuePaymentsOperation *)v21 response] payments];
        if ([(NSArray *)payments count]== 1)
        {
          LOBYTE(self) = [(RefreshMicroPaymentDownloadOperation *)self _updateDownload:download withDictionary:[(NSArray *)payments objectAtIndex:0]];
          goto LABEL_59;
        }

        v36 = +[SSLogConfig sharedDaemonConfig];
        if (!v36)
        {
          v36 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v36 shouldLog];
        if ([v36 shouldLogToDisk])
        {
          v38 = shouldLog2 | 2;
        }

        else
        {
          v38 = shouldLog2;
        }

        if (!os_log_type_enabled([v36 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v38 &= 2u;
        }

        if (!v38)
        {
          goto LABEL_58;
        }

        v39 = objc_opt_class();
        v40 = [(NSArray *)payments count];
        v41 = self->_downloadID;
        v46 = 138412802;
        v47 = v39;
        v48 = 2048;
        v49 = v40;
        v50 = 2048;
        v51 = v41;
        LODWORD(v44) = 32;
      }

      else
      {
        v31 = +[SSLogConfig sharedDaemonConfig];
        if (!v31)
        {
          v31 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v31 shouldLog];
        if ([v31 shouldLogToDisk])
        {
          v33 = shouldLog3 | 2;
        }

        else
        {
          v33 = shouldLog3;
        }

        if (!os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v33 &= 2u;
        }

        if (!v33)
        {
          goto LABEL_58;
        }

        v34 = objc_opt_class();
        v35 = self->_downloadID;
        v46 = 138412802;
        v47 = v34;
        v48 = 2048;
        v49 = v35;
        v50 = 2112;
        v51 = v45;
        LODWORD(v44) = 32;
      }

      self = _os_log_send_and_compose_impl();
      if (!self)
      {
        goto LABEL_59;
      }

      [NSString stringWithCString:self encoding:4, &v46, v44];
      free(self);
      SSFileLog();
LABEL_58:
      LOBYTE(self) = 0;
LABEL_59:

      if (!error)
      {
        return self;
      }

      goto LABEL_60;
    }

    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = shouldLog4 | 2;
    }

    else
    {
      v28 = shouldLog4;
    }

    if (!os_log_type_enabled([v26 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = shouldLog5 | 2;
    }

    else
    {
      v25 = shouldLog5;
    }

    if (!os_log_type_enabled([v23 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v25 &= 2u;
    }

    if (!v25)
    {
      goto LABEL_35;
    }
  }

  v29 = objc_opt_class();
  v30 = self->_downloadID;
  v46 = 138412546;
  v47 = v29;
  v48 = 2048;
  v49 = v30;
  LODWORD(v44) = 22;
  self = _os_log_send_and_compose_impl();
  if (!self)
  {
    goto LABEL_36;
  }

  [NSString stringWithCString:self encoding:4, &v46, v44];
  free(self);
  SSFileLog();
LABEL_35:
  LOBYTE(self) = 0;
LABEL_36:
  if (!error)
  {
    return self;
  }

LABEL_60:
  if ((self & 1) == 0)
  {
    *error = v45;
  }

  return self;
}

- (BOOL)_updateDownload:(id)download withDictionary:(id)dictionary
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  payment = [download payment];
  [payment mergeValuesFromResponse:dictionary];
  v8 = -[Download initWithMicroPaymentDownload:clientID:]([Download alloc], "initWithMicroPaymentDownload:clientID:", download, [objc_msgSend(payment "client")]);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100212100;
  v10[3] = &unk_10032C580;
  v10[5] = v8;
  v10[6] = &v11;
  v10[4] = self;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];

  LOBYTE(self) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return self;
}

@end