@interface SUScriptAppleIdAuthenticationOperation
- (SUScriptAppleIdAuthenticationOperation)initWithUsername:(id)username password:(id)password viewController:(id)controller;
- (void)run;
- (void)sendCompletionCallback:(id)callback;
@end

@implementation SUScriptAppleIdAuthenticationOperation

- (SUScriptAppleIdAuthenticationOperation)initWithUsername:(id)username password:(id)password viewController:(id)controller
{
  v26 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  passwordCopy = password;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v19 = v25;
      LODWORD(v22) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_14:

        selfCopy = 0;
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v24, v22}];
      free(v20);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v23.receiver = self;
  v23.super_class = SUScriptAppleIdAuthenticationOperation;
  v11 = [(SUScriptAppleIdAuthenticationOperation *)&v23 init];
  if (v11)
  {
    v12 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
    authenticationContext = v11->_authenticationContext;
    v11->_authenticationContext = v12;

    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setUsername:usernameCopy];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext _setPassword:passwordCopy];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setShouldForceInteractiveAuth:0];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setIsUsernameEditable:1];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setShouldUpdatePersistentServiceTokens:1];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setPresentingViewController:controllerCopy];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setFirstTimeLogin:1];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setIsUsernameEditable:0];
    objc_storeStrong(&v11->_viewController, controller);
  }

  self = v11;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (void)run
{
  v3 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  v4 = dispatch_semaphore_create(0);
  authenticationContext = self->_authenticationContext;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke;
  v8[3] = &unk_1E8164520;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v3 authenticateWithContext:authenticationContext completion:v8];
  v7 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v6, v7);
}

void __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v14 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:v13];
    v15 = objc_alloc_init(MEMORY[0x1E698C258]);
    [v15 setAuthenticationResults:v5];
    [v15 setViewController:*(*(a1 + 32) + 344)];
    v16 = *MEMORY[0x1E698C218];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke_32;
    v21[3] = &unk_1E81651D8;
    v17 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v17;
    [v14 signInService:v16 withContext:v15 completion:v21];
    v18 = *(a1 + 40);
    v19 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v18, v19);

    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E69D4938] sharedConfig];
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
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v23 = 138412546;
  v24 = objc_opt_class();
  v25 = 2112;
  v26 = v6;
  v11 = v24;
  LODWORD(v20) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v23, v20}];
    free(v12);
    SSFileLog();
LABEL_10:
  }

  [*(a1 + 32) setError:v6];
  [*(a1 + 32) setSuccess:0];
LABEL_13:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke_32(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E69D4938] sharedConfig];
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
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v14 = 138412546;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2112;
      *&v14[14] = v5;
      v10 = *&v14[4];
      LODWORD(v13) = 22;
      v12 = v14;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_11:

        [*(a1 + 32) setError:v5];
        goto LABEL_12;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v14, v13, *v14, *&v14[16], v15}];
      free(v11);
      v12 = v9;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  [*(a1 + 32) setSuccess:{a2, v12}];
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)sendCompletionCallback:(id)callback
{
  callbackCopy = callback;
  error = [(SUScriptAppleIdAuthenticationOperation *)self error];
  code = [error code];

  if (code == -7064)
  {
    status = self->_status;
    v8 = @"cancel";
  }

  else
  {
    success = [(SUScriptAppleIdAuthenticationOperation *)self success];
    status = self->_status;
    if (success)
    {
      v8 = @"success";
    }

    else
    {
      v8 = @"fail";
    }
  }

  self->_status = &v8->isa;

  v10 = callbackCopy;
  WebThreadRun();
}

void __65__SUScriptAppleIdAuthenticationOperation_sendCompletionCallback___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 32);
  v8 = v6;
  [v7 status];
  v15 = 138412546;
  v16 = v6;
  v18 = v17 = 2112;
  LODWORD(v13) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v15, v13}];
    free(v9);
    SSFileLog();
LABEL_9:
  }

  v10 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 40)];
  [(SUScriptFunction *)v10 setThisObject:*(a1 + 32)];
  v11 = [*(a1 + 32) status];
  v14 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [(SUScriptFunction *)v10 callWithArguments:v12];

  [(SUScriptFunction *)v10 setThisObject:0];
}

@end