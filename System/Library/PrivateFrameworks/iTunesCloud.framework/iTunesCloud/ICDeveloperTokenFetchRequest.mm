@interface ICDeveloperTokenFetchRequest
+ (id)_createMediaTokenServiceForClientInfo:(id)info clientType:(int64_t)type requester:(id)requester;
+ (void)_invalidateCachedDeveloperTokenForClientInfo:(id)info requester:(id)requester usingMediaTokenService:(id)service;
+ (void)invalidateCachedDeveloperTokenForClientInfo:(id)info clientType:(int64_t)type requester:(id)requester completionHandler:(id)handler;
- (ICDeveloperTokenFetchRequest)initWithClientInfo:(id)info options:(unint64_t)options;
- (ICDeveloperTokenFetchRequest)initWithCoder:(id)coder;
- (void)_didFetchMediaToken:(id)token withError:(id)error;
- (void)encodeWithCoder:(id)coder;
- (void)execute;
- (void)performRequestOnOperationQueue:(id)queue withResponseHandler:(id)handler;
@end

@implementation ICDeveloperTokenFetchRequest

- (void)_didFetchMediaToken:(id)token withError:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  tokenString = [token tokenString];
  [(ICRemoteRequestOperation *)self setResponse:tokenString];
  if (!errorCopy)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v8 = errorCopy;
  domain = [v8 domain];
  v10 = *MEMORY[0x1E698C548];
  if ([domain isEqualToString:*MEMORY[0x1E698C548]])
  {
    code = [v8 code];

    if (code == 301)
    {
      msv_underlyingError = [v8 msv_underlyingError];
      domain2 = [msv_underlyingError domain];
      if ([domain2 isEqualToString:v10])
      {
        code2 = [msv_underlyingError code];

        if (code2 != 301)
        {
          goto LABEL_8;
        }

        domain2 = v8;
        v8 = msv_underlyingError;
      }

LABEL_8:
      userInfo = [v8 userInfo];
      v16 = [userInfo objectForKey:*MEMORY[0x1E698C568]];
      integerValue = [v16 integerValue];

      v18 = ICURLResponseStatusCodeGetExtendedDescription(integerValue);
      v19 = v18;
      v20 = MEMORY[0x1E696ABC0];
      if (integerValue)
      {
        if (integerValue == 404)
        {
          clientIdentifier = [(ICClientInfo *)self->_clientInfo clientIdentifier];
          v22 = [v20 msv_errorWithDomain:@"ICError" code:-8200 underlyingError:v8 debugDescription:{@"Media API Token Service responded with status code: %@. This suggests that %@ was likely not registered as a valid client identifier.", v19, clientIdentifier}];

          goto LABEL_21;
        }

        v27 = @"Media API Token Service's response was invalid (status code: %@).";
        v28 = v18;
      }

      else
      {
        v27 = @"Media API Token Service's response was invalid.";
      }

      v22 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8200 underlyingError:v8 debugDescription:{v27, v28}];
LABEL_21:

      if (v22)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

  v22 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8200 underlyingError:v8 debugDescription:{@"Failed to fetch media token from %@.", self->_mediaTokenService}];
LABEL_14:
  v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    msv_description = [v22 msv_description];
    *buf = 138543618;
    selfCopy = self;
    v31 = 2114;
    v32 = msv_description;
    _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
  }

LABEL_17:
  mediaTokenService = self->_mediaTokenService;
  self->_mediaTokenService = 0;

  msv_errorByRemovingUnsafeUserInfo = [v22 msv_errorByRemovingUnsafeUserInfo];
  [(ICRequestOperation *)self finishWithError:msv_errorByRemovingUnsafeUserInfo];
}

- (void)execute
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing request.", buf, 0xCu);
  }

  if ([(ICDeveloperTokenFetchRequest *)self isCancelled])
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
    [(ICRequestOperation *)self finishWithError:v4];
  }

  else
  {
    v5 = [objc_opt_class() _createMediaTokenServiceForClientInfo:self->_clientInfo clientType:self->_clientType requester:self];
    mediaTokenService = self->_mediaTokenService;
    self->_mediaTokenService = v5;

    clientIdentifier = [(ICClientInfo *)self->_clientInfo clientIdentifier];
    if (self->_options)
    {
      [objc_opt_class() _invalidateCachedDeveloperTokenForClientInfo:self->_clientInfo requester:self usingMediaTokenService:self->_mediaTokenService];
    }

    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_mediaTokenService;
      *buf = 138543874;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = clientIdentifier;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting developer token using %{public}@ with client identifier %{public}@.", buf, 0x20u);
    }

    fetchMediaToken = [(AMSMediaTokenService *)self->_mediaTokenService fetchMediaToken];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__ICDeveloperTokenFetchRequest_execute__block_invoke;
    v11[3] = &unk_1E7BF7DB8;
    v11[4] = self;
    v12 = clientIdentifier;
    v4 = clientIdentifier;
    [fetchMediaToken addFinishBlock:v11];
  }
}

void __39__ICDeveloperTokenFetchRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = [v5 msv_description];
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Media token request finished for client identifier %{public}@. error=%{public}@", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Media token request finished for client identifier %{public}@.", &v14, 0x16u);
  }

  [*(a1 + 32) _didFetchMediaToken:v6 withError:v5];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICDeveloperTokenFetchRequest;
  coderCopy = coder;
  [(ICRemoteRequestOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clientInfo forKey:{@"clientInfo", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_clientType forKey:@"clientType"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (ICDeveloperTokenFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICDeveloperTokenFetchRequest;
  v5 = [(ICRemoteRequestOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v6;

    v5->_clientType = [coderCopy decodeIntegerForKey:@"clientType"];
    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)performRequestOnOperationQueue:(id)queue withResponseHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__ICDeveloperTokenFetchRequest_performRequestOnOperationQueue_withResponseHandler___block_invoke;
  v8[3] = &unk_1E7BFA490;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(ICRequestOperation *)self performRequestOnOperationQueue:queue withCompletionHandler:v8];
}

void __83__ICDeveloperTokenFetchRequest_performRequestOnOperationQueue_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 response];
    (*(*(a1 + 40) + 16))();
  }
}

- (ICDeveloperTokenFetchRequest)initWithClientInfo:(id)info options:(unint64_t)options
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = ICDeveloperTokenFetchRequest;
  v7 = [(ICRequestOperation *)&v11 init];
  if (v7)
  {
    v8 = [infoCopy copy];
    clientInfo = v7->_clientInfo;
    v7->_clientInfo = v8;

    v7->_clientType = 0;
    v7->_options = options;
  }

  return v7;
}

+ (void)_invalidateCachedDeveloperTokenForClientInfo:(id)info requester:(id)requester usingMediaTokenService:(id)service
{
  v18 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  requesterCopy = requester;
  serviceCopy = service;
  [serviceCopy invalidateMediaToken];
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = [infoCopy clientIdentifier];
    v12 = 138543874;
    v13 = requesterCopy;
    v14 = 2114;
    v15 = serviceCopy;
    v16 = 2114;
    v17 = clientIdentifier;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidated cached developer token using %{public}@ with client identifier %{public}@.", &v12, 0x20u);
  }
}

+ (id)_createMediaTokenServiceForClientInfo:(id)info clientType:(int64_t)type requester:(id)requester
{
  v26 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  requesterCopy = requester;
  bagProfile = [infoCopy bagProfile];
  bagProfileVersion = [infoCopy bagProfileVersion];
  v11 = [MEMORY[0x1E698C7D8] bagForProfile:bagProfile profileVersion:bagProfileVersion];
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = requesterCopy;
    v20 = 2114;
    v21 = bagProfile;
    v22 = 2114;
    v23 = bagProfileVersion;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Instantiated AMSBag with profile %{public}@ and version %{public}@: <AMSBag: %p>.", &v18, 0x2Au);
  }

  clientIdentifier = [infoCopy clientIdentifier];
  v14 = [objc_alloc(MEMORY[0x1E698C9E8]) initWithClientIdentifier:clientIdentifier bag:v11];
  v15 = v14;
  if (type <= 1)
  {
    [v14 setClientType:type];
  }

  v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543874;
    v19 = requesterCopy;
    v20 = 2114;
    v21 = clientIdentifier;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Instantiated AMSMediaTokenService with client identifier %{public}@: %{public}@.", &v18, 0x20u);
  }

  return v15;
}

+ (void)invalidateCachedDeveloperTokenForClientInfo:(id)info clientType:(int64_t)type requester:(id)requester completionHandler:(id)handler
{
  handlerCopy = handler;
  requesterCopy = requester;
  infoCopy = info;
  v13 = [self _createMediaTokenServiceForClientInfo:infoCopy clientType:type requester:requesterCopy];
  [self _invalidateCachedDeveloperTokenForClientInfo:infoCopy requester:requesterCopy usingMediaTokenService:v13];

  handlerCopy[2](handlerCopy, 1, 0);
}

@end