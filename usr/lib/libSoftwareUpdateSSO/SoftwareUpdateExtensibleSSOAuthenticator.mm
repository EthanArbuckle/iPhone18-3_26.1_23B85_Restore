@interface SoftwareUpdateExtensibleSSOAuthenticator
- (BOOL)authenticationSupported;
- (SoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate;
- (id)authenticate;
- (id)copyQueryItemsWithParameters:(id)parameters;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
@end

@implementation SoftwareUpdateExtensibleSSOAuthenticator

- (id)copyQueryItemsWithParameters:(id)parameters
{
  v3 = MEMORY[0x29EDB8DE8];
  parametersCopy = parameters;
  array = [v3 array];
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __73__SoftwareUpdateExtensibleSSOAuthenticator_copyQueryItemsWithParameters___block_invoke_2;
  v12 = &unk_29EE8D318;
  v13 = array;
  v14 = &__block_literal_global_0;
  v6 = array;
  [parametersCopy enumerateKeysAndObjectsUsingBlock:&v9];

  v7 = [v6 copy];
  return v7;
}

void __73__SoftwareUpdateExtensibleSSOAuthenticator_copyQueryItemsWithParameters___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [MEMORY[0x29EDBA120] queryItemWithName:v6 value:v7];
    if (v8)
    {
      [v9 addObject:v8];
    }
  }
}

- (id)authenticate
{
  v42 = *MEMORY[0x29EDCA608];
  v3 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_298222000, v3, OS_LOG_TYPE_DEFAULT, "Authenticating with AuthenticationServices.\n", buf, 2u);
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  appIdentifier = [(SoftwareUpdateExtensibleSSOAuthenticator *)self appIdentifier];
  [dictionary setObject:appIdentifier forKeyedSubscript:@"applicationIdentifier"];

  envIdentifier = [(SoftwareUpdateExtensibleSSOAuthenticator *)self envIdentifier];
  [dictionary setObject:envIdentifier forKeyedSubscript:@"environmentIdentifier"];

  username = [(SoftwareUpdateExtensibleSSOAuthenticator *)self username];
  [dictionary setObject:username forKeyedSubscript:@"username"];

  interactivity = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
  [dictionary setObject:interactivity forKeyedSubscript:@"interactivity"];

  otherParameters = [(SoftwareUpdateExtensibleSSOAuthenticator *)self otherParameters];

  if (otherParameters)
  {
    v10 = objc_alloc_init(MEMORY[0x29EDBA110]);
    otherParameters2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self otherParameters];
    v12 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self copyQueryItemsWithParameters:otherParameters2];
    [v10 setQueryItems:v12];

    query = [v10 query];

    if (query)
    {
      query2 = [v10 query];
      [dictionary setObject:query2 forKeyedSubscript:@"otherParameters"];
    }
  }

  v15 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    appIdentifier2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self appIdentifier];
    envIdentifier2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self envIdentifier];
    interactivity2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
    *buf = 138412802;
    v37 = appIdentifier2;
    v38 = 2112;
    v39 = envIdentifier2;
    v40 = 2112;
    v41 = interactivity2;
    _os_log_impl(&dword_298222000, v15, OS_LOG_TYPE_DEFAULT, "Parameters passed to authenticate function are AppIdentifier: %@ EnvIdentifier: %@ Interactivity: %@ \n", buf, 0x20u);
  }

  v19 = [MEMORY[0x29EDB8E70] URLWithString:@"https://sso.corp.apple.com/authenticate"];
  v20 = [MEMORY[0x29EDB84D8] authorizationProviderWithIdentityProviderURL:v19];
  if ([v20 canPerformAuthorization])
  {
    createRequest = [v20 createRequest];
    v22 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self copyQueryItemsWithParameters:dictionary];
    [createRequest setAuthorizationOptions:v22];

    interactivity3 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
    if ([interactivity3 isEqualToString:@"0"])
    {
    }

    else
    {
      interactivity4 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
      v27 = [interactivity4 isEqualToString:@"2"];

      if (!v27)
      {
        v28 = _MAClientLog(@"SSO");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_298222000, v28, OS_LOG_TYPE_DEFAULT, "Setting userInterfaceEnabled to NO\n", buf, 2u);
        }

        v29 = 0;
        goto LABEL_22;
      }
    }

    v28 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_298222000, v28, OS_LOG_TYPE_DEFAULT, "Setting userInterfaceEnabled to YES\n", buf, 2u);
    }

    v29 = 1;
LABEL_22:

    [createRequest setUserInterfaceEnabled:v29];
    v30 = objc_alloc(MEMORY[0x29EDB84C8]);
    v35 = createRequest;
    v31 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v35 count:1];
    v25 = [v30 initWithAuthorizationRequests:v31];

    [v25 setDelegate:self];
    v32 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_298222000, v32, OS_LOG_TYPE_DEBUG, "Calling performRequests on authenticationController\n", buf, 2u);
    }

    [v25 performRequests];
    goto LABEL_25;
  }

  createRequest = _MAClientLog(@"SSO");
  if (os_log_type_enabled(createRequest, OS_LOG_TYPE_ERROR))
  {
    v24 = [v20 url];
    *buf = 138412290;
    v37 = v24;
    _os_log_impl(&dword_298222000, createRequest, OS_LOG_TYPE_ERROR, "Can't authenticate with provider URL: %@\n", buf, 0xCu);
  }

  v25 = 0;
LABEL_25:

  v33 = *MEMORY[0x29EDCA608];

  return v25;
}

- (BOOL)authenticationSupported
{
  if (objc_opt_class())
  {
    v2 = [MEMORY[0x29EDB8E70] URLWithString:@"https://sso.corp.apple.com/authenticate"];
    v3 = [MEMORY[0x29EDB84D8] authorizationProviderWithIdentityProviderURL:v2];
    canPerformAuthorization = [v3 canPerformAuthorization];

    return canPerformAuthorization;
  }

  else
  {
    v6 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_ERROR, "Environment does not support AuthenticationServices\n", v7, 2u);
    }

    return 0;
  }
}

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v6 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_DEFAULT, "ExtensibleSSOAuthenticator: Authentication completed successfully\n", v14, 2u);
  }

  credential = [authorizationCopy credential];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    credential2 = [authorizationCopy credential];
    authenticatedResponse = [credential2 authenticatedResponse];
  }

  else
  {
    authenticatedResponse = 0;
  }

  delegate = [(SoftwareUpdateExtensibleSSOAuthenticator *)self delegate];
  allHeaderFields = [authenticatedResponse allHeaderFields];
  v12 = allHeaderFields;
  if (allHeaderFields)
  {
    v13 = allHeaderFields;
  }

  else
  {
    v13 = MEMORY[0x29EDB8EA0];
  }

  [delegate authenticator:self didCompleteWithResult:v13];
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  v11 = *MEMORY[0x29EDCA608];
  errorCopy = error;
  v6 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_ERROR, "ExtensibleSSOAuthenticator : Authentication completed with error: %@\n", &v9, 0xCu);
  }

  delegate = [(SoftwareUpdateExtensibleSSOAuthenticator *)self delegate];
  [delegate authenticator:self didCompleteWithError:errorCopy];

  v8 = *MEMORY[0x29EDCA608];
}

- (SoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end