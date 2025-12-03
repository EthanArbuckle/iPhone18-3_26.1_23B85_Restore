@interface ICSetParentalControlRequestOperation
- (ICSetParentalControlRequestOperation)initWithRequestContext:(id)context allowsExplicitContent:(BOOL)content isAutomatic:(BOOL)automatic;
- (void)_buildAndSendRequestForURL:(id)l;
- (void)_getURLFromBagAndSendRequest;
- (void)cancel;
- (void)execute;
@end

@implementation ICSetParentalControlRequestOperation

- (void)_getURLFromBagAndSendRequest
{
  v3 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__ICSetParentalControlRequestOperation__getURLFromBagAndSendRequest__block_invoke;
  v5[3] = &unk_1E7BFA500;
  v5[4] = self;
  [v3 getBagForRequestContext:requestContext withCompletionHandler:v5];
}

void __68__ICSetParentalControlRequestOperation__getURLFromBagAndSendRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load url bag. err=%{public}@", &v13, 0x16u);
    }

    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    v8 = [a2 urlForBagKey:@"push-notification-allowexplicit"];
    if (v8)
    {
      [*(a1 + 32) _buildAndSendRequestForURL:v8];
    }

    else
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing setParentalControl url in bag - skipping", &v13, 0xCu);
      }

      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v11 finishWithError:v12];
    }
  }
}

- (void)_buildAndSendRequestForURL:(id)l
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695AC18] requestWithURL:l];
  [v4 setHTTPMethod:@"POST"];
  v5 = objc_alloc(MEMORY[0x1E696AF60]);
  if (self->_allowsExplicitContent)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = [v5 initWithName:@"enabled" value:v6];
  v8 = objc_alloc(MEMORY[0x1E696AF60]);
  if (self->_automatic)
  {
    v9 = @"2";
  }

  else
  {
    v9 = @"1";
  }

  v10 = [v8 initWithName:@"manual" value:v9];
  v11 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v22[0] = v7;
  v22[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  [v11 setQueryItems:v12];

  query = [v11 query];
  v14 = [query dataUsingEncoding:4];

  [v4 setHTTPBody:v14];
  v15 = [[ICStoreURLRequest alloc] initWithURLRequest:v4 requestContext:self->_requestContext];
  storeURLRequest = self->_storeURLRequest;
  self->_storeURLRequest = v15;

  progress = [(ICRequestOperation *)self progress];
  progress2 = [(ICURLRequest *)self->_storeURLRequest progress];
  [progress addChild:progress2 withPendingUnitCount:100];

  v19 = +[ICURLSessionManager defaultSession];
  v20 = self->_storeURLRequest;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__ICSetParentalControlRequestOperation__buildAndSendRequestForURL___block_invoke;
  v21[3] = &unk_1E7BFA4D8;
  v21[4] = self;
  [v19 enqueueDataRequest:v20 withCompletionHandler:v21];
}

void __67__ICSetParentalControlRequestOperation__buildAndSendRequestForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setParentalControl request failed. err=%{public}@", &v10, 0x16u);
    }
  }

  else
  {
    v6 = [a2 parsedBody];
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setParentalControl request returned response %{public}@", &v10, 0x16u);
    }
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = ICSetParentalControlRequestOperation;
  [(ICSetParentalControlRequestOperation *)&v4 cancel];
  v3 = +[ICURLSessionManager defaultSession];
  [v3 cancelRequest:self->_storeURLRequest];
}

- (void)execute
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing setParentalControl request", buf, 0xCu);
  }

  identityStore = [(ICStoreRequestContext *)self->_requestContext identityStore];
  identity = [(ICStoreRequestContext *)self->_requestContext identity];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ICSetParentalControlRequestOperation_execute__block_invoke;
  v6[3] = &unk_1E7BF7B20;
  v6[4] = self;
  [identityStore getPropertiesForUserIdentity:identity completionHandler:v6];
}

void __47__ICSetParentalControlRequestOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a2 DSID];
    if (v3)
    {
      v4 = v3;
      [*(a1 + 32) _getURLFromBagAndSendRequest];
    }

    else
    {
      v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = [*(v14 + 312) identity];
        *buf = 138543618;
        v27 = v14;
        v28 = 2114;
        v29 = v15;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ failed - no DSID for account %{public}@", buf, 0x16u);
      }

      v22 = *MEMORY[0x1E696A278];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [*(*(a1 + 32) + 312) identity];
      v18 = [v16 stringWithFormat:@"Set parental control failed  [no DSID for user identity] - userIdentity=%@", v17];
      v23 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v20 = *(a1 + 32);
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v19];
      [v20 finishWithError:v21];

      v4 = 0;
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(v6 + 312) identity];
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ failed - no properties for account %{public}@", buf, 0x16u);
    }

    v24 = *MEMORY[0x1E696A278];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [*(*(a1 + 32) + 312) identity];
    v10 = [v8 stringWithFormat:@"Set parental control failed [no propertires for user identity]- userIdentity=%@", v9];
    v25 = v10;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v4];
    [v11 finishWithError:v12];
  }
}

- (ICSetParentalControlRequestOperation)initWithRequestContext:(id)context allowsExplicitContent:(BOOL)content isAutomatic:(BOOL)automatic
{
  contextCopy = context;
  v10 = [(ICRequestOperation *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_requestContext, context);
    v11->_allowsExplicitContent = content;
    v11->_automatic = automatic;
  }

  return v11;
}

@end