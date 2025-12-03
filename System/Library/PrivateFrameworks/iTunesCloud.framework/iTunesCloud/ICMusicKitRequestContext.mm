@interface ICMusicKitRequestContext
- (BOOL)isEqual:(id)equal;
- (ICMusicKitRequestContext)initWithBlock:(id)block;
- (ICMusicKitRequestContext)initWithCoder:(id)coder;
- (id)_description;
- (id)copyWithBlock:(id)block;
- (id)description;
- (int64_t)_storeRequestPersonalizationStyle;
- (int64_t)personalizationStyle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDeveloperTokenProvider:(id)provider;
- (void)setPersonalizationMethod:(int64_t)method;
- (void)setPersonalizationStyle:(int64_t)style;
@end

@implementation ICMusicKitRequestContext

- (int64_t)_storeRequestPersonalizationStyle
{
  v3.receiver = self;
  v3.super_class = ICMusicKitRequestContext;
  return [(ICStoreRequestContext *)&v3 personalizationStyle];
}

- (void)setPersonalizationStyle:(int64_t)style
{
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicKitRequestContext.m" lineNumber:234 description:@"Mutation not allowed beyond initialization."];
  }

  if (style == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = style == 1;
  }

  v8.receiver = self;
  v8.super_class = ICMusicKitRequestContext;
  [(ICStoreRequestContext *)&v8 setPersonalizationStyle:v6];
}

- (int64_t)personalizationStyle
{
  v3.receiver = self;
  v3.super_class = ICMusicKitRequestContext;
  result = [(ICStoreRequestContext *)&v3 personalizationStyle];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)setPersonalizationMethod:(int64_t)method
{
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicKitRequestContext.m" lineNumber:212 description:@"Mutation not allowed beyond initialization."];
  }

  self->_personalizationMethod = method;
}

- (void)setDeveloperTokenProvider:(id)provider
{
  providerCopy = provider;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicKitRequestContext.m" lineNumber:201 description:@"Mutation not allowed beyond initialization."];
  }

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (([v10 isEqual:v6] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ICMusicKitRequestContext.m" lineNumber:206 description:@"Setting up a MusicKit request context with a developer token provider that is not provided by iTunesCloud.framework is not supported."];
  }

  developerTokenProvider = self->_developerTokenProvider;
  self->_developerTokenProvider = providerCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICMusicKitRequestContext;
  [(ICStoreRequestContext *)&v9 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_personalizationMethod forKey:@"personalizationMethod"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (_ICDeveloperTokenProviderIsAllowedForClassName(v6))
  {
    [coderCopy encodeObject:v6 forKey:@"developerTokenProviderClassName"];
    [coderCopy encodeObject:self->_developerTokenProvider forKey:@"developerTokenProvider"];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Attempted to encode an instance of ICMusicKitRequestContext with an unallowed class name for developerTokenProvider: %{public}@.", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{@"Attempted to encode an instance of ICMusicKitRequestContext with an unallowed class name for developerTokenProvider: %@.", v6}];
    [coderCopy failWithError:v8];
  }
}

- (ICMusicKitRequestContext)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ICMusicKitRequestContext;
  v5 = [(ICStoreRequestContext *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_personalizationMethod = [coderCopy decodeIntegerForKey:@"personalizationMethod"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerTokenProviderClassName"];
    if (_ICDeveloperTokenProviderIsAllowedForClassName(v6))
    {
      v7 = NSClassFromString(v6);
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"developerTokenProvider"];
        developerTokenProvider = v5->_developerTokenProvider;
        v5->_developerTokenProvider = v8;
        goto LABEL_13;
      }

      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v6;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Failed to look up class of developer token provider with name: %{public}@.", buf, 0xCu);
      }

      v11 = @"Failed to look up class of developer token provider with name: %@.";
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v6;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Attempted to decode an instance of ICMusicKitRequestContext with an unallowed class name for developerTokenProvider: %{public}@.", buf, 0xCu);
      }

      v11 = @"Attempted to decode an instance of ICMusicKitRequestContext with an unallowed class name for developerTokenProvider: %@.";
    }

    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{v11, v6}];
    if (!v12)
    {
LABEL_14:

      goto LABEL_15;
    }

    developerTokenProvider = v12;
    [coderCopy failWithError:v12];

    v5 = 0;
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(ICMusicKitRequestContext *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      v12.receiver = self;
      v12.super_class = ICMusicKitRequestContext;
      if ([(ICStoreRequestContext *)&v12 isEqual:v5])
      {
        developerTokenProvider = v5->_developerTokenProvider;
        v7 = self->_developerTokenProvider;
        v8 = v7;
        if (v7 == developerTokenProvider)
        {
        }

        else
        {
          v9 = [(ICDeveloperTokenProvider *)v7 isEqual:developerTokenProvider];

          if (!v9)
          {
            goto LABEL_6;
          }
        }

        v10 = self->_personalizationMethod == v5->_personalizationMethod;
        goto LABEL_11;
      }

LABEL_6:
      v10 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v66 = __ROR8__(v14 + v13, 32);
  v68 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v63 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_developerTokenProvider;
  v19 = [(ICDeveloperTokenProvider *)v18 hash];
  v20 = (v17 + v63) ^ __ROR8__(v63, 51);
  v21 = v66 + (v68 ^ v19);
  v22 = __ROR8__(v68 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v63, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v67 = __ROR8__(v25, 32);
  v69 = v24;
  v62 = v23 ^ v19;
  v64 = v25 ^ __ROR8__(v20, 47);

  personalizationMethod = self->_personalizationMethod;
  v27 = (v62 + v64) ^ __ROR8__(v64, 51);
  v28 = v67 + (v69 ^ personalizationMethod);
  v29 = __ROR8__(v69 ^ personalizationMethod, 48);
  v30 = (v28 ^ v29) + __ROR8__(v62 + v64, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v65 = v32 ^ __ROR8__(v27, 47);
  v33 = ((v30 ^ personalizationMethod) + v65) ^ __ROR8__(v65, 51);
  v34 = __ROR8__(v32, 32) + (v31 ^ 0x1800000000000000);
  v35 = __ROR8__(v31 ^ 0x1800000000000000, 48);
  v36 = (v34 ^ v35) + __ROR8__((v30 ^ personalizationMethod) + v65, 32);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v34 + v33;
  v39 = v38 ^ __ROR8__(v33, 47);
  v40 = (v36 ^ 0x1800000000000000) + v39;
  v41 = v40 ^ __ROR8__(v39, 51);
  v42 = (__ROR8__(v38, 32) ^ 0xFFLL) + v37;
  v43 = __ROR8__(v37, 48);
  v44 = __ROR8__(v40, 32) + (v42 ^ v43);
  v45 = v44 ^ __ROR8__(v42 ^ v43, 43);
  v46 = v41 + v42;
  v47 = v46 ^ __ROR8__(v41, 47);
  v48 = v47 + v44;
  v49 = v48 ^ __ROR8__(v47, 51);
  v50 = __ROR8__(v46, 32) + v45;
  v51 = __ROR8__(v45, 48);
  v52 = __ROR8__(v48, 32) + (v50 ^ v51);
  v53 = v52 ^ __ROR8__(v50 ^ v51, 43);
  v54 = v49 + v50;
  v55 = v54 ^ __ROR8__(v49, 47);
  v56 = v55 + v52;
  v57 = v56 ^ __ROR8__(v55, 51);
  v58 = __ROR8__(v54, 32) + v53;
  v59 = __ROR8__(v53, 48);
  v60 = __ROR8__(v56, 32) + (v58 ^ v59);
  return (v57 + v58) ^ __ROR8__(v57, 47) ^ v60 ^ __ROR8__(v57 + v58, 32) ^ v60 ^ __ROR8__(v58 ^ v59, 43);
}

- (id)description
{
  v3 = self->_cachedDescription;
  if (!v3)
  {
    _description = [(ICMusicKitRequestContext *)self _description];
    v5 = [_description copy];
    cachedDescription = self->_cachedDescription;
    self->_cachedDescription = v5;

    v3 = self->_cachedDescription;
  }

  return v3;
}

- (id)_description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  clientInfo = [(ICRequestContext *)self clientInfo];
  clientIdentifier = [clientInfo clientIdentifier];
  clientVersion = [clientInfo clientVersion];
  [v6 appendFormat:@"; client = %@/%@", clientIdentifier, clientVersion];

  personalizationMethod = self->_personalizationMethod;
  if (personalizationMethod)
  {
    if (personalizationMethod != 1)
    {
      goto LABEL_6;
    }

    v11 = @"musicUserToken";
  }

  else
  {
    v11 = @"legacy";
  }

  [v6 appendFormat:@"; personalizationMethod = %@", v11];
LABEL_6:
  personalizationStyle = [(ICMusicKitRequestContext *)self personalizationStyle];
  if (personalizationStyle == 1)
  {
    v13 = @"automatic";
  }

  else
  {
    if (personalizationStyle != 2)
    {
      goto LABEL_11;
    }

    v13 = @"always";
  }

  [v6 appendFormat:@"; personalizationStyle = %@", v13];
LABEL_11:
  if (([(ICDeveloperTokenProvider *)self->_developerTokenProvider isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    [v6 appendFormat:@"; developerTokenProvider = %@", self->_developerTokenProvider];
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__ICMusicKitRequestContext_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF49A0;
  v9[4] = self;
  v10 = blockCopy;
  v8.receiver = self;
  v8.super_class = ICMusicKitRequestContext;
  v5 = blockCopy;
  v6 = [(ICStoreRequestContext *)&v8 copyWithBlock:v9];

  return v6;
}

void __42__ICMusicKitRequestContext_copyWithBlock___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 14, *(*(a1 + 32) + 112));
  v4 = a2;
  v4[15] = *(*(a1 + 32) + 120);
  (*(*(a1 + 40) + 16))();
}

- (ICMusicKitRequestContext)initWithBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__ICMusicKitRequestContext_initWithBlock___block_invoke;
  v9[3] = &unk_1E7BF49A0;
  v11 = blockCopy;
  selfCopy = self;
  v8.receiver = selfCopy;
  v8.super_class = ICMusicKitRequestContext;
  v5 = blockCopy;
  v6 = [(ICStoreRequestContext *)&v8 initWithBlock:v9];

  return v6;
}

void __42__ICMusicKitRequestContext_initWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[ICDeveloperTokenDefaultProvider sharedProvider];
  v5 = v3[14];
  v3[14] = v4;

  v3[15] = 0;
  v6 = [v3 clientInfo];
  (*(*(a1 + 40) + 16))();
  v7 = [v3 clientInfo];

  if (v7 == v6)
  {
    v8 = [v6 bundleIdentifier];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v6 processName];
    }

    v11 = v10;

    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v15 = 138543874;
      v16 = v13;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = @"1";
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Instantiated MusicKit request context with a default client info.\nThis is not recommended, as you need to be explicit about the client identifier and client version your application is meant to use, per agreement with the AMP Core Services team.\nNevertheless, proceeding with clientIdentifier = %{public}@ and clientVersion = %{public}@.", &v15, 0x20u);
    }

    v14 = [ICClientInfo clientInfoForMusicKitRequestWithClientIdentifier:v11 clientVersion:@"1"];
    [v3 setClientInfo:v14];
  }
}

@end