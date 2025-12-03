@interface ICSagaGetAccountStatusRequest
- (ICSagaGetAccountStatusRequest)initWithStoreRequestContext:(id)context;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation ICSagaGetAccountStatusRequest

- (void)execute
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    storeRequestContext = self->_storeRequestContext;
    *buf = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = storeRequestContext;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Gathering iTunes match account status for context %{public}@", buf, 0x16u);
  }

  identity = [(ICStoreRequestContext *)self->_storeRequestContext identity];
  v6 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:identity];
  shouldBlockPersonalizedNetworkRequestsForMusic = [v6 shouldBlockPersonalizedNetworkRequestsForMusic];

  if (shouldBlockPersonalizedNetworkRequestsForMusic)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Skipping saga account status request because privacy acknowledgement is required", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
    [(ICRequestOperation *)self finishWithError:v9];
  }

  else
  {
    v9 = +[ICURLBagProvider sharedBagProvider];
    v10 = self->_storeRequestContext;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__ICSagaGetAccountStatusRequest_execute__block_invoke;
    v11[3] = &unk_1E7BFA500;
    v11[4] = self;
    [v9 getBagForRequestContext:v10 withCompletionHandler:v11];
  }
}

void __40__ICSagaGetAccountStatusRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 312) = [v5 BOOLValueForBagKey:@"isMatchServiceEnabled"];
  v7 = [v5 stringForBagKey:@"cloud-welcome"];
  *(*(a1 + 32) + 313) = v7 != 0;

  *(*(a1 + 32) + 314) = 0;
  if (v6)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch the bag to obtain match status url. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v10 = [*(*(a1 + 32) + 304) identityStore];
    v11 = [*(*(a1 + 32) + 304) identity];
    v21 = 0;
    v12 = [v10 getPropertiesForUserIdentity:v11 error:&v21];
    v13 = v21;

    if (v12 | v13)
    {
      v14 = [v5 stringForBagKey:@"getMatchStatusSrv"];
      if (v14)
      {
        v15 = [ICStoreURLRequest alloc];
        v16 = [MEMORY[0x1E695DFF8] URLWithString:v14];
        v17 = [(ICStoreURLRequest *)v15 initWithURL:v16 requestContext:*(*(a1 + 32) + 304)];

        v18 = +[ICURLSessionManager defaultSession];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __40__ICSagaGetAccountStatusRequest_execute__block_invoke_6;
        v20[3] = &unk_1E7BFA4D8;
        v20[4] = *(a1 + 32);
        [v18 enqueueDataRequest:v17 withCompletionHandler:v20];
      }

      else
      {
        v19 = *(a1 + 32);
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
        [v19 finishWithError:v17];
      }
    }

    else
    {
      [*(a1 + 32) finishWithError:0];
    }
  }
}

void __40__ICSagaGetAccountStatusRequest_execute__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v6 = [a2 parsedBodyDictionary];
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Received match status response: %{public}@", &v10, 0x16u);
    }

    if (v6)
    {
      v9 = [v6 objectForKey:@"isMatchSubscriber"];
      *(*(a1 + 32) + 314) = [v9 BOOLValue];
    }
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__ICSagaGetAccountStatusRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

void __67__ICSagaGetAccountStatusRequest_performRequestWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 304);
      v8 = *(v6 + 312);
      v9 = *(v6 + 313);
      v10 = *(v6 + 314);
      v11 = [v3 msv_description];
      v17 = 138544642;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = v9;
      v25 = 1024;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Finished gathering iTunes match account status for context %{public}@. isEnabled=%{BOOL}u, canSubscribe = %{BOOL}u, isSubscriber=%{BOOL}u error=%{public}@", &v17, 0x32u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 304);
    v14 = *(v12 + 312);
    v15 = *(v12 + 313);
    v16 = *(v12 + 314);
    v17 = 138544386;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    v21 = 1024;
    v22 = v14;
    v23 = 1024;
    v24 = v15;
    v25 = 1024;
    v26 = v16;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished gathering iTunes match account status for context %{public}@. isEnabled=%{BOOL}u, canSubscribe = %{BOOL}u, isSubscriber=%{BOOL}u", &v17, 0x28u);
  }

  (*(*(a1 + 40) + 16))();
}

- (ICSagaGetAccountStatusRequest)initWithStoreRequestContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICSagaGetAccountStatusRequest;
  v6 = [(ICRequestOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeRequestContext, context);
  }

  return v7;
}

@end