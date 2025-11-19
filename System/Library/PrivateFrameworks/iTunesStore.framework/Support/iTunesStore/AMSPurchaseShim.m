@interface AMSPurchaseShim
- (AMSPurchaseShim)initWithPurchase:(id)a3 auditTokenData:(id)a4 clientIdentifier:(id)a5;
- (id)_legacyErrorFromError:(id)a3;
- (id)runPurchase:(id *)a3;
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
@end

@implementation AMSPurchaseShim

- (AMSPurchaseShim)initWithPurchase:(id)a3 auditTokenData:(id)a4 clientIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = AMSPurchaseShim;
  v11 = [(AMSPurchaseShim *)&v24 init];
  if (v11)
  {
    v12 = [v8 newAMSPurchase];
    [(AMSPurchaseShim *)v11 setPurchase:v12];

    [(AMSPurchaseShim *)v11 setSsPurchase:v8];
    [(AMSPurchaseShim *)v11 setAuditTokenData:v9];
    [(AMSPurchaseShim *)v11 setClientIdentifier:v10];
    v13 = +[AMSPurchaseTask createBagForSubProfile];
    [(AMSPurchaseShim *)v11 setBag:v13];

    v14 = +[SSLogConfig sharedStoreServicesConfig];
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

    v17 = [v14 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = AMSSetLogKeyIfNeeded();
      v25 = 138543618;
      v26 = v18;
      v27 = 2114;
      v28 = v20;
      LODWORD(v23) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_13:

        goto LABEL_14;
      }

      v17 = [NSString stringWithCString:v21 encoding:4, &v25, v23];
      free(v21);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (id)runPurchase:(id *)a3
{
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v60 = 138543618;
    v61 = objc_opt_class();
    v62 = 2114;
    v63 = v5;
    v10 = v61;
    LODWORD(v51) = 22;
    v50 = &v60;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v9 = [NSString stringWithCString:v11 encoding:4, &v60, v51];
    free(v11);
    v50 = v9;
    SSFileLog();
  }

LABEL_12:
  v12 = [(AMSPurchaseShim *)self purchase];
  [v12 setLogUUID:v5];
  v13 = [v12 mediaType];
  v14 = [v12 accountIdentifier];

  v55 = v13;
  if (v14)
  {
    v15 = [ACAccountStore ams_sharedAccountStoreForMediaType:v13];
    v16 = [ACAccountStore ams_accountTypeIdentifierForMediaType:v13];
    v17 = [v12 accountIdentifier];
    [v15 ams_accountWithAltDSID:0 DSID:v17 username:0 accountTypeIdentifier:v16];
    v19 = v18 = a3;
    v20 = [AMSPromise promiseWithResult:v19];

    a3 = v18;
  }

  else
  {
    v15 = +[ACAccountStore ams_sharedAccountStore];
    v20 = [v15 ams_activeiTunesAccountForMediaType:v13];
  }

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1001BD7EC;
  v57[3] = &unk_10032B468;
  v57[4] = self;
  v21 = v5;
  v58 = v21;
  v22 = v12;
  v59 = v22;
  v54 = v20;
  [v20 continueWithBlock:v57];
  v53 = v56 = 0;
  v23 = [v53 resultWithError:&v56];
  v24 = v56;
  if (v24)
  {
    v25 = v24;
    v26 = [(AMSPurchaseShim *)self _legacyErrorFromError:v24];
    if (!v26)
    {
      goto LABEL_39;
    }

    v27 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v28 |= 2u;
    }

    v29 = [v27 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v28 &= 2u;
    }

    v52 = v21;
    if (v28)
    {
      v30 = objc_opt_class();
      v60 = 138543618;
      v61 = v30;
      v62 = 2114;
      v63 = v21;
      v31 = a3;
      v32 = v30;
      LODWORD(v51) = 22;
      v50 = &v60;
      v33 = _os_log_send_and_compose_impl();

      a3 = v31;
      if (!v33)
      {
LABEL_27:

        v26 = v26;
        v34 = v26;
        v21 = v52;
LABEL_38:

        v25 = v34;
        goto LABEL_39;
      }

      v29 = [NSString stringWithCString:v33 encoding:4, &v60, v51];
      free(v33);
      v50 = v29;
      SSFileLog();
    }

    goto LABEL_27;
  }

  v26 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v26)
  {
    v26 = +[SSLogConfig sharedConfig];
  }

  v35 = [v26 shouldLog];
  if ([v26 shouldLogToDisk])
  {
    v35 |= 2u;
  }

  v25 = [v26 OSLogObject];
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v35 &= 2u;
  }

  if (!v35)
  {
LABEL_37:
    v34 = 0;
    goto LABEL_38;
  }

  v36 = objc_opt_class();
  v60 = 138543618;
  v61 = v36;
  v62 = 2114;
  v63 = v21;
  v37 = v36;
  LODWORD(v51) = 22;
  v50 = &v60;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v25 = [NSString stringWithCString:v38 encoding:4, &v60, v51];
    free(v38);
    v50 = v25;
    SSFileLog();
    goto LABEL_37;
  }

  v25 = 0;
LABEL_39:

  if (a3)
  {
    v39 = v25;
    *a3 = v25;
  }

  v40 = [(AMSPurchaseShim *)self ssPurchase];
  v41 = [v23 newSSPurchaseResponseWithSSPurchase:v40];

  v42 = [v41 URLResponse];
  [(AMSPurchaseShim *)self setResult:v23];
  v43 = [v22 account];
  v44 = [v43 ams_DSID];
  [(AMSPurchaseShim *)self setAuthenticatedAccountDSID:v44];

  v45 = [v23 responseDictionary];
  [(AMSPurchaseShim *)self setRawOutput:v45];

  [(AMSPurchaseShim *)self setRequestPerformanceMetrics:0];
  [(AMSPurchaseShim *)self setURLResponse:v42];
  v46 = [v42 storeCorrelationID];
  [(AMSPurchaseShim *)self setStoreCorrelationID:v46];

  v47 = [(AMSPurchaseShim *)self ssPurchase];
  v48 = [v47 tidHeaders];
  [(AMSPurchaseShim *)self setTidHeaders:v48];

  return v23;
}

- (id)_legacyErrorFromError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:AMSErrorUserInfoKeyServerPayload];

  v5 = [v4 objectForKey:kISDialogKey];
  v6 = [v4 objectForKey:kISFailureTypeKey];
  v7 = [[ISDialog alloc] initWithDialogDictionary:v5];
  if ([v7 kind] == 1)
  {
    v8 = 0;
    goto LABEL_28;
  }

  v9 = [v7 buttons];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v21;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = [*(*(&v20 + 1) + 8 * i) actionType];
      if (v16 == 1)
      {
        v12 = 1;
      }

      else if (v16 == 11 || v16 == 3)
      {
        v13 = 1;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);
  if ((v13 & 1) == 0)
  {
    if (v12)
    {
      v8 = ISError();
      goto LABEL_27;
    }

LABEL_22:
    v18 = [v4 objectForKey:@"customerMessage"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v18 = 0;
    }

    if (v6)
    {
      [v6 integerValue];
    }

    v8 = SSError();

    goto LABEL_27;
  }

  v8 = 0;
LABEL_27:

LABEL_28:

  return v8;
}

- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [AMSAuthenticateTask alloc];
  v10 = [(AMSPurchaseShim *)self bag];
  v12 = [v9 initWithRequest:v8 bag:v10];

  [v12 setDelegate:self];
  v11 = [v12 performAuthentication];
  [v11 addFinishBlock:v7];
}

- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a4;
  v9 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v7];

  v8 = [v9 present];
  [v8 addFinishBlock:v6];
}

- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v15 = [[AMSSystemEngagementTask alloc] initWithRequest:v8];

  v9 = [(AMSPurchaseShim *)self clientIdentifier];
  if (v9)
  {
    v10 = [AMSProcessInfo alloc];
    v11 = [(AMSPurchaseShim *)self clientIdentifier];
    v12 = [v10 initWithBundleIdentifier:v11];
  }

  else
  {
    v12 = +[AMSProcessInfo currentProcess];
  }

  v13 = [(AMSPurchaseShim *)self auditTokenData];
  [v12 setAuditTokenData:v13];

  [v15 setClientInfo:v12];
  v14 = [v15 present];
  [v14 addFinishBlock:v7];
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a4;
  v9 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v7];

  v8 = [v9 present];
  [v8 addFinishBlock:v6];
}

@end