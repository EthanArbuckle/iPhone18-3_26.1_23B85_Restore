@interface SUScriptAuthenticationOperation
- (SUScriptAuthenticationOperation)initWithAccountIdentifier:(id)a3;
- (void)run;
- (void)sendCompletionCallback:(id)a3;
- (void)setScriptOptions:(id)a3;
@end

@implementation SUScriptAuthenticationOperation

- (SUScriptAuthenticationOperation)initWithAccountIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUScriptAuthenticationOperation;
  v5 = [(SUScriptAuthenticationOperation *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69D4968]) initWithAccountIdentifier:v4];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v6;
  }

  return v5;
}

- (void)run
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
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

  if (v5)
  {
    v7 = objc_opt_class();
    authenticationContext = self->_authenticationContext;
    v9 = v7;
    v10 = [(SSMutableAuthenticationContext *)authenticationContext requiredUniqueIdentifier];
    v28 = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v10;
    LODWORD(v26) = 22;
    v25 = &v28;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v28, v26}];
    free(v11);
    v25 = v6;
    SSFileLog();
  }

LABEL_10:
  [(SSMutableAuthenticationContext *)self->_authenticationContext setForceDaemonAuthentication:1];
  v12 = [objc_alloc(MEMORY[0x1E69E47D8]) initWithAuthenticationContext:self->_authenticationContext];
  v13 = [(SUScriptAuthenticationOperation *)self presentingViewController];

  if (v13)
  {
    v14 = [(SUScriptAuthenticationOperation *)self presentingViewController];
    [v12 setParentViewController:v14];
  }

  v27 = 0;
  v15 = [(SUScriptAuthenticationOperation *)self runSubOperation:v12 returningError:&v27, v25];
  v16 = v27;
  if (!v15)
  {
    v18 = [MEMORY[0x1E69D4938] sharedConfig];
    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v28 = 138412546;
      v29 = v22;
      v30 = 2112;
      v31 = v16;
      v23 = v22;
      LODWORD(v26) = 22;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
LABEL_23:

        [(SUScriptAuthenticationOperation *)self setError:v16];
        goto LABEL_24;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v28, v26}];
      free(v24);
      SSFileLog();
    }

    goto LABEL_23;
  }

  v17 = [v12 authenticatedAccountDSID];
  [(SUScriptAuthenticationOperation *)self setAuthenticatedDSID:v17];

  [(SUScriptAuthenticationOperation *)self setSuccess:1];
LABEL_24:
}

- (void)sendCompletionCallback:(id)a3
{
  v4 = a3;
  v5 = [(SUScriptAuthenticationOperation *)self error];
  IsEqual = ISErrorIsEqual();

  if (IsEqual)
  {
    v7 = 0;
    v8 = @"cancel";
  }

  else if ([(SUScriptAuthenticationOperation *)self success])
  {
    v9 = [SUScriptAccountManager beginAccountManagerSessionForObject:self];
    v10 = [(SUScriptAuthenticationOperation *)self authenticatedAccountDSID];
    v7 = [v9 accountForDSID:v10];

    [SUScriptAccountManager endAccountManagerSessionForObject:self];
    v8 = @"success";
  }

  else
  {
    v7 = 0;
    v8 = @"fail";
  }

  v13 = v4;
  v14 = v8;
  v11 = v7;
  v12 = v4;
  WebThreadRun();
}

void __58__SUScriptAuthenticationOperation_sendCompletionCallback___block_invoke(uint64_t *a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = v2;
  v4 = a1[4];
  v5 = a1[5];
  if (a1[6])
  {
    v6 = [v2 initWithObjects:{v4, v5, a1[6], 0}];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    v9 = [v3 initWithObjects:{v4, v5, v7, 0}];

    v6 = v9;
  }

  v10 = v6;
  v8 = [a1[4] callWebScriptMethod:@"call" withArguments:v6];
}

- (void)setScriptOptions:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v11 safeValueForKey:@"additionalQueryParameters"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v11 safeValueForKey:@"additionalQueryParamters"];

      v4 = v5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E695DFF8] copyDictionaryForQueryString:v4 unescapedValues:1];
      [(SSMutableAuthenticationContext *)self->_authenticationContext setRequestParameters:v6];
    }

    v7 = [v11 safeValueForKey:@"forced"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 BOOLValue])
    {
      [(SSMutableAuthenticationContext *)self->_authenticationContext setPromptStyle:1];
    }

    v8 = [v11 safeValueForKey:@"reason"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SSMutableAuthenticationContext *)self->_authenticationContext setReasonDescription:v8];
    }

    v9 = [v11 safeValueForKey:@"username"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SSMutableAuthenticationContext *)self->_authenticationContext setAccountName:v9];
    }

    v10 = [v11 safeValueForKey:@"password"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SSMutableAuthenticationContext *)self->_authenticationContext setPassword:v10];
      [(SSMutableAuthenticationContext *)self->_authenticationContext setPromptStyle:1001];
      [(SSMutableAuthenticationContext *)self->_authenticationContext setAllowsSilentAuthentication:1];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

@end