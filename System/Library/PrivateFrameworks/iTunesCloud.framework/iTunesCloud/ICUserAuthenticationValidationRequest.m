@interface ICUserAuthenticationValidationRequest
- (ICUserAuthenticationValidationRequest)initWithRequestContext:(id)a3;
- (ICUserAuthenticationValidationRequest)initWithUserIdentity:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation ICUserAuthenticationValidationRequest

- (void)performWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICStoreRequestContext *)self->_requestContext identity];
    *buf = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ performing authentication validation for user identity %{public}@", buf, 0x16u);
  }

  v7 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ICUserAuthenticationValidationRequest_performWithCompletion___block_invoke;
  v10[3] = &unk_1E7BF68D8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v7 getBagForRequestContext:requestContext withCompletionHandler:v10];
}

void __63__ICUserAuthenticationValidationRequest_performWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch the bag. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 urlForBagKey:@"getSubscriptionStatusSrv"];
    if (v8)
    {
      v9 = [[ICStoreURLRequest alloc] initWithURL:v8 requestContext:*(*(a1 + 32) + 8)];
      [(ICURLRequest *)v9 setMaxRetryCount:0];
      v10 = +[ICURLSessionManager defaultSession];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__ICUserAuthenticationValidationRequest_performWithCompletion___block_invoke_5;
      v15[3] = &unk_1E7BF9D88;
      v11 = *(a1 + 40);
      v15[4] = *(a1 + 32);
      v16 = v11;
      [v10 enqueueDataRequest:v9 withCompletionHandler:v15];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Validation failed because the subscription status url is missing from the bag", buf, 0xCu);
      }

      v14 = *(a1 + 40);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(v14 + 16))(v14, 0, v9);
    }
  }
}

void __63__ICUserAuthenticationValidationRequest_performWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v31 = v7;
      v32 = 2114;
      v33 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch subscription status. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 parsedBodyDictionary];
    if (v8)
    {
      v29 = 0;
      v9 = [ICMusicSubscriptionStatusResponse isValidSubscriptionStatusResponseDictionary:v8 error:&v29];
      v10 = v29;
      if (v9)
      {
        v11 = [[ICMusicSubscriptionStatusResponse alloc] initWithResponseDictionary:v8 expirationDate:0];
        v12 = [(ICMusicSubscriptionStatusResponse *)v11 subscriptionStatus];
        v13 = [v12 reasonType];

        v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13 == 4)
        {
          if (v15)
          {
            v16 = *(a1 + 32);
            *buf = 138543362;
            v31 = v16;
            _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Received invalidToken response - attempting to authenticate", buf, 0xCu);
          }

          v17 = [*(*(a1 + 32) + 8) authenticationProvider];
          v19 = *(a1 + 32);
          v18 = *(a1 + 40);
          v20 = *(v19 + 8);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __63__ICUserAuthenticationValidationRequest_performWithCompletion___block_invoke_7;
          v27[3] = &unk_1E7BF98C0;
          v27[4] = v19;
          v28 = v18;
          [v17 performAuthenticationUsingRequestContext:v20 withCompletionHandler:v27];
        }

        else
        {
          if (v15)
          {
            v26 = *(a1 + 32);
            *buf = 138543362;
            v31 = v26;
            _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ authentication validation completed successfully", buf, 0xCu);
          }

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 32);
          *buf = 138543618;
          v31 = v25;
          v32 = 2114;
          v33 = v10;
          _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Subscription status response parsing failed with error: %{public}@.", buf, 0x16u);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v10);
      }
    }

    else
    {
      v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        *buf = 138543362;
        v31 = v22;
        _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Subscription status load failed due to invalid response.", buf, 0xCu);
      }

      v23 = *(a1 + 40);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      (*(v23 + 16))(v23, 0, v10);
    }
  }
}

void __63__ICUserAuthenticationValidationRequest_performWithCompletion___block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Authentication complete. authenticated = %{BOOL}u, err = %{public}@", &v8, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

- (ICUserAuthenticationValidationRequest)initWithRequestContext:(id)a3
{
  v4 = a3;
  v5 = [(ICUserAuthenticationValidationRequest *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    requestContext = v5->_requestContext;
    v5->_requestContext = v6;
  }

  return v5;
}

- (ICUserAuthenticationValidationRequest)initWithUserIdentity:(id)a3
{
  v4 = a3;
  v5 = [ICStoreRequestContext alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__ICUserAuthenticationValidationRequest_initWithUserIdentity___block_invoke;
  v10[3] = &unk_1E7BF91F0;
  v11 = v4;
  v6 = v4;
  v7 = [(ICStoreRequestContext *)v5 initWithBlock:v10];
  v8 = [(ICUserAuthenticationValidationRequest *)self initWithRequestContext:v7];

  return v8;
}

void __62__ICUserAuthenticationValidationRequest_initWithUserIdentity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentity:v2];
  [v3 setStoreDialogResponseHandler:0];
  [v3 setAllowsExpiredBags:1];
}

@end