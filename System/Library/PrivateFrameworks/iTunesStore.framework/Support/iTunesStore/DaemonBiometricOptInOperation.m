@interface DaemonBiometricOptInOperation
- (BOOL)_updateTouchIDSettingsForAccount:(id)a3;
- (BOOL)requiresStoreAuthentication;
- (DaemonBiometricOptInOperation)init;
- (id)_authenticateWithAccount:(id)a3 error:(id *)a4;
- (id)resultBlock;
- (void)run;
- (void)setRequiresStoreAuthentication:(BOOL)a3;
- (void)setResultBlock:(id)a3;
@end

@implementation DaemonBiometricOptInOperation

- (DaemonBiometricOptInOperation)init
{
  v3.receiver = self;
  v3.super_class = DaemonBiometricOptInOperation;
  result = [(DaemonBiometricOptInOperation *)&v3 init];
  if (result)
  {
    result->_requiresStoreAuthentication = 1;
  }

  return result;
}

- (BOOL)requiresStoreAuthentication
{
  [(DaemonBiometricOptInOperation *)self lock];
  requiresStoreAuthentication = self->_requiresStoreAuthentication;
  [(DaemonBiometricOptInOperation *)self unlock];
  return requiresStoreAuthentication;
}

- (id)resultBlock
{
  [(DaemonBiometricOptInOperation *)self lock];
  v3 = [self->_resultBlock copy];
  [(DaemonBiometricOptInOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setRequiresStoreAuthentication:(BOOL)a3
{
  [(DaemonBiometricOptInOperation *)self lock];
  self->_requiresStoreAuthentication = a3;

  [(DaemonBiometricOptInOperation *)self unlock];
}

- (void)setResultBlock:(id)a3
{
  v6 = a3;
  [(DaemonBiometricOptInOperation *)self lock];
  if (self->_resultBlock != v6)
  {
    v4 = [v6 copy];
    resultBlock = self->_resultBlock;
    self->_resultBlock = v4;
  }

  [(DaemonBiometricOptInOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(DaemonBiometricStore);
  if (![(DaemonBiometricStore *)v3 canPerformBiometricOptIn])
  {
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
      v27 = 138543362;
      v28 = objc_opt_class();
      v13 = v28;
      LODWORD(v25) = 12;
      v24 = &v27;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

        v7 = SSError();
        v8 = 0;
        goto LABEL_31;
      }

      v12 = [NSString stringWithCString:v14 encoding:4, &v27, v25];
      free(v14);
      v24 = v12;
      SSFileLog();
    }

    goto LABEL_16;
  }

  v4 = +[SSAccountStore defaultStore];
  v5 = [v4 activeAccount];

  if (![(DaemonBiometricOptInOperation *)self requiresStoreAuthentication])
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_18:
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

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v27 = 138543362;
      v28 = v19;
      v20 = v19;
      LODWORD(v25) = 12;
      v24 = &v27;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_29:

        v8 = 0;
        goto LABEL_30;
      }

      v18 = [NSString stringWithCString:v21 encoding:4, &v27, v25];
      free(v21);
      v24 = v18;
      SSFileLog();
    }

    goto LABEL_29;
  }

  v26 = 0;
  v6 = [(DaemonBiometricOptInOperation *)self _authenticateWithAccount:v5 error:&v26];
  v7 = v26;

  v5 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_4:
  v8 = [(DaemonBiometricOptInOperation *)self _updateTouchIDSettingsForAccount:v5];
LABEL_30:

LABEL_31:
  [(DaemonBiometricOptInOperation *)self setError:v7, v24];
  [(DaemonBiometricOptInOperation *)self setSuccess:v8];
  v22 = [(DaemonBiometricOptInOperation *)self resultBlock];
  v23 = v22;
  if (v22)
  {
    (*(v22 + 16))(v22, v8, v7);
  }
}

- (id)_authenticateWithAccount:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [[SSMutableAuthenticationContext alloc] initWithAccount:v4];
  [v5 setCanCreateNewAccount:0];
  [v5 setCanSetActiveAccount:v4 == 0];
  [v5 setPromptStyle:1];
  v6 = [v4 accountName];
  v7 = [v4 uniqueIdentifier];

  v8 = v7;
  v9 = objc_opt_new();
  v10 = [v9 biometricState];
  v78 = v9;
  v11 = [v9 tokenAvailabilityForAccountIdentifier:v8];
  v12 = +[ISDevice sharedInstance];
  v13 = [v12 deviceBiometricStyle];

  if (v11 == 2)
  {
    if ([v6 length])
    {
      if (v13 == 3)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = v14;
        v16 = @"PROMPT_REASON_NEW_FACE_FORMAT_%@";
        goto LABEL_15;
      }

      if (v13 == 2)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = v14;
        v16 = @"PROMPT_REASON_NEW_FINGERS_FORMAT_%@";
LABEL_15:
        v22 = [v14 localizedStringForKey:v16 value:&stru_10033CC30 table:@"Mesa"];
        v23 = [NSString stringWithFormat:v22, v6];

LABEL_28:
LABEL_42:
        [v5 setReasonDescription:{v23, v73}];
LABEL_43:

        goto LABEL_44;
      }

      v24 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v25 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = v25 | 2;
      }

      else
      {
        v26 = v25;
      }

      v27 = [v24 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v26;
      }

      else
      {
        v28 = v26 & 2;
      }

      if (!v28)
      {
        goto LABEL_40;
      }

LABEL_38:
      v79 = 138543362;
      v80 = objc_opt_class();
      v32 = v80;
      LODWORD(v75) = 12;
      v73 = &v79;
      v33 = _os_log_send_and_compose_impl();

      if (!v33)
      {
LABEL_41:

        v23 = 0;
        goto LABEL_42;
      }

      v27 = [NSString stringWithCString:v33 encoding:4, &v79, v75];
      free(v33);
      v73 = v27;
      SSFileLog();
LABEL_40:

      goto LABEL_41;
    }

    if (v13 == 3)
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = v20;
      v21 = @"PROMPT_REASON_NEW_FACE_ANONYMOUS";
    }

    else
    {
      if (v13 != 2)
      {
        v24 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v24)
        {
          v24 = +[SSLogConfig sharedConfig];
        }

        v29 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v30 = v29 | 2;
        }

        else
        {
          v30 = v29;
        }

        v27 = [v24 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 2;
        }

        if (!v31)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = v20;
      v21 = @"PROMPT_REASON_NEW_FINGERS_ANONYMOUS";
    }

    v23 = [v20 localizedStringForKey:v21 value:&stru_10033CC30 table:@"Mesa"];
    goto LABEL_28;
  }

  if (v10 != 2 && [v6 length])
  {
    if (v13 == 2)
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"PROMPT_REASON_GENERIC";
    }

    else
    {
      if (v13 != 3)
      {
        v23 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v23)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        v66 = [v23 shouldLog];
        if ([v23 shouldLogToDisk])
        {
          v67 = v66 | 2;
        }

        else
        {
          v67 = v66;
        }

        v68 = [v23 OSLogObject];
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v67;
        }

        else
        {
          v69 = v67 & 2;
        }

        if (v69)
        {
          v79 = 138543362;
          v80 = objc_opt_class();
          v70 = v80;
          LODWORD(v75) = 12;
          v73 = &v79;
          v71 = _os_log_send_and_compose_impl();

          if (!v71)
          {
            goto LABEL_43;
          }

          v68 = [NSString stringWithCString:v71 encoding:4, &v79, v75];
          free(v71);
          v73 = v68;
          SSFileLog();
        }

        goto LABEL_43;
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"PROMPT_REASON_FACE_GENERIC";
    }

    v64 = [v17 localizedStringForKey:v19 value:&stru_10033CC30 table:@"Mesa"];
    v65 = [NSString stringWithFormat:v64, v6];
    [v5 setReasonDescription:v65];
  }

LABEL_44:
  v34 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v34)
  {
    v34 = +[SSLogConfig sharedConfig];
  }

  v35 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v36 = v35 | 2;
  }

  else
  {
    v36 = v35;
  }

  v37 = [v34 OSLogObject];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 & 2;
  }

  if (!v38)
  {
    goto LABEL_55;
  }

  v39 = objc_opt_class();
  v79 = 138543362;
  v80 = v39;
  v40 = v39;
  LODWORD(v75) = 12;
  v74 = &v79;
  v41 = _os_log_send_and_compose_impl();

  if (v41)
  {
    v37 = [NSString stringWithCString:v41 encoding:4, &v79, v75];
    free(v41);
    v74 = v37;
    SSFileLog();
LABEL_55:
  }

  v42 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v5];
  v43 = [v42 run];
  v44 = [v43 error];

  if (v44 || (v46 = [v43 authenticateResponseType], v46 > 8))
  {
    v45 = 0;
    goto LABEL_101;
  }

  v77 = v8;
  v47 = v6;
  if (((1 << v46) & 0x1CF) != 0)
  {
    v48 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v48)
    {
      v48 = +[SSLogConfig sharedConfig];
    }

    v49 = [v48 shouldLog];
    if ([v48 shouldLogToDisk])
    {
      v50 = v49 | 2;
    }

    else
    {
      v50 = v49;
    }

    v51 = [v48 OSLogObject];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v50;
    }

    else
    {
      v52 = v50 & 2;
    }

    if (v52)
    {
      v53 = objc_opt_class();
      v54 = v53;
      v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v43 authenticateResponseType]);
      v79 = 138543618;
      v80 = v53;
      v81 = 2114;
      v82 = v55;
      LODWORD(v75) = 22;
      v56 = _os_log_send_and_compose_impl();

      v6 = v47;
      v8 = v77;
      v9 = v78;
      if (!v56)
      {
LABEL_73:

        v45 = 0;
        goto LABEL_101;
      }

      v51 = [NSString stringWithCString:v56 encoding:4, &v79, v75];
      free(v56);
      SSFileLog();
    }

    else
    {
      v6 = v47;
      v8 = v77;
      v9 = v78;
    }

    goto LABEL_73;
  }

  v57 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v57)
  {
    v57 = +[SSLogConfig sharedConfig];
  }

  v58 = [v57 shouldLog];
  if ([v57 shouldLogToDisk])
  {
    v58 |= 2u;
  }

  v59 = [v57 OSLogObject];
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = v58;
  }

  else
  {
    v60 = v58 & 2;
  }

  if (!v60)
  {
    v6 = v47;
    v8 = v77;
    v9 = v78;
    goto LABEL_99;
  }

  v61 = objc_opt_class();
  v76 = v61;
  v62 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v43 authenticateResponseType]);
  v79 = 138543618;
  v80 = v61;
  v81 = 2114;
  v82 = v62;
  LODWORD(v75) = 22;
  v63 = _os_log_send_and_compose_impl();

  v6 = v47;
  v8 = v77;
  v9 = v78;
  if (v63)
  {
    v59 = [NSString stringWithCString:v63 encoding:4, &v79, v75];
    free(v63);
    SSFileLog();
LABEL_99:
  }

  v45 = [v43 authenticatedAccount];
LABEL_101:

  return v45;
}

- (BOOL)_updateTouchIDSettingsForAccount:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  v5 = [v3 uniqueIdentifier];

  v6 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:v5];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E91DC;
  v20[3] = &unk_100328A40;
  v7 = v4;
  v21 = v7;
  [v6 setResultBlock:v20];
  v8 = +[ISOperationQueue mainQueue];
  [v8 addOperation:v6];

  v9 = objc_alloc_init(DaemonBiometricStore);
  [(DaemonBiometricStore *)v9 setBiometricState:2];
  v10 = [(DaemonBiometricStore *)v9 identityMap];
  [(DaemonBiometricStore *)v9 saveIdentityMap:v10 forAccountIdentifier:v5];

  [(DaemonBiometricStore *)v9 registerAccountIdentifier:v5];
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v15 = objc_opt_class();
  v22 = 138412546;
  v23 = v15;
  v24 = 2112;
  v25 = v5;
  v16 = v15;
  LODWORD(v19) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [NSString stringWithCString:v17 encoding:4, &v22, v19];
    free(v17);
    SSFileLog();
LABEL_11:
  }

  return 1;
}

@end