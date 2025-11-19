@interface SSMutableAuthenticationContext
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAccountName:(id)a3;
- (void)setAltDSID:(id)a3;
- (void)setCancelButtonLabel:(id)a3;
- (void)setClientIdentifierHeader:(id)a3;
- (void)setForceDaemonAuthentication:(BOOL)a3;
- (void)setHTTPHeaders:(id)a3;
- (void)setInitialPassword:(id)a3;
- (void)setOkButtonLabel:(id)a3;
- (void)setPassword:(id)a3;
- (void)setPasswordEquivalentToken:(id)a3;
- (void)setPreferredITunesStoreClient:(id)a3;
- (void)setPromptTitle:(id)a3;
- (void)setReasonDescription:(id)a3;
- (void)setRequestParameters:(id)a3;
- (void)setRequiredUniqueIdentifier:(id)a3;
- (void)setSignupRequestParameters:(id)a3;
- (void)setTouchIDContinueToken:(id)a3;
- (void)setUserAgentComponents:(id)a3;
- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4;
- (void)setValuesWithAccount:(id)a3;
@end

@implementation SSMutableAuthenticationContext

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[SSAuthenticationContext allocWithZone:](SSAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:v5 withZone:a3];
  v6 = [(NSString *)self->super._logUUID copyWithZone:a3];
  v7 = v5[11];
  v5[11] = v6;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(SSAuthenticationContext *)+[SSMutableAuthenticationContext allocWithZone:](SSMutableAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:v5 withZone:a3];
  v6 = [(SSAuthenticationContext *)self logUUID];
  v7 = v5[11];
  v5[11] = v6;

  return v5;
}

- (void)setAccountName:(id)a3
{
  if (self->super._accountName != a3)
  {
    v5 = [a3 copy];
    accountName = self->super._accountName;
    self->super._accountName = v5;
  }
}

- (void)setAltDSID:(id)a3
{
  if (self->super._altDSID != a3)
  {
    v5 = [a3 copy];
    altDSID = self->super._altDSID;
    self->super._altDSID = v5;
  }
}

- (void)setInitialPassword:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[SSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  LODWORD(v18) = 138412290;
  *(&v18 + 4) = objc_opt_class();
  v9 = *(&v18 + 4);
  LODWORD(v17) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v18, v17, v18}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
LABEL_11:
  }

  [(SSMutableAuthenticationContext *)self setPasswordEquivalentToken:v4];
}

- (void)setPassword:(id)a3
{
  v5 = a3;
  password = self->super._password;
  p_password = &self->super._password;
  if (password != v5)
  {
    v8 = v5;
    objc_storeStrong(p_password, a3);
    v5 = v8;
  }
}

- (void)setPasswordEquivalentToken:(id)a3
{
  v5 = a3;
  passwordEquivalentToken = self->super._passwordEquivalentToken;
  p_passwordEquivalentToken = &self->super._passwordEquivalentToken;
  if (passwordEquivalentToken != v5)
  {
    v8 = v5;
    objc_storeStrong(p_passwordEquivalentToken, a3);
    v5 = v8;
  }
}

- (void)setPreferredITunesStoreClient:(id)a3
{
  if (self->super._preferredITunesStoreClient != a3)
  {
    v5 = [a3 copy];
    preferredITunesStoreClient = self->super._preferredITunesStoreClient;
    self->super._preferredITunesStoreClient = v5;
  }
}

- (void)setRequestParameters:(id)a3
{
  if (self->super._requestParameters != a3)
  {
    v5 = [a3 copy];
    requestParameters = self->super._requestParameters;
    self->super._requestParameters = v5;
  }
}

- (void)setRequiredUniqueIdentifier:(id)a3
{
  v5 = a3;
  requiredUniqueIdentifier = self->super._requiredUniqueIdentifier;
  p_requiredUniqueIdentifier = &self->super._requiredUniqueIdentifier;
  if (requiredUniqueIdentifier != v5)
  {
    v8 = v5;
    objc_storeStrong(p_requiredUniqueIdentifier, a3);
    v5 = v8;
  }
}

- (void)setSignupRequestParameters:(id)a3
{
  if (self->super._signupRequestParameters != a3)
  {
    v5 = [a3 copy];
    signupRequestParameters = self->super._signupRequestParameters;
    self->super._signupRequestParameters = v5;
  }
}

- (void)setTouchIDContinueToken:(id)a3
{
  if (self->super._touchIDContinueToken != a3)
  {
    v5 = [a3 copy];
    touchIDContinueToken = self->super._touchIDContinueToken;
    self->super._touchIDContinueToken = v5;
  }
}

- (void)setUserAgentComponents:(id)a3
{
  v5 = a3;
  userAgentComponents = self->super._userAgentComponents;
  p_userAgentComponents = &self->super._userAgentComponents;
  if (userAgentComponents != v5)
  {
    v8 = v5;
    objc_storeStrong(p_userAgentComponents, a3);
    v5 = v8;
  }
}

- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NSDictionary *)self->super._httpHeaders mutableCopy];
  v8 = v13;
  v9 = v7;
  if (v13)
  {
    if (!v7)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = v13;
      v9 = v10;
    }

    [v9 setObject:v8 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }

  v11 = [v9 copy];
  httpHeaders = self->super._httpHeaders;
  self->super._httpHeaders = v11;
}

- (void)setCancelButtonLabel:(id)a3
{
  if (self->super._cancelButtonLabel != a3)
  {
    v5 = [a3 copy];
    cancelButtonLabel = self->super._cancelButtonLabel;
    self->super._cancelButtonLabel = v5;
  }
}

- (void)setClientIdentifierHeader:(id)a3
{
  if (self->super._clientIdentifierHeader != a3)
  {
    v5 = [a3 copy];
    clientIdentifierHeader = self->super._clientIdentifierHeader;
    self->super._clientIdentifierHeader = v5;
  }
}

- (void)setForceDaemonAuthentication:(BOOL)a3
{
  if (self->super._forceDaemonAuthentication != a3)
  {
    self->super._forceDaemonAuthentication = a3;
  }
}

- (void)setHTTPHeaders:(id)a3
{
  v5 = a3;
  httpHeaders = self->super._httpHeaders;
  p_httpHeaders = &self->super._httpHeaders;
  if (httpHeaders != v5)
  {
    v8 = v5;
    objc_storeStrong(p_httpHeaders, a3);
    v5 = v8;
  }
}

- (void)setOkButtonLabel:(id)a3
{
  if (self->super._okButtonLabel != a3)
  {
    v5 = [a3 copy];
    okButtonLabel = self->super._okButtonLabel;
    self->super._okButtonLabel = v5;
  }
}

- (void)setPromptTitle:(id)a3
{
  if (self->super._promptTitle != a3)
  {
    v5 = [a3 copy];
    promptTitle = self->super._promptTitle;
    self->super._promptTitle = v5;
  }
}

- (void)setReasonDescription:(id)a3
{
  if (self->super._reasonDescription != a3)
  {
    v5 = [a3 copy];
    reasonDescription = self->super._reasonDescription;
    self->super._reasonDescription = v5;
  }
}

- (void)setValuesWithAccount:(id)a3
{
  v4 = a3;
  v10 = [v4 accountName];
  [(SSMutableAuthenticationContext *)self setAccountName:v10];
  v5 = [v10 length];
  [(SSMutableAuthenticationContext *)self setAccountNameEditable:v5 == 0];
  v6 = [(SSAuthenticationContext *)self canCreateNewAccount];
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [(SSMutableAuthenticationContext *)self setCanCreateNewAccount:v7];
  -[SSMutableAuthenticationContext setAccountScope:](self, "setAccountScope:", [v4 accountScope]);
  v8 = [v4 uniqueIdentifier];
  [(SSMutableAuthenticationContext *)self setRequiredUniqueIdentifier:v8];

  v9 = [v4 altDSID];

  [(SSMutableAuthenticationContext *)self setAltDSID:v9];
}

@end