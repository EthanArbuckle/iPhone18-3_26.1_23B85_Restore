@interface RedeemCodesProtocolDataProvider
- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4;
@end

@implementation RedeemCodesProtocolDataProvider

- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4
{
  v5 = a3;
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
  [v5 setPerformsButtonAction:0];
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
  v6 = [v5 dialog];
  v7 = [v6 paymentSheet];

  if (!v7)
  {
    goto LABEL_59;
  }

  v58 = [v5 authenticationContext];
  v8 = [[DisplayPaymentSheetOperation alloc] initWithPaymentSheet:v7];
  v9 = [v58 requiredUniqueIdentifier];
  [(DisplayPaymentSheetOperation *)v8 setAccountIdentifier:v9];

  v10 = [v7 defaultAuthKitAuthenticationContext];
  [(DisplayPaymentSheetOperation *)v8 setAuthenticationContext:v10];

  v11 = [v7 dialogId];
  [(DisplayPaymentSheetOperation *)v8 setDialogId:v11];

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

    v26 = [v25 shouldLog];
    v27 = [v25 shouldLogToDisk];
    v28 = [v25 OSLogObject];
    v29 = v28;
    if (v27)
    {
      v26 |= 2u;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = v26;
    }

    else
    {
      v30 = v26 & 2;
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

  v15 = [v14 shouldLog];
  v16 = [v14 shouldLogToDisk];
  v17 = [v14 OSLogObject];
  v18 = v17;
  if (v16)
  {
    v15 |= 2u;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 & 2;
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

  v23 = [v21 domain];
  if ([v23 isEqualToString:SSErrorDomain])
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

  v32 = [v25 shouldLog];
  v33 = [v25 shouldLogToDisk];
  v34 = [v25 OSLogObject];
  v29 = v34;
  if (v33)
  {
    v32 |= 2u;
  }

  if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v32 &= 2u;
  }

  if (!v32)
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
    v38 = [v5 authenticationContext];
    v39 = [v38 mutableCopy];

    if (v70[5])
    {
      [v39 setPasswordEquivalentToken:?];
      [v5 setAuthenticationContext:v39];
    }
  }

  if (v13 && *(v76 + 24) == 1)
  {
    if ((v80[3] & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_60:
    -[RedeemCodesProtocolDataProvider setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [v5 authenticatedAccountCredentialSource]);
    v52 = [v5 authenticatedAccountDSID];
    [(RedeemCodesProtocolDataProvider *)self setAuthenticatedAccountDSID:v52];

    v40 = [v5 redirectURL];
    [(RedeemCodesProtocolDataProvider *)self setRedirectURL:v40];
    goto LABEL_61;
  }

LABEL_59:
  v50 = v84;
  obj = v84[5];
  v51 = [(RedeemCodesProtocolDataProvider *)self runSubOperation:v5 error:&obj, v56];
  objc_storeStrong(v50 + 5, obj);
  *(v80 + 24) = v51;
  if (v51)
  {
    goto LABEL_60;
  }

LABEL_48:
  v40 = +[SSLogConfig sharedDaemonConfig];
  if (!v40)
  {
    v40 = +[SSLogConfig sharedConfig];
  }

  v41 = [v40 shouldLog];
  v42 = [v40 shouldLogToDisk];
  v43 = [v40 OSLogObject];
  v44 = v43;
  if (v42)
  {
    v41 |= 2u;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v41;
  }

  else
  {
    v45 = v41 & 2;
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

  v53 = [v5 performedButton];
  [(RedeemCodesProtocolDataProvider *)self setDialogButton:v53];
  v54 = *(v80 + 24);
  if (a4 && (v80[3] & 1) == 0)
  {
    *a4 = v84[5];
    v54 = *(v80 + 24);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  return v54 & 1;
}

@end