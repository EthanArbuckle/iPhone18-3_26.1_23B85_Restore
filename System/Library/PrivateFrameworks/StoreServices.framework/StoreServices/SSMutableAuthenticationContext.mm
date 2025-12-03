@interface SSMutableAuthenticationContext
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAccountName:(id)name;
- (void)setAltDSID:(id)d;
- (void)setCancelButtonLabel:(id)label;
- (void)setClientIdentifierHeader:(id)header;
- (void)setForceDaemonAuthentication:(BOOL)authentication;
- (void)setHTTPHeaders:(id)headers;
- (void)setInitialPassword:(id)password;
- (void)setOkButtonLabel:(id)label;
- (void)setPassword:(id)password;
- (void)setPasswordEquivalentToken:(id)token;
- (void)setPreferredITunesStoreClient:(id)client;
- (void)setPromptTitle:(id)title;
- (void)setReasonDescription:(id)description;
- (void)setRequestParameters:(id)parameters;
- (void)setRequiredUniqueIdentifier:(id)identifier;
- (void)setSignupRequestParameters:(id)parameters;
- (void)setTouchIDContinueToken:(id)token;
- (void)setUserAgentComponents:(id)components;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
- (void)setValuesWithAccount:(id)account;
@end

@implementation SSMutableAuthenticationContext

- (id)copyWithZone:(_NSZone *)zone
{
  _initSSAuthenticationContext = [+[SSAuthenticationContext allocWithZone:](SSAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:_initSSAuthenticationContext withZone:zone];
  v6 = [(NSString *)self->super._logUUID copyWithZone:zone];
  v7 = _initSSAuthenticationContext[11];
  _initSSAuthenticationContext[11] = v6;

  return _initSSAuthenticationContext;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  _initSSAuthenticationContext = [(SSAuthenticationContext *)+[SSMutableAuthenticationContext allocWithZone:](SSMutableAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:_initSSAuthenticationContext withZone:zone];
  logUUID = [(SSAuthenticationContext *)self logUUID];
  v7 = _initSSAuthenticationContext[11];
  _initSSAuthenticationContext[11] = logUUID;

  return _initSSAuthenticationContext;
}

- (void)setAccountName:(id)name
{
  if (self->super._accountName != name)
  {
    v5 = [name copy];
    accountName = self->super._accountName;
    self->super._accountName = v5;
  }
}

- (void)setAltDSID:(id)d
{
  if (self->super._altDSID != d)
  {
    v5 = [d copy];
    altDSID = self->super._altDSID;
    self->super._altDSID = v5;
  }
}

- (void)setInitialPassword:(id)password
{
  v19 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  v5 = +[SSLogConfig sharedAccountsConfig];
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

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v18, v17, v18}];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_11:
  }

  [(SSMutableAuthenticationContext *)self setPasswordEquivalentToken:passwordCopy];
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  password = self->super._password;
  p_password = &self->super._password;
  if (password != passwordCopy)
  {
    v8 = passwordCopy;
    objc_storeStrong(p_password, password);
    passwordCopy = v8;
  }
}

- (void)setPasswordEquivalentToken:(id)token
{
  tokenCopy = token;
  passwordEquivalentToken = self->super._passwordEquivalentToken;
  p_passwordEquivalentToken = &self->super._passwordEquivalentToken;
  if (passwordEquivalentToken != tokenCopy)
  {
    v8 = tokenCopy;
    objc_storeStrong(p_passwordEquivalentToken, token);
    tokenCopy = v8;
  }
}

- (void)setPreferredITunesStoreClient:(id)client
{
  if (self->super._preferredITunesStoreClient != client)
  {
    v5 = [client copy];
    preferredITunesStoreClient = self->super._preferredITunesStoreClient;
    self->super._preferredITunesStoreClient = v5;
  }
}

- (void)setRequestParameters:(id)parameters
{
  if (self->super._requestParameters != parameters)
  {
    v5 = [parameters copy];
    requestParameters = self->super._requestParameters;
    self->super._requestParameters = v5;
  }
}

- (void)setRequiredUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requiredUniqueIdentifier = self->super._requiredUniqueIdentifier;
  p_requiredUniqueIdentifier = &self->super._requiredUniqueIdentifier;
  if (requiredUniqueIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    objc_storeStrong(p_requiredUniqueIdentifier, identifier);
    identifierCopy = v8;
  }
}

- (void)setSignupRequestParameters:(id)parameters
{
  if (self->super._signupRequestParameters != parameters)
  {
    v5 = [parameters copy];
    signupRequestParameters = self->super._signupRequestParameters;
    self->super._signupRequestParameters = v5;
  }
}

- (void)setTouchIDContinueToken:(id)token
{
  if (self->super._touchIDContinueToken != token)
  {
    v5 = [token copy];
    touchIDContinueToken = self->super._touchIDContinueToken;
    self->super._touchIDContinueToken = v5;
  }
}

- (void)setUserAgentComponents:(id)components
{
  componentsCopy = components;
  userAgentComponents = self->super._userAgentComponents;
  p_userAgentComponents = &self->super._userAgentComponents;
  if (userAgentComponents != componentsCopy)
  {
    v8 = componentsCopy;
    objc_storeStrong(p_userAgentComponents, components);
    componentsCopy = v8;
  }
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  v7 = [(NSDictionary *)self->super._httpHeaders mutableCopy];
  v8 = valueCopy;
  v9 = v7;
  if (valueCopy)
  {
    if (!v7)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = valueCopy;
      v9 = v10;
    }

    [v9 setObject:v8 forKey:fieldCopy];
  }

  else
  {
    [v7 removeObjectForKey:fieldCopy];
  }

  v11 = [v9 copy];
  httpHeaders = self->super._httpHeaders;
  self->super._httpHeaders = v11;
}

- (void)setCancelButtonLabel:(id)label
{
  if (self->super._cancelButtonLabel != label)
  {
    v5 = [label copy];
    cancelButtonLabel = self->super._cancelButtonLabel;
    self->super._cancelButtonLabel = v5;
  }
}

- (void)setClientIdentifierHeader:(id)header
{
  if (self->super._clientIdentifierHeader != header)
  {
    v5 = [header copy];
    clientIdentifierHeader = self->super._clientIdentifierHeader;
    self->super._clientIdentifierHeader = v5;
  }
}

- (void)setForceDaemonAuthentication:(BOOL)authentication
{
  if (self->super._forceDaemonAuthentication != authentication)
  {
    self->super._forceDaemonAuthentication = authentication;
  }
}

- (void)setHTTPHeaders:(id)headers
{
  headersCopy = headers;
  httpHeaders = self->super._httpHeaders;
  p_httpHeaders = &self->super._httpHeaders;
  if (httpHeaders != headersCopy)
  {
    v8 = headersCopy;
    objc_storeStrong(p_httpHeaders, headers);
    headersCopy = v8;
  }
}

- (void)setOkButtonLabel:(id)label
{
  if (self->super._okButtonLabel != label)
  {
    v5 = [label copy];
    okButtonLabel = self->super._okButtonLabel;
    self->super._okButtonLabel = v5;
  }
}

- (void)setPromptTitle:(id)title
{
  if (self->super._promptTitle != title)
  {
    v5 = [title copy];
    promptTitle = self->super._promptTitle;
    self->super._promptTitle = v5;
  }
}

- (void)setReasonDescription:(id)description
{
  if (self->super._reasonDescription != description)
  {
    v5 = [description copy];
    reasonDescription = self->super._reasonDescription;
    self->super._reasonDescription = v5;
  }
}

- (void)setValuesWithAccount:(id)account
{
  accountCopy = account;
  accountName = [accountCopy accountName];
  [(SSMutableAuthenticationContext *)self setAccountName:accountName];
  v5 = [accountName length];
  [(SSMutableAuthenticationContext *)self setAccountNameEditable:v5 == 0];
  canCreateNewAccount = [(SSAuthenticationContext *)self canCreateNewAccount];
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = canCreateNewAccount;
  }

  [(SSMutableAuthenticationContext *)self setCanCreateNewAccount:v7];
  -[SSMutableAuthenticationContext setAccountScope:](self, "setAccountScope:", [accountCopy accountScope]);
  uniqueIdentifier = [accountCopy uniqueIdentifier];
  [(SSMutableAuthenticationContext *)self setRequiredUniqueIdentifier:uniqueIdentifier];

  altDSID = [accountCopy altDSID];

  [(SSMutableAuthenticationContext *)self setAltDSID:altDSID];
}

@end