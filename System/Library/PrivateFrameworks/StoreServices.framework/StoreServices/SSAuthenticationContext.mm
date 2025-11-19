@interface SSAuthenticationContext
+ (id)contextForSignIn;
- (NSString)description;
- (SSAuthenticationContext)initWithAccount:(id)a3;
- (SSAuthenticationContext)initWithAccountIdentifier:(id)a3;
- (SSAuthenticationContext)initWithXPCEncoding:(id)a3;
- (SSURLBagContext)URLBagContext;
- (id)_initSSAuthenticationContext;
- (id)accountStoreOptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_copyIvarsToCopy:(id)a3 withZone:(_NSZone *)a4;
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

- (SSAuthenticationContext)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = [(SSAuthenticationContext *)self _initSSAuthenticationContext];
  if (v5)
  {
    v6 = [v4 accountName];
    accountName = v5->_accountName;
    v5->_accountName = v6;

    v5->_accountNameEditable = [(NSString *)v5->_accountName length]== 0;
    v5->_accountScope = [v4 accountScope];
    v8 = [v4 altDSID];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v10 = v5->_canCreateNewAccount && v5->_accountNameEditable;
    v5->_canCreateNewAccount = v10;
    v11 = [v4 uniqueIdentifier];
    requiredUniqueIdentifier = v5->_requiredUniqueIdentifier;
    v5->_requiredUniqueIdentifier = v11;
  }

  return v5;
}

- (SSAuthenticationContext)initWithAccountIdentifier:(id)a3
{
  v5 = a3;
  v6 = +[SSAccountStore defaultStore];
  if (v5 && [v5 integerValue])
  {
    v7 = [v6 accountWithUniqueIdentifier:v5];
  }

  else
  {
    v7 = [v6 activeAccount];
  }

  v8 = v7;
  if (v7)
  {
    v9 = [(SSAuthenticationContext *)self initWithAccount:v7];
  }

  else
  {
    v10 = [(SSAuthenticationContext *)self _initSSAuthenticationContext];
    v9 = v10;
    if (v10)
    {
      v10->_accountNameEditable = 1;
      v10->_canCreateNewAccount &= v5 == 0;
      objc_storeStrong(&v10->_requiredUniqueIdentifier, a3);
    }
  }

  return v9;
}

+ (id)contextForSignIn
{
  v2 = objc_alloc_init(a1);
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
  v7 = [(SSAuthenticationContext *)self password];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v2 = [(SSAuthenticationContext *)self passwordEquivalentToken];
    v8 = v2 != 0;
  }

  v9 = [v6 numberWithInt:v8];
  [v4 setObject:v9 forKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];

  if (!v7)
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

  v16 = [(SSAuthenticationContext *)self reasonDescription];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(SSAuthenticationContext *)self reasonDescription];
    [v4 setObject:v18 forKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];
  }

  v19 = [(SSAuthenticationContext *)self promptTitle];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [(SSAuthenticationContext *)self promptTitle];
    [v4 setObject:v21 forKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];
  }

  v22 = [(SSAuthenticationContext *)self okButtonLabel];
  v23 = [v22 length];

  if (v23)
  {
    v24 = [(SSAuthenticationContext *)self okButtonLabel];
    [v4 setObject:v24 forKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];
  }

  v25 = [(SSAuthenticationContext *)self requiredUniqueIdentifier];

  if (v25)
  {
    v26 = [(SSAuthenticationContext *)self requiredUniqueIdentifier];
    [v4 setObject:v26 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountDSIDKey"];
  }

  v27 = [(SSAuthenticationContext *)self signupRequestParameters];

  if (v27)
  {
    v28 = [(SSAuthenticationContext *)self signupRequestParameters];
    [v4 setObject:v28 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
  }

  v29 = [(SSAuthenticationContext *)self preferredITunesStoreClient];

  if (v29)
  {
    v30 = [(SSAuthenticationContext *)self preferredITunesStoreClient];
    [v4 setObject:v30 forKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountTargetIdentifierKey"];
  }

  v31 = [(SSAuthenticationContext *)self HTTPHeaders];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [(SSAuthenticationContext *)self HTTPHeaders];
    v34 = [v33 mutableCopy];

    [v34 removeObjectForKey:@"User-Agent"];
    v35 = [v34 copy];
    [v4 setObject:v35 forKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];
  }

  v36 = [(SSAuthenticationContext *)self HTTPHeaders];
  v37 = [v36 count];

  if (v37)
  {
    v38 = [(SSAuthenticationContext *)self HTTPHeaders];
    v39 = [v38 mutableCopy];

    [v39 removeObjectForKey:@"User-Agent"];
    v40 = [v39 copy];
    [v4 setObject:v40 forKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];
  }

  v41 = [(SSAuthenticationContext *)self HTTPHeaders];
  v42 = [v41 objectForKeyedSubscript:@"User-Agent"];

  if ([v42 length])
  {
    v43 = v42;
  }

  else
  {
    v44 = +[SSDevice currentDevice];
    v43 = [v44 userAgent];

    v42 = v43;
    if (![v43 length])
    {
      goto LABEL_26;
    }
  }

  [v4 setObject:v42 forKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
LABEL_26:
  v45 = [(SSAuthenticationContext *)self userAgentComponents];
  v46 = [v45 count];

  if (v46)
  {
    v47 = [(SSAuthenticationContext *)self userAgentComponents];
    [v4 setObject:v47 forKeyedSubscript:@"SSAccountStoreAuthKitUserAgentSuffixesKey"];
  }

  v48 = [v4 copy];

  return v48;
}

- (SSURLBagContext)URLBagContext
{
  v3 = [SSURLBagContext contextWithBagType:SSURLBagTypeForAccountScope([(SSAuthenticationContext *)self accountScope])];
  [v3 setAllowsBootstrapCellularData:{-[SSAuthenticationContext allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  v4 = [(SSAuthenticationContext *)self HTTPHeaders];
  v5 = [v4 objectForKey:@"User-Agent"];

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

- (SSAuthenticationContext)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[SSAuthenticationContext allocWithZone:](SSAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:v5 withZone:a3];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(SSAuthenticationContext *)+[SSMutableAuthenticationContext allocWithZone:](SSMutableAuthenticationContext _initSSAuthenticationContext];
  [(SSAuthenticationContext *)self _copyIvarsToCopy:v5 withZone:a3];
  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v22.receiver = self;
  v22.super_class = SSAuthenticationContext;
  v4 = [(SSAuthenticationContext *)&v22 description];
  [v3 appendFormat:@"%@:\n", v4];

  v5 = [(SSAuthenticationContext *)self accountName];
  [v3 appendFormat:@"  accountName = %@\n", v5];

  [v3 appendFormat:@"  accountScope = %ld\n", -[SSAuthenticationContext accountScope](self, "accountScope")];
  [v3 appendFormat:@"  allowsBootstrapCellularData = %d\n", -[SSAuthenticationContext allowsBootstrapCellularData](self, "allowsBootstrapCellularData")];
  [v3 appendFormat:@"  allowsRetry = %d\n", -[SSAuthenticationContext allowsRetry](self, "allowsRetry")];
  [v3 appendFormat:@"  allowsSilentAuthentication = %d\n", -[SSAuthenticationContext allowsSilentAuthentication](self, "allowsSilentAuthentication")];
  v6 = [(SSAuthenticationContext *)self altDSID];
  [v3 appendFormat:@"  altDSID = %@\n", v6];

  v7 = [(SSAuthenticationContext *)self cancelButtonLabel];
  [v3 appendFormat:@"  cancelButtonLabel = %@\n", v7];

  [v3 appendFormat:@"  canCreateNewAccount = %d\n", -[SSAuthenticationContext canCreateNewAccount](self, "canCreateNewAccount")];
  [v3 appendFormat:@"  canSetActiveAccount = %d\n", -[SSAuthenticationContext canSetActiveAccount](self, "canSetActiveAccount")];
  v8 = [(SSAuthenticationContext *)self clientIdentifierHeader];
  [v3 appendFormat:@"  clientIdentifierHeader = %@\n", v8];

  [v3 appendFormat:@"  displaysOnLockScreen = %d\n", -[SSAuthenticationContext displaysOnLockScreen](self, "displaysOnLockScreen")];
  v9 = [(SSAuthenticationContext *)self HTTPHeaders];
  [v3 appendFormat:@"  HTTPHeaders = %@\n", v9];

  [v3 appendFormat:@"  isAccountNameEditable = %d\n", -[SSAuthenticationContext isAccountNameEditable](self, "isAccountNameEditable")];
  v10 = [(SSAuthenticationContext *)self logUUID];
  [v3 appendFormat:@"  logUUID = %@\n", v10];

  v11 = [(SSAuthenticationContext *)self okButtonLabel];
  [v3 appendFormat:@"  okButtonLabel = %@\n", v11];

  [v3 appendFormat:@"  persistsAcrossDeviceLock = %d\n", -[SSAuthenticationContext persistsAcrossDeviceLock](self, "persistsAcrossDeviceLock")];
  [v3 appendFormat:@"  persistsPasswordFallback = %d\n", -[SSAuthenticationContext persistsPasswordFallback](self, "persistsPasswordFallback")];
  v12 = [(SSAuthenticationContext *)self preferredITunesStoreClient];
  [v3 appendFormat:@"  preferrediTunesStoreClient = %@\n", v12];

  [v3 appendFormat:@"  promptStyle = %ld\n", -[SSAuthenticationContext promptStyle](self, "promptStyle")];
  v13 = [(SSAuthenticationContext *)self promptTitle];
  [v3 appendFormat:@"  promptTitle = %@\n", v13];

  v14 = [(SSAuthenticationContext *)self reasonDescription];
  [v3 appendFormat:@"  reasonDescription = %@\n", v14];

  v15 = [(SSAuthenticationContext *)self requestParameters];
  [v3 appendFormat:@"  requestParameters = %@\n", v15];

  v16 = [(SSAuthenticationContext *)self requiredUniqueIdentifier];
  [v3 appendFormat:@"  requiredUniqueIdentifier = %@\n", v16];

  [v3 appendFormat:@"  shouldCreateNewSession = %d\n", -[SSAuthenticationContext shouldCreateNewSession](self, "shouldCreateNewSession")];
  [v3 appendFormat:@"  shouldFollowAccountButtons = %d\n", -[SSAuthenticationContext shouldFollowAccountButtons](self, "shouldFollowAccountButtons")];
  [v3 appendFormat:@"  shouldIgnoreAccountConversion = %d\n", -[SSAuthenticationContext shouldIgnoreAccountConversion](self, "shouldIgnoreAccountConversion")];
  [v3 appendFormat:@"  shouldIgnoreProtocol = %d\n", -[SSAuthenticationContext shouldIgnoreProtocol](self, "shouldIgnoreProtocol")];
  [v3 appendFormat:@"  shouldSuppressDialogs = %d\n", -[SSAuthenticationContext shouldSuppressDialogs](self, "shouldSuppressDialogs")];
  v17 = [(SSAuthenticationContext *)self signupRequestParameters];
  [v3 appendFormat:@"  signupRequestParameters = %@\n", v17];

  [v3 appendFormat:@"  tokenType = %ld\n", -[SSAuthenticationContext tokenType](self, "tokenType")];
  v18 = [(SSAuthenticationContext *)self touchIDContinueToken];
  [v3 appendFormat:@"  touchIDContinueToken = %@\n", v18];

  v19 = [(SSAuthenticationContext *)self URLBagContext];
  [v3 appendFormat:@"  URLBagContext = %@\n", v19];

  v20 = [(SSAuthenticationContext *)self userAgentComponents];
  [v3 appendFormat:@"  userAgentComponents = %@", v20];

  return v3;
}

- (void)_copyIvarsToCopy:(id)a3 withZone:(_NSZone *)a4
{
  accountName = self->_accountName;
  v7 = a3;
  v8 = [(NSString *)accountName copyWithZone:a4];
  v9 = *(v7 + 1);
  *(v7 + 1) = v8;

  *(v7 + 16) = self->_accountNameEditable;
  *(v7 + 3) = self->_accountScope;
  *(v7 + 32) = self->_allowsBioAuthentication;
  *(v7 + 33) = self->_allowsBootstrapCellularData;
  *(v7 + 34) = self->_allowsRetry;
  *(v7 + 35) = self->_allowsSilentAuthentication;
  v10 = [(NSString *)self->_altDSID copyWithZone:a4];
  v11 = *(v7 + 5);
  *(v7 + 5) = v10;

  v12 = [(NSString *)self->_cancelButtonLabel copyWithZone:a4];
  v13 = *(v7 + 6);
  *(v7 + 6) = v12;

  *(v7 + 56) = self->_canCreateNewAccount;
  *(v7 + 57) = self->_canSetActiveAccount;
  v14 = [(NSString *)self->_clientIdentifierHeader copyWithZone:a4];
  v15 = *(v7 + 8);
  *(v7 + 8) = v14;

  *(v7 + 72) = self->_displaysOnLockScreen;
  *(v7 + 73) = self->_forceDaemonAuthentication;
  v16 = [(NSDictionary *)self->_httpHeaders copyWithZone:a4];
  v17 = *(v7 + 10);
  *(v7 + 10) = v16;

  v18 = [(NSString *)self->_okButtonLabel copyWithZone:a4];
  v19 = *(v7 + 14);
  *(v7 + 14) = v18;

  v20 = [(NSString *)self->_logUUID copyWithZone:a4];
  v21 = *(v7 + 11);
  *(v7 + 11) = v20;

  v22 = [(NSString *)self->_password copyWithZone:a4];
  v23 = *(v7 + 12);
  *(v7 + 12) = v22;

  v24 = [(NSString *)self->_passwordEquivalentToken copyWithZone:a4];
  v25 = *(v7 + 13);
  *(v7 + 13) = v24;

  *(v7 + 120) = self->_persistsAcrossDeviceLock;
  v26 = [(NSString *)self->_preferredITunesStoreClient copyWithZone:a4];
  v27 = *(v7 + 16);
  *(v7 + 16) = v26;

  *(v7 + 18) = self->_promptStyle;
  objc_storeStrong(v7 + 17, self->_promptTitle);
  *(v7 + 121) = self->_persistsPasswordFallback;
  v28 = [(NSString *)self->_reasonDescription copyWithZone:a4];
  v29 = *(v7 + 19);
  *(v7 + 19) = v28;

  v30 = [(NSDictionary *)self->_requestParameters copyWithZone:a4];
  v31 = *(v7 + 20);
  *(v7 + 20) = v30;

  v32 = [(NSNumber *)self->_requiredUniqueIdentifier copyWithZone:a4];
  v33 = *(v7 + 21);
  *(v7 + 21) = v32;

  *(v7 + 176) = self->_shouldCreateNewSession;
  *(v7 + 177) = self->_shouldFollowAccountButtons;
  *(v7 + 178) = self->_shouldIgnoreAccountConversion;
  *(v7 + 179) = self->_shouldIgnoreProtocol;
  *(v7 + 180) = self->_shouldPersonalizeResponseActions;
  *(v7 + 181) = self->_shouldSuppressDialogs;
  v34 = [(NSDictionary *)self->_signupRequestParameters copyWithZone:a4];
  v35 = *(v7 + 23);
  *(v7 + 23) = v34;

  *(v7 + 24) = self->_tokenType;
  v36 = [(NSString *)self->_touchIDContinueToken copyWithZone:a4];
  v37 = *(v7 + 25);
  *(v7 + 25) = v36;

  v38 = [(NSArray *)self->_userAgentComponents copyWithZone:a4];
  v39 = *(v7 + 26);
  *(v7 + 26) = v38;
}

@end