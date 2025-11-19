@interface SaveInstallAttributionParamsOperation
- (SaveInstallAttributionParamsOperation)initWithRequest:(id)a3;
- (void)run;
@end

@implementation SaveInstallAttributionParamsOperation

- (SaveInstallAttributionParamsOperation)initWithRequest:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SaveInstallAttributionParamsOperation;
  v5 = [(SaveInstallAttributionParamsOperation *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(InstallAttributionParams);
    params = v5->_params;
    v5->_params = v6;

    v8 = v5->_params;
    v9 = [v4 appAdamId];
    [(InstallAttributionParams *)v8 setAppAdamId:v9];

    v10 = v5->_params;
    v11 = [v4 adNetworkId];
    [(InstallAttributionParams *)v10 setAdNetworkId:v11];

    v12 = v5->_params;
    v13 = [v4 campaignId];
    [(InstallAttributionParams *)v12 setCampaignId:v13];

    v14 = v5->_params;
    v15 = [v4 impressionId];
    [(InstallAttributionParams *)v14 setImpressionId:v15];

    v16 = v5->_params;
    v17 = [v4 timestamp];
    [(InstallAttributionParams *)v16 setTimestamp:v17];

    v18 = v5->_params;
    v19 = [v4 attributionSignature];
    [(InstallAttributionParams *)v18 setAttributionSignature:v19];

    v20 = +[NSDate date];
    [v20 timeIntervalSince1970];
    v22 = (v21 * 1000.0);

    v23 = [NSNumber numberWithLongLong:v22];
    [(InstallAttributionParams *)v5->_params setLocalTimestamp:v23];
    v24 = [v4 originatingBundleId];
    originatingBundleId = v5->_originatingBundleId;
    v5->_originatingBundleId = v24;

    v5->_overrideCampaignLimit = [v4 overrideCampaignLimit];
  }

  return v5;
}

- (void)run
{
  if (!self->_originatingBundleId)
  {
LABEL_63:
    v59 = dispatch_semaphore_create(0);
    v60 = +[PurchaseActionsManager sharedInstance];
    params = self->_params;
    overrideCampaignLimit = self->_overrideCampaignLimit;
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1001FA134;
    v72[3] = &unk_10032BE00;
    v72[4] = self;
    v3 = v59;
    v73 = v3;
    [v60 insertInstallAttributionParams:params overrideCampaignLimit:overrideCampaignLimit completionHandler:v72];

    v63 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v3, v63))
    {
      [(SaveInstallAttributionParamsOperation *)self setSuccess:0];
      v64 = SSError();
      [(SaveInstallAttributionParamsOperation *)self setError:v64];
    }

    goto LABEL_71;
  }

  v3 = [LSApplicationProxy applicationProxyForIdentifier:?];
  v4 = [v3 bundleURL];
  v5 = [v4 path];
  v6 = [v5 stringByAppendingPathComponent:@"Info.plist"];

  v7 = SSVURLProtocolConsumer_ptr;
  v8 = [[NSDictionary alloc] initWithContentsOfFile:v6];
  if (!v8)
  {
    v40 = +[SSLogConfig sharedDaemonConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v41 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v42 = v41 | 2;
    }

    else
    {
      v42 = v41;
    }

    v43 = [v40 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v45 = objc_opt_class();
      originatingBundleId = self->_originatingBundleId;
      v78 = 138543618;
      v79 = v45;
      v80 = 2112;
      v81 = originatingBundleId;
      v47 = v45;
      LODWORD(v67) = 22;
      v48 = _os_log_send_and_compose_impl();

      if (!v48)
      {
LABEL_49:

        [(SaveInstallAttributionParamsOperation *)self setSuccess:0];
        v49 = SSError();
        [(SaveInstallAttributionParamsOperation *)self setError:v49];

        goto LABEL_70;
      }

      v43 = [NSString stringWithCString:v48 encoding:4, &v78, v67];
      free(v48);
      SSFileLog();
    }

    goto LABEL_49;
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:@"SKAdNetworkItems"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = +[SSLogConfig sharedDaemonConfig];
    if (!v50)
    {
      v50 = +[SSLogConfig sharedConfig];
    }

    v51 = [v50 shouldLog];
    if ([v50 shouldLogToDisk])
    {
      v52 = v51 | 2;
    }

    else
    {
      v52 = v51;
    }

    v53 = [v50 OSLogObject];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = v52;
    }

    else
    {
      v54 = v52 & 2;
    }

    if (v54)
    {
      v55 = objc_opt_class();
      v56 = self->_originatingBundleId;
      v78 = 138543618;
      v79 = v55;
      v80 = 2112;
      v81 = v56;
      v57 = v55;
      LODWORD(v67) = 22;
      v58 = _os_log_send_and_compose_impl();

      if (!v58)
      {
LABEL_62:

        [(SaveInstallAttributionParamsOperation *)self setSuccess:0];
        goto LABEL_69;
      }

      v53 = [NSString stringWithCString:v58 encoding:4, &v78, v67];
      free(v58);
      SSFileLog();
    }

    goto LABEL_62;
  }

  v69 = v9;
  v70 = v6;
  v71 = v3;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v68 = v10;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = v12;
  v14 = *v75;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v75 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v74 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = v7;
        v21 = +[SSLogConfig sharedDaemonConfig];
        if (!v21)
        {
          v21 = +[SSLogConfig sharedConfig];
        }

        v22 = [v21 shouldLog];
        if ([v21 shouldLogToDisk])
        {
          v23 = v22 | 2;
        }

        else
        {
          v23 = v22;
        }

        v24 = [v21 OSLogObject];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = v23;
        }

        else
        {
          v25 = v23 & 2;
        }

        if (v25)
        {
          v26 = objc_opt_class();
          v27 = self->_originatingBundleId;
          v78 = 138543618;
          v79 = v26;
          v80 = 2112;
          v81 = v27;
          v28 = v26;
          LODWORD(v67) = 22;
          v66 = &v78;
          v29 = _os_log_send_and_compose_impl();

          if (v29)
          {
            v24 = [NSString stringWithCString:v29 encoding:4, &v78, v67];
            free(v29);
            v66 = v24;
            SSFileLog();
            goto LABEL_23;
          }
        }

        else
        {
LABEL_23:
        }

        v7 = v20;
        continue;
      }

      v17 = [v16 objectForKeyedSubscript:@"SKAdNetworkIdentifier"];
      v18 = [(InstallAttributionParams *)self->_params adNetworkId];
      v19 = [v17 isEqualToString:v18];

      if (v19)
      {

        goto LABEL_63;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v74 objects:v84 count:16];
  }

  while (v13);
LABEL_27:

  v30 = +[SSLogConfig sharedDaemonConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  v31 = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    v31 |= 2u;
  }

  v32 = [v30 OSLogObject];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = v31;
  }

  else
  {
    v33 = v31 & 2;
  }

  if (v33)
  {
    v34 = objc_opt_class();
    v35 = self->_originatingBundleId;
    v36 = self->_params;
    v37 = v34;
    v38 = [(InstallAttributionParams *)v36 adNetworkId];
    v78 = 138543874;
    v79 = v34;
    v80 = 2112;
    v81 = v35;
    v82 = 2112;
    v83 = v38;
    LODWORD(v67) = 32;
    v39 = _os_log_send_and_compose_impl();

    v6 = v70;
    v3 = v71;
    v10 = v68;
    v9 = v69;
    if (v39)
    {
      v32 = [NSString stringWithCString:v39 encoding:4, &v78, v67];
      free(v39);
      SSFileLog();
      goto LABEL_67;
    }
  }

  else
  {
    v6 = v70;
    v3 = v71;
    v10 = v68;
    v9 = v69;
LABEL_67:
  }

  [(SaveInstallAttributionParamsOperation *)self setSuccess:0];
LABEL_69:
  v65 = SSError();
  [(SaveInstallAttributionParamsOperation *)self setError:v65];

LABEL_70:
LABEL_71:
}

@end