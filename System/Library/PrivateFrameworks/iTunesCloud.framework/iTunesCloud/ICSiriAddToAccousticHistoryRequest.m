@interface ICSiriAddToAccousticHistoryRequest
- (ICSiriAddToAccousticHistoryRequest)initWithRequestContext:(id)a3 storeItemID:(int64_t)a4 affiliateIdentifier:(id)a5;
- (void)execute;
@end

@implementation ICSiriAddToAccousticHistoryRequest

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    storeItemID = self->_storeItemID;
    affiliateIdentifier = self->_affiliateIdentifier;
    *buf = 138543874;
    v10 = self;
    v11 = 2048;
    v12 = storeItemID;
    v13 = 2114;
    v14 = affiliateIdentifier;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing request with storeID %lld, affiliate %{public}@", buf, 0x20u);
  }

  v6 = [(ICStoreRequestContext *)self->_requestContext identityStore];
  v7 = [(ICStoreRequestContext *)self->_requestContext identity];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__ICSiriAddToAccousticHistoryRequest_execute__block_invoke;
  v8[3] = &unk_1E7BF7B20;
  v8[4] = self;
  [v6 getPropertiesForUserIdentity:v7 completionHandler:v8];
}

void __45__ICSiriAddToAccousticHistoryRequest_execute__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = +[ICURLBagProvider sharedBagProvider];
    v4 = *(a1 + 32);
    v5 = *(v4 + 304);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__ICSiriAddToAccousticHistoryRequest_execute__block_invoke_2;
    v9[3] = &unk_1E7BFA500;
    v9[4] = v4;
    [v3 getBagForRequestContext:v5 forceRefetch:0 withCompletionHandler:v9];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ No active iTunes account - failing request", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
    [v8 finishWithError:v3];
  }
}

void __45__ICSiriAddToAccousticHistoryRequest_execute__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = MEMORY[0x1E696ABC0];
    v9 = -7401;
LABEL_3:
    v10 = [v8 errorWithDomain:@"ICError" code:v9 userInfo:0];
    [v7 finishWithError:v10];

    goto LABEL_9;
  }

  v11 = [v5 urlForBagKey:@"addToSiriTagHistoryBaseUrl"];
  if (!v11)
  {
    v11 = [v6 urlForBagKey:@"addToTRHistoryBaseUrl"];
    if (!v11)
    {
      v7 = *(a1 + 32);
      v8 = MEMORY[0x1E696ABC0];
      v9 = -7201;
      goto LABEL_3;
    }
  }

  v12 = v11;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", *(*(a1 + 32) + 312)];
  v22 = @"id";
  v23[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v15 = [v14 mutableCopy];

  v16 = *(*(a1 + 32) + 320);
  if (v16)
  {
    [v15 setObject:v16 forKey:@"affiliateID"];
  }

  v17 = [v12 ic_URLByAppendingQueryParameters:v15];

  v18 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v17];
  [v18 setCachePolicy:1];
  [v18 setValue:@"Software" forHTTPHeaderField:@"X-Mme-Client-Application"];
  v19 = [[ICStoreURLRequest alloc] initWithURLRequest:v18 requestContext:*(*(a1 + 32) + 304)];
  v20 = +[ICURLSessionManager defaultSession];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__ICSiriAddToAccousticHistoryRequest_execute__block_invoke_2;
  v21[3] = &unk_1E7BFA4D8;
  v21[4] = *(a1 + 32);
  [v20 enqueueDataRequest:v19 withCompletionHandler:v21];

LABEL_9:
}

void __45__ICSiriAddToAccousticHistoryRequest_execute__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request with err %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithError:v4];
}

- (ICSiriAddToAccousticHistoryRequest)initWithRequestContext:(id)a3 storeItemID:(int64_t)a4 affiliateIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ICSiriAddToAccousticHistoryRequest;
  v11 = [(ICRequestOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestContext, a3);
    v12->_storeItemID = a4;
    v13 = [v10 copy];
    affiliateIdentifier = v12->_affiliateIdentifier;
    v12->_affiliateIdentifier = v13;
  }

  return v12;
}

@end