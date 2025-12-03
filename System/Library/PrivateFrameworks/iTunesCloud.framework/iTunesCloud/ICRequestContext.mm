@interface ICRequestContext
- (BOOL)isEqual:(id)equal;
- (ICRequestContext)initWithBlock:(id)block;
- (ICRequestContext)initWithClientInfo:(id)info;
- (ICRequestContext)initWithClientInfo:(id)info authenticationProvider:(id)provider;
- (ICRequestContext)initWithCoder:(id)coder;
- (NSString)userAgent;
- (id)_genericUserAgent;
- (id)_userAgentWithPlatformVersion;
- (id)_webkitUserAgentVersion;
- (id)copyWithBlock:(id)block;
- (id)description;
- (unint64_t)hash;
- (void)enableRequestNotifications;
- (void)encodeWithCoder:(id)coder;
- (void)setAuthenticationProvider:(id)provider;
- (void)setClientInfo:(id)info;
- (void)setDeviceInfo:(id)info;
- (void)setNetworkConstraints:(id)constraints;
- (void)setTag:(id)tag;
@end

@implementation ICRequestContext

- (id)_userAgentWithPlatformVersion
{
  _genericUserAgent = [(ICRequestContext *)self _genericUserAgent];
  v4 = [_genericUserAgent mutableCopy];

  productPlatform = [(ICDeviceInfo *)self->_deviceInfo productPlatform];
  productVersion = [(ICDeviceInfo *)self->_deviceInfo productVersion];
  v7 = +[ICDeviceInfo currentDeviceInfo];
  isMac = [v7 isMac];

  if (isMac)
  {
    if ([productVersion length])
    {
      [v4 appendFormat:@" (Macintosh; OS X %@)", productVersion];
    }

    _webkitUserAgentVersion = [(ICRequestContext *)self _webkitUserAgentVersion];
    if ([_webkitUserAgentVersion length])
    {
      [v4 appendFormat:@" AppleWebKit/%@", _webkitUserAgentVersion];
    }

LABEL_14:

    goto LABEL_15;
  }

  v10 = +[ICDeviceInfo currentDeviceInfo];
  isAppleTV = [v10 isAppleTV];

  if (isAppleTV)
  {

    productPlatform = @"iOS";
  }

  if (-[__CFString length](productPlatform, "length") && [productVersion length])
  {
    [v4 appendFormat:@" %@/%@", productPlatform, productVersion];
  }

  if ([(ICDeviceInfo *)self->_deviceInfo isAppleTV])
  {
    _webkitUserAgentVersion = [(ICDeviceInfo *)self->_deviceInfo productVersion];
    if ([_webkitUserAgentVersion length])
    {
      [v4 appendFormat:@" AppleTV/%@", _webkitUserAgentVersion];
    }

    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

- (id)_genericUserAgent
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  _clientIdentifierForUserAgent = [(ICClientInfo *)self->_clientInfo _clientIdentifierForUserAgent];
  clientVersion = [(ICClientInfo *)self->_clientInfo clientVersion];
  v6 = [v3 initWithFormat:@"%@/%@", _clientIdentifierForUserAgent, clientVersion];

  return v6;
}

- (id)_webkitUserAgentVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18954;
  v10 = __Block_byref_object_dispose__18955;
  v11 = 0;
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  if ([v2 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__ICRequestContext__webkitUserAgentVersion__block_invoke;
    v5[3] = &unk_1E7BF60F0;
    v5[4] = &v6;
    [v2 enumerateObjectsUsingBlock:v5];
  }

  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__ICRequestContext__webkitUserAgentVersion__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = MEMORY[0x1E696AEC0];
  v20[0] = v6;
  v20[1] = @"Frameworks";
  v20[2] = @"WebKit.framework";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v9 = [v7 pathWithComponents:v8];

  v10 = [MEMORY[0x1E696AAE8] bundleWithPath:v9];
  v11 = [v10 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];

  if (v11)
  {
    *a4 = 1;
    v12 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v13 = [v12 invertedSet];
    v14 = [v11 rangeOfCharacterFromSet:v13];

    if (v14 < 4 || v14 == 0x7FFFFFFFFFFFFFFFLL && [v11 length] < 4)
    {
      v15 = *(*(a1 + 32) + 8);
      v16 = v11;
      v17 = *(v15 + 40);
      *(v15 + 40) = v16;
    }

    else
    {
      v18 = [v11 substringFromIndex:1];
      v19 = *(*(a1 + 32) + 8);
      v17 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }
}

- (NSString)userAgent
{
  if ([(ICDeviceInfo *)self->_deviceInfo isInternalBuild])
  {
    [(ICRequestContext *)self _genericUserAgent];
  }

  else
  {
    [(ICRequestContext *)self _userAgentWithPlatformVersion];
  }
  v3 = ;

  return v3;
}

- (void)enableRequestNotifications
{
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICRequestContext.m" lineNumber:207 description:@"Mutation not allowed beyond initialization."];
  }

  self->_requestNotificationsEnabled = 1;
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICRequestContext.m" lineNumber:202 description:@"Mutation not allowed beyond initialization."];
  }

  tag = self->_tag;
  self->_tag = tagCopy;
}

- (void)setNetworkConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICRequestContext.m" lineNumber:197 description:@"Mutation not allowed beyond initialization."];
  }

  v5 = [constraintsCopy copy];
  networkConstraints = self->_networkConstraints;
  self->_networkConstraints = v5;
}

- (void)setDeviceInfo:(id)info
{
  infoCopy = info;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICRequestContext.m" lineNumber:192 description:@"Mutation not allowed beyond initialization."];
  }

  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = infoCopy;
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICRequestContext.m" lineNumber:187 description:@"Mutation not allowed beyond initialization."];
  }

  v5 = [infoCopy copy];
  clientInfo = self->_clientInfo;
  self->_clientInfo = v5;
}

- (void)setAuthenticationProvider:(id)provider
{
  providerCopy = provider;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICRequestContext.m" lineNumber:182 description:@"Mutation not allowed beyond initialization."];
  }

  authenticationProvider = self->_authenticationProvider;
  self->_authenticationProvider = providerCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_clientInfo forKey:@"clientInfo"];
  [coderCopy encodeObject:self->_networkConstraints forKey:@"networkConstraints"];
  if (self->_authenticationProvider)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (_ICURLResponseAuthenticationProviderIsAllowedForClassName(v6))
    {
      [coderCopy encodeObject:v6 forKey:@"authenticationProviderClassName"];
      [coderCopy encodeObject:self->_authenticationProvider forKey:@"authenticationProvider"];
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{@"Attempted to encode an instance of ICRequestContext with an unallowed class name for authenticationProvider: %@.", v6}];
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        msv_description = [v7 msv_description];
        *buf = 138543362;
        v11 = msv_description;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      [coderCopy failWithError:v7];
    }
  }
}

- (ICRequestContext)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ICRequestContext;
  v5 = [(ICRequestContext *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientInfo"];
    v7 = [v6 copy];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v7;

    v9 = +[ICDeviceInfo currentDeviceInfo];
    deviceInfo = v5->_deviceInfo;
    v5->_deviceInfo = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkConstraints"];
    v12 = [v11 copy];
    networkConstraints = v5->_networkConstraints;
    v5->_networkConstraints = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationProviderClassName"];
    if (_ICURLResponseAuthenticationProviderIsAllowedForClassName(v14))
    {
      v15 = NSClassFromString(v14);
      if (v15)
      {
        v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"authenticationProvider"];
        authenticationProvider = v5->_authenticationProvider;
        v5->_authenticationProvider = v16;

        goto LABEL_11;
      }

      v18 = @"Failed to look up class of authentication provider with name: %@.";
    }

    else
    {
      v18 = @"Attempted to decode an instance of ICRequestContext with an unallowed class name for authenticationProvider: %@.";
    }

    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{v18, v14}];
    if (v19)
    {
      v20 = v19;
      v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        msv_description = [v20 msv_description];
        *buf = 138543362;
        v27 = msv_description;
        _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      [coderCopy failWithError:v20];
      v5 = 0;
      goto LABEL_13;
    }

LABEL_11:
    if (v5->_authenticationProvider)
    {
LABEL_14:

      goto LABEL_15;
    }

    v23 = +[ICURLResponseAuthenticationProvider defaultProvider];
    v20 = v5->_authenticationProvider;
    v5->_authenticationProvider = v23;
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
    if ([(ICRequestContext *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      clientInfo = v5->_clientInfo;
      v7 = self->_clientInfo;
      v8 = v7;
      if (v7 == clientInfo)
      {
      }

      else
      {
        v9 = [(ICClientInfo *)v7 isEqual:clientInfo];

        if (!v9)
        {
          goto LABEL_19;
        }
      }

      deviceInfo = v5->_deviceInfo;
      v12 = self->_deviceInfo;
      v13 = v12;
      if (v12 == deviceInfo)
      {
      }

      else
      {
        v14 = [(ICDeviceInfo *)v12 isEqual:deviceInfo];

        if (!v14)
        {
          goto LABEL_19;
        }
      }

      authenticationProvider = v5->_authenticationProvider;
      v16 = self->_authenticationProvider;
      v17 = v16;
      if (v16 == authenticationProvider)
      {
      }

      else
      {
        v18 = [(ICURLResponseAuthenticationProvider *)v16 isEqual:authenticationProvider];

        if (!v18)
        {
          goto LABEL_19;
        }
      }

      networkConstraints = v5->_networkConstraints;
      v20 = self->_networkConstraints;
      v21 = v20;
      if (v20 == networkConstraints)
      {
      }

      else
      {
        v22 = [(ICNetworkConstraints *)v20 isEqual:networkConstraints];

        if (!v22)
        {
LABEL_19:
          v10 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      tag = self->_tag;
      v24 = v5->_tag;
      v25 = tag;
      v26 = v25;
      if (v25 == v24)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v25 isEqual:v24];
      }

      goto LABEL_25;
    }

    v10 = 0;
  }

LABEL_26:

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
  v98 = __ROR8__(v14 + v13, 32);
  v104 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v92 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_clientInfo;
  v19 = [(ICClientInfo *)v18 hash];
  v20 = (v17 + v92) ^ __ROR8__(v92, 51);
  v21 = v98 + (v104 ^ v19);
  v22 = __ROR8__(v104 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v92, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v99 = __ROR8__(v25, 32);
  v105 = v24;
  v87 = v23 ^ v19;
  v93 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_deviceInfo;
  v27 = [(ICDeviceInfo *)v26 hash];
  v28 = (v87 + v93) ^ __ROR8__(v93, 51);
  v29 = v99 + (v105 ^ v27);
  v30 = __ROR8__(v105 ^ v27, 48);
  v31 = (v29 ^ v30) + __ROR8__(v87 + v93, 32);
  v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
  v33 = v29 + v28;
  v100 = __ROR8__(v33, 32);
  v106 = v32;
  v88 = v31 ^ v27;
  v94 = v33 ^ __ROR8__(v28, 47);

  v34 = self->_authenticationProvider;
  v35 = [(ICURLResponseAuthenticationProvider *)v34 hash];
  v36 = (v88 + v94) ^ __ROR8__(v94, 51);
  v37 = v100 + (v106 ^ v35);
  v38 = __ROR8__(v106 ^ v35, 48);
  v39 = (v37 ^ v38) + __ROR8__(v88 + v94, 32);
  v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
  v41 = v37 + v36;
  v101 = __ROR8__(v41, 32);
  v107 = v40;
  v89 = v39 ^ v35;
  v95 = v41 ^ __ROR8__(v36, 47);

  v42 = self->_networkConstraints;
  v43 = [(ICNetworkConstraints *)v42 hash];
  v44 = (v89 + v95) ^ __ROR8__(v95, 51);
  v45 = v101 + (v107 ^ v43);
  v46 = __ROR8__(v107 ^ v43, 48);
  v47 = (v45 ^ v46) + __ROR8__(v89 + v95, 32);
  v48 = v47 ^ __ROR8__(v45 ^ v46, 43);
  v49 = v45 + v44;
  v102 = __ROR8__(v49, 32);
  v108 = v48;
  v90 = v47 ^ v43;
  v96 = v49 ^ __ROR8__(v44, 47);

  v50 = self->_tag;
  v51 = [v50 hash];
  v52 = (v90 + v96) ^ __ROR8__(v96, 51);
  v53 = v102 + (v108 ^ v51);
  v54 = __ROR8__(v108 ^ v51, 48);
  v55 = (v53 ^ v54) + __ROR8__(v90 + v96, 32);
  v56 = v55 ^ __ROR8__(v53 ^ v54, 43);
  v57 = v53 + v52;
  v103 = __ROR8__(v57, 32);
  v109 = v56;
  v91 = v55 ^ v51;
  v97 = v57 ^ __ROR8__(v52, 47);

  v58 = (v91 + v97) ^ __ROR8__(v97, 51);
  v59 = v103 + (v109 ^ 0x3000000000000000);
  v60 = __ROR8__(v109 ^ 0x3000000000000000, 48);
  v61 = (v59 ^ v60) + __ROR8__(v91 + v97, 32);
  v62 = v61 ^ __ROR8__(v59 ^ v60, 43);
  v63 = v59 + v58;
  v64 = v63 ^ __ROR8__(v58, 47);
  v65 = (v61 ^ 0x3000000000000000) + v64;
  v66 = v65 ^ __ROR8__(v64, 51);
  v67 = (__ROR8__(v63, 32) ^ 0xFFLL) + v62;
  v68 = __ROR8__(v62, 48);
  v69 = __ROR8__(v65, 32) + (v67 ^ v68);
  v70 = v69 ^ __ROR8__(v67 ^ v68, 43);
  v71 = v66 + v67;
  v72 = v71 ^ __ROR8__(v66, 47);
  v73 = v72 + v69;
  v74 = v73 ^ __ROR8__(v72, 51);
  v75 = __ROR8__(v71, 32) + v70;
  v76 = __ROR8__(v70, 48);
  v77 = __ROR8__(v73, 32) + (v75 ^ v76);
  v78 = v77 ^ __ROR8__(v75 ^ v76, 43);
  v79 = v74 + v75;
  v80 = v79 ^ __ROR8__(v74, 47);
  v81 = v80 + v77;
  v82 = v81 ^ __ROR8__(v80, 51);
  v83 = __ROR8__(v79, 32) + v78;
  v84 = __ROR8__(v78, 48);
  v85 = __ROR8__(v81, 32) + (v83 ^ v84);
  return (v82 + v83) ^ __ROR8__(v82, 47) ^ v85 ^ __ROR8__(v82 + v83, 32) ^ v85 ^ __ROR8__(v83 ^ v84, 43);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  clientIdentifier = [(ICClientInfo *)self->_clientInfo clientIdentifier];
  clientVersion = [(ICClientInfo *)self->_clientInfo clientVersion];
  v7 = [v3 stringWithFormat:@"<%@: %p [%@/%@]>", v4, self, clientIdentifier, clientVersion];

  return v7;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(objc_opt_class());
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__ICRequestContext_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF60C8;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

void __34__ICRequestContext_copyWithBlock___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 3, *(*(a1 + 32) + 24));
  v4 = a2;
  objc_storeStrong(v4 + 4, *(*(a1 + 32) + 32));
  objc_storeStrong(v4 + 5, *(*(a1 + 32) + 40));
  objc_storeStrong(v4 + 2, *(*(a1 + 32) + 16));
  objc_storeStrong(v4 + 6, *(*(a1 + 32) + 48));
  *(v4 + 9) = *(*(a1 + 32) + 9);
  (*(*(a1 + 40) + 16))();
}

- (ICRequestContext)initWithBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = ICRequestContext;
  v5 = [(ICRequestContext *)&v14 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) |= 1u;
    v7 = +[ICURLResponseAuthenticationProvider defaultProvider];
    authenticationProvider = v6->_authenticationProvider;
    v6->_authenticationProvider = v7;

    v9 = +[ICClientInfo defaultInfo];
    clientInfo = v6->_clientInfo;
    v6->_clientInfo = v9;

    v11 = +[ICDeviceInfo currentDeviceInfo];
    deviceInfo = v6->_deviceInfo;
    v6->_deviceInfo = v11;

    (blockCopy)[2](blockCopy, v6);
    *(v6 + 8) &= ~1u;
  }

  return v6;
}

- (ICRequestContext)initWithClientInfo:(id)info authenticationProvider:(id)provider
{
  infoCopy = info;
  providerCopy = provider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__ICRequestContext_initWithClientInfo_authenticationProvider___block_invoke;
  v12[3] = &unk_1E7BF60A0;
  v13 = infoCopy;
  v14 = providerCopy;
  v8 = providerCopy;
  v9 = infoCopy;
  v10 = [(ICRequestContext *)self initWithBlock:v12];

  return v10;
}

void __62__ICRequestContext_initWithClientInfo_authenticationProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setClientInfo:v3];
  [v4 setAuthenticationProvider:*(a1 + 40)];
}

- (ICRequestContext)initWithClientInfo:(id)info
{
  infoCopy = info;
  v5 = +[ICURLResponseAuthenticationProvider defaultProvider];
  v6 = [(ICRequestContext *)self initWithClientInfo:infoCopy authenticationProvider:v5];

  return v6;
}

@end