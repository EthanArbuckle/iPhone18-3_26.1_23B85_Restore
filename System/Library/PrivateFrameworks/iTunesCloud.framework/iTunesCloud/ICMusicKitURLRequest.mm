@interface ICMusicKitURLRequest
+ (unint64_t)_defaultMaxRetryCountForReason:(id)reason;
- (ICMusicKitRequestContext)requestContext;
- (ICMusicKitURLRequest)initWithURL:(id)l requestContext:(id)context;
- (ICMusicKitURLRequest)initWithURLRequest:(id)request requestContext:(id)context resumeData:(id)data;
- (ICStoreURLRequest)_pendingEquivalentStoreURLRequest;
- (NSDictionary)additionalHTTPCookies;
- (id)_buildStoreURLRequestWithUpdatedDomains:(id)domains withBag:(id)bag;
- (id)_description;
- (id)description;
- (void)_buildEquivalentStoreURLRequestWithDeveloperToken:(id)token completionHandler:(id)handler;
- (void)_buildMusicKitURLRequestWithBaseURLRequest:(id)request completionHandler:(id)handler;
- (void)_buildStoreURLRequestWithUpdatedDomains:(id)domains completionHandler:(id)handler;
- (void)_buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest:(id)request developerToken:(id)token completionHandler:(id)handler;
- (void)_setDeveloperToken:(id)token;
- (void)_updateURLSessionManagedPropertiesForEquivalentStoreURLRequest:(id)request;
- (void)buildURLRequestWithCompletionHandler:(id)handler;
@end

@implementation ICMusicKitURLRequest

- (void)_updateURLSessionManagedPropertiesForEquivalentStoreURLRequest:(id)request
{
  requestCopy = request;
  currentURLRequest = [(ICURLRequest *)self currentURLRequest];
  [requestCopy setCurrentURLRequest:currentURLRequest];

  [requestCopy setRedirectCount:{-[ICURLRequest redirectCount](self, "redirectCount")}];
  [requestCopy setRequestState:{-[ICURLRequest requestState](self, "requestState")}];
  error = [(ICURLRequest *)self error];
  [requestCopy setError:error];

  [requestCopy setHandlingType:{-[ICURLRequest handlingType](self, "handlingType")}];
  retryReason = [(ICURLRequest *)self retryReason];
  [requestCopy setRetryReason:retryReason];

  [(ICURLRequest *)self retryDelay];
  [requestCopy setRetryDelay:?];
}

- (void)_buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest:(id)request developerToken:(id)token completionHandler:(id)handler
{
  requestCopy = request;
  tokenCopy = token;
  handlerCopy = handler;
  v11 = [requestCopy copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __114__ICMusicKitURLRequest__buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest_developerToken_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF9290;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = requestCopy;
  v18 = handlerCopy;
  v12 = requestCopy;
  v13 = tokenCopy;
  v14 = handlerCopy;
  [(ICMusicKitURLRequest *)self _buildStoreURLRequestWithUpdatedDomains:v11 completionHandler:v15];
}

void __114__ICMusicKitURLRequest__buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest_developerToken_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = [a2 mutableCopy];
    if ([*(*(a1 + 32) + 304) count])
    {
      [v5 ic_appendHTTPCookies:*(*(a1 + 32) + 304)];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", *(a1 + 40)];
    [v5 setValue:v6 forHTTPHeaderField:@"Authorization"];
    v7 = [*(a1 + 32) requestContext];
    v8 = +[ICStoreURLRequest _shouldPersonalizeRequestForRequestContext:personalizationStyle:](ICStoreURLRequest, "_shouldPersonalizeRequestForRequestContext:personalizationStyle:", v7, [v7 _storeRequestPersonalizationStyle]);
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "unpersonalized";
      v11 = *(a1 + 32);
      if (v8)
      {
        v10 = "personalized";
      }

      *buf = 138543618;
      v28 = v11;
      v29 = 2082;
      v30 = v10;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Building %{public}s URL request.", buf, 0x16u);
    }

    if (v8)
    {
      v12 = [v7 clientInfo];
      v13 = [[ICMusicUserTokenFetchRequest alloc] initWithDeveloperToken:*(a1 + 40) clientInfo:v12 options:0];
      v14 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:25];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __114__ICMusicKitURLRequest__buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest_developerToken_completionHandler___block_invoke_129;
      v20[3] = &unk_1E7BF9268;
      v15 = v5;
      v16 = *(a1 + 32);
      v21 = v15;
      v22 = v16;
      v26 = *(a1 + 56);
      v23 = v7;
      v24 = v12;
      v25 = *(a1 + 48);
      v17 = v12;
      [(ICMusicUserTokenFetchRequest *)v13 performRequestOnOperationQueue:v14 withResponseHandler:v20];
    }

    else
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *buf = 138543618;
        v28 = v19;
        v29 = 2114;
        v30 = v5;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping personalization; issuing request merely decorated with a developer token: %{public}@.", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

void __114__ICMusicKitURLRequest__buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest_developerToken_completionHandler___block_invoke_129(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = [v6 domain];
    if ([v11 isEqualToString:@"ICError"])
    {
      v12 = [v7 code];

      if (v12 == -8101)
      {
        v13 = [*(a1 + 40) _retryCountForReason:@"developer-token-invalidated"];
        v14 = [*(a1 + 40) _maxRetryCountForReason:@"developer-token-invalidated"];
        if (v13 < v14)
        {
          v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 40);
            *buf = 138543362;
            v30 = v16;
            _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Unauthorized to fetch user token. Invalidating developer token.", buf, 0xCu);
          }

          [*(a1 + 40) _incrementRetryCountForReason:@"developer-token-invalidated"];
          v17 = [*(a1 + 48) developerTokenProvider];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __114__ICMusicKitURLRequest__buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest_developerToken_completionHandler___block_invoke_139;
          v26[3] = &unk_1E7BF9240;
          v26[4] = *(a1 + 40);
          v18 = *(a1 + 56);
          v27 = *(a1 + 64);
          v28 = *(a1 + 72);
          [v17 invalidateCachedDeveloperTokenForClientInfo:v18 completionHandler:v26];

          goto LABEL_17;
        }

        v22 = v14;
        v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8101 underlyingError:v7 debugDescription:{@"Unauthorized to fetch user token, but reached maximum retry count for developer token invalidation aborting."}];;
        v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(a1 + 40);
          v25 = [v17 msv_description];
          *buf = 138544386;
          v30 = v24;
          v31 = 2114;
          v32 = v25;
          v33 = 2114;
          v34 = @"developer-token-invalidated";
          v35 = 2048;
          v36 = v13;
          v37 = 2048;
          v38 = v22;
          _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ (retryReason = %{public}@, retryCount = %lu, maxRetryCount = %lu)", buf, 0x34u);
        }

LABEL_16:
        (*(*(a1 + 72) + 16))();
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8102 underlyingError:v7 debugDescription:@"Failed to fetch user token."];
    v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = [v7 msv_description];
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  [*(a1 + 32) setValue:v5 forHTTPHeaderField:@"Music-User-Token"];
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543618;
    v30 = v9;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Issuing request decorated with both a developer token and a user token: %{public}@.", buf, 0x16u);
  }

  (*(*(a1 + 72) + 16))();
LABEL_18:
}

void __114__ICMusicKitURLRequest__buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest_developerToken_completionHandler___block_invoke_139(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully invalidated developer token; retrying building URL request.", &v10, 0xCu);
    }

    [*(a1 + 32) _buildMusicKitURLRequestWithBaseURLRequest:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8101 underlyingError:a3 debugDescription:{@"Unauthorized to fetch user token, but developer token invalidation failed aborting."}];;
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_buildEquivalentStoreURLRequestWithDeveloperToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  urlRequest = [(ICURLRequest *)self urlRequest];
  v9 = [urlRequest copy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__ICMusicKitURLRequest__buildEquivalentStoreURLRequestWithDeveloperToken_completionHandler___block_invoke;
  v12[3] = &unk_1E7BF9218;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = tokenCopy;
  v10 = tokenCopy;
  v11 = handlerCopy;
  [(ICMusicKitURLRequest *)self _buildStoreURLRequestWithUpdatedDomains:v9 completionHandler:v12];
}

void __92__ICMusicKitURLRequest__buildEquivalentStoreURLRequestWithDeveloperToken_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [a2 mutableCopy];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", *(a1 + 32)];
    [v5 setValue:v6 forHTTPHeaderField:@"Authorization"];
    v7 = [*(a1 + 40) requestContext];
    v8 = [ICStoreRequestContext alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __92__ICMusicKitURLRequest__buildEquivalentStoreURLRequestWithDeveloperToken_completionHandler___block_invoke_2;
    v21[3] = &unk_1E7BF91F0;
    v9 = v7;
    v22 = v9;
    v10 = [(ICStoreRequestContext *)v8 initWithBlock:v21];
    v11 = [ICStoreURLRequest alloc];
    v12 = [*(a1 + 40) resumeData];
    v13 = [(ICStoreURLRequest *)v11 initWithURLRequest:v5 requestContext:v10 resumeData:v12];

    -[ICURLRequest setPrioritize:](v13, "setPrioritize:", [*(a1 + 40) prioritize]);
    -[ICURLRequest setCancelOnHTTPErrors:](v13, "setCancelOnHTTPErrors:", [*(a1 + 40) cancelOnHTTPErrors]);
    -[ICURLRequest setMaxRetryCount:](v13, "setMaxRetryCount:", [*(a1 + 40) maxRetryCount]);
    v14 = [*(a1 + 40) additionalHTTPCookies];
    [(ICStoreURLRequest *)v13 setAdditionalHTTPCookies:v14];

    -[ICURLRequest setType:](v13, "setType:", [*(a1 + 40) type]);
    v15 = [*(a1 + 40) responseDataURL];
    [(ICURLRequest *)v13 setResponseDataURL:v15];

    [*(a1 + 40) _updateURLSessionManagedPropertiesForEquivalentStoreURLRequest:v13];
    v16 = *(a1 + 40);
    v17 = *(v16 + 280);
    if (v17)
    {
      v18 = [v17 machineDataSyncState];
      [(ICStoreURLRequest *)v13 setMachineDataSyncState:v18];

      v16 = *(a1 + 40);
    }

    objc_storeStrong((v16 + 280), v13);
    v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      *buf = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Deferring to equivalent store URL request to build the actual URL request: %{public}@.", buf, 0x16u);
    }

    [(ICStoreURLRequest *)v13 buildURLRequestWithCompletionHandler:*(a1 + 48)];
  }
}

void __92__ICMusicKitURLRequest__buildEquivalentStoreURLRequestWithDeveloperToken_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = +[ICDeviceInfo currentDeviceInfo];
  v4 = [v3 isMac];

  if (v4)
  {
    v5 = [ICClientInfo alloc];
    v6 = [*(a1 + 32) clientInfo];
    v7 = [v6 bundleIdentifier];
    v8 = [(ICClientInfo *)v5 initWithBundleIdentifier:v7];
  }

  else
  {
    v8 = [*(a1 + 32) clientInfo];
  }

  [v16 setClientInfo:v8];

  v9 = [*(a1 + 32) deviceInfo];
  [v16 setDeviceInfo:v9];

  v10 = [*(a1 + 32) authenticationProvider];
  [v16 setAuthenticationProvider:v10];

  v11 = [*(a1 + 32) networkConstraints];
  [v16 setNetworkConstraints:v11];

  v12 = [*(a1 + 32) identity];
  [v16 setIdentity:v12];

  v13 = [*(a1 + 32) delegatedIdentity];
  [v16 setDelegatedIdentity:v13];

  v14 = [*(a1 + 32) identityStore];
  [v16 setIdentityStore:v14];

  v15 = [*(a1 + 32) storeDialogResponseHandler];
  [v16 setStoreDialogResponseHandler:v15];

  [v16 setAllowsExpiredBags:{objc_msgSend(*(a1 + 32), "allowsExpiredBags")}];
  [v16 setPersonalizationStyle:{objc_msgSend(*(a1 + 32), "_storeRequestPersonalizationStyle")}];
}

- (id)_buildStoreURLRequestWithUpdatedDomains:(id)domains withBag:(id)bag
{
  v45 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  bagCopy = bag;
  v8 = [domainsCopy mutableCopy];
  v9 = [bagCopy dictionaryForBagKey:@"ampMusicAPIRegexDomains"];
  if (_os_feature_enabled_impl())
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Overriding Music API Domain Regex Dictionary from %@", buf, 0x16u);
    }

    v9 = &unk_1F2C925B0;
  }

  else if (!v9)
  {
    goto LABEL_23;
  }

  v11 = [v9 ic_dictionaryValueForKey:@"default"];
  v12 = [v11 ic_stringValueForKey:@"domain"];
  v13 = v12;
  if (!v11)
  {
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = [domainsCopy URL];
  host = [v14 host];
  v16 = [host isEqualToString:v13];

  if (!v16)
  {
    goto LABEL_22;
  }

  selfCopy2 = self;
  v17 = [domainsCopy URL];
  absoluteString = [v17 absoluteString];

  v19 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:absoluteString];
  v36 = absoluteString;
  v35 = [absoluteString length];
  v20 = [v9 ic_arrayValueForKey:@"endpoints"];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_21;
  }

  v32 = v8;
  v33 = v19;
  v31 = bagCopy;
  if (![v20 count])
  {
    goto LABEL_20;
  }

  v22 = 0;
  v34 = domainsCopy;
  while (1)
  {
    v23 = [v21 objectAtIndex:v22];
    if ([v23 isNSDictionary])
    {
      break;
    }

LABEL_19:

    if (++v22 >= [v21 count])
    {
      goto LABEL_20;
    }
  }

  v24 = [v23 ic_stringValueForKey:@"domain"];
  v25 = [v23 ic_stringValueForKey:@"pattern"];
  if (![v24 length] || !objc_msgSend(v25, "length"))
  {
LABEL_18:

    goto LABEL_19;
  }

  v26 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v25 options:1 error:0];
  if (![v26 numberOfMatchesInString:absoluteString options:0 range:{0, v35}] || !objc_msgSend(v24, "length"))
  {

    domainsCopy = v34;
    goto LABEL_18;
  }

  v29 = _ICLogCategoryDefault();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = selfCopy2;
    v39 = 2114;
    v40 = v36;
    v41 = 2114;
    v42 = v24;
    v43 = 2048;
    v44 = v22;
    _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating URL: %{public}@ with matched host %{public}@ from pattern at index %lu", buf, 0x2Au);
  }

  [v33 setHost:v24];
  domainsCopy = v34;
LABEL_20:
  v19 = v33;
  v27 = [v33 URL];
  v8 = v32;
  [v32 setURL:v27];

  bagCopy = v31;
LABEL_21:

LABEL_22:
LABEL_23:

  return v8;
}

- (void)_buildStoreURLRequestWithUpdatedDomains:(id)domains completionHandler:(id)handler
{
  domainsCopy = domains;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v8 = +[ICURLBagProvider sharedBagProvider];
    requestContext = [(ICMusicKitURLRequest *)self requestContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__ICMusicKitURLRequest__buildStoreURLRequestWithUpdatedDomains_completionHandler___block_invoke;
    v10[3] = &unk_1E7BF9DB0;
    v12 = handlerCopy;
    v10[4] = self;
    v11 = domainsCopy;
    [v8 getBagForRequestContext:requestContext withCompletionHandler:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, domainsCopy, 0);
  }
}

void __82__ICMusicKitURLRequest__buildStoreURLRequestWithUpdatedDomains_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) _buildStoreURLRequestWithUpdatedDomains:*(a1 + 40) withBag:a2];
    v6 = [v5 copy];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_buildMusicKitURLRequestWithBaseURLRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  requestContext = [(ICMusicKitURLRequest *)self requestContext];
  clientInfo = [requestContext clientInfo];
  developerTokenProvider = [requestContext developerTokenProvider];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__ICMusicKitURLRequest__buildMusicKitURLRequestWithBaseURLRequest_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF91C0;
  v16 = developerTokenProvider;
  selfCopy = self;
  v19 = requestCopy;
  v20 = handlerCopy;
  v18 = requestContext;
  v11 = requestCopy;
  v12 = requestContext;
  v13 = handlerCopy;
  v14 = developerTokenProvider;
  [v14 fetchDeveloperTokenForClientInfo:clientInfo completionHandler:v15];
}

void __85__ICMusicKitURLRequest__buildMusicKitURLRequestWithBaseURLRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8200 underlyingError:v6 debugDescription:{@"Failed to fetch developer token from %@.", *(a1 + 32)}];
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = [v9 msv_description];
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 40) _setDeveloperToken:v5];
    v8 = [*(a1 + 48) personalizationMethod];
    if (v8 == 1)
    {
      [*(a1 + 40) _buildUserTokenBasedMusicKitURLRequestWithBaseURLRequest:*(a1 + 56) developerToken:v5 completionHandler:*(a1 + 64)];
    }

    else if (!v8)
    {
      [*(a1 + 40) _buildEquivalentStoreURLRequestWithDeveloperToken:v5 completionHandler:*(a1 + 64)];
    }
  }
}

- (ICMusicKitRequestContext)requestContext
{
  v4.receiver = self;
  v4.super_class = ICMusicKitURLRequest;
  requestContext = [(ICURLRequest *)&v4 requestContext];

  return requestContext;
}

- (NSDictionary)additionalHTTPCookies
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  if ([v3 count])
  {
    if ([(NSDictionary *)self->_additionalHTTPCookies count])
    {
      [v3 addEntriesFromDictionary:self->_additionalHTTPCookies];
    }

    v4 = [v3 copy];
    additionalHTTPCookies = self->_additionalHTTPCookies;
    self->_additionalHTTPCookies = v4;
  }

  if (self->_additionalHTTPCookies)
  {
    v6 = self->_additionalHTTPCookies;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (void)buildURLRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ICMusicKitURLRequest_buildURLRequestWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7BF9190;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = ICMusicKitURLRequest;
  v5 = handlerCopy;
  [(ICURLRequest *)&v6 buildURLRequestWithCompletionHandler:v7];
}

void __61__ICMusicKitURLRequest_buildURLRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = +[ICSecurityInfo sharedSecurityInfo];
    if ([v6 isContentProtectionEnabled] && (objc_msgSend(v6, "isDeviceClassCUnlocked") & 1) == 0)
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Request was issued before before first unlock, returning error.", &v11, 0xCu);
      }

      v9 = *(a1 + 40);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7006 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }

    else
    {
      [*(a1 + 32) _buildMusicKitURLRequestWithBaseURLRequest:v5 completionHandler:*(a1 + 40)];
    }
  }
}

- (id)description
{
  v3 = self->_cachedDescription;
  if (!v3)
  {
    _description = [(ICMusicKitURLRequest *)self _description];
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

  requestContext = [(ICMusicKitURLRequest *)self requestContext];
  [v6 appendFormat:@"; requestContext = %@", requestContext];
  [v6 appendString:@">"];

  return v6;
}

- (ICStoreURLRequest)_pendingEquivalentStoreURLRequest
{
  [(ICMusicKitURLRequest *)self _updateURLSessionManagedPropertiesForEquivalentStoreURLRequest:self->_pendingEquivalentStoreURLRequest];
  pendingEquivalentStoreURLRequest = self->_pendingEquivalentStoreURLRequest;

  return pendingEquivalentStoreURLRequest;
}

- (void)_setDeveloperToken:(id)token
{
  tokenCopy = token;
  v4 = self->_developerToken;
  developerToken = v4;
  if (v4 != tokenCopy)
  {
    v6 = [(NSString *)v4 isEqual:tokenCopy];

    v7 = tokenCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = tokenCopy;
    developerToken = self->_developerToken;
    self->_developerToken = v8;
  }

  v7 = tokenCopy;
LABEL_5:
}

- (ICMusicKitURLRequest)initWithURLRequest:(id)request requestContext:(id)context resumeData:(id)data
{
  requestCopy = request;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicKitURLRequest.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"[requestContext isKindOfClass:[ICMusicKitRequestContext class]]"}];
  }

  v14.receiver = self;
  v14.super_class = ICMusicKitURLRequest;
  v10 = [(ICURLRequest *)&v14 initWithURLRequest:requestCopy requestContext:contextCopy resumeData:0];
  v11 = v10;
  if (v10)
  {
    [(ICURLRequest *)v10 setCancelOnHTTPErrors:0];
  }

  return v11;
}

- (ICMusicKitURLRequest)initWithURL:(id)l requestContext:(id)context
{
  v6 = MEMORY[0x1E695AC68];
  contextCopy = context;
  v8 = [v6 requestWithURL:l];
  v9 = [(ICMusicKitURLRequest *)self initWithURLRequest:v8 requestContext:contextCopy resumeData:0];

  return v9;
}

+ (unint64_t)_defaultMaxRetryCountForReason:(id)reason
{
  reasonCopy = reason;
  v4 = reasonCopy;
  if (reasonCopy == @"developer-token-invalidated")
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  v5 = 1;
  if (([(__CFString *)reasonCopy isEqual:@"developer-token-invalidated"]& 1) == 0 && v4 != @"music-user-token-invalidated")
  {
    v5 = 1;
    if (([(__CFString *)v4 isEqual:@"music-user-token-invalidated"]& 1) == 0 && v4 != @"other")
    {
      if (([(__CFString *)v4 isEqual:@"other"]& 1) == 0)
      {
        v5 = [ICStoreURLRequest _defaultMaxRetryCountForReason:v4];
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

@end