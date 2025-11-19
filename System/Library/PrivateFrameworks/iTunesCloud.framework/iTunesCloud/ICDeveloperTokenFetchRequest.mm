@interface ICDeveloperTokenFetchRequest
+ (id)_createMediaTokenServiceForClientInfo:(id)a3 clientType:(int64_t)a4 requester:(id)a5;
+ (void)_invalidateCachedDeveloperTokenForClientInfo:(id)a3 requester:(id)a4 usingMediaTokenService:(id)a5;
+ (void)invalidateCachedDeveloperTokenForClientInfo:(id)a3 clientType:(int64_t)a4 requester:(id)a5 completionHandler:(id)a6;
- (ICDeveloperTokenFetchRequest)initWithClientInfo:(id)a3 options:(unint64_t)a4;
- (ICDeveloperTokenFetchRequest)initWithCoder:(id)a3;
- (void)_didFetchMediaToken:(id)a3 withError:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)execute;
- (void)performRequestOnOperationQueue:(id)a3 withResponseHandler:(id)a4;
@end

@implementation ICDeveloperTokenFetchRequest

- (void)_didFetchMediaToken:(id)a3 withError:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 tokenString];
  [(ICRemoteRequestOperation *)self setResponse:v7];
  if (!v6)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v8 = v6;
  v9 = [v8 domain];
  v10 = *MEMORY[0x1E698C548];
  if ([v9 isEqualToString:*MEMORY[0x1E698C548]])
  {
    v11 = [v8 code];

    if (v11 == 301)
    {
      v12 = [v8 msv_underlyingError];
      v13 = [v12 domain];
      if ([v13 isEqualToString:v10])
      {
        v14 = [v12 code];

        if (v14 != 301)
        {
          goto LABEL_8;
        }

        v13 = v8;
        v8 = v12;
      }

LABEL_8:
      v15 = [v8 userInfo];
      v16 = [v15 objectForKey:*MEMORY[0x1E698C568]];
      v17 = [v16 integerValue];

      v18 = ICURLResponseStatusCodeGetExtendedDescription(v17);
      v19 = v18;
      v20 = MEMORY[0x1E696ABC0];
      if (v17)
      {
        if (v17 == 404)
        {
          v21 = [(ICClientInfo *)self->_clientInfo clientIdentifier];
          v22 = [v20 msv_errorWithDomain:@"ICError" code:-8200 underlyingError:v8 debugDescription:{@"Media API Token Service responded with status code: %@. This suggests that %@ was likely not registered as a valid client identifier.", v19, v21}];

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
    v24 = [v22 msv_description];
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v24;
    _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
  }

LABEL_17:
  mediaTokenService = self->_mediaTokenService;
  self->_mediaTokenService = 0;

  v26 = [v22 msv_errorByRemovingUnsafeUserInfo];
  [(ICRequestOperation *)self finishWithError:v26];
}

- (void)execute
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
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

    v7 = [(ICClientInfo *)self->_clientInfo clientIdentifier];
    if (self->_options)
    {
      [objc_opt_class() _invalidateCachedDeveloperTokenForClientInfo:self->_clientInfo requester:self usingMediaTokenService:self->_mediaTokenService];
    }

    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_mediaTokenService;
      *buf = 138543874;
      v14 = self;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting developer token using %{public}@ with client identifier %{public}@.", buf, 0x20u);
    }

    v10 = [(AMSMediaTokenService *)self->_mediaTokenService fetchMediaToken];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__ICDeveloperTokenFetchRequest_execute__block_invoke;
    v11[3] = &unk_1E7BF7DB8;
    v11[4] = self;
    v12 = v7;
    v4 = v7;
    [v10 addFinishBlock:v11];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICDeveloperTokenFetchRequest;
  v4 = a3;
  [(ICRemoteRequestOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_clientInfo forKey:{@"clientInfo", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_clientType forKey:@"clientType"];
  [v4 encodeInteger:self->_options forKey:@"options"];
}

- (ICDeveloperTokenFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDeveloperTokenFetchRequest;
  v5 = [(ICRemoteRequestOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v6;

    v5->_clientType = [v4 decodeIntegerForKey:@"clientType"];
    v5->_options = [v4 decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)performRequestOnOperationQueue:(id)a3 withResponseHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__ICDeveloperTokenFetchRequest_performRequestOnOperationQueue_withResponseHandler___block_invoke;
  v8[3] = &unk_1E7BFA490;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(ICRequestOperation *)self performRequestOnOperationQueue:a3 withCompletionHandler:v8];
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

- (ICDeveloperTokenFetchRequest)initWithClientInfo:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ICDeveloperTokenFetchRequest;
  v7 = [(ICRequestOperation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    clientInfo = v7->_clientInfo;
    v7->_clientInfo = v8;

    v7->_clientType = 0;
    v7->_options = a4;
  }

  return v7;
}

+ (void)_invalidateCachedDeveloperTokenForClientInfo:(id)a3 requester:(id)a4 usingMediaTokenService:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v9 invalidateMediaToken];
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 clientIdentifier];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidated cached developer token using %{public}@ with client identifier %{public}@.", &v12, 0x20u);
  }
}

+ (id)_createMediaTokenServiceForClientInfo:(id)a3 clientType:(int64_t)a4 requester:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [v7 bagProfile];
  v10 = [v7 bagProfileVersion];
  v11 = [MEMORY[0x1E698C7D8] bagForProfile:v9 profileVersion:v10];
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Instantiated AMSBag with profile %{public}@ and version %{public}@: <AMSBag: %p>.", &v18, 0x2Au);
  }

  v13 = [v7 clientIdentifier];
  v14 = [objc_alloc(MEMORY[0x1E698C9E8]) initWithClientIdentifier:v13 bag:v11];
  v15 = v14;
  if (a4 <= 1)
  {
    [v14 setClientType:a4];
  }

  v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Instantiated AMSMediaTokenService with client identifier %{public}@: %{public}@.", &v18, 0x20u);
  }

  return v15;
}

+ (void)invalidateCachedDeveloperTokenForClientInfo:(id)a3 clientType:(int64_t)a4 requester:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a1 _createMediaTokenServiceForClientInfo:v12 clientType:a4 requester:v11];
  [a1 _invalidateCachedDeveloperTokenForClientInfo:v12 requester:v11 usingMediaTokenService:v13];

  v10[2](v10, 1, 0);
}

@end