@interface ServerAuthenticationOperation
- (BOOL)_copyAccountIdentifier:(id *)a3 returningError:(id *)a4;
- (BOOL)_copySelectedButton:(id *)a3 returningError:(id *)a4;
- (BOOL)_isLocalizationAlreadyConfiguredForAuthContext:(id)a3;
- (BOOL)_shouldAuthenticateForButton:(id)a3;
- (BOOL)_shouldSkipInitialDialog:(id)a3;
- (BOOL)performsButtonAction;
- (ISDialog)dialog;
- (ISDialogButton)performedButton;
- (ISDialogButton)selectedButton;
- (NSNumber)authenticatedAccountDSID;
- (NSURL)redirectURL;
- (SSAuthenticationContext)authenticationContext;
- (ServerAuthenticationOperation)init;
- (ServerAuthenticationOperation)initWithDialog:(id)a3;
- (id)_copyAuthenticationContext;
- (id)_copyButtonToSkipDialog:(id)a3;
- (void)_handleSelectedButton:(id)a3;
- (void)run;
- (void)setAuthenticationContext:(id)a3;
- (void)setPerformsButtonAction:(BOOL)a3;
@end

@implementation ServerAuthenticationOperation

- (ServerAuthenticationOperation)init
{
  if (!+[SSDevice deviceIsInternalBuild])
  {
    goto LABEL_14;
  }

  v3 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = objc_opt_class();
  v8 = v7;
  v9 = +[SSStackShot generateSymbolicatedStackShot];
  v15 = 138543618;
  v16 = v7;
  v17 = 2114;
  v18 = v9;
  LODWORD(v13) = 22;
  v12 = &v15;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v6 = [NSString stringWithCString:v10 encoding:4, &v15, v13];
    free(v10);
    v12 = v6;
    SSFileLog();
LABEL_12:
  }

LABEL_14:
  v14.receiver = self;
  v14.super_class = ServerAuthenticationOperation;
  result = [(ServerAuthenticationOperation *)&v14 init];
  if (result)
  {
    result->_performsButtonAction = 1;
  }

  return result;
}

- (ServerAuthenticationOperation)initWithDialog:(id)a3
{
  v5 = a3;
  v6 = [(ServerAuthenticationOperation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialog, a3);
  }

  return v7;
}

- (NSNumber)authenticatedAccountDSID
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_authenticatedAccountDSID;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (SSAuthenticationContext)authenticationContext
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_authenticationContext;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (ISDialog)dialog
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_dialog;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (ISDialogButton)performedButton
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_performedButton;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (BOOL)performsButtonAction
{
  [(ServerAuthenticationOperation *)self lock];
  performsButtonAction = self->_performsButtonAction;
  [(ServerAuthenticationOperation *)self unlock];
  return performsButtonAction;
}

- (NSURL)redirectURL
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_redirectURL;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (ISDialogButton)selectedButton
{
  [(ServerAuthenticationOperation *)self lock];
  v3 = self->_selectedButton;
  [(ServerAuthenticationOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)a3
{
  v6 = a3;
  [(ServerAuthenticationOperation *)self lock];
  if (self->_authenticationContext != v6)
  {
    v4 = [(SSAuthenticationContext *)v6 copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(ServerAuthenticationOperation *)self unlock];
}

- (void)setPerformsButtonAction:(BOOL)a3
{
  [(ServerAuthenticationOperation *)self lock];
  self->_performsButtonAction = a3;

  [(ServerAuthenticationOperation *)self unlock];
}

- (void)run
{
  v3 = [(ServerAuthenticationOperation *)self dialog];
  if ([(ServerAuthenticationOperation *)self _shouldSkipInitialDialog:v3])
  {
    v4 = [(ServerAuthenticationOperation *)self _copyButtonToSkipDialog:v3];
    v5 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v6 = [(ServerAuthenticationOperation *)self _copySelectedButton:&v27 returningError:&v26];
    v4 = v27;
    v5 = v26;
    if (!v6)
    {
      v12 = 0;
      v11 = 0;
LABEL_30:

      goto LABEL_31;
    }
  }

  if (v4)
  {
    if ([(ServerAuthenticationOperation *)self _shouldAuthenticateForButton:v4])
    {
      v24 = v5;
      v25 = 0;
      v7 = [(ServerAuthenticationOperation *)self _copyAccountIdentifier:&v25 returningError:&v24];
      v8 = v25;
      v9 = v25;
      v10 = v24;

      if (v7)
      {
        [(ServerAuthenticationOperation *)self lock];
        objc_storeStrong(&self->_authenticatedAccountDSID, v8);
        [(ServerAuthenticationOperation *)self unlock];
        [(ServerAuthenticationOperation *)self _handleSelectedButton:v4];
        v11 = 1;
LABEL_29:
        v12 = v4;
        [(ServerAuthenticationOperation *)self lock];
        objc_storeStrong(&self->_selectedButton, v4);
        [(ServerAuthenticationOperation *)self unlock];
        v4 = v9;
        v5 = v10;
        goto LABEL_30;
      }

      if (ISErrorIsEqual())
      {
        v21 = [v3 buttons];
        v4 = [v21 firstObject];

        if ([(ServerAuthenticationOperation *)self performsButtonAction])
        {
          [v4 performDefaultActionForDialog:v3];
        }
      }

      else
      {
        v4 = 0;
      }

LABEL_28:
      v11 = 0;
      goto LABEL_29;
    }

    v13 = +[SSLogConfig sharedAccountsAuthenticationConfig];
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

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v28 = 138543362;
      v29 = v17;
      v18 = v17;
      LODWORD(v23) = 12;
      v22 = &v28;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_21:

        v10 = ISError();

        if ([(ServerAuthenticationOperation *)self performsButtonAction])
        {
          v20 = [(ServerAuthenticationOperation *)self dialog];
          [v4 performDefaultActionForDialog:v20];
        }

        else
        {
          [(ServerAuthenticationOperation *)self lock];
          objc_storeStrong(&self->_performedButton, v4);
          [(ServerAuthenticationOperation *)self unlock];
        }

        v9 = 0;
        goto LABEL_28;
      }

      v16 = [NSString stringWithCString:v19 encoding:4, &v28, v23];
      free(v19);
      v22 = v16;
      SSFileLog();
    }

    goto LABEL_21;
  }

  v12 = 0;
  v11 = 0;
LABEL_31:
  [(ServerAuthenticationOperation *)self setError:v5];
  [(ServerAuthenticationOperation *)self setSuccess:v11];
}

- (BOOL)_copyAccountIdentifier:(id *)a3 returningError:(id *)a4
{
  v6 = [(ServerAuthenticationOperation *)self _copyAuthenticationContext];
  v7 = &CFDictionaryGetValue_ptr;
  v8 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = AMSLogKey();
    v16 = [(ServerAuthenticationOperation *)self redirectURL];
    v37 = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = v15;
    v41 = 2114;
    v42 = v16;
    LODWORD(v33) = 32;
    v32 = &v37;
    v17 = _os_log_send_and_compose_impl();

    v7 = &CFDictionaryGetValue_ptr;
    if (v17)
    {
      v18 = [NSString stringWithCString:v17 encoding:4, &v37, v33];
      free(v17);
      v32 = v18;
      SSFileLog();
    }
  }

  else
  {
  }

  v35 = 0;
  v36 = 0;
  v19 = [(ServerAuthenticationOperation *)self copyAccountID:&v36 credentialSource:0 byAuthenticatingWithContext:v6 returningError:&v35];
  v20 = v36;
  v21 = v35;
  if ((v19 & 1) == 0)
  {
    v22 = [v7[412] sharedAccountsAuthenticationConfig];
    if (!v22)
    {
      v22 = [v7[412] sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v23 |= 2u;
    }

    v24 = [v22 OSLogObject];
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
      v37 = 138543618;
      v38 = v26;
      v39 = 2112;
      v40 = v21;
      v27 = v26;
      LODWORD(v33) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_25:

        goto LABEL_26;
      }

      v24 = [NSString stringWithCString:v28 encoding:4, &v37, v33];
      free(v28);
      SSFileLog();
    }

    goto LABEL_25;
  }

LABEL_26:
  if (a4)
  {
    v29 = v21;
    *a4 = v21;
  }

  if (a3)
  {
    v30 = v20;
    *a3 = v20;
  }

  return v19;
}

- (id)_copyAuthenticationContext
{
  v3 = [(ServerAuthenticationOperation *)self authenticationContext];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v5 = [SSMutableAuthenticationContext alloc];
    v6 = +[SSAccountStore defaultStore];
    v7 = [v6 activeAccount];
    v4 = [v5 initWithAccount:v7];
  }

  v8 = [(ServerAuthenticationOperation *)self dialog];
  v9 = [v8 authorizationIsForced];

  if (v9)
  {
    [v4 setPromptStyle:1];
  }

  v10 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"serverDialog", @"why", @"true", @"createSession", 0}];
  v11 = [v4 requestParameters];
  if (v11)
  {
    [v10 addEntriesFromDictionary:v11];
  }

  [v4 setRequestParameters:v10];
  v12 = [(ServerAuthenticationOperation *)self dialog];
  if (!v12)
  {
    goto LABEL_62;
  }

  v13 = v12;
  v14 = [(ServerAuthenticationOperation *)self _isLocalizationAlreadyConfiguredForAuthContext:v4];

  if (v14)
  {
    goto LABEL_62;
  }

  v15 = [(ServerAuthenticationOperation *)self dialog];
  v16 = [v15 title];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [v15 title];
    [v4 setPromptTitle:v18];
    v19 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      v66 = v11;
      v24 = v10;
      v25 = v15;
      v26 = objc_opt_class();
      v63 = v26;
      v27 = SSHashIfNeeded();
      v74 = 138543618;
      v75 = v26;
      v15 = v25;
      v10 = v24;
      v11 = v66;
      v76 = 2114;
      v77 = v27;
      LODWORD(v62) = 22;
      v60 = &v74;
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        v29 = [NSString stringWithCString:v28 encoding:4, &v74, v62];
        free(v28);
        v60 = v29;
        SSFileLog();
      }
    }

    else
    {
    }
  }

  v30 = [v15 message];
  v31 = [v30 length];

  if (!v31)
  {
    goto LABEL_36;
  }

  v32 = [v15 message];
  v33 = [v4 accountName];
  v34 = [SSPaymentSheet stringWithFormattedUsernameForString:v32 username:v33];

  [v4 setReasonDescription:v34];
  v35 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v35)
  {
    v35 = +[SSLogConfig sharedConfig];
  }

  v36 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    v36 |= 2u;
  }

  v37 = [v35 OSLogObject];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 & 2;
  }

  if (!v38)
  {
    goto LABEL_34;
  }

  v39 = objc_opt_class();
  v64 = v39;
  SSHashIfNeeded();
  v67 = v34;
  v41 = v40 = v15;
  v74 = 138543618;
  v75 = v39;
  v76 = 2114;
  v77 = v41;
  LODWORD(v62) = 22;
  v61 = &v74;
  v42 = _os_log_send_and_compose_impl();

  v15 = v40;
  v34 = v67;

  if (v42)
  {
    v37 = [NSString stringWithCString:v42 encoding:4, &v74, v62];
    free(v42);
    v61 = v37;
    SSFileLog();
LABEL_34:
  }

LABEL_36:
  v43 = [v15 buttons];
  v44 = [v43 count];

  if (v44 > 2)
  {
    goto LABEL_61;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v45 = [v15 buttons];
  v46 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (!v46)
  {
    goto LABEL_60;
  }

  v47 = v46;
  v48 = *v70;
  while (2)
  {
    for (i = 0; i != v47; i = i + 1)
    {
      if (*v70 != v48)
      {
        objc_enumerationMutation(v45);
      }

      v50 = *(*(&v69 + 1) + 8 * i);
      if ([v50 actionType] && objc_msgSend(v50, "actionType") != 5)
      {
        v68 = v15;
        v51 = [v50 title];
        [v4 setOkButtonLabel:v51];
        v52 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v52)
        {
          v52 = +[SSLogConfig sharedConfig];
        }

        v53 = [v52 shouldLog];
        if ([v52 shouldLogToDisk])
        {
          v53 |= 2u;
        }

        v54 = [v52 OSLogObject];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = v53;
        }

        else
        {
          v55 = v53 & 2;
        }

        if (v55)
        {
          v56 = objc_opt_class();
          v65 = v56;
          v57 = SSHashIfNeeded();
          v74 = 138543618;
          v75 = v56;
          v76 = 2114;
          v77 = v57;
          LODWORD(v62) = 22;
          v58 = _os_log_send_and_compose_impl();

          v15 = v68;
          if (!v58)
          {
LABEL_59:

            goto LABEL_60;
          }

          v54 = [NSString stringWithCString:v58 encoding:4, &v74, v62];
          free(v58);
          SSFileLog();
        }

        else
        {
          v15 = v68;
        }

        goto LABEL_59;
      }
    }

    v47 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_60:

LABEL_61:
LABEL_62:

  return v4;
}

- (id)_copyButtonToSkipDialog:(id)a3
{
  v3 = a3;
  v4 = [v3 buttons];
  v5 = [v4 count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [v4 objectAtIndex:v6 - 1];
      if ([v8 actionType])
      {
        v9 = v8;

        v7 = v9;
      }

      if ([v8 actionType] == 1)
      {
        v10 = [v8 subtarget];
        v11 = [v10 lowercaseString];
        v12 = [v11 containsString:@"signup"];

        if (!v12 || v6 <= 1)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (v6 < 2)
        {
          goto LABEL_12;
        }
      }

      --v6;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)_copySelectedButton:(id *)a3 returningError:(id *)a4
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10013F620;
  v25 = sub_10013F630;
  v26 = 0;
  v7 = [(ServerAuthenticationOperation *)self dialog];
  v8 = [[DaemonDialogOperation alloc] initWithDialog:v7];
  v9 = [(ServerAuthenticationOperation *)self authenticationContext];
  -[DaemonDialogOperation setDisplaysOnLockscreen:](v8, "setDisplaysOnLockscreen:", [v9 displaysOnLockScreen]);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10013F638;
  v17[3] = &unk_100329AA8;
  v19 = &v21;
  v10 = v7;
  v18 = v10;
  v20 = &v27;
  [(DaemonDialogOperation *)v8 setOutputBlock:v17];
  v16 = 0;
  [(ServerAuthenticationOperation *)self runSubOperation:v8 returningError:&v16];
  v11 = v16;
  v12 = v11;
  if (a4)
  {
    v13 = v11;
    *a4 = v12;
  }

  if (a3)
  {
    *a3 = v22[5];
  }

  v14 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v14;
}

- (void)_handleSelectedButton:(id)a3
{
  v5 = a3;
  v6 = [(ServerAuthenticationOperation *)self _copyAuthenticationContext];
  if ([v5 actionType] == 1 && ((objc_msgSend(v6, "shouldFollowAccountButtons") & 1) != 0 || objc_msgSend(v5, "urlType") != 1))
  {
    [(ServerAuthenticationOperation *)self lock];
    v14 = [v5 parameter];
    redirectURL = self->_redirectURL;
    self->_redirectURL = v14;

LABEL_19:
    [(ServerAuthenticationOperation *)self unlock];
    goto LABEL_20;
  }

  if (![(ServerAuthenticationOperation *)self performsButtonAction])
  {
    [(ServerAuthenticationOperation *)self lock];
    objc_storeStrong(&self->_performedButton, a3);
    goto LABEL_19;
  }

  v7 = +[SSLogConfig sharedAccountsAuthenticationConfig];
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

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_15;
  }

  LODWORD(v17) = 138543362;
  *(&v17 + 4) = objc_opt_class();
  v11 = *(&v17 + 4);
  LODWORD(v16) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [NSString stringWithCString:v12 encoding:4, &v17, v16, v17];
    free(v12);
    SSFileLog();
LABEL_15:
  }

  v13 = [(ServerAuthenticationOperation *)self dialog];
  [v5 performDefaultActionForDialog:v13];

LABEL_20:
}

- (BOOL)_isLocalizationAlreadyConfiguredForAuthContext:(id)a3
{
  v3 = a3;
  v4 = [v3 okButtonLabel];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 promptTitle];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 reasonDescription];
      v5 = v7 != 0;
    }
  }

  return v5;
}

- (BOOL)_shouldAuthenticateForButton:(id)a3
{
  v4 = a3;
  v5 = [(ServerAuthenticationOperation *)self dialog];
  v6 = [v5 buttons];

  if ([v4 actionType])
  {
    v7 = [v6 count] != 2 || objc_msgSend(v6, "indexOfObjectIdenticalTo:", v4) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldSkipInitialDialog:(id)a3
{
  v4 = a3;
  v5 = CFPreferencesCopyAppValue(@"Password", kSSUserDefaultsIdentifier);
  if ([v5 length])
  {
    v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
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
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v14 = [v4 title];
  if ([v14 length])
  {
  }

  else
  {
    v15 = [v4 message];
    v16 = [v15 length];

    if (!v16)
    {
      v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v22 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v23 = v22 | 2;
      }

      else
      {
        v23 = v22;
      }

      v9 = [v6 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v23 &= 2u;
      }

      if (!v23)
      {
        goto LABEL_13;
      }

LABEL_10:
      *v32 = 138543362;
      *&v32[4] = objc_opt_class();
      v10 = *&v32[4];
      LODWORD(v31) = 12;
      v11 = _os_log_send_and_compose_impl();
      goto LABEL_11;
    }
  }

  if ([v4 kind] != 1)
  {
    if ([v4 authorizationIsForced])
    {
      v12 = 0;
      goto LABEL_16;
    }

    v6 = [(ServerAuthenticationOperation *)self _copyAuthenticationContext];
    if (+[SSAccountStore isExpiredForTokenType:](SSAccountStore, "isExpiredForTokenType:", [v6 tokenType]))
    {
      goto LABEL_57;
    }

    v20 = +[SSAccountStore defaultStore];
    v21 = [v6 requiredUniqueIdentifier];
    if (v21)
    {
      [v20 accountWithUniqueIdentifier:v21];
    }

    else
    {
      [v20 activeAccount];
    }
    v24 = ;
    v25 = [v24 isAuthenticated];

    if (!v25)
    {
LABEL_57:
      v12 = 0;
      goto LABEL_15;
    }

    v9 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v26 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = [v9 OSLogObject];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      *v32 = 138543362;
      *&v32[4] = objc_opt_class();
      v29 = *&v32[4];
      LODWORD(v31) = 12;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
        goto LABEL_13;
      }

      v28 = [NSString stringWithCString:v30 encoding:4, v32, v31, *v32];
      free(v30);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v17 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = objc_opt_class();
  v10 = v19;
  AMSLogKey();
  *v32 = 138543618;
  *&v32[4] = v19;
  *&v32[14] = *&v32[12] = 2114;
  LODWORD(v31) = 22;
  v11 = _os_log_send_and_compose_impl();

LABEL_11:
  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v32, v31];
    free(v11);
    SSFileLog();
LABEL_13:
  }

  v12 = 1;
LABEL_15:

LABEL_16:
  return v12;
}

@end