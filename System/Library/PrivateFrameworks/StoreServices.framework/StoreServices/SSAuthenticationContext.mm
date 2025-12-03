@interface SSAuthenticationContext
+ (id)contextForSignIn;
- (NSString)description;
- (SSAuthenticationContext)initWithAccount:(id)account;
- (SSAuthenticationContext)initWithAccountIdentifier:(id)identifier;
- (SSAuthenticationContext)initWithXPCEncoding:(id)encoding;
- (SSURLBagContext)URLBagContext;
- (id)_initSSAuthenticationContext;
- (id)accountStoreOptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_copyIvarsToCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation SSAuthenticationContext

- (id)_initSSAuthenticationContext
{
  v7.receiver = self;
  v7.super_class = SSAuthenticationContext;
  v2 = [(SSAuthenticationContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accountNameEditable = 1;
    v2->_allowsRetry = 1;
    v2->_allowsSilentAuthentication = +[SSDevice deviceIsAppleWatch];
    v3->_canCreateNewAccount = [(SSAuthenticationContext *)v3 _allowCreateAccount];
    v3->_canSetActiveAccount = 1;
    v4 = AMSSetLogKeyIfNeeded();
    logUUID = v3->_logUUID;
    v3->_logUUID = v4;

    v3->_shouldPersonalizeResponseActions = 1;
  }

  return v3;
}

- (SSAuthenticationContext)initWithAccount:(id)account
{
  accountCopy = account;
  _initSSAuthenticationContext = [(SSAuthenticationContext *)self _initSSAuthenticationContext];
  if (_initSSAuthenticationContext)
  {
    accountName = [accountCopy accountName];
    accountName = _initSSAuthenticationContext->_accountName;
    _initSSAuthenticationContext->_accountName = accountName;

    _initSSAuthenticationContext->_accountNameEditable = [(NSString *)_initSSAuthenticationContext->_accountName length]== 0;
    _initSSAuthenticationContext->_accountScope = [accountCopy accountScope];
    altDSID = [accountCopy altDSID];
    altDSID = _initSSAuthenticationContext->_altDSID;
    _initSSAuthenticationContext->_altDSID = altDSID;

    v10 = _initSSAuthenticationContext->_canCreateNewAccount && _initSSAuthenticationContext->_accountNameEditable;
    _initSSAuthenticationContext->_canCreateNewAccount = v10;
    uniqueIdentifier = [accountCopy uniqueIdentifier];
    requiredUniqueIdentifier = _initSSAuthenticationContext->_requiredUniqueIdentifier;
    _initSSAuthenticationContext->_requiredUniqueIdentifier = uniqueIdentifier;
  }

  return _initSSAuthenticationContext;
}

- (SSAuthenticationContext)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[SSAccountStore defaultStore];
  if (identifierCopy && [identifierCopy integerValue])
  {
    activeAccount = [v6 accountWithUniqueIdentifier:identifierCopy];
  }

  else
  {
    activeAccount = [v6 activeAccount];
  }

  v8 = activeAccount;
  if (activeAccount)
  {
    v9 = [(SSAuthenticationContext *)self initWithAccount:activeAccount];
  }

  else
  {
    _initSSAuthenticationContext = [(SSAuthenticationContext *)self _initSSAuthenticationContext];
    v9 = _initSSAuthenticationContext;
    if (_initSSAuthenticationContext)
    {
      _initSSAuthenticationContext->_accountNameEditable = 1;
      _initSSAuthenticationContext->_canCreateNewAccount &= identifierCopy == 0;
      objc_storeStrong(&_initSSAuthenticationContext->_requiredUniqueIdentifier, identifier);
    }
  }

  return v9;
}

+ (id)contextForSignIn
{
  v2 = objc_alloc_init(self);
  v2[18] = 1;
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"signIn", @"why", 0}];
  v4 = v2[20];
  v2[20] = v3;

  return v2;
}

- (id)accountStoreOptions
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAuthenticationContext allowsSilentAuthentication](self, "allowsSilentAuthentication")}];
  [v4 setObject:v5 forKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];

  v6 = MEMORY[0x1E696AD98];
  password = [(SSAuthenticationContext *)self password];
  if (password)
  {
    v8 = 1;
  }

  else
  {
    passwordEquivalentToken = [(SSAuthenticationContext *)self passwordEquivalentToken];
    v8 = passwordEquivalentToken != 0;
  }

  v9 = [v6 numberWithInt:v8];
  [v4 setObject:v9 forKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];

  if (!password)
  {
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAuthenticationContext canCreateNewAccount](self, "canCreateNewAccount")}];
  [v4 setObject:v10 forKeyedSubscript:@"SSAccountStoreAuthKitCanCreateNewAccountKey"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAuthenticationContext canSetActiveAccount](self, "canSetActiveAccount")}];
  [v4 setObject:v11 forKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[SSAuthenticationContext promptStyle](self, "promptStyle") == 1000}];
  [v4 setObject:v12 forKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAuthenticationContext shouldSuppressDialogs](self, "shouldSuppressDialogs")}];
  [v4 setObject:v13 forKeyedSubscript:@"SSAccountStoreAuthKitSuppressServerDialogs"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAuthenticationContext shouldIgnoreAccountConversion](self, "shouldIgnoreAccountConversion")}];
  [v4 setObject:v14 forKeyedSubscript:@"SSAccountStoreIgnoreAccountConversionKey"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SSAuthenticationContext accountScope](self, "accountScope")}];
  [v4 setObject:v15 forKeyedSubscript:SSVerifyCredentialsAccountScope];

  reasonDescription = [(SSAuthenticationContext *)self reasonDescription];
  v17 = [reasonDescription length];

  if (v17)
  {
    reasonDescription2 = [(SSAuthenticationContext *)self reasonDescription];
    [v4 setObject:reasonDescription2 forKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];
  }

  promptTitle = [(SSAuthenticationContext *)self promptTitle];
  v20 = [promptTitle length];

  if (v20)
  {
    promptTitle2 = [(SSAuthenticationContext *)self promptTitle];
    [v4 setObject:promptTitle2 forKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];
  }

  okButtonLabel = [(SSAuthenticationContext *)self okButtonLabel];
  v23 = [okButtonLabel length];

  if (v23)
  {
    okButtonLabel2 = [(SSAuthenticationContext *)self okButtonLabel];
    [v4 setObject:okButtonLabel2 forKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];
  }

  requiredUniqueIdentifier = [(SSAuthenticationContext *)self requiredUniqueIdentifier];

  if (requiredUniqueIdentifier)
  {
    requiredUniqueIdentifier2 = [(SSAuthenticationContext *)self requiredUniqueIdentifier];
    [v4 setObject:requiredUniqueIdentifier2 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountDSIDKey"];
  }

  signupRequestParameters = [(SSAuthenticationContext *)self signupRequestParameters];

  if (signupRequestParameters)
  {
    signupRequestParameters2 = [(SSAuthenticationContext *)self signupRequestParameters];
    [v4 setObject:signupRequestParameters2 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  }

  preferredITunesStoreClient = [(SSAuthenticationContext *)self preferredITunesStoreClient];

  if (preferredITunesStoreClient)
  {
    preferredITunesStoreClient2 = [(SSAuthenticationContext *)self preferredITunesStoreClient];
    [v4 setObject:preferredITunesStoreClient2 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountTargetIdentifierKey"];
  }

  hTTPHeaders = [(SSAuthenticationContext *)self HTTPHeaders];
  v32 = [hTTPHeaders count];

  if (v32)
  {
    hTTPHeaders2 = [(SSAuthenticationContext *)self HTTPHeaders];
    v34 = [hTTPHeaders2 mutableCopy];

    [v34 removeObjectForKey:@"User-Agent"];
    v35 = [v34 copy];
    [v4 setObject:v35 forKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];
  }

  hTTPHeaders3 = [(SSAuthenticationContext *)self HTTPHeaders];
  v37 = [hTTPHeaders3 count];

  if (v37)
  {
    hTTPHeaders4 = [(SSAuthenticationContext *)self HTTPHeaders];
    v39 = [hTTPHeaders4 mutableCopy];

    [v39 removeObjectForKey:@"User-Agent"];
    v40 = [v39 copy];
    [v4 setObject:v40 forKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];
  }

  hTTPHeaders5 = [(SSAuthenticationContext *)self HTTPHeaders];
  v42 = [hTTPHeaders5 objectForKeyedSubscript:@"User-Agent"];

  if ([v42 length])
  {
    userAgent = v42;
  }

  else
  {
    v44 = +[SSDevice currentDevice];
    userAgent = [v44 userAgent];

    v42 = userAgent;
    if (![userAgent length])
    {
      goto LABEL_26;
    }
  }

  [v4 setObject:v42 forKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
LABEL_26:
  userAgentComponents = [(SSAuthenticationContext *)self userAgentComponents];
  v46 = [userAgentComponents count];

  if (v46)
  {
    userAgentComponents2 = [(SSAuthenticationContext *)self userAgentComponents];
    [v4 setObject:userAgentComponents2 forKeyedSubscript:@"SSAccountStoreAuthKitUserAgentSuffixesKey"];
  }

  v48 = [v4 copy];

  return v48;
}

- (SSURLBagContext)URLBagContext
{
  v3 = [SSURLBagContext contextWithBagType:SSURLBagTypeForAccountScope([(SSAuthenticationContext *)self accountScope])];
  [v3 setAllowsBootstrapCellularData:{-[SSAuthenticationContext allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  hTTPHeaders = [(SSAuthenticationContext *)self HTTPHeaders];
  v5 = [hTTPHeaders objectForKey:@"User-Agent"];

  if (v5)
  {
    [v3 setValue:v5 forHTTPHeaderField:@"User-Agent"];
  }

  return v3;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accountName);
  xpc_dictionary_set_BOOL(v3, "1", self->_accountNameEditable);
  xpc_dictionary_set_int64(v3, "2", self->_accountScope);
  xpc_dictionary_set_BOOL(v3, "21", self->_allowsBioAuthentication);
  xpc_dictionary_set_BOOL(v3, "23", self->_allowsBootstrapCellularData);
  xpc_dictionary_set_BOOL(v3, "19", self->_allowsRetry);
  xpc_dictionary_set_BOOL(v3, "30", self->_allowsSilentAuthentication);
  SSXPCDictionarySetObject(v3, "26", self->_altDSID);
  SSXPCDictionarySetObject(v3, "27", self->_cancelButtonLabel);
  xpc_dictionary_set_BOOL(v3, "3", self->_canCreateNewAccount);
  xpc_dictionary_set_BOOL(v3, "4", self->_canSetActiveAccount);
  SSXPCDictionarySetObject(v3, "5", self->_clientIdentifierHeader);
  xpc_dictionary_set_BOOL(v3, "25", self->_displaysOnLockScreen);
  xpc_dictionary_set_BOOL(v3, "33", self->_forceDaemonAuthentication);
  SSXPCDictionarySetObject(v3, "7", self->_httpHeaders);
  SSXPCDictionarySetObject(v3, "34", self->_logUUID);
  SSXPCDictionarySetObject(v3, "28", self->_okButtonLabel);
  SSXPCDictionarySetObject(v3, "18", self->_password);
  SSXPCDictionarySetObject(v3, "31", self->_passwordEquivalentToken);
  xpc_dictionary_set_BOOL(v3, "20", self->_persistsAcrossDeviceLock);
  SSXPCDictionarySetObject(v3, "8", self->_preferredITunesStoreClient);
  xpc_dictionary_set_int64(v3, "9", self->_promptStyle);
  SSXPCDictionarySetObject(v3, "29", self->_promptTitle);
  xpc_dictionary_set_BOOL(v3, "22", self->_persistsPasswordFallback);
  SSXPCDictionarySetObject(v3, "24", self->_reasonDescription);
  SSXPCDictionarySetObject(v3, "10", self->_requestParameters);
  SSXPCDictionarySetObject(v3, "11", self->_requiredUniqueIdentifier);
  xpc_dictionary_set_BOOL(v3, "19", self->_shouldCreateNewSession);
  xpc_dictionary_set_BOOL(v3, "12", self->_shouldFollowAccountButtons);
  xpc_dictionary_set_BOOL(v3, "16", self->_shouldIgnoreProtocol);
  xpc_dictionary_set_BOOL(v3, "35", self->_shouldPersonalizeResponseActions);
  xpc_dictionary_set_BOOL(v3, "17", self->_shouldSuppressDialogs);
  SSXPCDictionarySetObject(v3, "13", self->_signupRequestParameters);
  xpc_dictionary_set_int64(v3, "14", self->_tokenType);
  SSXPCDictionarySetObject(v3, "32", self->_touchIDContinueToken);
  SSXPCDictionarySetObject(v3, "15", self->_userAgentComponents);
  xpc_dictionary_set_BOOL(v3, "36", self->_shouldIgnoreAccountConversion);
  return v3;
}

- (SSAuthenticationContext)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v59.receiver = self;
    v59.super_class = SSAuthenticationContext;
    v6 = [(SSAuthenticationContext *)&v59 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      accountName = v6->_accountName;
      v6->_accountName = v9;

      v6->_accountNameEditable = xpc_dictionary_get_BOOL(v5, "1");
      v6->_accountScope = xpc_dictionary_get_BOOL(v5, "2");
      v6->_allowsBioAuthentication = xpc_dictionary_get_BOOL(v5, "21");
      v6->_allowsBootstrapCellularData = xpc_dictionary_get_BOOL(v5, "23");
      v6->_allowsRetry = xpc_dictionary_get_BOOL(v5, "19");
      v6->_allowsSilentAuthentication = xpc_dictionary_get_BOOL(v5, "30");
      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "26", v11);
      altDSID = v6->_altDSID;
      v6->_altDSID = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "27", v14);
      cancelButtonLabel = v6->_cancelButtonLabel;
      v6->_cancelButtonLabel = v15;

      v6->_canCreateNewAccount = xpc_dictionary_get_BOOL(v5, "3");
      v6->_canSetActiveAccount = xpc_dictionary_get_BOOL(v5, "4");
      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "5", v17);
      clientIdentifierHeader = v6->_clientIdentifierHeader;
      v6->_clientIdentifierHeader = v18;

      v6->_displaysOnLockScreen = xpc_dictionary_get_BOOL(v5, "25");
      v20 = objc_opt_class();
      v21 = SSXPCDictionaryCopyObjectWithClass(v5, "7", v20);
      httpHeaders = v6->_httpHeaders;
      v6->_httpHeaders = v21;

      v23 = objc_opt_class();
      v24 = SSXPCDictionaryCopyObjectWithClass(v5, "34", v23);
      logUUID = v6->_logUUID;
      v6->_logUUID = v24;

      v26 = objc_opt_class();
      v27 = SSXPCDictionaryCopyObjectWithClass(v5, "28", v26);
      okButtonLabel = v6->_okButtonLabel;
      v6->_okButtonLabel = v27;

      v29 = objc_opt_class();
      v30 = SSXPCDictionaryCopyObjectWithClass(v5, "18", v29);
      password = v6->_password;
      v6->_password = v30;

      v32 = objc_opt_class();
      v33 = SSXPCDictionaryCopyObjectWithClass(v5, "31", v32);
      passwordEquivalentToken = v6->_passwordEquivalentToken;
      v6->_passwordEquivalentToken = v33;

      v6->_persistsAcrossDeviceLock = xpc_dictionary_get_BOOL(v5, "20");
      v35 = objc_opt_class();
      v36 = SSXPCDictionaryCopyObjectWithClass(v5, "8", v35);
      preferredITunesStoreClient = v6->_preferredITunesStoreClient;
      v6->_preferredITunesStoreClient = v36;

      v6->_promptStyle = xpc_dictionary_get_int64(v5, "9");
      v38 = objc_opt_class();
      v39 = SSXPCDictionaryCopyObjectWithClass(v5, "29", v38);
      promptTitle = v6->_promptTitle;
      v6->_promptTitle = v39;

      v6->_persistsPasswordFallback = xpc_dictionary_get_BOOL(v5, "22");
      v41 = objc_opt_class();
      v42 = SSXPCDictionaryCopyObjectWithClass(v5, "24", v41);
      reasonDescription = v6->_reasonDescription;
      v6->_reasonDescription = v42;

      v44 = objc_opt_class();
      v45 = SSXPCDictionaryCopyObjectWithClass(v5, "10", v44);
      requestParameters = v6->_requestParameters;
      v6->_requestParameters = v45;

      v47 = objc_opt_class();
      v48 = SSXPCDictionaryCopyObjectWithClass(v5, "11", v47);
      requiredUniqueIdentifier = v6->_requiredUniqueIdentifier;
      v6->_requiredUniqueIdentifier = v48;

      v6->_shouldCreateNewSession = xpc_dictionary_get_BOOL(v5, "19");
      v6->_shouldFollowAccountButtons = xpc_dictionary_get_BOOL(v5, "12");
      v6->_shouldIgnoreAccountConversion = xpc_dictionary_get_BOOL(v5, "36");
      v6->_shouldIgnoreProtocol = xpc_dictionary_get_BOOL(v5, "16");
      v6->_shouldPersonalizeResponseActions = xpc_dictionary_get_BOOL(v5, "35");
      v6->_shouldSuppressDialogs = xpc_dictionary_get_BOOL(v5, "17");
      v50 = objc_opt_class();
      v51 = SSXPCDictionaryCopyObjectWithClass(v5, "13", v50);
      signupRequestParameters = v6->_signupRequestParameters;
      v6->_signupRequestParameters = v51;

      v6->_tokenType = xpc_dictionary_get_BOOL(v5, "14");
      v53 = objc_opt_class();
      v54 = SSXPCDictionaryCopyObjectWithClass(v5, "32", v53);
      touchIDContinueToken = v6->_touchIDContinueToken;
      v6->_touchIDContinueToken = v54;

      v56 = objc_opt_class();
      v57 = SSXPCDictionaryCopyObjectWithClass(v5, "15", v56);
      userAgentComponents = v6->_userAgentComponents;
      v6->_userAgentComponents = v57;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _initSSAuthenticationContext = [+[SSAuthenticationContext allocWithZone:](SSAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:_initSSAuthenticationContext withZone:zone];
  return _initSSAuthenticationContext;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  _initSSAuthenticationContext = [(SSAuthenticationContext *)+[SSMutableAuthenticationContext allocWithZone:](SSMutableAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:_initSSAuthenticationContext withZone:zone];
  return _initSSAuthenticationContext;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  v22.receiver = self;
  v22.super_class = SSAuthenticationContext;
  v4 = [(SSAuthenticationContext *)&v22 description];
  [string appendFormat:@"%@:\n", v4];

  accountName = [(SSAuthenticationContext *)self accountName];
  [string appendFormat:@"  accountName = %@\n", accountName];

  [string appendFormat:@"  accountScope = %ld\n", -[SSAuthenticationContext accountScope](self, "accountScope")];
  [string appendFormat:@"  allowsBootstrapCellularData = %d\n", -[SSAuthenticationContext allowsBootstrapCellularData](self, "allowsBootstrapCellularData")];
  [string appendFormat:@"  allowsRetry = %d\n", -[SSAuthenticationContext allowsRetry](self, "allowsRetry")];
  [string appendFormat:@"  allowsSilentAuthentication = %d\n", -[SSAuthenticationContext allowsSilentAuthentication](self, "allowsSilentAuthentication")];
  altDSID = [(SSAuthenticationContext *)self altDSID];
  [string appendFormat:@"  altDSID = %@\n", altDSID];

  cancelButtonLabel = [(SSAuthenticationContext *)self cancelButtonLabel];
  [string appendFormat:@"  cancelButtonLabel = %@\n", cancelButtonLabel];

  [string appendFormat:@"  canCreateNewAccount = %d\n", -[SSAuthenticationContext canCreateNewAccount](self, "canCreateNewAccount")];
  [string appendFormat:@"  canSetActiveAccount = %d\n", -[SSAuthenticationContext canSetActiveAccount](self, "canSetActiveAccount")];
  clientIdentifierHeader = [(SSAuthenticationContext *)self clientIdentifierHeader];
  [string appendFormat:@"  clientIdentifierHeader = %@\n", clientIdentifierHeader];

  [string appendFormat:@"  displaysOnLockScreen = %d\n", -[SSAuthenticationContext displaysOnLockScreen](self, "displaysOnLockScreen")];
  hTTPHeaders = [(SSAuthenticationContext *)self HTTPHeaders];
  [string appendFormat:@"  HTTPHeaders = %@\n", hTTPHeaders];

  [string appendFormat:@"  isAccountNameEditable = %d\n", -[SSAuthenticationContext isAccountNameEditable](self, "isAccountNameEditable")];
  logUUID = [(SSAuthenticationContext *)self logUUID];
  [string appendFormat:@"  logUUID = %@\n", logUUID];

  okButtonLabel = [(SSAuthenticationContext *)self okButtonLabel];
  [string appendFormat:@"  okButtonLabel = %@\n", okButtonLabel];

  [string appendFormat:@"  persistsAcrossDeviceLock = %d\n", -[SSAuthenticationContext persistsAcrossDeviceLock](self, "persistsAcrossDeviceLock")];
  [string appendFormat:@"  persistsPasswordFallback = %d\n", -[SSAuthenticationContext persistsPasswordFallback](self, "persistsPasswordFallback")];
  preferredITunesStoreClient = [(SSAuthenticationContext *)self preferredITunesStoreClient];
  [string appendFormat:@"  preferrediTunesStoreClient = %@\n", preferredITunesStoreClient];

  [string appendFormat:@"  promptStyle = %ld\n", -[SSAuthenticationContext promptStyle](self, "promptStyle")];
  promptTitle = [(SSAuthenticationContext *)self promptTitle];
  [string appendFormat:@"  promptTitle = %@\n", promptTitle];

  reasonDescription = [(SSAuthenticationContext *)self reasonDescription];
  [string appendFormat:@"  reasonDescription = %@\n", reasonDescription];

  requestParameters = [(SSAuthenticationContext *)self requestParameters];
  [string appendFormat:@"  requestParameters = %@\n", requestParameters];

  requiredUniqueIdentifier = [(SSAuthenticationContext *)self requiredUniqueIdentifier];
  [string appendFormat:@"  requiredUniqueIdentifier = %@\n", requiredUniqueIdentifier];

  [string appendFormat:@"  shouldCreateNewSession = %d\n", -[SSAuthenticationContext shouldCreateNewSession](self, "shouldCreateNewSession")];
  [string appendFormat:@"  shouldFollowAccountButtons = %d\n", -[SSAuthenticationContext shouldFollowAccountButtons](self, "shouldFollowAccountButtons")];
  [string appendFormat:@"  shouldIgnoreAccountConversion = %d\n", -[SSAuthenticationContext shouldIgnoreAccountConversion](self, "shouldIgnoreAccountConversion")];
  [string appendFormat:@"  shouldIgnoreProtocol = %d\n", -[SSAuthenticationContext shouldIgnoreProtocol](self, "shouldIgnoreProtocol")];
  [string appendFormat:@"  shouldSuppressDialogs = %d\n", -[SSAuthenticationContext shouldSuppressDialogs](self, "shouldSuppressDialogs")];
  signupRequestParameters = [(SSAuthenticationContext *)self signupRequestParameters];
  [string appendFormat:@"  signupRequestParameters = %@\n", signupRequestParameters];

  [string appendFormat:@"  tokenType = %ld\n", -[SSAuthenticationContext tokenType](self, "tokenType")];
  touchIDContinueToken = [(SSAuthenticationContext *)self touchIDContinueToken];
  [string appendFormat:@"  touchIDContinueToken = %@\n", touchIDContinueToken];

  uRLBagContext = [(SSAuthenticationContext *)self URLBagContext];
  [string appendFormat:@"  URLBagContext = %@\n", uRLBagContext];

  userAgentComponents = [(SSAuthenticationContext *)self userAgentComponents];
  [string appendFormat:@"  userAgentComponents = %@", userAgentComponents];

  return string;
}

- (void)_copyIvarsToCopy:(id)copy withZone:(_NSZone *)zone
{
  accountName = self->_accountName;
  copyCopy = copy;
  v8 = [(NSString *)accountName copyWithZone:zone];
  v9 = *(copyCopy + 1);
  *(copyCopy + 1) = v8;

  *(copyCopy + 16) = self->_accountNameEditable;
  *(copyCopy + 3) = self->_accountScope;
  *(copyCopy + 32) = self->_allowsBioAuthentication;
  *(copyCopy + 33) = self->_allowsBootstrapCellularData;
  *(copyCopy + 34) = self->_allowsRetry;
  *(copyCopy + 35) = self->_allowsSilentAuthentication;
  v10 = [(NSString *)self->_altDSID copyWithZone:zone];
  v11 = *(copyCopy + 5);
  *(copyCopy + 5) = v10;

  v12 = [(NSString *)self->_cancelButtonLabel copyWithZone:zone];
  v13 = *(copyCopy + 6);
  *(copyCopy + 6) = v12;

  *(copyCopy + 56) = self->_canCreateNewAccount;
  *(copyCopy + 57) = self->_canSetActiveAccount;
  v14 = [(NSString *)self->_clientIdentifierHeader copyWithZone:zone];
  v15 = *(copyCopy + 8);
  *(copyCopy + 8) = v14;

  *(copyCopy + 72) = self->_displaysOnLockScreen;
  *(copyCopy + 73) = self->_forceDaemonAuthentication;
  v16 = [(NSDictionary *)self->_httpHeaders copyWithZone:zone];
  v17 = *(copyCopy + 10);
  *(copyCopy + 10) = v16;

  v18 = [(NSString *)self->_okButtonLabel copyWithZone:zone];
  v19 = *(copyCopy + 14);
  *(copyCopy + 14) = v18;

  v20 = [(NSString *)self->_logUUID copyWithZone:zone];
  v21 = *(copyCopy + 11);
  *(copyCopy + 11) = v20;

  v22 = [(NSString *)self->_password copyWithZone:zone];
  v23 = *(copyCopy + 12);
  *(copyCopy + 12) = v22;

  v24 = [(NSString *)self->_passwordEquivalentToken copyWithZone:zone];
  v25 = *(copyCopy + 13);
  *(copyCopy + 13) = v24;

  *(copyCopy + 120) = self->_persistsAcrossDeviceLock;
  v26 = [(NSString *)self->_preferredITunesStoreClient copyWithZone:zone];
  v27 = *(copyCopy + 16);
  *(copyCopy + 16) = v26;

  *(copyCopy + 18) = self->_promptStyle;
  objc_storeStrong(copyCopy + 17, self->_promptTitle);
  *(copyCopy + 121) = self->_persistsPasswordFallback;
  v28 = [(NSString *)self->_reasonDescription copyWithZone:zone];
  v29 = *(copyCopy + 19);
  *(copyCopy + 19) = v28;

  v30 = [(NSDictionary *)self->_requestParameters copyWithZone:zone];
  v31 = *(copyCopy + 20);
  *(copyCopy + 20) = v30;

  v32 = [(NSNumber *)self->_requiredUniqueIdentifier copyWithZone:zone];
  v33 = *(copyCopy + 21);
  *(copyCopy + 21) = v32;

  *(copyCopy + 176) = self->_shouldCreateNewSession;
  *(copyCopy + 177) = self->_shouldFollowAccountButtons;
  *(copyCopy + 178) = self->_shouldIgnoreAccountConversion;
  *(copyCopy + 179) = self->_shouldIgnoreProtocol;
  *(copyCopy + 180) = self->_shouldPersonalizeResponseActions;
  *(copyCopy + 181) = self->_shouldSuppressDialogs;
  v34 = [(NSDictionary *)self->_signupRequestParameters copyWithZone:zone];
  v35 = *(copyCopy + 23);
  *(copyCopy + 23) = v34;

  *(copyCopy + 24) = self->_tokenType;
  v36 = [(NSString *)self->_touchIDContinueToken copyWithZone:zone];
  v37 = *(copyCopy + 25);
  *(copyCopy + 25) = v36;

  v38 = [(NSArray *)self->_userAgentComponents copyWithZone:zone];
  v39 = *(copyCopy + 26);
  *(copyCopy + 26) = v38;
}

@end