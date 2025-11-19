@interface PurchaseProtocolDataProvider
- (BOOL)_processBuyFailuresFromDictionary:(id)a3 error:(id *)a4;
- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4;
- (BOOL)processDictionary:(id)a3 error:(id *)a4;
- (void)_performActionsForButton:(id)a3 withDialog:(id)a4;
@end

@implementation PurchaseProtocolDataProvider

- (void)_performActionsForButton:(id)a3 withDialog:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 actionType];
  switch(v7)
  {
    case 1u:
      if ([v9 urlType] != 1)
      {
        break;
      }

      goto LABEL_6;
    case 4u:
LABEL_6:
      [v9 performDefaultActionForDialog:v6];
      break;
    case 3u:
      v8 = [v9 parameter];
      [(PurchaseProtocolDataProvider *)self setRedirectActionParameters:v8];

      break;
  }
}

- (BOOL)processDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = PurchaseProtocolDataProvider;
  v16 = 0;
  v7 = [(DaemonProtocolDataProvider *)&v15 processDictionary:v6 error:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v14 = v8;
    v10 = [(PurchaseProtocolDataProvider *)self _processBuyFailuresFromDictionary:v6 error:&v14];
    v11 = v14;

    v9 = v11;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
    v12 = v9;
    *a4 = v9;
  }

LABEL_7:

  return v10;
}

- (BOOL)_processBuyFailuresFromDictionary:(id)a3 error:(id *)a4
{
  v5 = [a3 objectForKey:kISFailureTypeKey];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_58;
  }

  v6 = [v5 intValue];
  v7 = 0;
  v8 = 1;
  if (v6 > 3901)
  {
    if (v6 == 3902)
    {
      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v28 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v29 = v28 | 2;
      }

      else
      {
        v29 = v28;
      }

      v30 = [v9 OSLogObject];
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v31 = objc_opt_class();
        v32 = v31;
        v38 = 138543618;
        v39 = v31;
        v40 = 1024;
        v41 = [v5 intValue];
        LODWORD(v37) = 18;
        v33 = _os_log_send_and_compose_impl();

        if (!v33)
        {
          goto LABEL_55;
        }

        v30 = [NSString stringWithCString:v33 encoding:4, &v38, v37];
        free(v33);
        SSFileLog();
      }
    }

    else
    {
      if (v6 != 3903)
      {
        goto LABEL_58;
      }

      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v16 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      v18 = [v9 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v19 = objc_opt_class();
        v20 = v19;
        v38 = 138543618;
        v39 = v19;
        v40 = 1024;
        v41 = [v5 intValue];
        LODWORD(v37) = 18;
        v21 = _os_log_send_and_compose_impl();

        if (!v21)
        {
          goto LABEL_55;
        }

        v18 = [NSString stringWithCString:v21 encoding:4, &v38, v37];
        free(v21);
        SSFileLog();
      }
    }
  }

  else if (v6 == 3900)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v22 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v9 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v26 = v25;
      v38 = 138543618;
      v39 = v25;
      v40 = 1024;
      v41 = [v5 intValue];
      LODWORD(v37) = 18;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
        goto LABEL_55;
      }

      v24 = [NSString stringWithCString:v27 encoding:4, &v38, v37];
      free(v27);
      SSFileLog();
    }
  }

  else
  {
    if (v6 != 3901)
    {
      goto LABEL_58;
    }

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
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v14 = v13;
      v38 = 138543618;
      v39 = v13;
      v40 = 1024;
      v41 = [v5 intValue];
      LODWORD(v37) = 18;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_55;
      }

      v12 = [NSString stringWithCString:v15 encoding:4, &v38, v37];
      free(v15);
      SSFileLog();
    }
  }

LABEL_55:

  v34 = SSError();
  v7 = v34;
  if (a4)
  {
    v35 = v34;
    v8 = 0;
    *a4 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_58:

  return v8;
}

- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_1000CFF90;
  v90 = sub_1000CFFA0;
  v91 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  [v5 setPerformsButtonAction:0];
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_1000CFF90;
  v76 = sub_1000CFFA0;
  v77 = 0;
  v63 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  v6 = [v5 dialog];
  v7 = [v6 paymentSheet];

  if (!v7)
  {
LABEL_47:
    v41 = v87;
    obj = v87[5];
    v42 = [(PurchaseProtocolDataProvider *)self runSubOperation:v5 error:&obj, v59];
    objc_storeStrong(v41 + 5, obj);
    *(v83 + 24) = v42;
    goto LABEL_48;
  }

  v61 = [v5 authenticationContext];
  v8 = [[DisplayPaymentSheetOperation alloc] initWithPaymentSheet:v7];
  v9 = [v61 requiredUniqueIdentifier];
  [(DisplayPaymentSheetOperation *)v8 setAccountIdentifier:v9];

  v10 = [v7 defaultAuthKitAuthenticationContext];
  [(DisplayPaymentSheetOperation *)v8 setAuthenticationContext:v10];

  v11 = [v7 dialogId];
  [(DisplayPaymentSheetOperation *)v8 setDialogId:v11];

  v12 = [*&self->super.ISProtocolDataProvider_opaque[OBJC_IVAR___ISDataProvider__authenticationContext] accountName];
  [(DisplayPaymentSheetOperation *)v8 setAccountName:v12];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000CFFA8;
  v66[3] = &unk_1003281C8;
  v13 = v63;
  v67 = v13;
  v68 = &v86;
  v69 = &v78;
  v70 = &v72;
  v71 = &v82;
  [(DisplayPaymentSheetOperation *)v8 setCompletionHandler:v66];
  v14 = [[DisplayPaymentSheetContainerOperation alloc] initWithDisplayPaymentSheetOperation:v8];
  if (!v14)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    v28 = [v26 shouldLogToDisk];
    v29 = [v26 OSLogObject];
    v30 = v29;
    if (v28)
    {
      v27 |= 2u;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = v27;
    }

    else
    {
      v31 = v27 & 2;
    }

    if (v31)
    {
      v92 = 138543362;
      v93 = v13;
      LODWORD(v60) = 12;
      v59 = &v92;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
        v23 = 0;
        goto LABEL_40;
      }

      v30 = [NSString stringWithCString:v32 encoding:4, &v92, v60];
      free(v32);
      v59 = v30;
      SSFileLog();
    }

    v23 = 0;
    goto LABEL_39;
  }

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v16 = [v15 shouldLog];
  v17 = [v15 shouldLogToDisk];
  v18 = [v15 OSLogObject];
  v19 = v18;
  if (v17)
  {
    v16 |= 2u;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 & 2;
  }

  if (v20)
  {
    v92 = 138543362;
    v93 = v13;
    LODWORD(v60) = 12;
    v59 = &v92;
    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_14;
    }

    v19 = [NSString stringWithCString:v21 encoding:4, &v92, v60];
    free(v21);
    v59 = v19;
    SSFileLog();
  }

LABEL_14:
  v65 = 0;
  [(PurchaseProtocolDataProvider *)self runSubOperation:v14 error:&v65];
  v22 = v65;
  v23 = v22;
  if (!v22)
  {
    goto LABEL_41;
  }

  v24 = [v22 domain];
  if ([v24 isEqualToString:SSErrorDomain])
  {
    v25 = [v23 code] == 140;

    if (v25)
    {
      *(v79 + 24) = 1;
    }
  }

  else
  {
  }

  v26 = +[SSLogConfig sharedDaemonConfig];
  if (!v26)
  {
    v26 = +[SSLogConfig sharedConfig];
  }

  v33 = [v26 shouldLog];
  v34 = [v26 shouldLogToDisk];
  v35 = [v26 OSLogObject];
  v30 = v35;
  if (v34)
  {
    v33 |= 2u;
  }

  if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v33 &= 2u;
  }

  if (!v33)
  {
    goto LABEL_39;
  }

  v36 = objc_opt_class();
  v92 = 138543618;
  v93 = v36;
  v94 = 2114;
  v95 = v23;
  v37 = v36;
  LODWORD(v60) = 22;
  v59 = &v92;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v30 = [NSString stringWithCString:v38 encoding:4, &v92, v60];
    free(v38);
    v59 = v30;
    SSFileLog();
LABEL_39:
  }

LABEL_40:

LABEL_41:
  if (*(v83 + 24) == 1)
  {
    v39 = [v5 authenticationContext];
    v40 = [v39 mutableCopy];

    if (v73[5])
    {
      [v40 setPasswordEquivalentToken:?];
      [v5 setAuthenticationContext:v40];
    }
  }

  if (!v14 || (v79[3] & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_48:
  v43 = [v5 selectedButton];
  if ((v83[3] & 1) == 0)
  {
    v47 = +[SSLogConfig sharedDaemonConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    v48 = [v47 shouldLog];
    v49 = [v47 shouldLogToDisk];
    v50 = [v47 OSLogObject];
    v51 = v50;
    if (v49)
    {
      v48 |= 2u;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v48;
    }

    else
    {
      v52 = v48 & 2;
    }

    if (v52)
    {
      v53 = objc_opt_class();
      v54 = v87[5];
      v92 = 138543618;
      v93 = v53;
      v94 = 2114;
      v95 = v54;
      v55 = v53;
      LODWORD(v60) = 22;
      v56 = _os_log_send_and_compose_impl();

      if (!v56)
      {
LABEL_61:

        v46 = [v5 dialog];
        [v43 performDefaultActionForDialog:v46];
        goto LABEL_62;
      }

      v51 = [NSString stringWithCString:v56 encoding:4, &v92, v60];
      free(v56);
      SSFileLog();
    }

    goto LABEL_61;
  }

  v44 = [v5 dialog];
  [(PurchaseProtocolDataProvider *)self _performActionsForButton:v43 withDialog:v44];

  -[PurchaseProtocolDataProvider setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [v5 authenticatedAccountCredentialSource]);
  v45 = [v5 authenticatedAccountDSID];
  [(PurchaseProtocolDataProvider *)self setAuthenticatedAccountDSID:v45];

  v46 = [v5 redirectURL];
  [(PurchaseProtocolDataProvider *)self setRedirectURL:v46];
LABEL_62:

  v57 = *(v83 + 24);
  if (a4 && (v83[3] & 1) == 0)
  {
    *a4 = v87[5];
    v57 = *(v83 + 24);
  }

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);

  return v57 & 1;
}

@end