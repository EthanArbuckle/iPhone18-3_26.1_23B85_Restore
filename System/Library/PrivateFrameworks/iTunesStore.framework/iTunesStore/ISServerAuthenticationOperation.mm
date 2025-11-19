@interface ISServerAuthenticationOperation
- (ISServerAuthenticationOperation)init;
- (void)dealloc;
- (void)run;
@end

@implementation ISServerAuthenticationOperation

- (ISServerAuthenticationOperation)init
{
  v3.receiver = self;
  v3.super_class = ISServerAuthenticationOperation;
  result = [(ISOperation *)&v3 init];
  if (result)
  {
    result->_performsButtonAction = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISServerAuthenticationOperation;
  [(ISServerAuthenticationOperation *)&v3 dealloc];
}

- (void)run
{
  v40 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__11;
  v32 = __Block_byref_object_dispose__11;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v3 = NSClassFromString(&cfstr_Serverauthenti.isa);
  if (v3)
  {
    v4 = [[v3 alloc] initWithDialog:{-[ISServerAuthenticationOperation dialog](self, "dialog")}];
    [v4 setAuthenticationContext:{-[ISServerAuthenticationOperation authenticationContext](self, "authenticationContext")}];
    [v4 setPerformsButtonAction:{-[ISServerAuthenticationOperation performsButtonAction](self, "performsButtonAction")}];
    v5 = [(ISOperation *)self runSubOperation:v4 returningError:v29 + 5];
    *(v25 + 24) = v5;
    -[ISServerAuthenticationOperation setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [v4 authenticatedAccountCredentialSource]);
    -[ISServerAuthenticationOperation setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [v4 authenticatedAccountDSID]);
    -[ISServerAuthenticationOperation setPerformedButton:](self, "setPerformedButton:", [v4 performedButton]);
    -[ISServerAuthenticationOperation setRedirectURL:](self, "setRedirectURL:", [v4 redirectURL]);
    -[ISServerAuthenticationOperation setSelectedButton:](self, "setSelectedButton:", [v4 selectedButton]);
  }

  else
  {
    v6 = [(ISServerAuthenticationOperation *)self dialog];
    v7 = [(ISDialog *)v6 copyXPCEncoding];
    v8 = [objc_alloc(MEMORY[0x277D69D10]) initWithEncodedDialog:v7];
    [v8 setAuthenticationContext:{-[ISServerAuthenticationOperation authenticationContext](self, "authenticationContext")}];
    v9 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v10 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk];
    v12 = [v9 OSLogObject];
    if (v11)
    {
      v10 |= 2u;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v13 = objc_opt_class();
      [objc_msgSend(v8 "authenticationContext")];
      v14 = SSHashIfNeeded();
      v34 = 138543874;
      v35 = v13;
      v36 = 2112;
      v37 = v8;
      v38 = 2114;
      v39 = v14;
      LODWORD(v22) = 32;
      v21 = &v34;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v34, v22}];
        free(v16);
        v21 = v17;
        SSFileLog();
      }
    }

    v18 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__ISServerAuthenticationOperation_run__block_invoke;
    v23[3] = &unk_27A671360;
    v23[4] = self;
    v23[5] = v6;
    v23[7] = &v28;
    v23[8] = &v24;
    v23[6] = v18;
    [v8 startWithAuthenticateResponse:v23];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v18);
    if (*(v25 + 24) == 1 && [(ISServerAuthenticationOperation *)self performsButtonAction])
    {
      [(ISDialogButton *)[(ISServerAuthenticationOperation *)self performedButton] performDefaultActionForDialog:v6];
    }

    v19 = v29[5];

    xpc_release(v7);
  }

  [(ISOperation *)self setError:v29[5], v21];
  [(ISOperation *)self setSuccess:*(v25 + 24)];
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  v20 = *MEMORY[0x277D85DE8];
}

intptr_t __38__ISServerAuthenticationOperation_run__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    *(*(*(a1 + 56) + 8) + 40) = a3;
  }

  if (a2)
  {
    [*(a1 + 32) setAuthenticatedAccountDSID:{objc_msgSend(a2, "authenticatedAccountIdentifier")}];
    [*(a1 + 32) setRedirectURL:{objc_msgSend(a2, "redirectURL")}];
    v5 = [*(a1 + 40) buttons];
    v6 = [a2 performedButtonIndex];
    if (v6 < [v5 count])
    {
      [*(a1 + 32) setPerformedButton:{objc_msgSend(v5, "objectAtIndex:", v6)}];
    }

    v7 = [a2 selectedButtonIndex];
    if (v7 < [v5 count])
    {
      [*(a1 + 32) setSelectedButton:{objc_msgSend(v5, "objectAtIndex:", v7)}];
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v8 = *(a1 + 48);

  return dispatch_semaphore_signal(v8);
}

@end