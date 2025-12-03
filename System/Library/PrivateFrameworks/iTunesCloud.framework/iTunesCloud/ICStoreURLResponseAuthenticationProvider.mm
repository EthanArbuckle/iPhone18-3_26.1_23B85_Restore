@interface ICStoreURLResponseAuthenticationProvider
- (void)_adjustedAuthenticationPolicyForResponse:(id)response withCompletionHandler:(id)handler;
- (void)_performAuthenticationUsingRequestContext:(id)context usingVerificationInteractionLevel:(int64_t)level withCompletionHandler:(id)handler;
- (void)performAuthenticationToHandleResponse:(id)response toRequest:(id)request withCompletionHandler:(id)handler;
- (void)performAuthenticationUsingRequestContext:(id)context withCompletionHandler:(id)handler;
@end

@implementation ICStoreURLResponseAuthenticationProvider

- (void)_adjustedAuthenticationPolicyForResponse:(id)response withCompletionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  responseCopy = response;
  interactionLevel = [(ICURLResponseAuthenticationProvider *)self interactionLevel];
  urlResponse = [responseCopy urlResponse];

  v10 = [urlResponse ic_valueForHTTPHeaderField:@"X-Apple-Allow-Auth-Types"];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (v12)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543618;
      selfCopy3 = self;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Adjusting authentication policy based on allowed types: [%{public}@]", &v29, 0x16u);
    }

    v14 = [(__CFString *)v12 componentsSeparatedByString:@" "];
    v15 = [v14 containsObject:@"silent"];
    v16 = [v14 containsObject:@"loud"];
    v17 = v16;
    if (v15 & 1) != 0 || (v16)
    {
      interactionLevel2 = [(ICURLResponseAuthenticationProvider *)self interactionLevel];
      if (v17)
      {
        v21 = interactionLevel;
      }

      else
      {
        v21 = 1;
      }

      if (!v15)
      {
        v21 = 0;
      }

      if (interactionLevel2 == 1)
      {
        v22 = v15;
      }

      else
      {
        v22 = 1;
      }

      if (interactionLevel2 == 2)
      {
        interactionLevel = v21;
        v19 = 1;
      }

      else
      {
        v19 = v22;
      }
    }

    else
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Disallowing authentication because there are no allowed types for this response", &v29, 0xCu);
      }

      v19 = 0;
    }

    v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      interactionLevel3 = [(ICURLResponseAuthenticationProvider *)self interactionLevel];
      if (interactionLevel3 > 5)
      {
        v25 = @"unknown";
      }

      else
      {
        v25 = off_1E7BF49E8[interactionLevel3];
      }

      v26 = v25;
      if (v19)
      {
        if (interactionLevel > 5)
        {
          v27 = @"unknown";
        }

        else
        {
          v27 = off_1E7BF49E8[interactionLevel];
        }

        v28 = v27;
      }

      else
      {
        v28 = @"none";
      }

      v29 = 138543874;
      selfCopy3 = self;
      v31 = 2114;
      v32 = v26;
      v33 = 2114;
      v34 = v28;
      _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Adjusted authentication type from %{public}@ --> %{public}@", &v29, 0x20u);
      if (v19)
      {
      }
    }
  }

  else
  {
    v19 = 1;
  }

  handlerCopy[2](handlerCopy, v19, interactionLevel);
}

- (void)_performAuthenticationUsingRequestContext:(id)context usingVerificationInteractionLevel:(int64_t)level withCompletionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  v10 = contextCopy;
  if ([v10 personalizationStyle] != 1 || (objc_msgSend(v10, "identity"), v11 = objc_claimAutoreleasedReturnValue(), +[ICPrivacyInfo sharedPrivacyInfoForUserIdentity:](ICPrivacyInfo, "sharedPrivacyInfoForUserIdentity:", v11), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "shouldBlockPersonalizedNetworkRequestsForMusic"), v12, v11, !v13))
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (level > 5)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_1E7BF49E8[level];
      }

      v18 = v17;
      *buf = 138543874;
      selfCopy3 = self;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = v10;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing %{public}@ authentication using request context %{public}@", buf, 0x20u);
    }

    identity = [v10 identity];
    allowsAccountEstablishment = [(__CFString *)identity allowsAccountEstablishment];
    if (level == 1 && allowsAccountEstablishment)
    {
      identity2 = [v10 identity];
      v21 = [identity2 identityAllowingEstablishment:0];

      identity = v21;
    }

    identityStore = [v10 identityStore];
    v33 = 0;
    v23 = [identityStore getVerificationContextForUserIdentity:identity error:&v33];
    v24 = v33;
    if (v24 || !v23)
    {
      v29 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy3 = self;
        v36 = 2114;
        v37 = identity;
        v38 = 2114;
        v39 = v24;
        _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to get verification context for identity %{public}@. error=%{public}@", buf, 0x20u);
      }

      v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      [(ICUserVerificationRequest *)v25 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get verification context for identity %@", identity];
      [(ICUserVerificationRequest *)v25 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696A278]];

      if (v24)
      {
        handlerCopy[2](handlerCopy, 0, v24);
LABEL_23:

        goto LABEL_24;
      }

      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v25];
      handlerCopy[2](handlerCopy, 0, v28);
    }

    else
    {
      [v23 setInteractionLevel:level];
      [v23 setDebugReason:@"Server requested authentication"];
      v25 = [[ICUserVerificationRequest alloc] initWithVerificationContext:v23];
      v26 = [ICStoreRequestContext alloc];
      clientInfo = [v10 clientInfo];
      v28 = [(ICStoreRequestContext *)v26 initWithIdentity:identity identityStore:identityStore clientInfo:clientInfo];

      [(ICUserVerificationRequest *)v25 setStoreRequestContext:v28];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __142__ICStoreURLResponseAuthenticationProvider__performAuthenticationUsingRequestContext_usingVerificationInteractionLevel_withCompletionHandler___block_invoke;
      v31[3] = &unk_1E7BF8450;
      v32 = handlerCopy;
      [(ICUserVerificationRequest *)v25 performWithResponseHandler:v31];
    }

    goto LABEL_23;
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping automatic re-authentication because the user hasn't accepted the latest privacy link, and personalization is automatic", buf, 0xCu);
  }

  identity = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
  handlerCopy[2](handlerCopy, 0, identity);
LABEL_24:
}

- (void)performAuthenticationUsingRequestContext:(id)context withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  [(ICStoreURLResponseAuthenticationProvider *)self _performAuthenticationUsingRequestContext:contextCopy usingVerificationInteractionLevel:[(ICURLResponseAuthenticationProvider *)self interactionLevel] withCompletionHandler:handlerCopy];
}

- (void)performAuthenticationToHandleResponse:(id)response toRequest:(id)request withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  requestCopy = request;
  currentURLRequest = [requestCopy currentURLRequest];
  requestContext = [requestCopy requestContext];

  delegatedIdentity = [requestContext delegatedIdentity];
  v14 = [currentURLRequest ic_valueForHTTPHeaderField:@"X-WHA-Token"];

  if (v14 && delegatedIdentity)
  {
    identityStore = [requestContext identityStore];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __114__ICStoreURLResponseAuthenticationProvider_performAuthenticationToHandleResponse_toRequest_withCompletionHandler___block_invoke;
    v22[3] = &unk_1E7BF8450;
    v23 = handlerCopy;
    v16 = handlerCopy;
    [identityStore removeDelegateTokenForUserIdentity:delegatedIdentity completionHandler:v22];

    v17 = v23;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__ICStoreURLResponseAuthenticationProvider_performAuthenticationToHandleResponse_toRequest_withCompletionHandler___block_invoke_2;
    v19[3] = &unk_1E7BF7A28;
    v19[4] = self;
    v21 = handlerCopy;
    v20 = requestContext;
    v18 = handlerCopy;
    [(ICStoreURLResponseAuthenticationProvider *)self _adjustedAuthenticationPolicyForResponse:responseCopy withCompletionHandler:v19];

    v17 = v21;
  }
}

void __114__ICStoreURLResponseAuthenticationProvider_performAuthenticationToHandleResponse_toRequest_withCompletionHandler___block_invoke_2(void *a1, char a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];

    [v5 _performAuthenticationUsingRequestContext:v6 usingVerificationInteractionLevel:a3 withCompletionHandler:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = [v9 interactionLevel];
      if (v10 > 5)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_1E7BF49E8[v10];
      }

      v12 = v11;
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Not authenticating because %{public}@ authentication is not allowed for this response", &v15, 0x16u);
    }

    v13 = a1[6];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7402 userInfo:0];
    (*(v13 + 16))(v13, 0, v14);
  }
}

@end