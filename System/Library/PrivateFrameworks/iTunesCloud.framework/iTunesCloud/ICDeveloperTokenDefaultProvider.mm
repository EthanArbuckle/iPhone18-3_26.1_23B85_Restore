@interface ICDeveloperTokenDefaultProvider
+ (ICDeveloperTokenDefaultProvider)sharedProvider;
- (BOOL)isEqual:(id)a3;
- (ICDeveloperTokenDefaultProvider)init;
- (ICDeveloperTokenDefaultProvider)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)_fetchDeveloperTokenWithClientInfo:(id)a3;
- (void)fetchDeveloperTokenForClientInfo:(id)a3 completionHandler:(id)a4;
@end

@implementation ICDeveloperTokenDefaultProvider

- (void)_fetchDeveloperTokenWithClientInfo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching developer token with clientInfo %{public}@", buf, 0x16u);
  }

  v6 = [[ICDeveloperTokenFetchRequest alloc] initWithClientInfo:v4 options:0];
  [(ICDeveloperTokenFetchRequest *)v6 setClientType:0];
  requestOperationQueue = self->_requestOperationQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__ICDeveloperTokenDefaultProvider__fetchDeveloperTokenWithClientInfo___block_invoke;
  v9[3] = &unk_1E7BF4218;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(ICDeveloperTokenFetchRequest *)v6 performRequestOnOperationQueue:requestOperationQueue withResponseHandler:v9];
}

void __70__ICDeveloperTokenDefaultProvider__fetchDeveloperTokenWithClientInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v9;
    v20 = 2048;
    v21 = [v7 count];
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ developer token fetch completed for clientInfo %{public}@ with %lu handlers", buf, 0x20u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__ICDeveloperTokenDefaultProvider__fetchDeveloperTokenWithClientInfo___block_invoke_6;
  v13[3] = &unk_1E7BF41F0;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v7 enumerateObjectsUsingBlock:v13];
}

- (void)fetchDeveloperTokenForClientInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13 = [a3 copy];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_pendingCompletionHandlers objectForKeyedSubscript:v13];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_pendingCompletionHandlers objectForKeyedSubscript:v13];
    v9 = MEMORY[0x1B8C781E0](v6);

    [v8 addObject:v9];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)self->_pendingCompletionHandlers setObject:v10 forKeyedSubscript:v13];

    v11 = [(NSMutableDictionary *)self->_pendingCompletionHandlers objectForKeyedSubscript:v13];
    v12 = MEMORY[0x1B8C781E0](v6);

    [v11 addObject:v12];
    os_unfair_lock_unlock(&self->_lock);
    [(ICDeveloperTokenDefaultProvider *)self _fetchDeveloperTokenWithClientInfo:v13];
  }
}

- (ICDeveloperTokenDefaultProvider)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICDeveloperTokenDefaultProvider;
  return [(ICDeveloperTokenDefaultProvider *)&v4 init];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([(ICDeveloperTokenDefaultProvider *)self isMemberOfClass:v5])
    {
      v6 = [(ICDeveloperTokenDefaultProvider *)v4 isMemberOfClass:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (ICDeveloperTokenDefaultProvider)init
{
  v9.receiver = self;
  v9.super_class = ICDeveloperTokenDefaultProvider;
  v2 = [(ICDeveloperTokenDefaultProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    pendingCompletionHandlers = v3->_pendingCompletionHandlers;
    v3->_pendingCompletionHandlers = v4;

    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    requestOperationQueue = v3->_requestOperationQueue;
    v3->_requestOperationQueue = v6;

    [(NSOperationQueue *)v3->_requestOperationQueue setName:@"com.apple.iTunesCloud.ICDeveloperTokenDefaultProvider.operationQueue"];
  }

  return v3;
}

+ (ICDeveloperTokenDefaultProvider)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_4545);
  }

  v3 = sharedProvider___sharedProvider;

  return v3;
}

uint64_t __49__ICDeveloperTokenDefaultProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(ICDeveloperTokenDefaultProvider);
  v1 = sharedProvider___sharedProvider;
  sharedProvider___sharedProvider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end