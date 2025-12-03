@interface ISBiometricAuthorizationDialogOperation
- (BOOL)_runAuthkitOperationWithError:(id)error returningError:(id *)returningError;
- (BOOL)_runSignatureOperationReturningError:(id *)error;
- (BOOL)_shouldFallbackToAuthKitForError:(id)error;
- (ISBiometricAuthorizationDialogOperation)initWithTouchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog;
- (void)_findSelectedButtonForButtons:(id)buttons;
- (void)_loadURLBag;
- (void)run;
@end

@implementation ISBiometricAuthorizationDialogOperation

- (ISBiometricAuthorizationDialogOperation)initWithTouchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog
{
  dialogCopy = dialog;
  fallbackDialogCopy = fallbackDialog;
  v13.receiver = self;
  v13.super_class = ISBiometricAuthorizationDialogOperation;
  v9 = [(ISOperation *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.itunesstored.ISBiometricAuthorizationDialogOperation", 0);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v10;

    objc_storeStrong(&v9->_fallbackDialog, fallbackDialog);
    objc_storeStrong(&v9->_touchIDDialog, dialog);
  }

  return v9;
}

- (void)run
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D69A60];
  metricsDictionary = [(ISBiometricAuthorizationDialogOperation *)self metricsDictionary];
  v5 = [v3 dialogIdForMetricsDictionary:metricsDictionary];

  if (v5 || (v5 = *MEMORY[0x277D6A468]) != 0)
  {
    [(SSBiometricAuthenticationContext *)self->_context setDialogId:v5];
  }

  v77 = v5;
  userAgent = [(ISBiometricAuthorizationDialogOperation *)self userAgent];

  if (userAgent)
  {
    context = self->_context;
    userAgent2 = [(ISBiometricAuthorizationDialogOperation *)self userAgent];
    [(SSBiometricAuthenticationContext *)context setUserAgent:userAgent2];
  }

  v81 = 0;
  v9 = [(ISBiometricAuthorizationDialogOperation *)self _runSignatureOperationReturningError:&v81];
  v10 = v81;
  v11 = MEMORY[0x277D6A110];
  if (v9)
  {
    v12 = 0;
    v13 = 1;
    v14 = 2;
    goto LABEL_68;
  }

  v15 = ISWeakLinkedStringConstantForString("LAErrorDomain", 0x1E);
  domain = [v10 domain];
  if (![domain isEqualToString:v15])
  {
    goto LABEL_13;
  }

  code = [v10 code];
  if (code == -1)
  {
LABEL_12:
    v12 = 1;
    goto LABEL_14;
  }

  if (code != -2)
  {
    if (code == -8)
    {
      goto LABEL_12;
    }

LABEL_13:
    v12 = 0;
LABEL_14:
    if ([(ISBiometricAuthorizationDialogOperation *)self _shouldFallbackToAuthKitForError:v10])
    {
      goto LABEL_15;
    }

    if (![domain isEqualToString:*v11] || objc_msgSend(v10, "code") != 16)
    {
      v14 = 1;
      goto LABEL_32;
    }

    v74 = v12;
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v21 = shouldLog | 2;
    }

    else
    {
      v21 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v82 = 138543362;
      v83 = v23;
      v24 = v23;
      LODWORD(v73) = 12;
      v71 = &v82;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_30:

        v14 = 8;
        v12 = v74;
LABEL_32:
        v76 = v15;
        if (![domain isEqualToString:{v15, v71}] || objc_msgSend(v10, "code") != -2)
        {
          goto LABEL_52;
        }

        v75 = v12;
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
        if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
        {
          v28 = shouldLog2 | 2;
        }

        else
        {
          v28 = shouldLog2;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v28 &= 2u;
        }

        if (v28)
        {
          v30 = objc_opt_class();
          v82 = 138543362;
          v83 = v30;
          v31 = v30;
          LODWORD(v73) = 12;
          v71 = &v82;
          v32 = _os_log_send_and_compose_impl();

          if (!v32)
          {
LABEL_45:

            v14 = 8;
            v12 = v75;
            goto LABEL_52;
          }

          oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:{4, &v82, v73}];
          free(v32);
          v71 = oSLogObject2;
          SSFileLog();
        }

        goto LABEL_45;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, &v82, v73}];
      free(v25);
      v71 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_30;
  }

  v12 = 0;
  if ([(ISBiometricAuthorizationDialogOperation *)self _shouldFallbackToAuthKitForError:v10])
  {
LABEL_15:
    v80 = 0;
    v13 = [(ISBiometricAuthorizationDialogOperation *)self _runAuthkitOperationWithError:v10 returningError:&v80];
    mEMORY[0x277D69B38]3 = v80;

    if (v13)
    {
      v14 = 4;
LABEL_66:
      v10 = mEMORY[0x277D69B38]3;
      goto LABEL_67;
    }

    domain2 = [mEMORY[0x277D69B38]3 domain];
    if ([domain2 isEqualToString:*v11])
    {
      v34 = domain;
      v35 = v12;
      code2 = [mEMORY[0x277D69B38]3 code];

      v37 = code2 == 140;
      v12 = v35;
      domain = v34;
      if (v37)
      {
        v14 = 8;
        goto LABEL_66;
      }
    }

    else
    {
    }

    v14 = 16;
    goto LABEL_66;
  }

  v76 = v15;
  v14 = 8;
LABEL_52:
  v38 = v12;
  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    v40 = shouldLog3 | 2;
  }

  else
  {
    v40 = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v40 &= 2u;
  }

  if (v40)
  {
    v42 = objc_opt_class();
    v82 = 138543618;
    v83 = v42;
    v84 = 2114;
    v85 = v10;
    v43 = v42;
    LODWORD(v73) = 22;
    v71 = &v82;
    v44 = _os_log_send_and_compose_impl();

    if (!v44)
    {
      v13 = 0;
      v12 = v38;
      v15 = v76;
      goto LABEL_67;
    }

    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v82, v73}];
    free(v44);
    v71 = oSLogObject3;
    SSFileLog();
    v12 = v38;
  }

  else
  {
    v12 = v38;
  }

  v13 = 0;
  v15 = v76;
LABEL_67:

LABEL_68:
  biometricAuthenticationContext = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  isExtendedAction = [biometricAuthenticationContext isExtendedAction];

  if (isExtendedAction)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ISBiometricAuthorizationDialogOperation_run__block_invoke;
    block[3] = &unk_27A670F40;
    block[4] = self;
    block[5] = v14;
    v79 = v12;
    dispatch_async(dispatchQueue, block);
  }

  mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]5 = mEMORY[0x277D69B38]4;
  if (v13)
  {
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      v51 = shouldLog4 | 2;
    }

    else
    {
      v51 = shouldLog4;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      v51 &= 2u;
    }

    if (!v51)
    {
      goto LABEL_91;
    }

    v53 = objc_opt_class();
    v82 = 138543362;
    v83 = v53;
    v54 = v53;
    LODWORD(v73) = 12;
    v72 = &v82;
  }

  else
  {
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      v56 = shouldLog5 | 2;
    }

    else
    {
      v56 = shouldLog5;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v56 &= 2u;
    }

    if (!v56)
    {
      goto LABEL_91;
    }

    v57 = objc_opt_class();
    v82 = 138543618;
    v83 = v57;
    v84 = 2114;
    v85 = v10;
    v54 = v57;
    LODWORD(v73) = 22;
    v72 = &v82;
  }

  v58 = _os_log_send_and_compose_impl();

  if (!v58)
  {
    goto LABEL_92;
  }

  oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v58 encoding:{4, &v82, v73}];
  free(v58);
  v72 = oSLogObject4;
  SSFileLog();
LABEL_91:

LABEL_92:
  domain3 = [v10 domain];
  if (domain3 != *v11)
  {
    v60 = v77;
LABEL_106:

    goto LABEL_107;
  }

  v60 = v77;
  if ([v10 code] != 149)
  {
    goto LABEL_106;
  }

  biometricAuthenticationContext2 = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  isExtendedAction2 = [biometricAuthenticationContext2 isExtendedAction];

  if ((isExtendedAction2 & 1) == 0)
  {
    mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog6 = [mEMORY[0x277D69B38]6 shouldLog];
    if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
    {
      v65 = shouldLog6 | 2;
    }

    else
    {
      v65 = shouldLog6;
    }

    oSLogObject5 = [mEMORY[0x277D69B38]6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v65 &= 2u;
    }

    if (v65)
    {
      v67 = objc_opt_class();
      v82 = 138543362;
      v83 = v67;
      v68 = v67;
      LODWORD(v73) = 12;
      v72 = &v82;
      v69 = _os_log_send_and_compose_impl();

      if (!v69)
      {
LABEL_105:

        domain3 = v10;
        v10 = 0;
        goto LABEL_106;
      }

      oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v69 encoding:{4, &v82, v73}];
      free(v69);
      v72 = oSLogObject5;
      SSFileLog();
    }

    goto LABEL_105;
  }

LABEL_107:
  [(ISOperation *)self setError:v10, v72];
  [(ISOperation *)self setSuccess:v13];

  v70 = *MEMORY[0x277D85DE8];
}

- (void)_findSelectedButtonForButtons:(id)buttons
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  buttonsCopy = buttons;
  v5 = [buttonsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *v17;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(buttonsCopy);
      }

      v9 = *(*(&v16 + 1) + 8 * i);
      if ([v9 actionType] == 1)
      {
        selectedButton = [v9 dictionary];
        v11 = [selectedButton objectForKey:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          redirectURL = self->_redirectURL;
          self->_redirectURL = v12;
        }

        objc_storeStrong(&self->_selectedButton, v9);

        goto LABEL_15;
      }

      if ([v9 actionType] == 3)
      {
        [(SSBiometricAuthenticationContext *)self->_context setDidBuyParamsChange:1];
        v14 = v9;
        selectedButton = self->_selectedButton;
        self->_selectedButton = v14;
LABEL_15:

        goto LABEL_16;
      }
    }

    v6 = [buttonsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_loadURLBag
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v18 = 0;
  v4 = [(ISOperation *)self runSubOperation:v3 returningError:&v18];
  v5 = v18;
  v6 = v5;
  if (v4 && v5 == 0)
  {
    uRLBag = [(ISLoadURLBagOperation *)v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = uRLBag;
    goto LABEL_17;
  }

  urlBag = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!urlBag)
  {
    urlBag = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [urlBag OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = objc_opt_class();
  v19 = 138543618;
  v20 = v12;
  v21 = 2114;
  v22 = v6;
  v13 = v12;
  LODWORD(v17) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v19, v17}];
    free(v14);
    SSFileLog();
LABEL_15:
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
}

void __95__ISBiometricAuthorizationDialogOperation__performMetricsWithBiometricMatch_didBiometricsFail___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = *(a1 + 32);
      *v13 = 138543618;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2114;
      *&v13[14] = v3;
      v9 = *&v13[4];
      LODWORD(v12) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v13, v12, *v13, *&v13[16], v14}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

void __95__ISBiometricAuthorizationDialogOperation__performMetricsWithBiometricMatch_didBiometricsFail___block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = *(a1 + 32);
      *v13 = 138543618;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2114;
      *&v13[14] = v3;
      v9 = *&v13[4];
      LODWORD(v12) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v13, v12, *v13, *&v13[16], v14}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_runAuthkitOperationWithError:(id)error returningError:(id *)returningError
{
  accountIdentifier = [(SSBiometricAuthenticationContext *)self->_context accountIdentifier];
  v7 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:accountIdentifier];
  [v7 setCanCreateNewAccount:0];
  [v7 setCanSetActiveAccount:0];
  [v7 setPromptStyle:1];
  [v7 setShouldCreateNewSession:1];
  passwordEquivalentToken = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];

  if (passwordEquivalentToken)
  {
    passwordEquivalentToken2 = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];
    [v7 setPasswordEquivalentToken:passwordEquivalentToken2];
  }

  v10 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v10 setAuthenticationContext:v7];
  fallbackDialog = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
  [(ISServerAuthenticationOperation *)v10 setDialog:fallbackDialog];

  [(ISServerAuthenticationOperation *)v10 setPerformsButtonAction:0];
  v19 = 0;
  v12 = [(ISOperation *)self runSubOperation:v10 returningError:&v19];
  v13 = v19;
  context = self->_context;
  if (!v12 || v13)
  {
    [(SSBiometricAuthenticationContext *)context setDidAuthenticate:0];
    [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:1];
    if (!returningError)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = v13;
    *returningError = v13;
    goto LABEL_11;
  }

  [(SSBiometricAuthenticationContext *)context setDidAuthenticate:1];
  [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:1];
  [(SSBiometricAuthenticationContext *)self->_context setShouldSendFallbackHeader:1];
  fallbackDialog2 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];

  if (fallbackDialog2)
  {
    fallbackDialog3 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
    fallbackDialog2 = [fallbackDialog3 buttons];
  }

  [(ISBiometricAuthorizationDialogOperation *)self _findSelectedButtonForButtons:fallbackDialog2];
  objc_storeStrong(&self->_dialog, self->_fallbackDialog);

  if (returningError)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v12;
}

- (BOOL)_runSignatureOperationReturningError:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = [ISBiometricSignatureOperation alloc];
  context = self->_context;
  touchIDDialog = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];
  fallbackDialog = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
  v9 = [(ISBiometricSignatureOperation *)v5 initWithBiometricAuthenticationContext:context touchIDDialog:touchIDDialog fallbackDialog:fallbackDialog];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__6;
  v47 = __Block_byref_object_dispose__6;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__6;
  v41 = __Block_byref_object_dispose__6;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__6;
  v35 = __Block_byref_object_dispose__6;
  v36 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __80__ISBiometricAuthorizationDialogOperation__runSignatureOperationReturningError___block_invoke;
  v30[3] = &unk_27A670F90;
  v30[4] = &v43;
  v30[5] = &v37;
  v30[6] = &v31;
  [(ISBiometricSignatureOperation *)v9 setOutputBlock:v30];
  v29 = 0;
  v10 = [(ISOperation *)self runSubOperation:v9 returningError:&v29];
  v11 = v29;
  if (v10 && v44[5])
  {
    [(SSBiometricAuthenticationContext *)self->_context setDidAuthenticate:1];
    [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:0];
    [(SSBiometricAuthenticationContext *)self->_context setSignature:v44[5]];
    [(SSBiometricAuthenticationContext *)self->_context setPaymentTokenData:v38[5]];
    [(SSBiometricAuthenticationContext *)self->_context setFpanID:v32[5]];
    touchIDDialog2 = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];

    if (touchIDDialog2)
    {
      touchIDDialog3 = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];
      buttons = [touchIDDialog3 buttons];
      v15 = &OBJC_IVAR___ISBiometricAuthorizationDialogOperation__touchIDDialog;
    }

    else
    {
      buttons = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];

      if (!buttons)
      {
LABEL_20:
        [(ISBiometricAuthorizationDialogOperation *)self _findSelectedButtonForButtons:buttons];
        goto LABEL_21;
      }

      touchIDDialog3 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
      buttons = [touchIDDialog3 buttons];
      v15 = &OBJC_IVAR___ISBiometricAuthorizationDialogOperation__fallbackDialog;
    }

    objc_storeStrong(&self->_dialog, *(&self->super.super.super.isa + *v15));
    goto LABEL_20;
  }

  passwordEquivalentToken = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];

  if (passwordEquivalentToken)
  {
    v17 = *MEMORY[0x277D6A110];
    SSError();
    v11 = buttons = v11;
    goto LABEL_21;
  }

  buttons = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!buttons)
  {
    buttons = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [buttons shouldLog];
  shouldLogToDisk = [buttons shouldLogToDisk];
  oSLogObject = [buttons OSLogObject];
  v21 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    shouldLog &= 2u;
  }

  if (shouldLog)
  {
    v22 = objc_opt_class();
    v49 = 138543618;
    v50 = v22;
    v51 = 2114;
    v52 = v11;
    v23 = v22;
    LODWORD(v28) = 22;
    v24 = _os_log_send_and_compose_impl();

    if (!v24)
    {
      goto LABEL_21;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:{4, &v49, v28}];
    free(v24);
    SSFileLog();
  }

LABEL_21:
  if (error)
  {
    v25 = v11;
    *error = v11;
  }

  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

void __80__ISBiometricAuthorizationDialogOperation__runSignatureOperationReturningError___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v21 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v21)
  {
    v12 = [v21 copy];
    v13 = *(a1[4] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (v9)
  {
    v15 = [v9 copy];
    v16 = *(a1[5] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  if (v10)
  {
    v18 = [v10 copy];
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

- (BOOL)_shouldFallbackToAuthKitForError:(id)error
{
  errorCopy = error;
  v5 = ISWeakLinkedStringConstantForString("LAErrorDomain", 0x1E);
  biometricAuthenticationContext = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  v7 = ISWeakLinkedStringConstantForString("MobileActivationErrorDomain", 0x25);
  code = [errorCopy code];
  domain = [errorCopy domain];
  if ([domain isEqualToString:v5])
  {
    LOBYTE(v11) = (~code & 0xFFFFFFFFFFFFFFFDLL) == 0 || code == -8;
  }

  else if ([domain isEqualToString:v7])
  {
    if (([(SSBiometricAuthenticationContext *)self->_context isExtendedAction]& 1) != 0)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = [(SSBiometricAuthenticationContext *)self->_context isPayment]^ 1;
    }
  }

  else if ([domain isEqualToString:*MEMORY[0x277D6A110]])
  {
    LOBYTE(v11) = 1;
    if (code != 4 && code != 151 && (code != 149 || ([biometricAuthenticationContext isExtendedAction] & 1) == 0))
    {
      userInfo = [errorCopy userInfo];
      v14 = [userInfo objectForKey:*MEMORY[0x277D6A100]];
      if (v14)
      {
        v11 = [biometricAuthenticationContext isIdentityMapInvalid] ^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end