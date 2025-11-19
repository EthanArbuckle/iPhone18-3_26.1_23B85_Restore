@interface ICMusicSubscriptionRecommendationsRequest
- (ICMusicSubscriptionRecommendationsRequest)initWithRequestContext:(id)a3 seedItemID:(int64_t)a4 isLibraryID:(BOOL)a5 maxResultCount:(int64_t)a6;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICMusicSubscriptionRecommendationsRequest

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    seedItemID = self->_seedItemID;
    isLibraryID = self->_isLibraryID;
    *buf = 138543874;
    v10 = self;
    v11 = 2048;
    v12 = seedItemID;
    v13 = 1024;
    v14 = isLibraryID;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing request with seed itemID %lld, isLibraryID=%d", buf, 0x1Cu);
  }

  v6 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__ICMusicSubscriptionRecommendationsRequest_execute__block_invoke;
  v8[3] = &unk_1E7BFA500;
  v8[4] = self;
  [v6 getBagForRequestContext:requestContext forceRefetch:0 withCompletionHandler:v8];
}

void __52__ICMusicSubscriptionRecommendationsRequest_execute__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (a3)
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
    [v3 finishWithError:?];
  }

  else
  {
    if (*(v3 + 320))
    {
      v5 = @"cloudId";
    }

    else
    {
      v5 = @"adamId";
    }

    v24[0] = v5;
    v6 = MEMORY[0x1E696AD98];
    v7 = *(v3 + 312);
    v8 = v5;
    v9 = [v6 numberWithLongLong:v7];
    v10 = [v9 stringValue];
    v25[0] = v10;
    v24[1] = @"count";
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a1 + 32) + 328)];
    v12 = [v11 stringValue];
    v24[2] = @"version";
    v25[1] = v12;
    v25[2] = @"1.0";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

    v14 = [ICStoreRequestContext alloc];
    v15 = +[ICUserIdentity activeAccount];
    v16 = [(ICStoreRequestContext *)v14 initWithIdentity:v15];

    v17 = +[ICURLBagProvider sharedBagProvider];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __52__ICMusicSubscriptionRecommendationsRequest_execute__block_invoke_2;
    v21[3] = &unk_1E7BF49C8;
    v21[4] = *(a1 + 32);
    v22 = v13;
    v23 = v16;
    v18 = v16;
    v19 = v13;
    [v17 getBagForRequestContext:v18 forceRefetch:0 withCompletionHandler:v21];
  }
}

void __52__ICMusicSubscriptionRecommendationsRequest_execute__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [a2 urlForBagKey:@"pmlt-url"];
    if (v5)
    {
      v6 = *(a1 + 40);
      v17 = 0;
      v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:100 options:0 error:&v17];
      v8 = v17;
      if (v8)
      {
        v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          *buf = 138543618;
          v19 = v10;
          v20 = 2114;
          v21 = v8;
          _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to serialize recommended content request. err= %{public}@", buf, 0x16u);
        }

        [*(a1 + 32) finishWithError:v8];
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v5];
        [v13 setHTTPBody:v7];
        [v13 setCachePolicy:1];
        [v13 setValue:@"Software" forHTTPHeaderField:@"X-Mme-Client-Application"];
        v14 = [[ICStoreURLRequest alloc] initWithURLRequest:v13 requestContext:*(a1 + 48)];
        v15 = +[ICURLSessionManager defaultSession];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __52__ICMusicSubscriptionRecommendationsRequest_execute__block_invoke_26;
        v16[3] = &unk_1E7BFA4D8;
        v16[4] = *(a1 + 32);
        [v15 enqueueDataRequest:v14 withCompletionHandler:v16];
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v11 finishWithError:v12];
    }
  }
}

void __52__ICMusicSubscriptionRecommendationsRequest_execute__block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v17 = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to fetch recommended content. err=%{public}@", &v17, 0x16u);
    }

    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    v8 = [a2 parsedBodyDictionary];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKey:@"recommendedContentIds"];
      v11 = *(a1 + 32);
      v12 = *(v11 + 336);
      *(v11 + 336) = v10;

      [*(a1 + 32) finishWithError:0];
    }

    else
    {
      v13 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ no response body - treating as failure", &v17, 0xCu);
      }

      v15 = *(a1 + 32);
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      [v15 finishWithError:v16];
    }
  }
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__ICMusicSubscriptionRecommendationsRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICMusicSubscriptionRecommendationsRequest)initWithRequestContext:(id)a3 seedItemID:(int64_t)a4 isLibraryID:(BOOL)a5 maxResultCount:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ICMusicSubscriptionRecommendationsRequest;
  v12 = [(ICRequestOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestContext, a3);
    v13->_seedItemID = a4;
    v13->_isLibraryID = a5;
    v13->_maxResultCount = a6;
  }

  return v13;
}

@end