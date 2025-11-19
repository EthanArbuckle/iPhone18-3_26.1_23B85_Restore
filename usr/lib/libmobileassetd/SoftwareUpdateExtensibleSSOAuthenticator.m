@interface SoftwareUpdateExtensibleSSOAuthenticator
- (BOOL)authenticationSupported;
- (MABrainSoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate;
- (id)authenticate;
- (id)copyQueryItemsWithParameters:(id)a3;
- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4;
@end

@implementation SoftwareUpdateExtensibleSSOAuthenticator

- (id)copyQueryItemsWithParameters:(id)a3
{
  v3 = a3;
  +[NSMutableArray array];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __73__SoftwareUpdateExtensibleSSOAuthenticator_copyQueryItemsWithParameters___block_invoke_2;
  v11 = v10 = &unk_4B2A48;
  v12 = &__block_literal_global_0;
  v4 = v11;
  [v3 enumerateKeysAndObjectsUsingBlock:&v7];

  v5 = [v4 copy];
  return v5;
}

void __73__SoftwareUpdateExtensibleSSOAuthenticator_copyQueryItemsWithParameters___block_invoke(id a1, NSMutableArray *a2, NSString *a3, NSString *a4)
{
  v9 = a2;
  v6 = a3;
  v7 = a4;
  if ([(NSString *)v7 length])
  {
    v8 = [NSURLQueryItem queryItemWithName:v6 value:v7];
    if (v8)
    {
      [(NSMutableArray *)v9 addObject:v8];
    }
  }
}

- (id)authenticate
{
  v3 = _MADLog(@"SSO");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Authenticating with AuthenticationServices.\n", buf, 2u);
  }

  v4 = +[NSMutableDictionary dictionary];
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
    v10 = objc_alloc_init(NSURLComponents);
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

  v15 = _MADLog(@"SSO");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self appIdentifier];
    v17 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self envIdentifier];
    v18 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
    *buf = 138412802;
    v36 = v16;
    v37 = 2112;
    v38 = v17;
    v39 = 2112;
    v40 = v18;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Parameters passed to authenticate function are AppIdentifier: %@ EnvIdentifier: %@ Interactivity: %@ \n", buf, 0x20u);
  }

  v19 = [NSURL URLWithString:@"https://sso.corp.apple.com/authenticate"];
  v20 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:v19];
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
        v28 = _MADLog(@"SSO");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Setting userInterfaceEnabled to NO\n", buf, 2u);
        }

        v29 = 0;
        goto LABEL_22;
      }
    }

    v28 = _MADLog(@"SSO");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Setting userInterfaceEnabled to YES\n", buf, 2u);
    }

    v29 = 1;
LABEL_22:

    [v21 setUserInterfaceEnabled:v29];
    v30 = [ASAuthorizationController alloc];
    v34 = v21;
    v31 = [NSArray arrayWithObjects:&v34 count:1];
    v25 = [v30 initWithAuthorizationRequests:v31];

    [v25 setDelegate:self];
    v32 = _MADLog(@"SSO");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "Calling performRequests on authenticationController\n", buf, 2u);
    }

    [v25 performRequests];
    goto LABEL_25;
  }

  v21 = _MADLog(@"SSO");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v24 = [v20 url];
    *buf = 138412290;
    v36 = v24;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Can't authenticate with provider URL: %@\n", buf, 0xCu);
  }

  v25 = 0;
LABEL_25:

  return v25;
}

- (BOOL)authenticationSupported
{
  if (objc_opt_class())
  {
    v2 = [NSURL URLWithString:@"https://sso.corp.apple.com/authenticate"];
    v3 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:v2];
    v4 = [v3 canPerformAuthorization];

    return v4;
  }

  else
  {
    v6 = _MADLog(@"SSO");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Environment does not support AuthenticationServices\n", v7, 2u);
    }

    return 0;
  }
}

- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4
{
  v5 = a4;
  v6 = _MADLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "ExtensibleSSOAuthenticator: Authentication completed successfully\n", v14, 2u);
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
    v13 = &__NSDictionary0__struct;
  }

  [v10 authenticator:self didCompleteWithResult:v13];
}

- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  v6 = _MADLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "ExtensibleSSOAuthenticator : Authentication completed with error: %@\n", &v8, 0xCu);
  }

  v7 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self delegate];
  [v7 authenticator:self didCompleteWithError:v5];
}

- (MABrainSoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end