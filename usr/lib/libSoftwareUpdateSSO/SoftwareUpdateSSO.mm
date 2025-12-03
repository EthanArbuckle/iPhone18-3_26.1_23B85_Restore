@interface SoftwareUpdateSSO
- (BOOL)callerHasRequiredEntitlements;
- (BOOL)ssoIsSupported;
- (SoftwareUpdateSSO)initWithOptions:(id)options;
- (id)buildSSOError:(int)error underlying:(id)underlying description:(id)description;
- (id)copyUserInfo;
- (id)getDawToken;
- (unint64_t)_completionDeadline;
- (void)authenticator:(id)authenticator didCompleteWithError:(id)error;
- (void)authenticator:(id)authenticator didCompleteWithResult:(id)result;
- (void)copyTokenFromAuthenticatorResponse:(id)response error:(id)error;
- (void)invalidate;
- (void)setupAuthenticator;
@end

@implementation SoftwareUpdateSSO

- (id)buildSSOError:(int)error underlying:(id)underlying description:(id)description
{
  underlyingCopy = underlying;
  descriptionCopy = description;
  v9 = objc_opt_new();
  v10 = v9;
  if (v9)
  {
    if (descriptionCopy)
    {
      [v9 setObject:descriptionCopy forKey:*MEMORY[0x29EDB9ED8]];
    }

    if (underlyingCopy)
    {
      [v10 setObject:underlyingCopy forKey:*MEMORY[0x29EDB9F18]];
    }
  }

  v11 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"SoftwareUpdateSSOError" code:error userInfo:v10];

  return v11;
}

- (SoftwareUpdateSSO)initWithOptions:(id)options
{
  v26 = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = SoftwareUpdateSSO;
  v5 = [(SoftwareUpdateSSO *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(SoftwareUpdateSSO *)v5 setAuthenticator:v6];

    authenticator = [(SoftwareUpdateSSO *)v5 authenticator];
    [authenticator setDelegate:v5];

    [(SoftwareUpdateSSO *)v5 setDawToken:0];
    v8 = dispatch_semaphore_create(0);
    SoftwareUpdateSSOCompletionSemaphore = v5->SoftwareUpdateSSOCompletionSemaphore;
    v5->SoftwareUpdateSSOCompletionSemaphore = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MobileSoftwareUpdate.SoftwareUpdateSSO", v10);
    ssoControllerQueue = v5->ssoControllerQueue;
    v5->ssoControllerQueue = v11;

    if (optionsCopy)
    {
      v13 = [optionsCopy objectForKeyedSubscript:@"applicationIdentifier"];
      [(SoftwareUpdateSSO *)v5 setAppIdentifier:v13];

      v14 = [optionsCopy objectForKeyedSubscript:@"environmentIdentifier"];
      [(SoftwareUpdateSSO *)v5 setEnvIdentifier:v14];

      v15 = [optionsCopy objectForKeyedSubscript:@"username"];
      [(SoftwareUpdateSSO *)v5 setUserName:v15];

      v16 = [optionsCopy objectForKeyedSubscript:@"interactivity"];

      if (v16)
      {
        v17 = [optionsCopy objectForKeyedSubscript:@"interactivity"];
        if (([v17 isEqualToString:@"0"] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"1") & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"2"))
        {
          [(SoftwareUpdateSSO *)v5 setInteractivityLevel:v17];
        }

        else
        {
          v22 = _MAClientLog(@"SSO");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v17;
            _os_log_impl(&dword_298222000, v22, OS_LOG_TYPE_ERROR, "Invalid interactivity level was passed in: %@", buf, 0xCu);
          }
        }
      }

      interactivityLevel = [(SoftwareUpdateSSO *)v5 interactivityLevel];

      if (!interactivityLevel)
      {
        v19 = _MAClientLog(@"SSO");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_298222000, v19, OS_LOG_TYPE_DEFAULT, "Using default interactivity level(0)", buf, 2u);
        }

        [(SoftwareUpdateSSO *)v5 setInteractivityLevel:@"0"];
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return v5;
}

- (void)invalidate
{
  authenticator = [(SoftwareUpdateSSO *)self authenticator];
  [authenticator setDelegate:0];

  [(SoftwareUpdateSSO *)self setAuthenticator:0];
}

- (void)setupAuthenticator
{
  authenticator = [(SoftwareUpdateSSO *)self authenticator];
  appIdentifier = [(SoftwareUpdateSSO *)self appIdentifier];
  [authenticator setAppIdentifier:appIdentifier];

  envIdentifier = [(SoftwareUpdateSSO *)self envIdentifier];
  [authenticator setEnvIdentifier:envIdentifier];

  userName = [(SoftwareUpdateSSO *)self userName];
  [authenticator setUsername:userName];

  interactivityLevel = [(SoftwareUpdateSSO *)self interactivityLevel];
  [authenticator setInteractivity:interactivityLevel];

  [authenticator setOtherParameters:0];
}

- (void)copyTokenFromAuthenticatorResponse:(id)response error:(id)error
{
  v45 = *MEMORY[0x29EDCA608];
  errorCopy = error;
  if (response)
  {
    v7 = [response mutableCopy];
    v8 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_298222000, v8, OS_LOG_TYPE_DEFAULT, "Successfully retrieved response from authenticator", buf, 2u);
    }

    v9 = objc_alloc_init(MEMORY[0x29EDBA110]);
    v10 = [v7 objectForKeyedSubscript:@"otherInfo"];
    [v9 setQuery:v10];

    queryItems = [v9 queryItems];
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 3221225472;
    v37[2] = __62__SoftwareUpdateSSO_copyTokenFromAuthenticatorResponse_error___block_invoke;
    v37[3] = &unk_29EE8D358;
    v12 = v7;
    v38 = v12;
    [queryItems enumerateObjectsUsingBlock:v37];

    authenticator = [(SoftwareUpdateSSO *)self authenticator];
    otherParameters = [authenticator otherParameters];
    v15 = [otherParameters objectForKeyedSubscript:@"DAWRequest"];
    stringValue = [MEMORY[0x29EDB8EB0] stringValue];
    v17 = [v15 isEqualToString:stringValue];

    v18 = _MAClientLog(@"SSO");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_298222000, v18, OS_LOG_TYPE_DEFAULT, "Attempt to extract DAW token from response", buf, 2u);
      }

      v20 = @"dawToken";
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_298222000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to extract ACMToken from response\n", buf, 2u);
      }

      v20 = @"token";
    }

    v24 = [v12 objectForKeyedSubscript:v20];
    dawToken = self->_dawToken;
    self->_dawToken = v24;

    userName = [(SoftwareUpdateSSO *)self userName];

    if (!userName)
    {
      v27 = [v12 objectForKeyedSubscript:@"username"];
      [(SoftwareUpdateSSO *)self setUserName:v27];
    }

    personID = [(SoftwareUpdateSSO *)self personID];

    if (!personID)
    {
      v29 = [v12 objectForKeyedSubscript:@"personId"];
      [(SoftwareUpdateSSO *)self setPersonID:v29];
    }

    v30 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      userName2 = [(SoftwareUpdateSSO *)self userName];
      personID2 = [(SoftwareUpdateSSO *)self personID];
      if (personID2)
      {
        personID3 = [(SoftwareUpdateSSO *)self personID];
      }

      else
      {
        personID3 = @"Unknown";
      }

      dawToken = [(SoftwareUpdateSSO *)self dawToken];
      v35 = @"Valid";
      *buf = 138412802;
      v40 = userName2;
      v41 = 2112;
      if (!dawToken)
      {
        v35 = @"Not present";
      }

      v42 = personID3;
      v43 = 2112;
      v44 = v35;
      _os_log_impl(&dword_298222000, v30, OS_LOG_TYPE_ERROR, "Username :%@ personID: %@ token:%@", buf, 0x20u);

      if (personID2)
      {
      }
    }

    v22 = v38;
LABEL_28:

    goto LABEL_29;
  }

  v21 = self->_dawToken;
  self->_dawToken = 0;

  if (errorCopy)
  {
    v22 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [errorCopy description];
      *buf = 138412290;
      v40 = v23;
      _os_log_impl(&dword_298222000, v22, OS_LOG_TYPE_ERROR, "Failed to retrieve SSO token: %@\n", buf, 0xCu);
    }

    goto LABEL_28;
  }

LABEL_29:
  dispatch_semaphore_signal(self->SoftwareUpdateSSOCompletionSemaphore);

  v36 = *MEMORY[0x29EDCA608];
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
  v2 = SecTaskCreateFromSelf(*MEMORY[0x29EDB8ED8]);
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
    v8 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_298222000, v8, OS_LOG_TYPE_ERROR, "Unable to create taskref for permission check\n", v10, 2u);
    }

    return 0;
  }

  return v7;
}

- (unint64_t)_completionDeadline
{
  interactivityLevel = [(SoftwareUpdateSSO *)self interactivityLevel];
  integerValue = [interactivityLevel integerValue];

  if (integerValue == 1)
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
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __33__SoftwareUpdateSSO_copyUserInfo__block_invoke;
  block[3] = &unk_29EE8D380;
  block[4] = self;
  dispatch_sync(ssoControllerQueue, block);
  v4 = objc_alloc_init(MEMORY[0x29EDB8E00]);
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
      v4 = _MAClientLog(@"SSO");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_298222000, v4, OS_LOG_TYPE_ERROR, "copyUserInfo called in unsupported environment\n", buf, 2u);
      }
    }
  }

  else
  {
    v3 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_298222000, v3, OS_LOG_TYPE_ERROR, "Process does not have permissions to read the AC user info\n", v5, 2u);
    }
  }
}

- (id)getDawToken
{
  dispatch_assert_queue_not_V2(self->ssoControllerQueue);
  ssoControllerQueue = self->ssoControllerQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __32__SoftwareUpdateSSO_getDawToken__block_invoke;
  block[3] = &unk_29EE8D380;
  block[4] = self;
  dispatch_sync(ssoControllerQueue, block);
  return self->_dawToken;
}

void __32__SoftwareUpdateSSO_getDawToken__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) callerHasRequiredEntitlements];
  [*(a1 + 32) setDawToken:0];
  if (v2)
  {
    [*(a1 + 32) setupAuthenticator];
    v11 = @"DAWRequest";
    v3 = [MEMORY[0x29EDB8EB0] stringValue];
    v12[0] = v3;
    v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
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
      v8 = _MAClientLog(@"SSO");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_298222000, v8, OS_LOG_TYPE_ERROR, "getDawToken called in unsupported environment\n", v10, 2u);
      }
    }
  }

  else
  {
    v7 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_298222000, v7, OS_LOG_TYPE_ERROR, "Process does not have permissions to read the sso token\n", v10, 2u);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (BOOL)ssoIsSupported
{
  authenticator = [(SoftwareUpdateSSO *)self authenticator];

  if (authenticator)
  {
    authenticator2 = [(SoftwareUpdateSSO *)self authenticator];
    authenticationSupported = [authenticator2 authenticationSupported];

    return authenticationSupported;
  }

  else
  {
    v7 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_298222000, v7, OS_LOG_TYPE_ERROR, "No authenticator object found. Assuming sso not supported\n", v8, 2u);
    }

    return 0;
  }
}

- (void)authenticator:(id)authenticator didCompleteWithResult:(id)result
{
  resultCopy = result;
  v6 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_DEFAULT, "INFO: ExtensibleSSOAuthentication callback returned success\n", v7, 2u);
  }

  [(SoftwareUpdateSSO *)self copyTokenFromAuthenticatorResponse:resultCopy error:0];
}

- (void)authenticator:(id)authenticator didCompleteWithError:(id)error
{
  v12 = *MEMORY[0x29EDCA608];
  errorCopy = error;
  v6 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [errorCopy description];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_ERROR, "ExtensibleSSOAuthentication callback returned error: %@\n", &v10, 0xCu);
  }

  v8 = [(SoftwareUpdateSSO *)self buildSSOError:1 underlying:errorCopy description:@"Call to SSOAuthenticator Authenticate failed"];
  [(SoftwareUpdateSSO *)self copyTokenFromAuthenticatorResponse:0 error:v8];

  v9 = *MEMORY[0x29EDCA608];
}

@end