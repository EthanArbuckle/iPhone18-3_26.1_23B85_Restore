@interface ICStoreURLResponseAuthenticationProvider
- (void)_adjustedAuthenticationPolicyForResponse:(id)a3 withCompletionHandler:(id)a4;
- (void)_performAuthenticationUsingRequestContext:(id)a3 usingVerificationInteractionLevel:(int64_t)a4 withCompletionHandler:(id)a5;
- (void)performAuthenticationToHandleResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)performAuthenticationUsingRequestContext:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation ICStoreURLResponseAuthenticationProvider

- (void)_adjustedAuthenticationPolicyForResponse:(id)a3 withCompletionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(ICURLResponseAuthenticationProvider *)self interactionLevel];
  v9 = [v7 urlResponse];

  v10 = [v9 ic_valueForHTTPHeaderField:@"X-Apple-Allow-Auth-Types"];
  v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  if (v12)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543618;
      v30 = self;
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
      v20 = [(ICURLResponseAuthenticationProvider *)self interactionLevel];
      if (v17)
      {
        v21 = v8;
      }

      else
      {
        v21 = 1;
      }

      if (!v15)
      {
        v21 = 0;
      }

      if (v20 == 1)
      {
        v22 = v15;
      }

      else
      {
        v22 = 1;
      }

      if (v20 == 2)
      {
        v8 = v21;
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
        v30 = self;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Disallowing authentication because there are no allowed types for this response", &v29, 0xCu);
      }

      v19 = 0;
    }

    v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(ICURLResponseAuthenticationProvider *)self interactionLevel];
      if (v24 > 5)
      {
        v25 = @"unknown";
      }

      else
      {
        v25 = off_1E7BF49E8[v24];
      }

      v26 = v25;
      if (v19)
      {
        if (v8 > 5)
        {
          v27 = @"unknown";
        }

        else
        {
          v27 = off_1E7BF49E8[v8];
        }

        v28 = v27;
      }

      else
      {
        v28 = @"none";
      }

      v29 = 138543874;
      v30 = self;
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

  v6[2](v6, v19, v8);
}

- (void)_performAuthenticationUsingRequestContext:(id)a3 usingVerificationInteractionLevel:(int64_t)a4 withCompletionHandler:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v8;
  if ([v10 personalizationStyle] != 1 || (objc_msgSend(v10, "identity"), v11 = objc_claimAutoreleasedReturnValue(), +[ICPrivacyInfo sharedPrivacyInfoForUserIdentity:](ICPrivacyInfo, "sharedPrivacyInfoForUserIdentity:", v11), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "shouldBlockPersonalizedNetworkRequestsForMusic"), v12, v11, !v13))
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (a4 > 5)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_1E7BF49E8[a4];
      }

      v18 = v17;
      *buf = 138543874;
      v35 = self;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = v10;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing %{public}@ authentication using request context %{public}@", buf, 0x20u);
    }

    v15 = [v10 identity];
    v19 = [(__CFString *)v15 allowsAccountEstablishment];
    if (a4 == 1 && v19)
    {
      v20 = [v10 identity];
      v21 = [v20 identityAllowingEstablishment:0];

      v15 = v21;
    }

    v22 = [v10 identityStore];
    v33 = 0;
    v23 = [v22 getVerificationContextForUserIdentity:v15 error:&v33];
    v24 = v33;
    if (v24 || !v23)
    {
      v29 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v35 = self;
        v36 = 2114;
        v37 = v15;
        v38 = 2114;
        v39 = v24;
        _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to get verification context for identity %{public}@. error=%{public}@", buf, 0x20u);
      }

      v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      [(ICUserVerificationRequest *)v25 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get verification context for identity %@", v15];
      [(ICUserVerificationRequest *)v25 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696A278]];

      if (v24)
      {
        v9[2](v9, 0, v24);
LABEL_23:

        goto LABEL_24;
      }

      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v25];
      v9[2](v9, 0, v28);
    }

    else
    {
      [v23 setInteractionLevel:a4];
      [v23 setDebugReason:@"Server requested authentication"];
      v25 = [[ICUserVerificationRequest alloc] initWithVerificationContext:v23];
      v26 = [ICStoreRequestContext alloc];
      v27 = [v10 clientInfo];
      v28 = [(ICStoreRequestContext *)v26 initWithIdentity:v15 identityStore:v22 clientInfo:v27];

      [(ICUserVerificationRequest *)v25 setStoreRequestContext:v28];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __142__ICStoreURLResponseAuthenticationProvider__performAuthenticationUsingRequestContext_usingVerificationInteractionLevel_withCompletionHandler___block_invoke;
      v31[3] = &unk_1E7BF8450;
      v32 = v9;
      [(ICUserVerificationRequest *)v25 performWithResponseHandler:v31];
    }

    goto LABEL_23;
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = self;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping automatic re-authentication because the user hasn't accepted the latest privacy link, and personalization is automatic", buf, 0xCu);
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
  v9[2](v9, 0, v15);
LABEL_24:
}

- (void)performAuthenticationUsingRequestContext:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ICStoreURLResponseAuthenticationProvider *)self _performAuthenticationUsingRequestContext:v7 usingVerificationInteractionLevel:[(ICURLResponseAuthenticationProvider *)self interactionLevel] withCompletionHandler:v6];
}

- (void)performAuthenticationToHandleResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 currentURLRequest];
  v12 = [v10 requestContext];

  v13 = [v12 delegatedIdentity];
  v14 = [v11 ic_valueForHTTPHeaderField:@"X-WHA-Token"];

  if (v14 && v13)
  {
    v15 = [v12 identityStore];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __114__ICStoreURLResponseAuthenticationProvider_performAuthenticationToHandleResponse_toRequest_withCompletionHandler___block_invoke;
    v22[3] = &unk_1E7BF8450;
    v23 = v9;
    v16 = v9;
    [v15 removeDelegateTokenForUserIdentity:v13 completionHandler:v22];

    v17 = v23;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__ICStoreURLResponseAuthenticationProvider_performAuthenticationToHandleResponse_toRequest_withCompletionHandler___block_invoke_2;
    v19[3] = &unk_1E7BF7A28;
    v19[4] = self;
    v21 = v9;
    v20 = v12;
    v18 = v9;
    [(ICStoreURLResponseAuthenticationProvider *)self _adjustedAuthenticationPolicyForResponse:v8 withCompletionHandler:v19];

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