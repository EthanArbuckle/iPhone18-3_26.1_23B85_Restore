@interface ISDataProvider
+ (id)provider;
- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error;
- (BOOL)canStreamContentLength:(int64_t)length error:(id *)error;
- (BOOL)parseData:(id)data returningError:(id *)error;
- (BOOL)runAuthorizationDialog:(id)dialog error:(id *)error;
- (BOOL)runSubOperation:(id)operation error:(id *)error;
- (BOOL)runTouchIDAuthorizationDialog:(id)dialog fallbackDialog:(id)fallbackDialog metricsDictionary:(id)dictionary error:(id *)error;
- (ISDataProvider)init;
- (ISOperation)parentOperation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_performActionsForButton:(id)button withDialog:(id)dialog;
- (void)configureFromProvider:(id)provider;
- (void)migrateOutputFromSubProvider:(id)provider;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[4] = [(ISDataProvider *)self contentLength];
  contentType = [(ISDataProvider *)self contentType];
  v7 = [contentType copyWithZone:zone];
  v8 = v5[5];
  v5[5] = v7;

  return v5;
}

+ (id)provider
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)canStreamContentLength:(int64_t)length error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)configureFromProvider:(id)provider
{
  providerCopy = provider;
  authenticationContext = [providerCopy authenticationContext];
  [(ISDataProvider *)self setAuthenticationContext:authenticationContext];

  bagContext = [(ISDataProvider *)self bagContext];
  [(ISDataProvider *)self setBagContext:bagContext];

  contentType = [providerCopy contentType];

  [(ISDataProvider *)self setContentType:contentType];
}

- (void)migrateOutputFromSubProvider:(id)provider
{
  providerCopy = provider;
  authenticatedAccountDSID = [providerCopy authenticatedAccountDSID];
  [(ISDataProvider *)self setAuthenticatedAccountDSID:authenticatedAccountDSID];

  redirectURL = [providerCopy redirectURL];

  [(ISDataProvider *)self setRedirectURL:redirectURL];
}

- (BOOL)parseData:(id)data returningError:(id *)error
{
  [(ISDataProvider *)self setOutput:data];
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)setup
{
  [(ISDataProvider *)self setOutput:0];

  [(ISDataProvider *)self setRedirectURL:0];
}

- (BOOL)runAuthorizationDialog:(id)dialog error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v7 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v7 setDialog:dialogCopy];
  authenticationContext = [dialogCopy authenticationContext];

  v9 = [authenticationContext mutableCopy];
  if (!v9)
  {
    authenticationContext2 = [(ISDataProvider *)self authenticationContext];
    v9 = [authenticationContext2 mutableCopy];

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277D69BC8]);
    }
  }

  [(ISServerAuthenticationOperation *)v7 setAuthenticationContext:v9];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    accountName = [v9 accountName];
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
  if (error && !v21)
  {
    v24 = v22;
    *error = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)runSubOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  parentOperation = [(ISDataProvider *)self parentOperation];
  if (!parentOperation)
  {
    parentOperation = objc_alloc_init(ISOperation);
  }

  v13 = 0;
  v8 = [(ISOperation *)parentOperation runSubOperation:operationCopy returningError:&v13];
  v9 = v13;
  v10 = v9;
  if (error && !v8)
  {
    v11 = v9;
    *error = v10;
  }

  return v8;
}

- (BOOL)runTouchIDAuthorizationDialog:(id)dialog fallbackDialog:(id)fallbackDialog metricsDictionary:(id)dictionary error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  fallbackDialogCopy = fallbackDialog;
  dictionaryCopy = dictionary;
  v62 = dialogCopy;
  paymentSheet = [dialogCopy paymentSheet];

  if (paymentSheet)
  {
    biometricAuthenticationContext = self->_biometricAuthenticationContext;
    paymentSheet2 = [dialogCopy paymentSheet];
    [(SSBiometricAuthenticationContext *)biometricAuthenticationContext setPaymentSheet:paymentSheet2];
  }

  challenge = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];

  if (!challenge)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLog];
    if ([(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v25 = shouldLog | 2;
    }

    else
    {
      v25 = shouldLog;
    }

    oSLogObject = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

  authenticationContext = [(ISDataProvider *)self authenticationContext];
  shouldSuppressDialogs = [authenticationContext shouldSuppressDialogs];

  if (shouldSuppressDialogs)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLog];
    if ([(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v21 = shouldLog2 | 2;
    }

    else
    {
      v21 = shouldLog2;
    }

    oSLogObject = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

  mEMORY[0x277D69B38] = [[ISBiometricAuthorizationDialogOperation alloc] initWithTouchIDDialog:dialogCopy fallbackDialog:fallbackDialogCopy];
  [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setBiometricAuthenticationContext:self->_biometricAuthenticationContext];
  [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setMetricsDictionary:dictionaryCopy];
  signupRequestParameters = [(SSAuthenticationContext *)self->_authenticationContext signupRequestParameters];
  v31 = [signupRequestParameters objectForKey:@"product"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v31 unescapedValues:1];
    [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setBuyParams:v32];
  }

  hTTPHeaders = [(SSAuthenticationContext *)self->_authenticationContext HTTPHeaders];
  v34 = [hTTPHeaders objectForKey:*MEMORY[0x277D6A130]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setUserAgent:v34];
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v37 = shouldLog3 | 2;
  }

  else
  {
    v37 = shouldLog3;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 & 2;
  }

  if (v39)
  {
    v60 = dictionaryCopy;
    errorCopy = error;
    v40 = fallbackDialogCopy;
    v41 = objc_opt_class();
    v42 = self->_biometricAuthenticationContext;
    v58 = v41;
    [(SSBiometricAuthenticationContext *)v42 accountName];
    v43 = v59 = v34;
    SSHashIfNeeded();
    v64 = 138543874;
    v65 = v41;
    fallbackDialogCopy = v40;
    v66 = 2112;
    v67 = v42;
    dictionaryCopy = v60;
    error = errorCopy;
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
  v47 = [(ISDataProvider *)self runSubOperation:mEMORY[0x277D69B38] error:&v63];
  v46 = v63;
  if (v47)
  {
    selectedButton = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] selectedButton];
    [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] dialog];
    v50 = v49 = error;
    [(ISDataProvider *)self _performActionsForButton:selectedButton withDialog:v50];

    biometricAuthenticationContext = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] biometricAuthenticationContext];
    accountIdentifier = [biometricAuthenticationContext accountIdentifier];
    [(ISDataProvider *)self setAuthenticatedAccountDSID:accountIdentifier];

    error = v49;
    redirectURL = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] redirectURL];
    [(ISDataProvider *)self setRedirectURL:redirectURL];
  }

LABEL_47:
  if (error && !v47)
  {
    v54 = v46;
    *error = v46;
  }

  v55 = *MEMORY[0x277D85DE8];
  return v47;
}

- (void)_performActionsForButton:(id)button withDialog:(id)dialog
{
  buttonCopy = button;
  dialogCopy = dialog;
  if ([buttonCopy actionType] == 4)
  {
    [buttonCopy performDefaultActionForDialog:dialogCopy];
  }
}

- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v22 = 0;
  v7 = [(ISDataProvider *)self runSubOperation:operationCopy error:&v22];
  v8 = v22;
  if (v7)
  {
    -[ISDataProvider setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [operationCopy authenticatedAccountCredentialSource]);
    authenticatedAccountDSID = [operationCopy authenticatedAccountDSID];
    [(ISDataProvider *)self setAuthenticatedAccountDSID:authenticatedAccountDSID];

    redirectURL = [operationCopy redirectURL];
    [(ISDataProvider *)self setRedirectURL:redirectURL];

    goto LABEL_16;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v23, v21}];
    free(v17);
    SSFileLog();
  }

LABEL_14:
  if (error)
  {
    v18 = v8;
    *error = v8;
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