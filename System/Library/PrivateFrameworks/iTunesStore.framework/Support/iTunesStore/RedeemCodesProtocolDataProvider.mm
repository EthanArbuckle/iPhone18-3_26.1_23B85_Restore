@interface RedeemCodesProtocolDataProvider
- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error;
@end

@implementation RedeemCodesProtocolDataProvider

- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_1001795F0;
  v87 = sub_100179600;
  v88 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  [operationCopy setPerformsButtonAction:0];
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_1001795F0;
  v73 = sub_100179600;
  v74 = 0;
  v60 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  dialog = [operationCopy dialog];
  paymentSheet = [dialog paymentSheet];

  if (!paymentSheet)
  {
    goto LABEL_59;
  }

  authenticationContext = [operationCopy authenticationContext];
  v8 = [[DisplayPaymentSheetOperation alloc] initWithPaymentSheet:paymentSheet];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];
  [(DisplayPaymentSheetOperation *)v8 setAccountIdentifier:requiredUniqueIdentifier];

  defaultAuthKitAuthenticationContext = [paymentSheet defaultAuthKitAuthenticationContext];
  [(DisplayPaymentSheetOperation *)v8 setAuthenticationContext:defaultAuthKitAuthenticationContext];

  dialogId = [paymentSheet dialogId];
  [(DisplayPaymentSheetOperation *)v8 setDialogId:dialogId];

  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100179608;
  v63[3] = &unk_1003281C8;
  v12 = v60;
  v64 = v12;
  v65 = &v83;
  v66 = &v75;
  v67 = &v69;
  v68 = &v79;
  [(DisplayPaymentSheetOperation *)v8 setCompletionHandler:v63];
  v13 = [[DisplayPaymentSheetContainerOperation alloc] initWithDisplayPaymentSheetOperation:v8];
  if (!v13)
  {
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v25 shouldLog];
    shouldLogToDisk = [v25 shouldLogToDisk];
    oSLogObject = [v25 OSLogObject];
    v29 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v30 = shouldLog;
    }

    else
    {
      v30 = shouldLog & 2;
    }

    if (v30)
    {
      v89 = 138543362;
      v90 = v12;
      LODWORD(v57) = 12;
      v56 = &v89;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
        v22 = 0;
        goto LABEL_40;
      }

      v29 = [NSString stringWithCString:v31 encoding:4, &v89, v57];
      free(v31);
      v56 = v29;
      SSFileLog();
    }

    v22 = 0;
    goto LABEL_39;
  }

  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v14 shouldLog];
  shouldLogToDisk2 = [v14 shouldLogToDisk];
  oSLogObject2 = [v14 OSLogObject];
  v18 = oSLogObject2;
  if (shouldLogToDisk2)
  {
    shouldLog2 |= 2u;
  }

  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = shouldLog2;
  }

  else
  {
    v19 = shouldLog2 & 2;
  }

  if (v19)
  {
    v89 = 138543362;
    v90 = v12;
    LODWORD(v57) = 12;
    v56 = &v89;
    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
      goto LABEL_14;
    }

    v18 = [NSString stringWithCString:v20 encoding:4, &v89, v57];
    free(v20);
    v56 = v18;
    SSFileLog();
  }

LABEL_14:
  v62 = 0;
  [(RedeemCodesProtocolDataProvider *)self runSubOperation:v13 error:&v62];
  v21 = v62;
  v22 = v21;
  if (!v21)
  {
    goto LABEL_41;
  }

  domain = [v21 domain];
  if ([domain isEqualToString:SSErrorDomain])
  {
    v24 = [v22 code] == 140;

    if (v24)
    {
      *(v76 + 24) = 1;
    }
  }

  else
  {
  }

  v25 = +[SSLogConfig sharedDaemonConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v25 shouldLog];
  shouldLogToDisk3 = [v25 shouldLogToDisk];
  oSLogObject3 = [v25 OSLogObject];
  v29 = oSLogObject3;
  if (shouldLogToDisk3)
  {
    shouldLog3 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    shouldLog3 &= 2u;
  }

  if (!shouldLog3)
  {
    goto LABEL_39;
  }

  v35 = objc_opt_class();
  v89 = 138543618;
  v90 = v35;
  v91 = 2114;
  v92 = v22;
  v36 = v35;
  LODWORD(v57) = 22;
  v56 = &v89;
  v37 = _os_log_send_and_compose_impl();

  if (v37)
  {
    v29 = [NSString stringWithCString:v37 encoding:4, &v89, v57];
    free(v37);
    v56 = v29;
    SSFileLog();
LABEL_39:
  }

LABEL_40:

LABEL_41:
  if (*(v80 + 24) == 1)
  {
    authenticationContext2 = [operationCopy authenticationContext];
    v39 = [authenticationContext2 mutableCopy];

    if (v70[5])
    {
      [v39 setPasswordEquivalentToken:?];
      [operationCopy setAuthenticationContext:v39];
    }
  }

  if (v13 && *(v76 + 24) == 1)
  {
    if ((v80[3] & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_60:
    -[RedeemCodesProtocolDataProvider setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [operationCopy authenticatedAccountCredentialSource]);
    authenticatedAccountDSID = [operationCopy authenticatedAccountDSID];
    [(RedeemCodesProtocolDataProvider *)self setAuthenticatedAccountDSID:authenticatedAccountDSID];

    redirectURL = [operationCopy redirectURL];
    [(RedeemCodesProtocolDataProvider *)self setRedirectURL:redirectURL];
    goto LABEL_61;
  }

LABEL_59:
  v50 = v84;
  obj = v84[5];
  v51 = [(RedeemCodesProtocolDataProvider *)self runSubOperation:operationCopy error:&obj, v56];
  objc_storeStrong(v50 + 5, obj);
  *(v80 + 24) = v51;
  if (v51)
  {
    goto LABEL_60;
  }

LABEL_48:
  redirectURL = +[SSLogConfig sharedDaemonConfig];
  if (!redirectURL)
  {
    redirectURL = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [redirectURL shouldLog];
  shouldLogToDisk4 = [redirectURL shouldLogToDisk];
  oSLogObject4 = [redirectURL OSLogObject];
  v44 = oSLogObject4;
  if (shouldLogToDisk4)
  {
    shouldLog4 |= 2u;
  }

  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v45 = shouldLog4;
  }

  else
  {
    v45 = shouldLog4 & 2;
  }

  if (!v45)
  {
    goto LABEL_58;
  }

  v46 = objc_opt_class();
  v47 = v84[5];
  v89 = 138543618;
  v90 = v46;
  v91 = 2114;
  v92 = v47;
  v48 = v46;
  LODWORD(v57) = 22;
  v49 = _os_log_send_and_compose_impl();

  if (v49)
  {
    v44 = [NSString stringWithCString:v49 encoding:4, &v89, v57];
    free(v49);
    SSFileLog();
LABEL_58:
  }

LABEL_61:

  performedButton = [operationCopy performedButton];
  [(RedeemCodesProtocolDataProvider *)self setDialogButton:performedButton];
  v54 = *(v80 + 24);
  if (error && (v80[3] & 1) == 0)
  {
    *error = v84[5];
    v54 = *(v80 + 24);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  return v54 & 1;
}

@end