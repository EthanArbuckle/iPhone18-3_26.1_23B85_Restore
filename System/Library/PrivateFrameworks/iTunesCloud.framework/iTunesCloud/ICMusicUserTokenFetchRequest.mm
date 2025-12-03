@interface ICMusicUserTokenFetchRequest
- (ICMusicUserTokenFetchRequest)initWithCoder:(id)coder;
- (ICMusicUserTokenFetchRequest)initWithDeveloperToken:(id)token clientInfo:(id)info options:(unint64_t)options;
- (void)_executeByPerformingStoreRequestWithContext:(id)context qualityOfService:(int64_t)service;
- (void)encodeWithCoder:(id)coder;
- (void)execute;
- (void)performRequestOnOperationQueue:(id)queue withResponseHandler:(id)handler;
@end

@implementation ICMusicUserTokenFetchRequest

- (void)_executeByPerformingStoreRequestWithContext:(id)context qualityOfService:(int64_t)service
{
  contextCopy = context;
  v7 = +[ICURLBagProvider sharedBagProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__ICMusicUserTokenFetchRequest__executeByPerformingStoreRequestWithContext_qualityOfService___block_invoke;
  v9[3] = &unk_1E7BF56F0;
  v9[4] = self;
  v10 = contextCopy;
  serviceCopy = service;
  v8 = contextCopy;
  [v7 getBagForRequestContext:v8 withCompletionHandler:v9];
}

void __93__ICMusicUserTokenFetchRequest__executeByPerformingStoreRequestWithContext_qualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      *buf = 138543618;
      v42 = v30;
      v43 = 2114;
      v44 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get bag with error %{public}@.", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v42 = v9;
      v43 = 2114;
      v44 = v5;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Got bag with %{public}@.", buf, 0x16u);
    }

    v10 = [v5 urlForBagKey:@"createMusicToken"];
    if (v10)
    {
      v11 = [*(a1 + 40) deviceInfo];
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v37 = v10;
      v13 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v10];
      [v13 setHTTPMethod:@"POST"];
      [v13 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v14 = [v11 deviceGUID];
      if (v14)
      {
        [v12 setObject:v14 forKey:@"guid"];
      }

      v15 = *(a1 + 32);
      v16 = *(v15 + 328);
      if (v16)
      {
        [v12 setObject:v16 forKey:@"assertion"];
        v15 = *(a1 + 32);
      }

      v35 = v14;
      v36 = v11;
      v17 = [*(v15 + 320) requestingBundleIdentifier];
      if (!v17 || (+[ICDefaults standardDefaults](ICDefaults, "standardDefaults"), v18 = objc_claimAutoreleasedReturnValue(), [v18 mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates], v19 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend(v19, "objectForKey:", v17), v20 = objc_claimAutoreleasedReturnValue(), v19, !v20))
      {
        v20 = [MEMORY[0x1E695DF00] date];
      }

      [v20 timeIntervalSince1970];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", llround(v21 * 1000.0)];
      [v12 setObject:v22 forKey:@"tcc-acceptance-date"];

      v23 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v12 options:1 error:0];
      [v13 setHTTPBody:v23];
      v24 = [[ICStoreURLRequest alloc] initWithURLRequest:v13 requestContext:*(a1 + 40)];
      [(ICURLRequest *)v24 setCancelOnHTTPErrors:0];
      +[ICURLSessionManager sharedSessionManager];
      v25 = v34 = v12;
      v26 = [v25 sessionWithQualityOfService:*(a1 + 48)];

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __93__ICMusicUserTokenFetchRequest__executeByPerformingStoreRequestWithContext_qualityOfService___block_invoke_69;
      v38[3] = &unk_1E7BF56C8;
      v27 = *(a1 + 40);
      v38[4] = *(a1 + 32);
      v39 = v27;
      v40 = v17;
      v28 = v17;
      [v26 enqueueDataRequest:v24 withCompletionHandler:v38];

      v29 = v36;
      v10 = v37;
    }

    else
    {
      v29 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7201 debugDescription:@"Could not find URL to get music user token."];
      v31 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 32);
        v33 = [v29 msv_description];
        *buf = 138543618;
        v42 = v32;
        v43 = 2114;
        v44 = v33;
        _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
      }

      [*(a1 + 32) finishWithError:v29];
    }
  }
}

void __93__ICMusicUserTokenFetchRequest__executeByPerformingStoreRequestWithContext_qualityOfService___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [v6 parsedBodyDictionary];
  v8 = [v7 objectForKey:@"error_description"];
  if (_NSIsNSString())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 statusCode];

  v11 = ICURLResponseStatusCodeGetExtendedDescription(v10);
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v13 = v12;
  if (v5)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 32);
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v37 = v11;
    v15 = "%{public}@: Finished with error %{public}@ and status code %{public}@.";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v19 = *(a1 + 32);
    *buf = 138543618;
    *&buf[4] = v19;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    v15 = "%{public}@: Finished with status code %{public}@.";
    v16 = v13;
    v17 = OS_LOG_TYPE_DEFAULT;
    v18 = 22;
  }

  _os_log_impl(&dword_1B4491000, v16, v17, v15, buf, v18);
LABEL_10:

  if (v10 == 401)
  {
    if (!v9)
    {
      v9 = @"This is most likely due to an expired or otherwise invalid developer token";
    }

    v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8101 debugDescription:{@"Failed to fetch music user token with %@ status code. %@.", v11, v9, *buf, *&buf[16], v37}];

    v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = [v20 msv_description];
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v28;
      _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (v10 == 403)
  {
    v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8100 debugDescription:{@"Response error: %@", v9}];

    v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Music user token was revoked. Error description: %{public}@", buf, 0x16u);
    }

    if (*(a1 + 48))
    {
      v23 = TCCAccessSetForBundleId();
      v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        *buf = 138543874;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        *&buf[22] = 1024;
        LODWORD(v37) = v23;
        _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Revoked TCC access for %{public}@ with status %{BOOL}u.", buf, 0x1Cu);
      }

LABEL_31:
    }
  }

  else
  {
    if (!v5 && v10 == 200)
    {
      v24 = [v7 objectForKey:@"music_token"];
      if (_NSIsNSString())
      {
        v24 = v24;
        [*(a1 + 32) setResponse:v24];
        v29 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 32);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Music user token: %@.", buf, 0x16u);
        }

        v31 = +[ICMusicUserTokenCache sharedCache];
        [v31 setCachedUserToken:v24 forDeveloperToken:*(*(a1 + 32) + 328) requestContext:*(a1 + 40) completion:0];

        v20 = 0;
      }

      else
      {
        v32 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 32);
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = 138544130;
          *&buf[4] = v33;
          *&buf[12] = 2114;
          *&buf[14] = @"music_token";
          *&buf[22] = 2114;
          v37 = v24;
          v38 = 2114;
          v39 = v35;
          _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_ERROR, "%{public}@: Server reported success, but %{public}@ was not a string: %{public}@ (of type %{public}@).", buf, 0x2Au);
        }

        v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 debugDescription:{@"%@ in response is of unexpected type.", @"music_token"}];
      }

      goto LABEL_31;
    }

    v20 = v5;
  }

  [*(a1 + 32) finishWithError:v20];
}

- (void)execute
{
  v35 = *MEMORY[0x1E69E9840];
  if (![(ICMusicUserTokenFetchRequest *)self isCancelled])
  {
    if ([(NSString *)self->_developerToken length])
    {
      requestingBundleIdentifier = [(ICClientInfo *)self->_clientInfo requestingBundleIdentifier];
      v4 = [requestingBundleIdentifier length];

      if (v4)
      {
        requestingBundleVersion = [(ICClientInfo *)self->_clientInfo requestingBundleVersion];
        v6 = [requestingBundleVersion length];

        if (v6)
        {
          v7 = +[ICPrivacyInfo sharedPrivacyInfo];
          shouldBlockPersonalizedNetworkRequestsForMusic = [v7 shouldBlockPersonalizedNetworkRequestsForMusic];

          if (shouldBlockPersonalizedNetworkRequestsForMusic)
          {
            v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7007 debugDescription:@"Not getting music user token because privacy acknowledgement is required."];
            v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              msv_description = [(ICStoreRequestContext *)v9 msv_description];
              *buf = 138543618;
              selfCopy4 = self;
              v33 = 2114;
              v34 = msv_description;
              _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
            }

            [(ICRequestOperation *)self finishWithError:v9];
          }

          else
          {
            v15 = [ICStoreRequestContext alloc];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __39__ICMusicUserTokenFetchRequest_execute__block_invoke;
            v30[3] = &unk_1E7BF91F0;
            v30[4] = self;
            v9 = [(ICStoreRequestContext *)v15 initWithBlock:v30];
            identityStore = [(ICStoreRequestContext *)v9 identityStore];
            identity = [(ICStoreRequestContext *)v9 identity];
            v29 = 0;
            v18 = [identityStore getPropertiesForUserIdentity:identity error:&v29];
            v19 = v29;

            if (v18 | v19)
            {
              currentThread = [MEMORY[0x1E696AF00] currentThread];
              qualityOfService = [currentThread qualityOfService];

              if (self->_options)
              {
                v26 = _ICLogCategoryDefault();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  selfCopy4 = self;
                  _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: shouldIgnoreCache = YES.", buf, 0xCu);
                }

                [(ICMusicUserTokenFetchRequest *)self _executeByPerformingStoreRequestWithContext:v9 qualityOfService:qualityOfService];
              }

              else
              {
                v24 = +[ICMusicUserTokenCache sharedCache];
                developerToken = self->_developerToken;
                v28[0] = MEMORY[0x1E69E9820];
                v28[1] = 3221225472;
                v28[2] = __39__ICMusicUserTokenFetchRequest_execute__block_invoke_38;
                v28[3] = &unk_1E7BF56A0;
                v28[4] = self;
                v28[5] = v9;
                v28[6] = qualityOfService;
                [v24 getCachedUserTokenForDeveloperToken:developerToken requestContext:v9 completion:v28];
              }
            }

            else
            {
              v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                selfCopy4 = self;
                _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@: No active account. Failing request.", buf, 0xCu);
              }

              v21 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7401 debugDescription:@"No active account."];
              [(ICRequestOperation *)self finishWithError:v21];
            }
          }

LABEL_18:

          return;
        }

        v12 = @"Missing requesting bundle version for user token request.";
      }

      else
      {
        v12 = @"Missing requesting bundle identifier for user token request.";
      }
    }

    else
    {
      v12 = @"Missing developer token for user token request.";
    }

    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7101 debugDescription:{@"Invalid request: %@", v12}];
    [(ICRequestOperation *)self finishWithError:v9];
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      msv_description2 = [(ICStoreRequestContext *)v9 msv_description];
      *buf = 138543618;
      selfCopy4 = self;
      v33 = 2114;
      v34 = msv_description2;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Invalid request. %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
  [(ICRequestOperation *)self finishWithError:?];
}

void __39__ICMusicUserTokenFetchRequest_execute__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[ICUserIdentity activeAccount];
  [v4 setIdentity:v3];

  [v4 setClientInfo:*(*(a1 + 32) + 320)];
}

uint64_t __39__ICMusicUserTokenFetchRequest_execute__block_invoke_38(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [*(a1 + 32) setResponse:a2];
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Found music user token in cache.", &v8, 0xCu);
    }

    return [*(a1 + 32) finish];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Did not find music user token in cache.", &v8, 0xCu);
    }

    return [*(a1 + 32) _executeByPerformingStoreRequestWithContext:*(a1 + 40) qualityOfService:*(a1 + 48)];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICMusicUserTokenFetchRequest;
  coderCopy = coder;
  [(ICRemoteRequestOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clientInfo forKey:{@"clientInfo", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_developerToken forKey:@"developerToken"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (ICMusicUserTokenFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICMusicUserTokenFetchRequest;
  v5 = [(ICRemoteRequestOperation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerToken"];
    developerToken = v5->_developerToken;
    v5->_developerToken = v8;

    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)performRequestOnOperationQueue:(id)queue withResponseHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__ICMusicUserTokenFetchRequest_performRequestOnOperationQueue_withResponseHandler___block_invoke;
  v8[3] = &unk_1E7BFA490;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(ICRequestOperation *)self performRequestOnOperationQueue:queue withCompletionHandler:v8];
}

void __83__ICMusicUserTokenFetchRequest_performRequestOnOperationQueue_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = [v3 response];
    v5 = *(a1 + 40);
    v6 = [v4 msv_errorByRemovingUnsafeUserInfo];

    (*(v5 + 16))(v5, v7, v6);
  }
}

- (ICMusicUserTokenFetchRequest)initWithDeveloperToken:(id)token clientInfo:(id)info options:(unint64_t)options
{
  tokenCopy = token;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = ICMusicUserTokenFetchRequest;
  v11 = [(ICRequestOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_developerToken, token);
    objc_storeStrong(&v12->_clientInfo, info);
    v12->_options = options;
  }

  return v12;
}

@end