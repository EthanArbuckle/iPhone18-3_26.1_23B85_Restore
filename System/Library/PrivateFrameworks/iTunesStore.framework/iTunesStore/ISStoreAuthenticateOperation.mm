@interface ISStoreAuthenticateOperation
+ (BOOL)_copyErrorForAuthenticateResponse:(id)a3 error:(id *)a4;
- (ISStoreAuthenticateOperation)initWithAuthenticationContext:(id)a3;
- (SSAuthenticateResponse)authenticateResponse;
- (SSAuthenticationContext)authenticationContext;
- (id)authenticatedAccountDSID;
- (id)uniqueKey;
- (void)_handleAuthenticateResponse:(id)a3;
- (void)dealloc;
- (void)run;
@end

@implementation ISStoreAuthenticateOperation

- (ISStoreAuthenticateOperation)initWithAuthenticationContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    v5 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v17 = 138543874;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = AMSLogKey();
      v21 = 2114;
      v22 = [MEMORY[0x277D69C78] generateSymbolicatedStackShot];
      LODWORD(v16) = 32;
      v15 = &v17;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v17, v16}];
        free(v9);
        v15 = v10;
        SSFileLog();
      }
    }
  }

  v11 = [(ISOperation *)self init];
  if (v11)
  {
    v12 = [a3 mutableCopy];
    v11->_authenticationContext = v12;
    [(SSMutableAuthenticationContext *)v12 setShouldSuppressDialogs:1];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISStoreAuthenticateOperation;
  [(ISStoreAuthenticateOperation *)&v3 dealloc];
}

- (SSAuthenticateResponse)authenticateResponse
{
  [(ISOperation *)self lock];
  v3 = self->_authenticateResponse;
  [(ISOperation *)self unlock];

  return v3;
}

- (SSAuthenticationContext)authenticationContext
{
  [(ISOperation *)self lock];
  v3 = [(SSMutableAuthenticationContext *)self->_authenticationContext copy];
  [(ISOperation *)self unlock];

  return v3;
}

- (id)authenticatedAccountDSID
{
  result = [-[SSAuthenticateResponse authenticatedAccount](-[ISStoreAuthenticateOperation authenticateResponse](self "authenticateResponse")];
  if (!result)
  {
    v4 = [(ISStoreAuthenticateOperation *)self authenticationContext];

    return [(SSAuthenticationContext *)v4 requiredUniqueIdentifier];
  }

  return result;
}

- (void)run
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = +[ISNetworkObserver sharedInstance];
  [(ISNetworkObserver *)v3 beginUsingNetwork];
  v4 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v5 = [v4 shouldLog];
  v6 = [v4 shouldLogToDisk];
  v7 = [v4 OSLogObject];
  if (v6)
  {
    v5 |= 2u;
  }

  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    authenticationContext = self->_authenticationContext;
    [(SSMutableAuthenticationContext *)authenticationContext accountName];
    v18 = 138544130;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2112;
    v23 = authenticationContext;
    v24 = 2114;
    v25 = SSHashIfNeeded();
    LODWORD(v16) = 42;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v18, v16}];
      free(v12);
      SSFileLog();
    }
  }

  v13 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:self->_authenticationContext];
  if ([(ISStoreAuthenticateOperation *)self parentViewController])
  {
    [v13 set_parentViewController:{-[ISStoreAuthenticateOperation parentViewController](self, "parentViewController")}];
  }

  v14 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__ISStoreAuthenticateOperation_run__block_invoke;
  v17[3] = &unk_27A670F18;
  v17[4] = self;
  v17[5] = v14;
  [v13 startWithAuthenticateResponseBlock:v17];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v14);

  [(ISNetworkObserver *)v3 endUsingNetwork];
  v15 = *MEMORY[0x277D85DE8];
}

intptr_t __35__ISStoreAuthenticateOperation_run__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      [objc_msgSend(a2 "authenticatedAccount")];
      v25 = 138544386;
      v26 = v11;
      v27 = 2114;
      v28 = SSHashIfNeeded();
      v29 = 2048;
      v30 = [a2 authenticateResponseType];
      v31 = 2112;
      v32 = [a2 error];
      v33 = 2112;
      v34 = [a2 responseDictionary];
      LODWORD(v24) = 52;
      v23 = &v25;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v25, v24}];
        free(v13);
        v23 = v14;
        SSFileLog();
      }
    }

    [*(a1 + 32) _handleAuthenticateResponse:{a2, v23}];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v17 = *(a1 + 32);
      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = a3;
      LODWORD(v24) = 22;
      v23 = &v25;
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        v20 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v25, v24}];
        free(v19);
        v23 = v20;
        SSFileLog();
      }
    }

    [*(a1 + 32) setError:{a3, v23}];
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)uniqueKey
{
  v2 = [(SSAuthenticationContext *)[(ISStoreAuthenticateOperation *)self authenticationContext] requiredUniqueIdentifier];
  v3 = MEMORY[0x277CCACA8];
  if (v2)
  {
    v4 = [v2 stringValue];
  }

  else
  {
    v4 = @"0";
  }

  return [v3 stringWithFormat:@"com.apple.iTunesStore.auth.%@", v4];
}

- (void)_handleAuthenticateResponse:(id)a3
{
  v5 = [a3 responseDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[ISProcessPropertyListOperation alloc] initWithPropertyList:v5];
    v7 = objc_alloc_init(ISPropertyListProvider);
    [(ISProtocolDataProvider *)v7 setShouldProcessAccount:0];
    [(ISProcessPropertyListOperation *)v6 setDataProvider:v7];

    [(ISOperation *)self runSubOperation:v6 returningError:0];
  }

  v8 = 0;
  if ([objc_opt_class() _copyErrorForAuthenticateResponse:a3 error:&v8])
  {
    [(ISOperation *)self setSuccess:1];
  }

  else
  {
    [(ISOperation *)self setError:v8];
  }

  [(ISOperation *)self lock];

  self->_authenticateResponse = a3;
  [(ISOperation *)self unlock];
}

+ (BOOL)_copyErrorForAuthenticateResponse:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = [a3 authenticateResponseType];
  v7 = 0;
  if (v6 <= 3)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v22 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
        if (!v22)
        {
          v22 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v23 = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          v24 = v23 | 2;
        }

        else
        {
          v24 = v23;
        }

        if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v24 &= 2u;
        }

        if (!v24)
        {
          v12 = 16;
          goto LABEL_61;
        }

        *v32 = 138412290;
        *&v32[4] = objc_opt_class();
        LODWORD(v31) = 12;
        v11 = _os_log_send_and_compose_impl();
        v12 = 16;
        if (!v11)
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      if (v6 != 3)
      {
LABEL_62:
        v19 = 0;
        if (a4)
        {
          *a4 = v7;
        }

        goto LABEL_64;
      }

      goto LABEL_7;
    }

    v13 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x277D69B38] sharedConfig];
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

    if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
    {
LABEL_57:
      *v32 = 138412290;
      *&v32[4] = objc_opt_class();
      LODWORD(v31) = 12;
      v11 = _os_log_send_and_compose_impl();
      v12 = 4;
      if (v11)
      {
LABEL_58:
        v28 = v11;
        [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, v32, v31, *v32}];
        free(v28);
        SSFileLog();
      }

LABEL_61:
      v7 = ISError(v12, 0, 0);
      goto LABEL_62;
    }

LABEL_59:
    v12 = 4;
    goto LABEL_61;
  }

  if ((v6 - 6) < 3)
  {
LABEL_7:
    v8 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
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

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v32 = 138412546;
      *&v32[4] = objc_opt_class();
      *&v32[12] = 2048;
      *&v32[14] = [a3 authenticateResponseType];
      LODWORD(v31) = 22;
      v11 = _os_log_send_and_compose_impl();
      v12 = 0;
      if (!v11)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    v12 = 0;
    goto LABEL_61;
  }

  if (v6 == 5)
  {
    v25 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v25)
    {
      v25 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

  if (v6 != 4)
  {
    goto LABEL_62;
  }

  v16 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!v16)
  {
    v16 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = 1;
  if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    *v32 = 138412290;
    *&v32[4] = objc_opt_class();
    LODWORD(v31) = 12;
    v20 = _os_log_send_and_compose_impl();
    if (v20)
    {
      v21 = v20;
      [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, v32, v31}];
      free(v21);
      SSFileLog();
      v19 = 1;
    }
  }

LABEL_64:
  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

@end