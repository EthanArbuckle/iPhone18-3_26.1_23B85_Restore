@interface SoftwareUpdateExtensibleSSOAuthenticator
- (BOOL)authenticationSupported;
- (SoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate;
- (id)authenticate;
- (id)copyQueryItemsWithParameters:(id)a3;
- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4;
@end

@implementation SoftwareUpdateExtensibleSSOAuthenticator

- (id)copyQueryItemsWithParameters:(id)a3
{
  v3 = MEMORY[0x29EDB8DE8];
  v4 = a3;
  v5 = [v3 array];
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __73__SoftwareUpdateExtensibleSSOAuthenticator_copyQueryItemsWithParameters___block_invoke_2;
  v12 = &unk_29EE8D318;
  v13 = v5;
  v14 = &__block_literal_global_0;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

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

  v4 = [MEMORY[0x29EDB8E00] dictionary];
  v5 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self appIdentifier];
  [v4 setObject:v5 forKeyedSubscript:@"applicationIdentifier"];

  v6 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self envIdentifier];
  [v4 setObject:v6 forKeyedSubscript:@"environmentIdentifier"];

  v7 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self username];
  [v4 setObject:v7 forKeyedSubscript:@"username"];

  v8 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
  [v4 setObject:v8 forKeyedSubscript:@"interactivity"];

  v9 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self otherParameters];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x29EDBA110]);
    v11 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self otherParameters];
    v12 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self copyQueryItemsWithParameters:v11];
    [v10 setQueryItems:v12];

    v13 = [v10 query];

    if (v13)
    {
      v14 = [v10 query];
      [v4 setObject:v14 forKeyedSubscript:@"otherParameters"];
    }
  }

  v15 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self appIdentifier];
    v17 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self envIdentifier];
    v18 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
    *buf = 138412802;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&dword_298222000, v15, OS_LOG_TYPE_DEFAULT, "Parameters passed to authenticate function are AppIdentifier: %@ EnvIdentifier: %@ Interactivity: %@ \n", buf, 0x20u);
  }

  v19 = [MEMORY[0x29EDB8E70] URLWithString:@"https://sso.corp.apple.com/authenticate"];
  v20 = [MEMORY[0x29EDB84D8] authorizationProviderWithIdentityProviderURL:v19];
  if ([v20 canPerformAuthorization])
  {
    v21 = [v20 createRequest];
    v22 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self copyQueryItemsWithParameters:v4];
    [v21 setAuthorizationOptions:v22];

    v23 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
    if ([v23 isEqualToString:@"0"])
    {
    }

    else
    {
      v26 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
      v27 = [v26 isEqualToString:@"2"];

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

    [v21 setUserInterfaceEnabled:v29];
    v30 = objc_alloc(MEMORY[0x29EDB84C8]);
    v35 = v21;
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

  v21 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v24 = [v20 url];
    *buf = 138412290;
    v37 = v24;
    _os_log_impl(&dword_298222000, v21, OS_LOG_TYPE_ERROR, "Can't authenticate with provider URL: %@\n", buf, 0xCu);
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
    v4 = [v3 canPerformAuthorization];

    return v4;
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

- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4
{
  v5 = a4;
  v6 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_DEFAULT, "ExtensibleSSOAuthenticator: Authentication completed successfully\n", v14, 2u);
  }

  v7 = [v5 credential];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 credential];
    v9 = [v8 authenticatedResponse];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self delegate];
  v11 = [v9 allHeaderFields];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x29EDB8EA0];
  }

  [v10 authenticator:self didCompleteWithResult:v13];
}

- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = a4;
  v6 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_ERROR, "ExtensibleSSOAuthenticator : Authentication completed with error: %@\n", &v9, 0xCu);
  }

  v7 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self delegate];
  [v7 authenticator:self didCompleteWithError:v5];

  v8 = *MEMORY[0x29EDCA608];
}

- (SoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end