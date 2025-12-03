@interface AuthorizeMachineOperation
- (AuthorizeMachineOperation)initWithAuthorizationRequest:(id)request;
- (BOOL)_handleResponse:(id)response error:(id *)error;
- (BOOL)_runAuthentication:(id *)authentication;
- (BOOL)_runAuthorizationWithAuthentication:(BOOL)authentication error:(id *)error;
- (BOOL)allowSilentAuthentication;
- (BOOL)shouldAddKeysToKeyBag;
- (BOOL)shouldPromptForCredentials;
- (NSNumber)accountIdentifier;
- (NSNumber)familyMemberAccountIdentifier;
- (NSString)clientIdentifierHeader;
- (NSString)keybagPath;
- (NSString)reason;
- (NSString)userAgent;
- (SSURLConnectionResponse)response;
- (id)_accountIdentifier;
- (id)_newAuthenticationContext;
- (id)_newBodyDictionary;
- (id)_newMachineDataOperationWithResponse:(id)response;
- (id)_newURLOperation;
- (id)authorizationToken;
- (void)_run;
- (void)_setResponse:(id)response;
- (void)dealloc;
- (void)setAccountIdentifier:(id)identifier;
- (void)setAllowSilentAuthentication:(BOOL)authentication;
- (void)setAuthorizationToken:(id)token;
- (void)setClientIdentifierHeader:(id)header;
- (void)setFamilyMemberAccountIdentifier:(id)identifier;
- (void)setKeybagPath:(id)path;
- (void)setReason:(id)reason;
- (void)setShouldAddKeysToKeyBag:(BOOL)bag;
- (void)setShouldPromptForCredentials:(BOOL)credentials;
- (void)setUserAgent:(id)agent;
@end

@implementation AuthorizeMachineOperation

- (AuthorizeMachineOperation)initWithAuthorizationRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = AuthorizeMachineOperation;
  v4 = [(AuthorizeMachineOperation *)&v6 init];
  if (v4)
  {
    v4->_accountIdentifier = [request accountIdentifier];
    v4->_allowSilentAuthentication = [request allowSilentAuthentication];
    if ([request familyAccountIdentifier])
    {
      v4->_familyMemberAccountIdentifier = [request familyAccountIdentifier];
    }

    v4->_keybagPath = [request keybagPath];
    v4->_token = [request authorizationToken];
    v4->_reason = [request reason];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AuthorizeMachineOperation;
  [(AuthorizeMachineOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_accountIdentifier;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (BOOL)allowSilentAuthentication
{
  [(AuthorizeMachineOperation *)self lock];
  allowSilentAuthentication = self->_allowSilentAuthentication;
  [(AuthorizeMachineOperation *)self unlock];
  return allowSilentAuthentication;
}

- (id)authorizationToken
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_token;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSNumber)familyMemberAccountIdentifier
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_familyMemberAccountIdentifier;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSString)keybagPath
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = [(NSString *)self->_keybagPath copy];
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (NSString)reason
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_reason;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (SSURLConnectionResponse)response
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_response;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (void)setAccountIdentifier:(id)identifier
{
  [(AuthorizeMachineOperation *)self lock];
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier != identifier)
  {

    self->_accountIdentifier = [identifier copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setAllowSilentAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  [(AuthorizeMachineOperation *)self lock];
  if (self->_allowSilentAuthentication != authenticationCopy)
  {
    self->_allowSilentAuthentication = authenticationCopy;
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setAuthorizationToken:(id)token
{
  [(AuthorizeMachineOperation *)self lock];
  token = self->_token;
  if (token != token)
  {

    self->_token = token;
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  [(AuthorizeMachineOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setFamilyMemberAccountIdentifier:(id)identifier
{
  [(AuthorizeMachineOperation *)self lock];
  familyMemberAccountIdentifier = self->_familyMemberAccountIdentifier;
  if (familyMemberAccountIdentifier != identifier)
  {

    self->_familyMemberAccountIdentifier = [identifier copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setKeybagPath:(id)path
{
  [(AuthorizeMachineOperation *)self lock];
  keybagPath = self->_keybagPath;
  if (keybagPath != path)
  {

    self->_keybagPath = [path copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setReason:(id)reason
{
  [(AuthorizeMachineOperation *)self lock];
  reason = self->_reason;
  if (reason != reason)
  {

    self->_reason = [reason copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setShouldAddKeysToKeyBag:(BOOL)bag
{
  [(AuthorizeMachineOperation *)self lock];
  self->_shouldAddKeysToKeyBag = bag;

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setShouldPromptForCredentials:(BOOL)credentials
{
  [(AuthorizeMachineOperation *)self lock];
  self->_shouldPromptForCredentials = credentials;

  [(AuthorizeMachineOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  [(AuthorizeMachineOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(AuthorizeMachineOperation *)self unlock];
}

- (BOOL)shouldAddKeysToKeyBag
{
  [(AuthorizeMachineOperation *)self lock];
  shouldAddKeysToKeyBag = self->_shouldAddKeysToKeyBag;
  [(AuthorizeMachineOperation *)self unlock];
  return shouldAddKeysToKeyBag;
}

- (BOOL)shouldPromptForCredentials
{
  [(AuthorizeMachineOperation *)self lock];
  shouldPromptForCredentials = self->_shouldPromptForCredentials;
  [(AuthorizeMachineOperation *)self unlock];
  return shouldPromptForCredentials;
}

- (NSString)userAgent
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_userAgent;
  [(AuthorizeMachineOperation *)self unlock];

  return v3;
}

- (id)_accountIdentifier
{
  [(AuthorizeMachineOperation *)self lock];
  v3 = self->_accountIdentifier;
  [(AuthorizeMachineOperation *)self unlock];
  return v3;
}

- (BOOL)_handleResponse:(id)response error:(id *)error
{
  v7 = [response objectForKey:@"failureType"];
  if (!v7)
  {
    if ([(AuthorizeMachineOperation *)self shouldAddKeysToKeyBag])
    {
      v8 = [response objectForKey:@"keybag"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 length];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v12 = shouldLog | 2;
        }

        else
        {
          v12 = shouldLog;
        }

        if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v12 &= 2u;
        }

        if (v12)
        {
          v17 = 138412546;
          v18 = objc_opt_class();
          v19 = 2048;
          v20 = [v8 length];
          LODWORD(v16) = 22;
          v13 = _os_log_send_and_compose_impl();
          if (v13)
          {
            v14 = v13;
            [NSString stringWithCString:v13 encoding:4, &v17, v16];
            free(v14);
            SSFileLog();
          }
        }

        sub_1000B29AC(v8);
      }
    }

    v9 = 0;
LABEL_19:
    if (!error)
    {
      return v7 == 0;
    }

LABEL_20:
    *error = v9;
    return v7 == 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 integerValue];
  }

  v9 = SSError();
  if (error)
  {
    goto LABEL_20;
  }

  return v7 == 0;
}

- (id)_newAuthenticationContext
{
  accountIdentifier = [(AuthorizeMachineOperation *)self accountIdentifier];
  v4 = [SSMutableAuthenticationContext alloc];
  if (accountIdentifier)
  {
    v5 = [v4 initWithAccountIdentifier:accountIdentifier];
  }

  else
  {
    v5 = [v4 initWithAccount:{objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), "activeAccount")}];
  }

  v6 = v5;
  [v5 setAllowsSilentAuthentication:{-[AuthorizeMachineOperation allowSilentAuthentication](self, "allowSilentAuthentication")}];
  [v6 setClientIdentifierHeader:{-[AuthorizeMachineOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  userAgent = [(AuthorizeMachineOperation *)self userAgent];
  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  if ([+[SpringBoardUtility isScreenLocked] sharedInstance]
  {
    [v6 setPromptStyle:1000];
  }

  return v6;
}

- (id)_newBodyDictionary
{
  reason = [(AuthorizeMachineOperation *)self reason];
  _accountIdentifier = [(AuthorizeMachineOperation *)self _accountIdentifier];
  if (!_accountIdentifier)
  {
    goto LABEL_38;
  }

  v5 = _accountIdentifier;
  v6 = [(NSString *)reason isEqualToString:@"refetch"]? 8 : 1;
  keybagPath = [(AuthorizeMachineOperation *)self keybagPath];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (keybagPath)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v37 = 138412802;
      v38 = objc_opt_class();
      v39 = 2112;
      v40 = v5;
      v41 = 2112;
      v42 = keybagPath;
      LODWORD(v36) = 32;
      v35 = &v37;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v37, v36];
        free(v13);
        v35 = v14;
        SSFileLog();
      }
    }

    v15 = sub_1000B1B1C([v5 unsignedLongLongValue], v6, keybagPath);
  }

  else
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v37 = 138412546;
      v38 = objc_opt_class();
      v39 = 2112;
      v40 = v5;
      LODWORD(v36) = 22;
      v35 = &v37;
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        v20 = [NSString stringWithCString:v18 encoding:4, &v37, v36];
        free(v19);
        v35 = v20;
        SSFileLog();
      }
    }

    v15 = sub_1000B18E8([v5 unsignedLongLongValue], v6);
  }

  v21 = v15;
  if (v15)
  {
    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = v22;
    token = self->_token;
    if (token)
    {
      [v22 setObject:token forKey:@"token"];
    }

    [v23 setObject:v21 forKey:@"kbsync"];
    v25 = +[ISDevice sharedInstance];
    v26 = [-[ISDevice guid](v25 "guid")];
    if (v26)
    {
      [v23 setObject:v26 forKey:@"guid"];
    }

    deviceName = [(ISDevice *)v25 deviceName];
    if (deviceName)
    {
      [v23 setObject:deviceName forKey:@"machineName"];
    }

    if (reason)
    {
      [v23 setObject:reason forKey:@"reason"];
    }

    [v23 setObject:v5 forKey:@"ownerDsid"];
  }

  else
  {
LABEL_38:
    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v30 = shouldLog3 | 2;
    }

    else
    {
      v30 = shouldLog3;
    }

    if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v31 = objc_opt_class();
      v37 = 138412290;
      v38 = v31;
      LODWORD(v36) = 12;
      v32 = _os_log_send_and_compose_impl();
      if (v32)
      {
        v33 = v32;
        [NSString stringWithCString:v32 encoding:4, &v37, v36];
        free(v33);
        SSFileLog();
      }
    }

    v21 = 0;
    v23 = 0;
  }

  return v23;
}

- (id)_newMachineDataOperationWithResponse:(id)response
{
  v4 = [[SSMachineDataRequest alloc] initWithURLResponse:response];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  [v4 setAccountIdentifier:{-[AuthorizeMachineOperation accountIdentifier](self, "accountIdentifier")}];
  v6 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:v5];
  [v6 setUserAgent:{-[AuthorizeMachineOperation userAgent](self, "userAgent")}];

  return v6;
}

- (id)_newURLOperation
{
  _newBodyDictionary = [(AuthorizeMachineOperation *)self _newBodyDictionary];
  if (!_newBodyDictionary)
  {
    return 0;
  }

  v4 = _newBodyDictionary;
  v5 = [NSPropertyListSerialization dataWithPropertyList:_newBodyDictionary format:100 options:0 error:0];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(ISStoreURLOperation);
    [v7 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
    [v7 setMachineDataStyle:0];
    [v7 setUseUserSpecificURLBag:1];
    _newAuthenticationContext = [(AuthorizeMachineOperation *)self _newAuthenticationContext];
    [v7 setAuthenticationContext:_newAuthenticationContext];

    v9 = objc_alloc_init(SSMutableURLRequestProperties);
    [v9 setAllowedRetryCount:0];
    [v9 setClientIdentifier:{-[AuthorizeMachineOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
    [v9 setHTTPBody:v6];
    [v9 setHTTPMethod:@"POST"];
    [v9 setURLBagKey:@"authorizeMachine"];
    [v9 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    userAgent = [(AuthorizeMachineOperation *)self userAgent];
    [v9 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
    [(AuthorizeMachineOperation *)self lock];
    familyMemberAccountIdentifier = self->_familyMemberAccountIdentifier;
    if (familyMemberAccountIdentifier)
    {
      [v9 setValue:-[NSNumber stringValue](familyMemberAccountIdentifier forHTTPHeaderField:{"stringValue"), @"X-FM-Dsid"}];
    }

    mdSyncState = self->_mdSyncState;
    if (mdSyncState)
    {
      [v9 setValue:mdSyncState forHTTPHeaderField:SSHTTPHeaderXAppleMDS];
    }

    [(AuthorizeMachineOperation *)self unlock];
    if ([(NSString *)[(AuthorizeMachineOperation *)self reason] isEqualToString:@"refetch"])
    {
      [v9 setTimeoutInterval:15.0];
    }

    [(AuthorizeMachineOperation *)self accountIdentifier];
    MachineDataAddHeadersToRequestProperties();
    [v7 setRequestProperties:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_run
{
  v32 = 0;
  accountIdentifier = [(AuthorizeMachineOperation *)self accountIdentifier];
  if (accountIdentifier)
  {
    v4 = accountIdentifier;
    v31 = 0;
    authorizationToken = [(AuthorizeMachineOperation *)self authorizationToken];
    if (authorizationToken)
    {
      v6 = authorizationToken;
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v30 = 0;
    v6 = sub_1000B249C([(NSNumber *)v4 longLongValue], &v31, &v30);
    if (v6)
    {
      [(AuthorizeMachineOperation *)self setAuthorizationToken:v6];
      if ((v31 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v31 = 1;
    }

    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v33 = 138412802;
      v34 = v17;
      v35 = 2112;
      v36 = v4;
      v37 = 2112;
      v38 = v30;
      LODWORD(v29) = 32;
      v28 = &v33;
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        v20 = [NSString stringWithCString:v18 encoding:4, &v33, v29];
        free(v19);
        v28 = v20;
        SSFileLog();
      }
    }

    if (![(AuthorizeMachineOperation *)self shouldPromptForCredentials])
    {
      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v23 = shouldLog2 | 2;
      }

      else
      {
        v23 = shouldLog2;
      }

      if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v23 &= 2u;
      }

      if (v23)
      {
        v24 = objc_opt_class();
        v33 = 138412546;
        v34 = v24;
        v35 = 2112;
        v36 = v4;
        LODWORD(v29) = 22;
        v28 = &v33;
        v25 = _os_log_send_and_compose_impl();
        if (v25)
        {
          v26 = v25;
          v27 = [NSString stringWithCString:v25 encoding:4, &v33, v29];
          free(v26);
          v28 = v27;
          SSFileLog();
        }
      }

      v8 = 0;
      v32 = v30;
      goto LABEL_6;
    }

    if (![(AuthorizeMachineOperation *)self _runAuthentication:&v32])
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = v31;
LABEL_5:
    v8 = [(AuthorizeMachineOperation *)self _runAuthorizationWithAuthentication:v7 & 1 error:&v32];
LABEL_6:

    v9 = v32;
    goto LABEL_22;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = shouldLog3 | 2;
  }

  else
  {
    v12 = shouldLog3;
  }

  if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v33 = 138412290;
    v34 = objc_opt_class();
    LODWORD(v29) = 12;
    v28 = &v33;
    v8 = _os_log_send_and_compose_impl();
    if (!v8)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v13 = [NSString stringWithCString:v8 encoding:4, &v33, v29];
    free(v8);
    v28 = v13;
    SSFileLog();
  }

  v9 = 0;
  v8 = 0;
LABEL_22:
  [(AuthorizeMachineOperation *)self setError:v9, v28];
  [(AuthorizeMachineOperation *)self setSuccess:v8];
}

- (BOOL)_runAuthentication:(id *)authentication
{
  v5 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v18 = 138543362;
    v19 = objc_opt_class();
    LODWORD(v17) = 12;
    v16 = &v18;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, &v18, v17];
      free(v9);
      v16 = v10;
      SSFileLog();
    }
  }

  _newAuthenticationContext = [(AuthorizeMachineOperation *)self _newAuthenticationContext];
  v12 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:_newAuthenticationContext];
  v13 = [v12 run];
  error = [v13 error];
  if (!error)
  {
    -[AuthorizeMachineOperation setAccountIdentifier:](self, "setAccountIdentifier:", [objc_msgSend(v13 "authenticatedAccount")]);
  }

  if (authentication && error)
  {
    *authentication = 0;
  }

  return error == 0;
}

- (BOOL)_runAuthorizationWithAuthentication:(BOOL)authentication error:(id *)error
{
  authenticationCopy = authentication;
  v34 = 0;
  while (1)
  {
    _newURLOperation = [(AuthorizeMachineOperation *)self _newURLOperation];
    if (!_newURLOperation)
    {
      LOBYTE(self) = 0;
      v34 = SSError();
      goto LABEL_26;
    }

    v7 = _newURLOperation;
    [_newURLOperation setNeedsAuthentication:authenticationCopy];
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v10 = objc_opt_class();
      token = self->_token;
      v35 = 138412802;
      v36 = v10;
      v37 = 2112;
      v38 = token;
      v39 = 1024;
      v40 = authenticationCopy;
      LODWORD(v32) = 28;
      v31 = &v35;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v35, v32];
        free(v13);
        v31 = v14;
        SSFileLog();
      }
    }

    if (![(AuthorizeMachineOperation *)self runSubOperation:v7 returningError:&v34, v31])
    {
      goto LABEL_39;
    }

    v15 = [objc_msgSend(v7 "dataProvider")];
    if ([(AuthorizeMachineOperation *)self _handleResponse:v15 error:&v34])
    {
      break;
    }

    v16 = -[AuthorizeMachineOperation _newMachineDataOperationWithResponse:](self, "_newMachineDataOperationWithResponse:", [v7 response]);
    if (!v16)
    {
      goto LABEL_39;
    }

    v17 = v16;
    v18 = [(AuthorizeMachineOperation *)self runSubOperation:v16 returningError:0];
    syncState = [v17 syncState];
    [(AuthorizeMachineOperation *)self lock];
    mdRetryCount = self->_mdRetryCount;
    self->_mdRetryCount = mdRetryCount + 1;

    self->_mdSyncState = [syncState copy];
    [(AuthorizeMachineOperation *)self unlock];
    if (mdRetryCount > 0)
    {

LABEL_25:
      LOBYTE(self) = 0;
LABEL_26:
      errorCopy3 = error;
      if (!error)
      {
        return self;
      }

      goto LABEL_42;
    }

    if (syncState)
    {
      v21 = 1;
    }

    else
    {
      v21 = v18;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v22 = [NSPropertyListSerialization dataWithPropertyList:v15 format:100 options:0 error:&v34];
  if (v22)
  {
    v23 = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v7 bodyData:{"response"), v22}];
    [(AuthorizeMachineOperation *)self _setResponse:v23];

    LOBYTE(self) = 1;
    goto LABEL_40;
  }

  v25 = +[SSLogConfig sharedDaemonConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = shouldLog2 | 2;
  }

  else
  {
    v27 = shouldLog2;
  }

  if (os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 & 2;
  }

  if (v28)
  {
    v29 = objc_opt_class();
    v35 = 138412546;
    v36 = v29;
    v37 = 2112;
    v38 = v34;
    LODWORD(v32) = 22;
    self = _os_log_send_and_compose_impl();
    errorCopy3 = error;
    if (self)
    {
      [NSString stringWithCString:self encoding:4, &v35, v32];
      free(self);
      SSFileLog();
      LOBYTE(self) = 0;
    }
  }

  else
  {
LABEL_39:
    LOBYTE(self) = 0;
LABEL_40:
    errorCopy3 = error;
  }

  if (!errorCopy3)
  {
    return self;
  }

LABEL_42:
  if ((self & 1) == 0)
  {
    *errorCopy3 = v34;
  }

  return self;
}

- (void)_setResponse:(id)response
{
  [(AuthorizeMachineOperation *)self lock];
  response = self->_response;
  if (response != response)
  {

    self->_response = response;
  }

  [(AuthorizeMachineOperation *)self unlock];
}

@end