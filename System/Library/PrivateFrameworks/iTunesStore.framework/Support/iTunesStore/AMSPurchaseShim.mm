@interface AMSPurchaseShim
- (AMSPurchaseShim)initWithPurchase:(id)purchase auditTokenData:(id)data clientIdentifier:(id)identifier;
- (id)_legacyErrorFromError:(id)error;
- (id)runPurchase:(id *)purchase;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation AMSPurchaseShim

- (AMSPurchaseShim)initWithPurchase:(id)purchase auditTokenData:(id)data clientIdentifier:(id)identifier
{
  purchaseCopy = purchase;
  dataCopy = data;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = AMSPurchaseShim;
  v11 = [(AMSPurchaseShim *)&v24 init];
  if (v11)
  {
    newAMSPurchase = [purchaseCopy newAMSPurchase];
    [(AMSPurchaseShim *)v11 setPurchase:newAMSPurchase];

    [(AMSPurchaseShim *)v11 setSsPurchase:purchaseCopy];
    [(AMSPurchaseShim *)v11 setAuditTokenData:dataCopy];
    [(AMSPurchaseShim *)v11 setClientIdentifier:identifierCopy];
    v13 = +[AMSPurchaseTask createBagForSubProfile];
    [(AMSPurchaseShim *)v11 setBag:v13];

    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v25, v23];
      free(v21);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (id)runPurchase:(id *)purchase
{
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[SSLogConfig sharedStoreServicesConfig];
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

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

    oSLogObject = [NSString stringWithCString:v11 encoding:4, &v60, v51];
    free(v11);
    v50 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  purchase = [(AMSPurchaseShim *)self purchase];
  [purchase setLogUUID:v5];
  mediaType = [purchase mediaType];
  accountIdentifier = [purchase accountIdentifier];

  v55 = mediaType;
  if (accountIdentifier)
  {
    v15 = [ACAccountStore ams_sharedAccountStoreForMediaType:mediaType];
    v16 = [ACAccountStore ams_accountTypeIdentifierForMediaType:mediaType];
    accountIdentifier2 = [purchase accountIdentifier];
    [v15 ams_accountWithAltDSID:0 DSID:accountIdentifier2 username:0 accountTypeIdentifier:v16];
    v19 = v18 = purchase;
    v20 = [AMSPromise promiseWithResult:v19];

    purchase = v18;
  }

  else
  {
    v15 = +[ACAccountStore ams_sharedAccountStore];
    v20 = [v15 ams_activeiTunesAccountForMediaType:mediaType];
  }

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1001BD7EC;
  v57[3] = &unk_10032B468;
  v57[4] = self;
  v21 = v5;
  v58 = v21;
  v22 = purchase;
  v59 = v22;
  v54 = v20;
  [v20 continueWithBlock:v57];
  v53 = v56 = 0;
  v23 = [v53 resultWithError:&v56];
  v24 = v56;
  if (v24)
  {
    oSLogObject3 = v24;
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

    shouldLog2 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v27 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      shouldLog2 &= 2u;
    }

    v52 = v21;
    if (shouldLog2)
    {
      v30 = objc_opt_class();
      v60 = 138543618;
      v61 = v30;
      v62 = 2114;
      v63 = v21;
      purchaseCopy = purchase;
      v32 = v30;
      LODWORD(v51) = 22;
      v50 = &v60;
      v33 = _os_log_send_and_compose_impl();

      purchase = purchaseCopy;
      if (!v33)
      {
LABEL_27:

        v26 = v26;
        v34 = v26;
        v21 = v52;
LABEL_38:

        oSLogObject3 = v34;
        goto LABEL_39;
      }

      oSLogObject2 = [NSString stringWithCString:v33 encoding:4, &v60, v51];
      free(v33);
      v50 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_27;
  }

  v26 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v26)
  {
    v26 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v26 shouldLog];
  if ([v26 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject3 = [v26 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    shouldLog3 &= 2u;
  }

  if (!shouldLog3)
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
    oSLogObject3 = [NSString stringWithCString:v38 encoding:4, &v60, v51];
    free(v38);
    v50 = oSLogObject3;
    SSFileLog();
    goto LABEL_37;
  }

  oSLogObject3 = 0;
LABEL_39:

  if (purchase)
  {
    v39 = oSLogObject3;
    *purchase = oSLogObject3;
  }

  ssPurchase = [(AMSPurchaseShim *)self ssPurchase];
  v41 = [v23 newSSPurchaseResponseWithSSPurchase:ssPurchase];

  uRLResponse = [v41 URLResponse];
  [(AMSPurchaseShim *)self setResult:v23];
  account = [v22 account];
  ams_DSID = [account ams_DSID];
  [(AMSPurchaseShim *)self setAuthenticatedAccountDSID:ams_DSID];

  responseDictionary = [v23 responseDictionary];
  [(AMSPurchaseShim *)self setRawOutput:responseDictionary];

  [(AMSPurchaseShim *)self setRequestPerformanceMetrics:0];
  [(AMSPurchaseShim *)self setURLResponse:uRLResponse];
  storeCorrelationID = [uRLResponse storeCorrelationID];
  [(AMSPurchaseShim *)self setStoreCorrelationID:storeCorrelationID];

  ssPurchase2 = [(AMSPurchaseShim *)self ssPurchase];
  tidHeaders = [ssPurchase2 tidHeaders];
  [(AMSPurchaseShim *)self setTidHeaders:tidHeaders];

  return v23;
}

- (id)_legacyErrorFromError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKeyedSubscript:AMSErrorUserInfoKeyServerPayload];

  v5 = [v4 objectForKey:kISDialogKey];
  v6 = [v4 objectForKey:kISFailureTypeKey];
  v7 = [[ISDialog alloc] initWithDialogDictionary:v5];
  if ([v7 kind] == 1)
  {
    v8 = 0;
    goto LABEL_28;
  }

  buttons = [v7 buttons];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [buttons countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(buttons);
      }

      actionType = [*(*(&v20 + 1) + 8 * i) actionType];
      if (actionType == 1)
      {
        v12 = 1;
      }

      else if (actionType == 11 || actionType == 3)
      {
        v13 = 1;
      }
    }

    v11 = [buttons countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = [AMSAuthenticateTask alloc];
  v10 = [(AMSPurchaseShim *)self bag];
  v12 = [v9 initWithRequest:requestCopy bag:v10];

  [v12 setDelegate:self];
  performAuthentication = [v12 performAuthentication];
  [performAuthentication addFinishBlock:completionCopy];
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];

  present = [v9 present];
  [present addFinishBlock:completionCopy];
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v15 = [[AMSSystemEngagementTask alloc] initWithRequest:requestCopy];

  clientIdentifier = [(AMSPurchaseShim *)self clientIdentifier];
  if (clientIdentifier)
  {
    v10 = [AMSProcessInfo alloc];
    clientIdentifier2 = [(AMSPurchaseShim *)self clientIdentifier];
    v12 = [v10 initWithBundleIdentifier:clientIdentifier2];
  }

  else
  {
    v12 = +[AMSProcessInfo currentProcess];
  }

  auditTokenData = [(AMSPurchaseShim *)self auditTokenData];
  [v12 setAuditTokenData:auditTokenData];

  [v15 setClientInfo:v12];
  present = [v15 present];
  [present addFinishBlock:completionCopy];
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];

  present = [v9 present];
  [present addFinishBlock:completionCopy];
}

@end