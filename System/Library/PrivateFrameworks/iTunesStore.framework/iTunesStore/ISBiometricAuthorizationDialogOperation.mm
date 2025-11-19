@interface ISBiometricAuthorizationDialogOperation
- (BOOL)_runAuthkitOperationWithError:(id)a3 returningError:(id *)a4;
- (BOOL)_runSignatureOperationReturningError:(id *)a3;
- (BOOL)_shouldFallbackToAuthKitForError:(id)a3;
- (ISBiometricAuthorizationDialogOperation)initWithTouchIDDialog:(id)a3 fallbackDialog:(id)a4;
- (void)_findSelectedButtonForButtons:(id)a3;
- (void)_loadURLBag;
- (void)run;
@end

@implementation ISBiometricAuthorizationDialogOperation

- (ISBiometricAuthorizationDialogOperation)initWithTouchIDDialog:(id)a3 fallbackDialog:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ISBiometricAuthorizationDialogOperation;
  v9 = [(ISOperation *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.itunesstored.ISBiometricAuthorizationDialogOperation", 0);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v10;

    objc_storeStrong(&v9->_fallbackDialog, a4);
    objc_storeStrong(&v9->_touchIDDialog, a3);
  }

  return v9;
}

- (void)run
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D69A60];
  v4 = [(ISBiometricAuthorizationDialogOperation *)self metricsDictionary];
  v5 = [v3 dialogIdForMetricsDictionary:v4];

  if (v5 || (v5 = *MEMORY[0x277D6A468]) != 0)
  {
    [(SSBiometricAuthenticationContext *)self->_context setDialogId:v5];
  }

  v77 = v5;
  v6 = [(ISBiometricAuthorizationDialogOperation *)self userAgent];

  if (v6)
  {
    context = self->_context;
    v8 = [(ISBiometricAuthorizationDialogOperation *)self userAgent];
    [(SSBiometricAuthenticationContext *)context setUserAgent:v8];
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
  v16 = [v10 domain];
  if (![v16 isEqualToString:v15])
  {
    goto LABEL_13;
  }

  v17 = [v10 code];
  if (v17 == -1)
  {
LABEL_12:
    v12 = 1;
    goto LABEL_14;
  }

  if (v17 != -2)
  {
    if (v17 == -8)
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

    if (![v16 isEqualToString:*v11] || objc_msgSend(v10, "code") != 16)
    {
      v14 = 1;
      goto LABEL_32;
    }

    v74 = v12;
    v19 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v19)
    {
      v19 = [MEMORY[0x277D69B38] sharedConfig];
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
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
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
        if (![v16 isEqualToString:{v15, v71}] || objc_msgSend(v10, "code") != -2)
        {
          goto LABEL_52;
        }

        v75 = v12;
        v26 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v26)
        {
          v26 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v27 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          v28 = v27 | 2;
        }

        else
        {
          v28 = v27;
        }

        v29 = [v26 OSLogObject];
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
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

          v29 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:{4, &v82, v73}];
          free(v32);
          v71 = v29;
          SSFileLog();
        }

        goto LABEL_45;
      }

      v22 = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, &v82, v73}];
      free(v25);
      v71 = v22;
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
    v18 = v80;

    if (v13)
    {
      v14 = 4;
LABEL_66:
      v10 = v18;
      goto LABEL_67;
    }

    v33 = [v18 domain];
    if ([v33 isEqualToString:*v11])
    {
      v34 = v16;
      v35 = v12;
      v36 = [v18 code];

      v37 = v36 == 140;
      v12 = v35;
      v16 = v34;
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
  v18 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v18)
  {
    v18 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v39 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v40 = v39 | 2;
  }

  else
  {
    v40 = v39;
  }

  v41 = [v18 OSLogObject];
  if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
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

    v41 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v82, v73}];
    free(v44);
    v71 = v41;
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
  v45 = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  v46 = [v45 isExtendedAction];

  if (v46)
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

  v48 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  v49 = v48;
  if (v13)
  {
    if (!v48)
    {
      v49 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v50 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      v51 = v50 | 2;
    }

    else
    {
      v51 = v50;
    }

    v52 = [v49 OSLogObject];
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
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
    if (!v48)
    {
      v49 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v55 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      v56 = v55 | 2;
    }

    else
    {
      v56 = v55;
    }

    v52 = [v49 OSLogObject];
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
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

  v52 = [MEMORY[0x277CCACA8] stringWithCString:v58 encoding:{4, &v82, v73}];
  free(v58);
  v72 = v52;
  SSFileLog();
LABEL_91:

LABEL_92:
  v59 = [v10 domain];
  if (v59 != *v11)
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

  v61 = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  v62 = [v61 isExtendedAction];

  if ((v62 & 1) == 0)
  {
    v63 = [MEMORY[0x277D69B38] sharedConfig];
    v64 = [v63 shouldLog];
    if ([v63 shouldLogToDisk])
    {
      v65 = v64 | 2;
    }

    else
    {
      v65 = v64;
    }

    v66 = [v63 OSLogObject];
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
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

        v59 = v10;
        v10 = 0;
        goto LABEL_106;
      }

      v66 = [MEMORY[0x277CCACA8] stringWithCString:v69 encoding:{4, &v82, v73}];
      free(v69);
      v72 = v66;
      SSFileLog();
    }

    goto LABEL_105;
  }

LABEL_107:
  [(ISOperation *)self setError:v10, v72];
  [(ISOperation *)self setSuccess:v13];

  v70 = *MEMORY[0x277D85DE8];
}

- (void)_findSelectedButtonForButtons:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v4);
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

    v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v15 = [(ISLoadURLBagOperation *)v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = v15;
    goto LABEL_17;
  }

  urlBag = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!urlBag)
  {
    urlBag = [MEMORY[0x277D69B38] sharedConfig];
  }

  v9 = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [urlBag OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v19, v17}];
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

- (BOOL)_runAuthkitOperationWithError:(id)a3 returningError:(id *)a4
{
  v6 = [(SSBiometricAuthenticationContext *)self->_context accountIdentifier];
  v7 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:v6];
  [v7 setCanCreateNewAccount:0];
  [v7 setCanSetActiveAccount:0];
  [v7 setPromptStyle:1];
  [v7 setShouldCreateNewSession:1];
  v8 = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];

  if (v8)
  {
    v9 = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];
    [v7 setPasswordEquivalentToken:v9];
  }

  v10 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v10 setAuthenticationContext:v7];
  v11 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
  [(ISServerAuthenticationOperation *)v10 setDialog:v11];

  [(ISServerAuthenticationOperation *)v10 setPerformsButtonAction:0];
  v19 = 0;
  v12 = [(ISOperation *)self runSubOperation:v10 returningError:&v19];
  v13 = v19;
  context = self->_context;
  if (!v12 || v13)
  {
    [(SSBiometricAuthenticationContext *)context setDidAuthenticate:0];
    [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:1];
    if (!a4)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = v13;
    *a4 = v13;
    goto LABEL_11;
  }

  [(SSBiometricAuthenticationContext *)context setDidAuthenticate:1];
  [(SSBiometricAuthenticationContext *)self->_context setDidFallbackToPassword:1];
  [(SSBiometricAuthenticationContext *)self->_context setShouldSendFallbackHeader:1];
  v15 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];

  if (v15)
  {
    v16 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
    v15 = [v16 buttons];
  }

  [(ISBiometricAuthorizationDialogOperation *)self _findSelectedButtonForButtons:v15];
  objc_storeStrong(&self->_dialog, self->_fallbackDialog);

  if (a4)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v12;
}

- (BOOL)_runSignatureOperationReturningError:(id *)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = [ISBiometricSignatureOperation alloc];
  context = self->_context;
  v7 = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];
  v8 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
  v9 = [(ISBiometricSignatureOperation *)v5 initWithBiometricAuthenticationContext:context touchIDDialog:v7 fallbackDialog:v8];

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
    v12 = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];

    if (v12)
    {
      v13 = [(ISBiometricAuthorizationDialogOperation *)self touchIDDialog];
      v14 = [v13 buttons];
      v15 = &OBJC_IVAR___ISBiometricAuthorizationDialogOperation__touchIDDialog;
    }

    else
    {
      v14 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];

      if (!v14)
      {
LABEL_20:
        [(ISBiometricAuthorizationDialogOperation *)self _findSelectedButtonForButtons:v14];
        goto LABEL_21;
      }

      v13 = [(ISBiometricAuthorizationDialogOperation *)self fallbackDialog];
      v14 = [v13 buttons];
      v15 = &OBJC_IVAR___ISBiometricAuthorizationDialogOperation__fallbackDialog;
    }

    objc_storeStrong(&self->_dialog, *(&self->super.super.super.isa + *v15));
    goto LABEL_20;
  }

  v16 = [(SSBiometricAuthenticationContext *)self->_context passwordEquivalentToken];

  if (v16)
  {
    v17 = *MEMORY[0x277D6A110];
    SSError();
    v11 = v14 = v11;
    goto LABEL_21;
  }

  v14 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v14)
  {
    v14 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v18 = [v14 shouldLog];
  v19 = [v14 shouldLogToDisk];
  v20 = [v14 OSLogObject];
  v21 = v20;
  if (v19)
  {
    v18 |= 2u;
  }

  if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v18 &= 2u;
  }

  if (v18)
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
  if (a3)
  {
    v25 = v11;
    *a3 = v11;
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

- (BOOL)_shouldFallbackToAuthKitForError:(id)a3
{
  v4 = a3;
  v5 = ISWeakLinkedStringConstantForString("LAErrorDomain", 0x1E);
  v6 = [(ISBiometricAuthorizationDialogOperation *)self biometricAuthenticationContext];
  v7 = ISWeakLinkedStringConstantForString("MobileActivationErrorDomain", 0x25);
  v8 = [v4 code];
  v9 = [v4 domain];
  if ([v9 isEqualToString:v5])
  {
    LOBYTE(v11) = (~v8 & 0xFFFFFFFFFFFFFFFDLL) == 0 || v8 == -8;
  }

  else if ([v9 isEqualToString:v7])
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

  else if ([v9 isEqualToString:*MEMORY[0x277D6A110]])
  {
    LOBYTE(v11) = 1;
    if (v8 != 4 && v8 != 151 && (v8 != 149 || ([v6 isExtendedAction] & 1) == 0))
    {
      v13 = [v4 userInfo];
      v14 = [v13 objectForKey:*MEMORY[0x277D6A100]];
      if (v14)
      {
        v11 = [v6 isIdentityMapInvalid] ^ 1;
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