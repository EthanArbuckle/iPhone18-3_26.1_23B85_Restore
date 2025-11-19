@interface ISDataProvider
+ (id)provider;
- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4;
- (BOOL)canStreamContentLength:(int64_t)a3 error:(id *)a4;
- (BOOL)parseData:(id)a3 returningError:(id *)a4;
- (BOOL)runAuthorizationDialog:(id)a3 error:(id *)a4;
- (BOOL)runSubOperation:(id)a3 error:(id *)a4;
- (BOOL)runTouchIDAuthorizationDialog:(id)a3 fallbackDialog:(id)a4 metricsDictionary:(id)a5 error:(id *)a6;
- (ISDataProvider)init;
- (ISOperation)parentOperation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_performActionsForButton:(id)a3 withDialog:(id)a4;
- (void)configureFromProvider:(id)a3;
- (void)migrateOutputFromSubProvider:(id)a3;
- (void)setup;
@end

@implementation ISDataProvider

- (ISDataProvider)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISDataProvider;
  return [(ISDataProvider *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[4] = [(ISDataProvider *)self contentLength];
  v6 = [(ISDataProvider *)self contentType];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[5];
  v5[5] = v7;

  return v5;
}

+ (id)provider
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)canStreamContentLength:(int64_t)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (void)configureFromProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 authenticationContext];
  [(ISDataProvider *)self setAuthenticationContext:v5];

  v6 = [(ISDataProvider *)self bagContext];
  [(ISDataProvider *)self setBagContext:v6];

  v7 = [v4 contentType];

  [(ISDataProvider *)self setContentType:v7];
}

- (void)migrateOutputFromSubProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 authenticatedAccountDSID];
  [(ISDataProvider *)self setAuthenticatedAccountDSID:v5];

  v6 = [v4 redirectURL];

  [(ISDataProvider *)self setRedirectURL:v6];
}

- (BOOL)parseData:(id)a3 returningError:(id *)a4
{
  [(ISDataProvider *)self setOutput:a3];
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (void)setup
{
  [(ISDataProvider *)self setOutput:0];

  [(ISDataProvider *)self setRedirectURL:0];
}

- (BOOL)runAuthorizationDialog:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v7 setDialog:v6];
  v8 = [v6 authenticationContext];

  v9 = [v8 mutableCopy];
  if (!v9)
  {
    v10 = [(ISDataProvider *)self authenticationContext];
    v9 = [v10 mutableCopy];

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277D69BC8]);
    }
  }

  [(ISServerAuthenticationOperation *)v7 setAuthenticationContext:v9];
  v11 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x277D69B38] sharedConfig];
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
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = objc_opt_class();
    v28 = v16;
    v17 = AMSSetLogKeyIfNeeded();
    v18 = [v9 accountName];
    SSHashIfNeeded();
    v30 = 138544130;
    v31 = v16;
    v32 = 2114;
    v33 = v17;
    v34 = 2112;
    v35 = v9;
    v37 = v36 = 2114;
    LODWORD(v27) = 42;
    v19 = _os_log_send_and_compose_impl();

    if (v19)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v30, v27}];
      free(v19);
      SSFileLog();
    }
  }

  else
  {
  }

  v29 = 0;
  v21 = [(ISDataProvider *)self _runServerAuthenticationOperation:v7 error:&v29];
  v22 = v29;
  v23 = v22;
  if (a4 && !v21)
  {
    v24 = v22;
    *a4 = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)runSubOperation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ISDataProvider *)self parentOperation];
  if (!v7)
  {
    v7 = objc_alloc_init(ISOperation);
  }

  v13 = 0;
  v8 = [(ISOperation *)v7 runSubOperation:v6 returningError:&v13];
  v9 = v13;
  v10 = v9;
  if (a4 && !v8)
  {
    v11 = v9;
    *a4 = v10;
  }

  return v8;
}

- (BOOL)runTouchIDAuthorizationDialog:(id)a3 fallbackDialog:(id)a4 metricsDictionary:(id)a5 error:(id *)a6
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v62 = v10;
  v13 = [v10 paymentSheet];

  if (v13)
  {
    biometricAuthenticationContext = self->_biometricAuthenticationContext;
    v15 = [v10 paymentSheet];
    [(SSBiometricAuthenticationContext *)biometricAuthenticationContext setPaymentSheet:v15];
  }

  v16 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];

  if (!v16)
  {
    v19 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v19)
    {
      v19 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v24 = [(ISBiometricAuthorizationDialogOperation *)v19 shouldLog];
    if ([(ISBiometricAuthorizationDialogOperation *)v19 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v22 = [(ISBiometricAuthorizationDialogOperation *)v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 2;
    }

    if (v26)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }

  v17 = [(ISDataProvider *)self authenticationContext];
  v18 = [v17 shouldSuppressDialogs];

  if (v18)
  {
    v19 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v19)
    {
      v19 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v20 = [(ISBiometricAuthorizationDialogOperation *)v19 shouldLog];
    if ([(ISBiometricAuthorizationDialogOperation *)v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [(ISBiometricAuthorizationDialogOperation *)v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
LABEL_24:
      v64 = 138543362;
      v65 = objc_opt_class();
      v27 = v65;
      LODWORD(v57) = 12;
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v64, v57}];
        free(v28);
        SSFileLog();
      }

      goto LABEL_42;
    }

LABEL_41:

LABEL_42:
    v46 = 0;
    LOBYTE(v47) = 0;
    goto LABEL_47;
  }

  v19 = [[ISBiometricAuthorizationDialogOperation alloc] initWithTouchIDDialog:v10 fallbackDialog:v11];
  [(ISBiometricAuthorizationDialogOperation *)v19 setBiometricAuthenticationContext:self->_biometricAuthenticationContext];
  [(ISBiometricAuthorizationDialogOperation *)v19 setMetricsDictionary:v12];
  v30 = [(SSAuthenticationContext *)self->_authenticationContext signupRequestParameters];
  v31 = [v30 objectForKey:@"product"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v31 unescapedValues:1];
    [(ISBiometricAuthorizationDialogOperation *)v19 setBuyParams:v32];
  }

  v33 = [(SSAuthenticationContext *)self->_authenticationContext HTTPHeaders];
  v34 = [v33 objectForKey:*MEMORY[0x277D6A130]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISBiometricAuthorizationDialogOperation *)v19 setUserAgent:v34];
  }

  v35 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!v35)
  {
    v35 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v36 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    v37 = v36 | 2;
  }

  else
  {
    v37 = v36;
  }

  v38 = [v35 OSLogObject];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 & 2;
  }

  if (v39)
  {
    v60 = v12;
    v61 = a6;
    v40 = v11;
    v41 = objc_opt_class();
    v42 = self->_biometricAuthenticationContext;
    v58 = v41;
    [(SSBiometricAuthenticationContext *)v42 accountName];
    v43 = v59 = v34;
    SSHashIfNeeded();
    v64 = 138543874;
    v65 = v41;
    v11 = v40;
    v66 = 2112;
    v67 = v42;
    v12 = v60;
    a6 = v61;
    v69 = v68 = 2114;
    LODWORD(v57) = 32;
    v44 = _os_log_send_and_compose_impl();

    v34 = v59;
    if (v44)
    {
      v45 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v64, v57}];
      free(v44);
      SSFileLog();
    }
  }

  else
  {
  }

  v63 = 0;
  v47 = [(ISDataProvider *)self runSubOperation:v19 error:&v63];
  v46 = v63;
  if (v47)
  {
    v48 = [(ISBiometricAuthorizationDialogOperation *)v19 selectedButton];
    [(ISBiometricAuthorizationDialogOperation *)v19 dialog];
    v50 = v49 = a6;
    [(ISDataProvider *)self _performActionsForButton:v48 withDialog:v50];

    v51 = [(ISBiometricAuthorizationDialogOperation *)v19 biometricAuthenticationContext];
    v52 = [v51 accountIdentifier];
    [(ISDataProvider *)self setAuthenticatedAccountDSID:v52];

    a6 = v49;
    v53 = [(ISBiometricAuthorizationDialogOperation *)v19 redirectURL];
    [(ISDataProvider *)self setRedirectURL:v53];
  }

LABEL_47:
  if (a6 && !v47)
  {
    v54 = v46;
    *a6 = v46;
  }

  v55 = *MEMORY[0x277D85DE8];
  return v47;
}

- (void)_performActionsForButton:(id)a3 withDialog:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v6 actionType] == 4)
  {
    [v6 performDefaultActionForDialog:v5];
  }
}

- (BOOL)_runServerAuthenticationOperation:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = 0;
  v7 = [(ISDataProvider *)self runSubOperation:v6 error:&v22];
  v8 = v22;
  if (v7)
  {
    -[ISDataProvider setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [v6 authenticatedAccountCredentialSource]);
    v9 = [v6 authenticatedAccountDSID];
    [(ISDataProvider *)self setAuthenticatedAccountDSID:v9];

    v10 = [v6 redirectURL];
    [(ISDataProvider *)self setRedirectURL:v10];

    goto LABEL_16;
  }

  v11 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x277D69B38] sharedConfig];
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
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    v23 = 138543618;
    v24 = v15;
    v25 = 2112;
    v26 = v8;
    v16 = v15;
    LODWORD(v21) = 22;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_14;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v23, v21}];
    free(v17);
    SSFileLog();
  }

LABEL_14:
  if (a4)
  {
    v18 = v8;
    *a4 = v8;
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (ISOperation)parentOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentOperation);

  return WeakRetained;
}

@end