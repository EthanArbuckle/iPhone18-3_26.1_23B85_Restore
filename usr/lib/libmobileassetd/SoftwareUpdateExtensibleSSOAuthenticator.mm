@interface SoftwareUpdateExtensibleSSOAuthenticator
- (BOOL)authenticationSupported;
- (MABrainSoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate;
- (id)authenticate;
- (id)copyQueryItemsWithParameters:(id)parameters;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
@end

@implementation SoftwareUpdateExtensibleSSOAuthenticator

- (id)copyQueryItemsWithParameters:(id)parameters
{
  parametersCopy = parameters;
  +[NSMutableArray array];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __73__SoftwareUpdateExtensibleSSOAuthenticator_copyQueryItemsWithParameters___block_invoke_2;
  v11 = v10 = &unk_4B2A48;
  v12 = &__block_literal_global_0;
  v4 = v11;
  [parametersCopy enumerateKeysAndObjectsUsingBlock:&v7];

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
  appIdentifier = [(SoftwareUpdateExtensibleSSOAuthenticator *)self appIdentifier];
  [v4 setObject:appIdentifier forKeyedSubscript:@"applicationIdentifier"];

  envIdentifier = [(SoftwareUpdateExtensibleSSOAuthenticator *)self envIdentifier];
  [v4 setObject:envIdentifier forKeyedSubscript:@"environmentIdentifier"];

  username = [(SoftwareUpdateExtensibleSSOAuthenticator *)self username];
  [v4 setObject:username forKeyedSubscript:@"username"];

  interactivity = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
  [v4 setObject:interactivity forKeyedSubscript:@"interactivity"];

  otherParameters = [(SoftwareUpdateExtensibleSSOAuthenticator *)self otherParameters];

  if (otherParameters)
  {
    v10 = objc_alloc_init(NSURLComponents);
    otherParameters2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self otherParameters];
    v12 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self copyQueryItemsWithParameters:otherParameters2];
    [v10 setQueryItems:v12];

    query = [v10 query];

    if (query)
    {
      query2 = [v10 query];
      [v4 setObject:query2 forKeyedSubscript:@"otherParameters"];
    }
  }

  v15 = _MADLog(@"SSO");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    appIdentifier2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self appIdentifier];
    envIdentifier2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self envIdentifier];
    interactivity2 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self interactivity];
    *buf = 138412802;
    v36 = appIdentifier2;
    v37 = 2112;
    v38 = envIdentifier2;
    v39 = 2112;
    v40 = interactivity2;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Parameters passed to authenticate function are AppIdentifier: %@ EnvIdentifier: %@ Interactivity: %@ \n", buf, 0x20u);
  }

  v19 = [NSURL URLWithString:@"https://sso.corp.apple.com/authenticate"];
  v20 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:v19];
  if ([v20 canPerformAuthorization])
  {
    createRequest = [v20 createRequest];
    v22 = [(SoftwareUpdateExtensibleSSOAuthenticator *)self copyQueryItemsWithParameters:v4];
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

    [createRequest setUserInterfaceEnabled:v29];
    v30 = [ASAuthorizationController alloc];
    v34 = createRequest;
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

  createRequest = _MADLog(@"SSO");
  if (os_log_type_enabled(createRequest, OS_LOG_TYPE_ERROR))
  {
    v24 = [v20 url];
    *buf = 138412290;
    v36 = v24;
    _os_log_impl(&dword_0, createRequest, OS_LOG_TYPE_ERROR, "Can't authenticate with provider URL: %@\n", buf, 0xCu);
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
    canPerformAuthorization = [v3 canPerformAuthorization];

    return canPerformAuthorization;
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

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v6 = _MADLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "ExtensibleSSOAuthenticator: Authentication completed successfully\n", v14, 2u);
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
    v13 = &__NSDictionary0__struct;
  }

  [delegate authenticator:self didCompleteWithResult:v13];
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  errorCopy = error;
  v6 = _MADLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "ExtensibleSSOAuthenticator : Authentication completed with error: %@\n", &v8, 0xCu);
  }

  delegate = [(SoftwareUpdateExtensibleSSOAuthenticator *)self delegate];
  [delegate authenticator:self didCompleteWithError:errorCopy];
}

- (MABrainSoftwareUpdateExtensibleSSOAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end