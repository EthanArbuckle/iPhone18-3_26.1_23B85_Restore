@interface ISStoreAuthenticateOperation
+ (BOOL)_copyErrorForAuthenticateResponse:(id)response error:(id *)error;
- (ISStoreAuthenticateOperation)initWithAuthenticationContext:(id)context;
- (SSAuthenticateResponse)authenticateResponse;
- (SSAuthenticationContext)authenticationContext;
- (id)authenticatedAccountDSID;
- (id)uniqueKey;
- (void)_handleAuthenticateResponse:(id)response;
- (void)dealloc;
- (void)run;
@end

@implementation ISStoreAuthenticateOperation

- (ISStoreAuthenticateOperation)initWithAuthenticationContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEFAULT))
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
      generateSymbolicatedStackShot = [MEMORY[0x277D69C78] generateSymbolicatedStackShot];
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
    v12 = [context mutableCopy];
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
    authenticationContext = [(ISStoreAuthenticateOperation *)self authenticationContext];

    return [(SSAuthenticationContext *)authenticationContext requiredUniqueIdentifier];
  }

  return result;
}

- (void)run
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = +[ISNetworkObserver sharedInstance];
  [(ISNetworkObserver *)v3 beginUsingNetwork];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog &= 2u;
  }

  if (shouldLog)
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
  requiredUniqueIdentifier = [(SSAuthenticationContext *)[(ISStoreAuthenticateOperation *)self authenticationContext] requiredUniqueIdentifier];
  v3 = MEMORY[0x277CCACA8];
  if (requiredUniqueIdentifier)
  {
    stringValue = [requiredUniqueIdentifier stringValue];
  }

  else
  {
    stringValue = @"0";
  }

  return [v3 stringWithFormat:@"com.apple.iTunesStore.auth.%@", stringValue];
}

- (void)_handleAuthenticateResponse:(id)response
{
  responseDictionary = [response responseDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[ISProcessPropertyListOperation alloc] initWithPropertyList:responseDictionary];
    v7 = objc_alloc_init(ISPropertyListProvider);
    [(ISProtocolDataProvider *)v7 setShouldProcessAccount:0];
    [(ISProcessPropertyListOperation *)v6 setDataProvider:v7];

    [(ISOperation *)self runSubOperation:v6 returningError:0];
  }

  v8 = 0;
  if ([objc_opt_class() _copyErrorForAuthenticateResponse:response error:&v8])
  {
    [(ISOperation *)self setSuccess:1];
  }

  else
  {
    [(ISOperation *)self setError:v8];
  }

  [(ISOperation *)self lock];

  self->_authenticateResponse = response;
  [(ISOperation *)self unlock];
}

+ (BOOL)_copyErrorForAuthenticateResponse:(id)response error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  authenticateResponseType = [response authenticateResponseType];
  v7 = 0;
  if (authenticateResponseType <= 3)
  {
    if (authenticateResponseType >= 2)
    {
      if (authenticateResponseType == 2)
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          v24 = shouldLog | 2;
        }

        else
        {
          v24 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEFAULT))
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

      if (authenticateResponseType != 3)
      {
LABEL_62:
        v19 = 0;
        if (error)
        {
          *error = v7;
        }

        goto LABEL_64;
      }

      goto LABEL_7;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v15 = shouldLog2 | 2;
    }

    else
    {
      v15 = shouldLog2;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_ERROR))
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

  if ((authenticateResponseType - 6) < 3)
  {
LABEL_7:
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v10 = shouldLog3 | 2;
    }

    else
    {
      v10 = shouldLog3;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38]3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v32 = 138412546;
      *&v32[4] = objc_opt_class();
      *&v32[12] = 2048;
      *&v32[14] = [response authenticateResponseType];
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

  if (authenticateResponseType == 5)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
    if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      v27 = shouldLog4 | 2;
    }

    else
    {
      v27 = shouldLog4;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38]4 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

  if (authenticateResponseType != 4)
  {
    goto LABEL_62;
  }

  mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38]5)
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
  if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
  {
    v18 = shouldLog5 | 2;
  }

  else
  {
    v18 = shouldLog5;
  }

  v19 = 1;
  if (!os_log_type_enabled([mEMORY[0x277D69B38]5 OSLogObject], OS_LOG_TYPE_INFO))
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