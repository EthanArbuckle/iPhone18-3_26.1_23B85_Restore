@interface DaemonBiometricOptInOperation
- (BOOL)_updateTouchIDSettingsForAccount:(id)account;
- (BOOL)requiresStoreAuthentication;
- (DaemonBiometricOptInOperation)init;
- (id)_authenticateWithAccount:(id)account error:(id *)error;
- (id)resultBlock;
- (void)run;
- (void)setRequiresStoreAuthentication:(BOOL)authentication;
- (void)setResultBlock:(id)block;
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

- (void)setRequiresStoreAuthentication:(BOOL)authentication
{
  [(DaemonBiometricOptInOperation *)self lock];
  self->_requiresStoreAuthentication = authentication;

  [(DaemonBiometricOptInOperation *)self unlock];
}

- (void)setResultBlock:(id)block
{
  blockCopy = block;
  [(DaemonBiometricOptInOperation *)self lock];
  if (self->_resultBlock != blockCopy)
  {
    v4 = [blockCopy copy];
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

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

      oSLogObject = [NSString stringWithCString:v14 encoding:4, &v27, v25];
      free(v14);
      v24 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_16;
  }

  v4 = +[SSAccountStore defaultStore];
  activeAccount = [v4 activeAccount];

  if (![(DaemonBiometricOptInOperation *)self requiresStoreAuthentication])
  {
    v7 = 0;
    if (activeAccount)
    {
      goto LABEL_4;
    }

LABEL_18:
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject2 = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

      oSLogObject2 = [NSString stringWithCString:v21 encoding:4, &v27, v25];
      free(v21);
      v24 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_29;
  }

  v26 = 0;
  v6 = [(DaemonBiometricOptInOperation *)self _authenticateWithAccount:activeAccount error:&v26];
  v7 = v26;

  activeAccount = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_4:
  v8 = [(DaemonBiometricOptInOperation *)self _updateTouchIDSettingsForAccount:activeAccount];
LABEL_30:

LABEL_31:
  [(DaemonBiometricOptInOperation *)self setError:v7, v24];
  [(DaemonBiometricOptInOperation *)self setSuccess:v8];
  resultBlock = [(DaemonBiometricOptInOperation *)self resultBlock];
  v23 = resultBlock;
  if (resultBlock)
  {
    (*(resultBlock + 16))(resultBlock, v8, v7);
  }
}

- (id)_authenticateWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v5 = [[SSMutableAuthenticationContext alloc] initWithAccount:accountCopy];
  [v5 setCanCreateNewAccount:0];
  [v5 setCanSetActiveAccount:accountCopy == 0];
  [v5 setPromptStyle:1];
  accountName = [accountCopy accountName];
  uniqueIdentifier = [accountCopy uniqueIdentifier];

  v8 = uniqueIdentifier;
  v9 = objc_opt_new();
  biometricState = [v9 biometricState];
  v78 = v9;
  v11 = [v9 tokenAvailabilityForAccountIdentifier:v8];
  v12 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v12 deviceBiometricStyle];

  if (v11 == 2)
  {
    if ([accountName length])
    {
      if (deviceBiometricStyle == 3)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = v14;
        v16 = @"PROMPT_REASON_NEW_FACE_FORMAT_%@";
        goto LABEL_15;
      }

      if (deviceBiometricStyle == 2)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = v14;
        v16 = @"PROMPT_REASON_NEW_FINGERS_FORMAT_%@";
LABEL_15:
        v22 = [v14 localizedStringForKey:v16 value:&stru_10033CC30 table:@"Mesa"];
        v23 = [NSString stringWithFormat:v22, accountName];

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

      shouldLog = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = shouldLog | 2;
      }

      else
      {
        v26 = shouldLog;
      }

      oSLogObject = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [NSString stringWithCString:v33 encoding:4, &v79, v75];
      free(v33);
      v73 = oSLogObject;
      SSFileLog();
LABEL_40:

      goto LABEL_41;
    }

    if (deviceBiometricStyle == 3)
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = v20;
      v21 = @"PROMPT_REASON_NEW_FACE_ANONYMOUS";
    }

    else
    {
      if (deviceBiometricStyle != 2)
      {
        v24 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v24)
        {
          v24 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v30 = shouldLog2 | 2;
        }

        else
        {
          v30 = shouldLog2;
        }

        oSLogObject = [v24 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

  if (biometricState != 2 && [accountName length])
  {
    if (deviceBiometricStyle == 2)
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"PROMPT_REASON_GENERIC";
    }

    else
    {
      if (deviceBiometricStyle != 3)
      {
        v23 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v23)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v23 shouldLog];
        if ([v23 shouldLogToDisk])
        {
          v67 = shouldLog3 | 2;
        }

        else
        {
          v67 = shouldLog3;
        }

        oSLogObject2 = [v23 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

          oSLogObject2 = [NSString stringWithCString:v71 encoding:4, &v79, v75];
          free(v71);
          v73 = oSLogObject2;
          SSFileLog();
        }

        goto LABEL_43;
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"PROMPT_REASON_FACE_GENERIC";
    }

    v64 = [v17 localizedStringForKey:v19 value:&stru_10033CC30 table:@"Mesa"];
    v65 = [NSString stringWithFormat:v64, accountName];
    [v5 setReasonDescription:v65];
  }

LABEL_44:
  v34 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v34)
  {
    v34 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v36 = shouldLog4 | 2;
  }

  else
  {
    v36 = shouldLog4;
  }

  oSLogObject3 = [v34 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject3 = [NSString stringWithCString:v41 encoding:4, &v79, v75];
    free(v41);
    v74 = oSLogObject3;
    SSFileLog();
LABEL_55:
  }

  v42 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v5];
  v43 = [v42 run];
  error = [v43 error];

  if (error || (v46 = [v43 authenticateResponseType], v46 > 8))
  {
    authenticatedAccount = 0;
    goto LABEL_101;
  }

  v77 = v8;
  v47 = accountName;
  if (((1 << v46) & 0x1CF) != 0)
  {
    v48 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v48)
    {
      v48 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v48 shouldLog];
    if ([v48 shouldLogToDisk])
    {
      v50 = shouldLog5 | 2;
    }

    else
    {
      v50 = shouldLog5;
    }

    oSLogObject4 = [v48 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
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

      accountName = v47;
      v8 = v77;
      v9 = v78;
      if (!v56)
      {
LABEL_73:

        authenticatedAccount = 0;
        goto LABEL_101;
      }

      oSLogObject4 = [NSString stringWithCString:v56 encoding:4, &v79, v75];
      free(v56);
      SSFileLog();
    }

    else
    {
      accountName = v47;
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

  shouldLog6 = [v57 shouldLog];
  if ([v57 shouldLogToDisk])
  {
    shouldLog6 |= 2u;
  }

  oSLogObject5 = [v57 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v60 = shouldLog6;
  }

  else
  {
    v60 = shouldLog6 & 2;
  }

  if (!v60)
  {
    accountName = v47;
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

  accountName = v47;
  v8 = v77;
  v9 = v78;
  if (v63)
  {
    oSLogObject5 = [NSString stringWithCString:v63 encoding:4, &v79, v75];
    free(v63);
    SSFileLog();
LABEL_99:
  }

  authenticatedAccount = [v43 authenticatedAccount];
LABEL_101:

  return authenticatedAccount;
}

- (BOOL)_updateTouchIDSettingsForAccount:(id)account
{
  accountCopy = account;
  v4 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  uniqueIdentifier = [accountCopy uniqueIdentifier];

  v6 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:uniqueIdentifier];
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
  identityMap = [(DaemonBiometricStore *)v9 identityMap];
  [(DaemonBiometricStore *)v9 saveIdentityMap:identityMap forAccountIdentifier:uniqueIdentifier];

  [(DaemonBiometricStore *)v9 registerAccountIdentifier:uniqueIdentifier];
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  v25 = uniqueIdentifier;
  v16 = v15;
  LODWORD(v19) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [NSString stringWithCString:v17 encoding:4, &v22, v19];
    free(v17);
    SSFileLog();
LABEL_11:
  }

  return 1;
}

@end