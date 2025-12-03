@interface ICLibraryAuthServiceClientTokenRequest
- (ICLibraryAuthServiceClientTokenRequest)initWithStoreRequestContext:(id)context;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation ICLibraryAuthServiceClientTokenRequest

- (void)execute
{
  v3 = +[ICURLBagProvider sharedBagProvider];
  storeRequestContext = self->_storeRequestContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__ICLibraryAuthServiceClientTokenRequest_execute__block_invoke;
  v5[3] = &unk_1E7BFA500;
  v5[4] = self;
  [v3 getBagForRequestContext:storeRequestContext withCompletionHandler:v5];
}

void __49__ICLibraryAuthServiceClientTokenRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__5511;
    v16 = __Block_byref_object_dispose__5512;
    v17 = [v5 urlForBagKey:@"library-auth-service-token-url"];
    v7 = *(a1 + 32);
    if (v13[5])
    {
      v8 = [v7[38] identityStore];
      v9 = [*(*(a1 + 32) + 304) identity];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__ICLibraryAuthServiceClientTokenRequest_execute__block_invoke_2;
      v11[3] = &unk_1E7BF42C0;
      v11[4] = *(a1 + 32);
      v11[5] = &v12;
      [v8 getPropertiesForUserIdentity:v9 completionHandler:v11];
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v7 finishWithError:v10];
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __49__ICLibraryAuthServiceClientTokenRequest_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v5 = [v3 DSID];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 stringValue];
      [v4 setObject:v7 forKey:@"dsid"];
    }

    v8 = [*(*(a1 + 32) + 304) deviceInfo];
    v9 = [v8 deviceGUID];

    if (v9)
    {
      [v4 setObject:v9 forKey:@"guid"];
    }

    v10 = [*(*(*(a1 + 40) + 8) + 40) ic_URLByAppendingQueryParameters:v4];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:*(*(*(a1 + 40) + 8) + 40)];
    [v13 setCachePolicy:1];
    v14 = [[ICStoreURLRequest alloc] initWithURLRequest:v13 requestContext:*(*(a1 + 32) + 304)];
    v15 = +[ICURLSessionManager defaultSession];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__ICLibraryAuthServiceClientTokenRequest_execute__block_invoke_11;
    v20[3] = &unk_1E7BFA4D8;
    v20[4] = *(a1 + 32);
    [v15 enqueueDataRequest:v14 withCompletionHandler:v20];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = [*(v17 + 304) identity];
      *buf = 138543618;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ failed - no properties for account %{public}@", buf, 0x16u);
    }

    v19 = *(a1 + 32);
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
    [v19 finishWithError:v4];
  }
}

void __49__ICLibraryAuthServiceClientTokenRequest_execute__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [a2 urlResponse];
    v8 = [v7 statusCode];
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v25 = 138543874;
      v26 = v10;
      v27 = 2114;
      v28 = v6;
      v29 = 1024;
      v30 = v8;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received error %{public}@. http status code=%d", &v25, 0x1Cu);
    }

    v11 = [[ICLibraryAuthServiceClientTokenResponse alloc] initWithResultCode:v8];
    v12 = *(a1 + 32);
    v13 = *(v12 + 312);
    *(v12 + 312) = v11;
  }

  else
  {
    v14 = [a2 parsedBodyDictionary];
    if (v14)
    {
      v7 = v14;
      v15 = [[ICLibraryAuthServiceClientTokenResponse alloc] initWithResponseDictionary:v14];
      v16 = *(a1 + 32);
      v17 = *(v16 + 312);
      *(v16 + 312) = v15;

      v18 = [*(*(a1 + 32) + 312) tokenResult];
      v19 = [v18 token];
      v20 = [v19 length];

      if (!v20)
      {
        v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          v25 = 138543618;
          v26 = v22;
          v27 = 2114;
          v28 = v7;
          _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ no token in library auth service response: %{public}@", &v25, 0x16u);
        }
      }

      v6 = 0;
    }

    else
    {
      v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = 138543362;
        v26 = v24;
        _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to parse token response", &v25, 0xCu);
      }

      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      v7 = 0;
    }
  }

  [*(a1 + 32) finishWithError:v6];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ICLibraryAuthServiceClientTokenRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICLibraryAuthServiceClientTokenRequest)initWithStoreRequestContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICLibraryAuthServiceClientTokenRequest;
  v6 = [(ICRequestOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeRequestContext, context);
  }

  return v7;
}

@end