@interface RefreshMicroPaymentDownloadOperation
- (BOOL)_refreshDownload:(id)a3 error:(id *)a4;
- (BOOL)_updateDownload:(id)a3 withDictionary:(id)a4;
- (RefreshMicroPaymentDownloadOperation)initWithDownloadIdentifier:(int64_t)a3;
- (id)_newIdentityForPayment:(id)a3;
- (id)_newRequestWithIdentity:(id)a3 transactionID:(id)a4;
- (void)run;
@end

@implementation RefreshMicroPaymentDownloadOperation

- (RefreshMicroPaymentDownloadOperation)initWithDownloadIdentifier:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RefreshMicroPaymentDownloadOperation;
  result = [(RefreshMicroPaymentDownloadOperation *)&v5 init];
  if (result)
  {
    result->_downloadID = a3;
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

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
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

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
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

- (id)_newIdentityForPayment:(id)a3
{
  v4 = [a3 client];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([objc_msgSend(v4 "usesIdentityAttributes")])
  {
    v6 = objc_alloc_init(StoreKitClientIdentity);
    -[StoreKitClientIdentity setAccountIdentifier:](v6, "setAccountIdentifier:", [a3 userDSID]);
    -[StoreKitClientIdentity setBundleIdentifier:](v6, "setBundleIdentifier:", [v5 identifier]);
    -[StoreKitClientIdentity setBundleVersion:](v6, "setBundleVersion:", [v5 bundleVersion]);
    v7 = [v5 storeIdentifier];
    v8 = [v5 storeVersion];
    [(StoreKitClientIdentity *)v6 setStoreIdentifier:v7];
    [(StoreKitClientIdentity *)v6 setStoreVersion:v8];
    if (v7)
    {
      v9 = v8 == 0;
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

- (id)_newRequestWithIdentity:(id)a3 transactionID:(id)a4
{
  v6 = objc_alloc_init(MicroPaymentQueueRequest);
  [(MicroPaymentQueueRequest *)v6 setClientIdentity:a3];
  -[MicroPaymentQueueRequest setUserIdentifier:](v6, "setUserIdentifier:", [a3 accountIdentifier]);
  v7 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(a4, "longLongValue")}];
  [(MicroPaymentQueueRequest *)v6 setRangeEndIdentifier:v7];
  [(MicroPaymentQueueRequest *)v6 setRangeStartIdentifier:v7];

  return v6;
}

- (BOOL)_refreshDownload:(id)a3 error:(id *)a4
{
  v45 = 0;
  v7 = [a3 payment];
  v8 = [v7 transactionIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [(RefreshMicroPaymentDownloadOperation *)self _newIdentityForPayment:v7];
    if (v10)
    {
      v11 = v10;
      v12 = [(RefreshMicroPaymentDownloadOperation *)self _newRequestWithIdentity:v10 transactionID:v9];
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = v14 | 2;
      }

      else
      {
        v15 = v14;
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
        v22 = [(MicroPaymentQueueResponse *)[(LoadMicroPaymentQueuePaymentsOperation *)v21 response] payments];
        if ([(NSArray *)v22 count]== 1)
        {
          LOBYTE(self) = [(RefreshMicroPaymentDownloadOperation *)self _updateDownload:a3 withDictionary:[(NSArray *)v22 objectAtIndex:0]];
          goto LABEL_59;
        }

        v36 = +[SSLogConfig sharedDaemonConfig];
        if (!v36)
        {
          v36 = +[SSLogConfig sharedConfig];
        }

        v37 = [v36 shouldLog];
        if ([v36 shouldLogToDisk])
        {
          v38 = v37 | 2;
        }

        else
        {
          v38 = v37;
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
        v40 = [(NSArray *)v22 count];
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

        v32 = [v31 shouldLog];
        if ([v31 shouldLogToDisk])
        {
          v33 = v32 | 2;
        }

        else
        {
          v33 = v32;
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

      if (!a4)
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

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
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

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
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
  if (!a4)
  {
    return self;
  }

LABEL_60:
  if ((self & 1) == 0)
  {
    *a4 = v45;
  }

  return self;
}

- (BOOL)_updateDownload:(id)a3 withDictionary:(id)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [a3 payment];
  [v7 mergeValuesFromResponse:a4];
  v8 = -[Download initWithMicroPaymentDownload:clientID:]([Download alloc], "initWithMicroPaymentDownload:clientID:", a3, [objc_msgSend(v7 "client")]);
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