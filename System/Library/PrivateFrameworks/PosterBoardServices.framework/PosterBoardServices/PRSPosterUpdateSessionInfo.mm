@interface PRSPosterUpdateSessionInfo
- (BOOL)isEmpty;
- (PRSPosterUpdateSessionInfo)init;
- (PRSPosterUpdateSessionInfo)initWithBSXPCCoder:(id)a3;
- (PRSPosterUpdateSessionInfo)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAssetURLs:(id)a3;
- (void)setContext:(id)a3;
- (void)setShortcutsWallpaperConfiguration:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation PRSPosterUpdateSessionInfo

- (PRSPosterUpdateSessionInfo)init
{
  v3.receiver = self;
  v3.super_class = PRSPosterUpdateSessionInfo;
  result = [(PRSPosterUpdateSessionInfo *)&v3 init];
  if (result)
  {
    result->_shortcutsWallpaperConfigurationSandboxHandle = -1;
  }

  return result;
}

- (BOOL)isEmpty
{
  if (self->_identifier || self->_shortcutsWallpaperConfiguration || self->_userInfo || self->_context)
  {
    return 0;
  }

  assetURLs = self->_assetURLs;
  return !assetURLs || [(NSDictionary *)assetURLs count:v2]== 0;
}

- (void)dealloc
{
  if (self->_shortcutsWallpaperConfigurationSandboxHandle != -1)
  {
    sandbox_extension_release();
    self->_shortcutsWallpaperConfigurationSandboxHandle = -1;
  }

  if (self->_assetSandboxHandles)
  {
    assetURLs = self->_assetURLs;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__PRSPosterUpdateSessionInfo_dealloc__block_invoke;
    v5[3] = &unk_1E818D428;
    v5[4] = self;
    [(NSDictionary *)assetURLs enumerateKeysAndObjectsUsingBlock:v5];
  }

  v4.receiver = self;
  v4.super_class = PRSPosterUpdateSessionInfo;
  [(PRSPosterUpdateSessionInfo *)&v4 dealloc];
}

void __37__PRSPosterUpdateSessionInfo_dealloc__block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  if (xpc_dictionary_get_int64(*(*(a1 + 32) + 32), v5) != -1)
  {
    sandbox_extension_release();
    v6 = *(*(a1 + 32) + 32);

    xpc_dictionary_set_int64(v6, v5, -1);
  }
}

- (void)setUserInfo:(id)a3
{
  v6 = a3;
  if (![(NSDictionary *)self->_userInfo isEqualToDictionary:?])
  {
    _validateUserInfo(v6);
    v4 = [v6 copy];
    userInfo = self->_userInfo;
    self->_userInfo = v4;
  }
}

- (void)setShortcutsWallpaperConfiguration:(id)a3
{
  v15 = a3;
  if (([(WFWallpaperConfiguration *)self->_shortcutsWallpaperConfiguration isEqual:?]& 1) == 0)
  {
    shortcutsWallpaperConfigurationSandboxToken = self->_shortcutsWallpaperConfigurationSandboxToken;
    self->_shortcutsWallpaperConfigurationSandboxToken = 0;

    objc_storeStrong(&self->_shortcutsWallpaperConfiguration, a3);
    v6 = [v15 assetURL];

    if (v6)
    {
      v7 = [v15 assetURL];
      [v7 startAccessingSecurityScopedResource];

      v8 = *MEMORY[0x1E69E9BA8];
      v9 = [v15 assetURL];
      [v9 fileSystemRepresentation];
      v10 = *MEMORY[0x1E69E9BE0];
      v11 = sandbox_extension_issue_file();

      if (v11)
      {
        v12 = xpc_string_create(v11);
        v13 = self->_shortcutsWallpaperConfigurationSandboxToken;
        self->_shortcutsWallpaperConfigurationSandboxToken = v12;

        free(v11);
      }

      v14 = [v15 assetURL];
      [v14 stopAccessingSecurityScopedResource];
    }
  }
}

- (void)setContext:(id)a3
{
  v6 = a3;
  if (![(NSDictionary *)self->_context isEqualToDictionary:?])
  {
    v4 = [v6 copy];
    context = self->_context;
    self->_context = v4;
  }
}

- (void)setAssetURLs:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v7 = [v4 pf_sanitizeWithAllowedKeyClasses:v5 allowedValueClasses:v6];

  if (![(NSDictionary *)self->_assetURLs isEqualToDictionary:v7])
  {
    objc_storeStrong(&self->_assetURLs, v7);
    assetSandboxTokens = self->_assetSandboxTokens;
    self->_assetSandboxTokens = 0;

    assetURLs = self->_assetURLs;
    if (assetURLs)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__PRSPosterUpdateSessionInfo_setAssetURLs___block_invoke;
      v11[3] = &unk_1E818D428;
      v11[4] = self;
      [(NSDictionary *)assetURLs enumerateKeysAndObjectsUsingBlock:v11];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __43__PRSPosterUpdateSessionInfo_setAssetURLs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  [v5 startAccessingSecurityScopedResource];
  v6 = *MEMORY[0x1E69E9BA8];
  [v5 fileSystemRepresentation];
  v7 = *MEMORY[0x1E69E9BE0];
  v8 = sandbox_extension_issue_file();
  if (v8)
  {
    v9 = v8;
    v10 = *(*(a1 + 32) + 24);
    if (!v10)
    {
      empty = xpc_dictionary_create_empty();
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      *(v12 + 24) = empty;

      v10 = *(*(a1 + 32) + 24);
    }

    v14 = [v16 UTF8String];
    v15 = xpc_string_create(v9);
    xpc_dictionary_set_value(v10, v14, v15);

    free(v9);
  }

  [v5 stopAccessingSecurityScopedResource];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v12 = a3;
  [v12 encodeObject:self->_identifier forKey:@"i"];
  [v12 encodeObject:self->_shortcutsWallpaperConfiguration forKey:@"wc"];
  shortcutsWallpaperConfigurationSandboxToken = self->_shortcutsWallpaperConfigurationSandboxToken;
  if (shortcutsWallpaperConfigurationSandboxToken)
  {
    [v12 encodeXPCObject:shortcutsWallpaperConfigurationSandboxToken forKey:@"wcse"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    v6 = PRSXPCDictionaryFromDictionary(userInfo);
    [v12 encodeXPCObject:v6 forKey:@"ui"];
  }

  context = self->_context;
  if (context)
  {
    v8 = _encodeContextDictionary(context);
    [v12 encodeObject:v8 forKey:@"ctx"];
  }

  assetURLs = self->_assetURLs;
  if (assetURLs)
  {
    [v12 encodeDictionary:assetURLs forKey:@"asus"];
  }

  assetSandboxTokens = self->_assetSandboxTokens;
  v11 = v12;
  if (assetSandboxTokens)
  {
    [v12 encodeXPCObject:assetSandboxTokens forKey:@"asts"];
    v11 = v12;
  }
}

- (PRSPosterUpdateSessionInfo)initWithBSXPCCoder:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = PRSPosterUpdateSessionInfo;
  v5 = [(PRSPosterUpdateSessionInfo *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"i"];
    v7 = [v6 mutableCopy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"wc"];
    shortcutsWallpaperConfiguration = v5->_shortcutsWallpaperConfiguration;
    v5->_shortcutsWallpaperConfiguration = v10;

    v12 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9F10] forKey:@"wcse"];
    shortcutsWallpaperConfigurationSandboxToken = v5->_shortcutsWallpaperConfigurationSandboxToken;
    v5->_shortcutsWallpaperConfigurationSandboxToken = v12;

    v5->_shortcutsWallpaperConfigurationSandboxHandle = -1;
    if (v5->_shortcutsWallpaperConfiguration)
    {
      v14 = v5->_shortcutsWallpaperConfigurationSandboxToken;
      if (v14)
      {
        xpc_string_get_string_ptr(v14);
        v15 = sandbox_extension_consume();
        v5->_shortcutsWallpaperConfigurationSandboxHandle = v15;
        if (v15 == -1)
        {
          v16 = __error();
          strerror_r(*v16, __strerrbuf, 0x100uLL);
          v17 = PRSLogPosterContents();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v37 = v5->_shortcutsWallpaperConfigurationSandboxToken;
            v38 = *__error();
            v39 = objc_opt_class();
            v40 = NSStringFromClass(v39);
            v41 = [(WFWallpaperConfiguration *)v5->_shortcutsWallpaperConfiguration assetURL];
            *buf = 138413314;
            v44 = v37;
            v45 = 1024;
            v46 = v38;
            v47 = 2082;
            v48 = __strerrbuf;
            v49 = 2114;
            v50 = v40;
            v51 = 2114;
            v52 = v41;
            _os_log_error_impl(&dword_1C26FF000, v17, OS_LOG_TYPE_ERROR, "failed to consume sandboxToken %@ from bsxpc with errno=%i (%{public}s) : <%{public}@ path=%{public}@>", buf, 0x30u);
          }
        }
      }
    }

    v18 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"ui"];
    v19 = v18;
    if (v18)
    {
      v20 = PRSDictionaryFromXPCObject(v18);
      userInfo = v5->_userInfo;
      v5->_userInfo = v20;

      _validateUserInfo(v5->_userInfo);
    }

    v22 = objc_opt_self();
    v23 = [v4 decodeObjectOfClass:v22 forKey:@"ctx"];

    if (v23)
    {
      v24 = _decodeContextDictionary(v23);
      context = v5->_context;
      v5->_context = v24;
    }

    v26 = objc_opt_self();
    v27 = [v4 decodeDictionaryOfClass:v26 forKey:@"asus"];
    assetURLs = v5->_assetURLs;
    v5->_assetURLs = v27;

    if (v5->_assetURLs)
    {
      v29 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"asts"];
      assetSandboxTokens = v5->_assetSandboxTokens;
      v5->_assetSandboxTokens = v29;

      assetSandboxHandles = v5->_assetSandboxHandles;
      v5->_assetSandboxHandles = 0;

      v32 = v5->_assetSandboxTokens;
      if (v32)
      {
        v33 = _consumeSandboxExtensions(v5->_assetURLs, v32);
        v34 = v5->_assetSandboxHandles;
        v5->_assetSandboxHandles = v33;
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_identifier forKey:@"i"];
  [v4 encodeObject:self->_shortcutsWallpaperConfiguration forKey:@"wc"];
  shortcutsWallpaperConfigurationSandboxToken = self->_shortcutsWallpaperConfigurationSandboxToken;
  if (shortcutsWallpaperConfigurationSandboxToken)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(shortcutsWallpaperConfigurationSandboxToken)];
    [v4 encodeObject:v6 forKey:@"wcse"];
  }

  [v4 encodeObject:self->_userInfo forKey:@"ui"];
  v7 = _encodeContextDictionary(self->_context);
  [v4 encodeObject:v7 forKey:@"ctx"];

  [v4 encodeObject:self->_assetURLs forKey:@"asus"];
  assetSandboxTokens = self->_assetSandboxTokens;
  if (assetSandboxTokens)
  {
    v9 = assetSandboxTokens;
    v10 = objc_opt_new();
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___encodeSandboxTokens_block_invoke;
    applier[3] = &unk_1E818D400;
    v13 = v10;
    v11 = v10;
    xpc_dictionary_apply(v9, applier);

    [v4 encodeObject:v11 forKey:@"asts"];
  }
}

- (PRSPosterUpdateSessionInfo)initWithCoder:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = PRSPosterUpdateSessionInfo;
  v5 = [(PRSPosterUpdateSessionInfo *)&v49 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    v7 = [v6 mutableCopy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"wc"];
    shortcutsWallpaperConfiguration = v5->_shortcutsWallpaperConfiguration;
    v5->_shortcutsWallpaperConfiguration = v10;

    v5->_shortcutsWallpaperConfigurationSandboxHandle = -1;
    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"wcse"];

    if (v13)
    {
      v14 = v13;
      v15 = xpc_string_create([v13 UTF8String]);
      shortcutsWallpaperConfigurationSandboxToken = v5->_shortcutsWallpaperConfigurationSandboxToken;
      v5->_shortcutsWallpaperConfigurationSandboxToken = v15;

      v17 = v13;
      [v13 UTF8String];
      v18 = sandbox_extension_consume();
      v5->_shortcutsWallpaperConfigurationSandboxHandle = v18;
      if (v18 == -1)
      {
        v19 = __error();
        strerror_r(*v19, __strerrbuf, 0x100uLL);
        v20 = PRSLogPosterContents();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v44 = v5->_shortcutsWallpaperConfigurationSandboxToken;
          v45 = *__error();
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = [(WFWallpaperConfiguration *)v5->_shortcutsWallpaperConfiguration assetURL];
          *buf = 138413314;
          *&buf[4] = v44;
          *&buf[12] = 1024;
          *&buf[14] = v45;
          *&buf[18] = 2082;
          *&buf[20] = __strerrbuf;
          *&buf[28] = 2114;
          *&buf[30] = v47;
          *&buf[38] = 2114;
          v51 = v48;
          _os_log_error_impl(&dword_1C26FF000, v20, OS_LOG_TYPE_ERROR, "failed to consume sandboxToken %@ from bsxpc with errno=%i (%{public}s) : <%{public}@ path=%{public}@>", buf, 0x30u);
        }
      }
    }

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"ui"];
    v25 = [v24 copy];
    userInfo = v5->_userInfo;
    v5->_userInfo = v25;

    _validateUserInfo(v5->_userInfo);
    v27 = objc_opt_self();
    v28 = [v4 decodeObjectOfClass:v27 forKey:@"ctx"];
    v29 = _decodeContextDictionary(v28);
    context = v5->_context;
    v5->_context = v29;

    v31 = objc_opt_class();
    v32 = [v4 decodeDictionaryWithKeysOfClass:v31 objectsOfClass:objc_opt_class() forKey:@"asus"];
    assetURLs = v5->_assetURLs;
    v5->_assetURLs = v32;

    if (v5->_assetURLs)
    {
      v34 = objc_opt_class();
      v35 = [v4 decodeDictionaryWithKeysOfClass:v34 objectsOfClass:objc_opt_class() forKey:@"asts"];
      *__strerrbuf = 0;
      v53 = __strerrbuf;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__0;
      v56 = __Block_byref_object_dispose__0;
      v57 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___decodeSandboxToken_block_invoke;
      *&buf[24] = &unk_1E818D450;
      *&buf[32] = __strerrbuf;
      [v35 enumerateKeysAndObjectsUsingBlock:buf];
      v36 = *(v53 + 5);
      _Block_object_dispose(__strerrbuf, 8);

      assetSandboxTokens = v5->_assetSandboxTokens;
      v5->_assetSandboxTokens = v36;

      assetSandboxHandles = v5->_assetSandboxHandles;
      v5->_assetSandboxHandles = 0;

      v39 = v5->_assetSandboxTokens;
      if (v39)
      {
        v40 = _consumeSandboxExtensions(v5->_assetURLs, v39);
        v41 = v5->_assetSandboxHandles;
        v5->_assetSandboxHandles = v40;
      }
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

@end