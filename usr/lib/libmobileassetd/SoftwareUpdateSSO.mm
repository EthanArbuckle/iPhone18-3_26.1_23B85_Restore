@interface SoftwareUpdateSSO
- (BOOL)callerHasRequiredEntitlements;
- (BOOL)ssoIsSupported;
- (SoftwareUpdateSSO)initWithOptions:(id)a3;
- (id)buildSSOError:(int)a3 underlying:(id)a4 description:(id)a5;
- (id)copyUserInfo;
- (id)getDawToken;
- (unint64_t)_completionDeadline;
- (void)authenticator:(id)a3 didCompleteWithError:(id)a4;
- (void)authenticator:(id)a3 didCompleteWithResult:(id)a4;
- (void)copyTokenFromAuthenticatorResponse:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)setupAuthenticator;
@end

@implementation SoftwareUpdateSSO

- (id)buildSSOError:(int)a3 underlying:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  v10 = v9;
  if (v9)
  {
    if (v8)
    {
      [v9 setObject:v8 forKey:NSLocalizedDescriptionKey];
    }

    if (v7)
    {
      [v10 setObject:v7 forKey:NSUnderlyingErrorKey];
    }
  }

  v11 = [NSError errorWithDomain:@"SoftwareUpdateSSOError" code:a3 userInfo:v10];

  return v11;
}

- (SoftwareUpdateSSO)initWithOptions:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SoftwareUpdateSSO;
  v5 = [(SoftwareUpdateSSO *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(SoftwareUpdateSSO *)v5 setAuthenticator:v6];

    v7 = [(SoftwareUpdateSSO *)v5 authenticator];
    [v7 setDelegate:v5];

    [(SoftwareUpdateSSO *)v5 setDawToken:0];
    v8 = dispatch_semaphore_create(0);
    SoftwareUpdateSSOCompletionSemaphore = v5->SoftwareUpdateSSOCompletionSemaphore;
    v5->SoftwareUpdateSSOCompletionSemaphore = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MobileSoftwareUpdate.SoftwareUpdateSSO", v10);
    ssoControllerQueue = v5->ssoControllerQueue;
    v5->ssoControllerQueue = v11;

    if (v4)
    {
      v13 = [v4 objectForKeyedSubscript:@"applicationIdentifier"];
      [(SoftwareUpdateSSO *)v5 setAppIdentifier:v13];

      v14 = [v4 objectForKeyedSubscript:@"environmentIdentifier"];
      [(SoftwareUpdateSSO *)v5 setEnvIdentifier:v14];

      v15 = [v4 objectForKeyedSubscript:@"username"];
      [(SoftwareUpdateSSO *)v5 setUserName:v15];

      v16 = [v4 objectForKeyedSubscript:@"interactivity"];

      if (v16)
      {
        v17 = [v4 objectForKeyedSubscript:@"interactivity"];
        if (([v17 isEqualToString:@"0"] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"1") & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"2"))
        {
          [(SoftwareUpdateSSO *)v5 setInteractivityLevel:v17];
        }

        else
        {
          v21 = _MADLog(@"SSO");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v17;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Invalid interactivity level was passed in: %@", buf, 0xCu);
          }
        }
      }

      v18 = [(SoftwareUpdateSSO *)v5 interactivityLevel];

      if (!v18)
      {
        v19 = _MADLog(@"SSO");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Using default interactivity level(0)", buf, 2u);
        }

        [(SoftwareUpdateSSO *)v5 setInteractivityLevel:@"0"];
      }
    }
  }

  return v5;
}

- (void)invalidate
{
  v3 = [(SoftwareUpdateSSO *)self authenticator];
  [v3 setDelegate:0];

  [(SoftwareUpdateSSO *)self setAuthenticator:0];
}

- (void)setupAuthenticator
{
  v7 = [(SoftwareUpdateSSO *)self authenticator];
  v3 = [(SoftwareUpdateSSO *)self appIdentifier];
  [v7 setAppIdentifier:v3];

  v4 = [(SoftwareUpdateSSO *)self envIdentifier];
  [v7 setEnvIdentifier:v4];

  v5 = [(SoftwareUpdateSSO *)self userName];
  [v7 setUsername:v5];

  v6 = [(SoftwareUpdateSSO *)self interactivityLevel];
  [v7 setInteractivity:v6];

  [v7 setOtherParameters:0];
}

- (void)copyTokenFromAuthenticatorResponse:(id)a3 error:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 mutableCopy];
    v8 = _MADLog(@"SSO");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Successfully retrieved response from authenticator", buf, 2u);
    }

    v9 = objc_alloc_init(NSURLComponents);
    v10 = [v7 objectForKeyedSubscript:@"otherInfo"];
    [v9 setQuery:v10];

    v11 = [v9 queryItems];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __62__SoftwareUpdateSSO_copyTokenFromAuthenticatorResponse_error___block_invoke;
    v36[3] = &unk_4B2A78;
    v12 = v7;
    v37 = v12;
    [v11 enumerateObjectsUsingBlock:v36];

    v13 = [(SoftwareUpdateSSO *)self authenticator];
    v14 = [v13 otherParameters];
    v15 = [v14 objectForKeyedSubscript:@"DAWRequest"];
    v16 = [&__kCFBooleanTrue stringValue];
    v17 = [v15 isEqualToString:v16];

    v18 = _MADLog(@"SSO");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Attempt to extract DAW token from response", buf, 2u);
      }

      v20 = @"dawToken";
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Attempting to extract ACMToken from response\n", buf, 2u);
      }

      v20 = @"token";
    }

    v24 = [v12 objectForKeyedSubscript:v20];
    dawToken = self->_dawToken;
    self->_dawToken = v24;

    v26 = [(SoftwareUpdateSSO *)self userName];

    if (!v26)
    {
      v27 = [v12 objectForKeyedSubscript:@"username"];
      [(SoftwareUpdateSSO *)self setUserName:v27];
    }

    v28 = [(SoftwareUpdateSSO *)self personID];

    if (!v28)
    {
      v29 = [v12 objectForKeyedSubscript:@"personId"];
      [(SoftwareUpdateSSO *)self setPersonID:v29];
    }

    v30 = _MADLog(@"SSO");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [(SoftwareUpdateSSO *)self userName];
      v32 = [(SoftwareUpdateSSO *)self personID];
      if (v32)
      {
        v33 = [(SoftwareUpdateSSO *)self personID];
      }

      else
      {
        v33 = @"Unknown";
      }

      v34 = [(SoftwareUpdateSSO *)self dawToken];
      v35 = @"Valid";
      *buf = 138412802;
      v39 = v31;
      v40 = 2112;
      if (!v34)
      {
        v35 = @"Not present";
      }

      v41 = v33;
      v42 = 2112;
      v43 = v35;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "Username :%@ personID: %@ token:%@", buf, 0x20u);

      if (v32)
      {
      }
    }

    v22 = v37;
LABEL_28:

    goto LABEL_29;
  }

  v21 = self->_dawToken;
  self->_dawToken = 0;

  if (v6)
  {
    v22 = _MADLog(@"SSO");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v6 description];
      *buf = 138412290;
      v39 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Failed to retrieve SSO token: %@\n", buf, 0xCu);
    }

    goto LABEL_28;
  }

LABEL_29:
  dispatch_semaphore_signal(self->SoftwareUpdateSSOCompletionSemaphore);
}

void __62__SoftwareUpdateSSO_copyTokenFromAuthenticatorResponse_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 value];
  v4 = *(a1 + 32);
  v5 = [v3 name];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)callerHasRequiredEntitlements
{
  dispatch_assert_queue_V2(self->ssoControllerQueue);
  v2 = SecTaskCreateFromSelf(kCFAllocatorDefault);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.softwareupdatesso.tokenaccessallowed", 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
      CFRelease(v5);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v8 = _MADLog(@"SSO");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Unable to create taskref for permission check\n", v10, 2u);
    }

    return 0;
  }

  return v7;
}

- (unint64_t)_completionDeadline
{
  v2 = [(SoftwareUpdateSSO *)self interactivityLevel];
  v3 = [v2 integerValue];

  if (v3 == &dword_0 + 1)
  {
    v4 = 12000000000;
  }

  else
  {
    v4 = 180000000000;
  }

  return dispatch_time(0, v4);
}

- (id)copyUserInfo
{
  dispatch_assert_queue_not_V2(self->ssoControllerQueue);
  ssoControllerQueue = self->ssoControllerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__SoftwareUpdateSSO_copyUserInfo__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(ssoControllerQueue, block);
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:self->_userName forKeyedSubscript:@"username"];
  [v4 setObject:self->_personID forKeyedSubscript:@"personId"];
  return v4;
}

void __33__SoftwareUpdateSSO_copyUserInfo__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) callerHasRequiredEntitlements])
  {
    [*(a1 + 32) setupAuthenticator];
    v2 = [*(a1 + 32) authenticator];
    v3 = [v2 authenticate];

    if (v3)
    {
      if (dispatch_semaphore_wait(*(*(a1 + 32) + 8), [*(a1 + 32) _completionDeadline]))
      {
        [v3 cancel];
      }
    }

    else
    {
      v4 = _MADLog(@"SSO");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "copyUserInfo called in unsupported environment\n", buf, 2u);
      }
    }
  }

  else
  {
    v3 = _MADLog(@"SSO");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Process does not have permissions to read the AC user info\n", v5, 2u);
    }
  }
}

- (id)getDawToken
{
  dispatch_assert_queue_not_V2(self->ssoControllerQueue);
  ssoControllerQueue = self->ssoControllerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __32__SoftwareUpdateSSO_getDawToken__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(ssoControllerQueue, block);
  return self->_dawToken;
}

void __32__SoftwareUpdateSSO_getDawToken__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callerHasRequiredEntitlements];
  [*(a1 + 32) setDawToken:0];
  if (v2)
  {
    [*(a1 + 32) setupAuthenticator];
    v10 = @"DAWRequest";
    v3 = [&__kCFBooleanTrue stringValue];
    v11 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v5 = [*(a1 + 32) authenticator];
    [v5 setOtherParameters:v4];

    v6 = [*(a1 + 32) authenticator];
    v7 = [v6 authenticate];

    if (v7)
    {
      if (dispatch_semaphore_wait(*(*(a1 + 32) + 8), [*(a1 + 32) _completionDeadline]))
      {
        [v7 cancel];
      }
    }

    else
    {
      v8 = _MADLog(@"SSO");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "getDawToken called in unsupported environment\n", v9, 2u);
      }
    }
  }

  else
  {
    v7 = _MADLog(@"SSO");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Process does not have permissions to read the sso token\n", v9, 2u);
    }
  }
}

- (BOOL)ssoIsSupported
{
  v3 = [(SoftwareUpdateSSO *)self authenticator];

  if (v3)
  {
    v4 = [(SoftwareUpdateSSO *)self authenticator];
    v5 = [v4 authenticationSupported];

    return v5;
  }

  else
  {
    v7 = _MADLog(@"SSO");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "No authenticator object found. Assuming sso not supported\n", v8, 2u);
    }

    return 0;
  }
}

- (void)authenticator:(id)a3 didCompleteWithResult:(id)a4
{
  v5 = a4;
  v6 = _MADLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "INFO: ExtensibleSSOAuthentication callback returned success\n", v7, 2u);
  }

  [(SoftwareUpdateSSO *)self copyTokenFromAuthenticatorResponse:v5 error:0];
}

- (void)authenticator:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  v6 = _MADLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v5 description];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "ExtensibleSSOAuthentication callback returned error: %@\n", &v9, 0xCu);
  }

  v8 = [(SoftwareUpdateSSO *)self buildSSOError:1 underlying:v5 description:@"Call to SSOAuthenticator Authenticate failed"];
  [(SoftwareUpdateSSO *)self copyTokenFromAuthenticatorResponse:0 error:v8];
}

@end