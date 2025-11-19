@interface ICMediaAPIURLMappingProvider
+ (ICMediaAPIURLMappingProvider)sharedProvider;
- (id)_cacheFileURL;
- (id)_loadCacheDictionary;
- (id)getCurrentURLMappingSet;
- (void)_saveCachedResponsePayload:(id)a3 eTag:(id)a4;
- (void)clearCachedURLMappings;
- (void)setCurrentURLMappingSet:(id)a3;
- (void)updateURLMappingsWithCompletion:(id)a3;
@end

@implementation ICMediaAPIURLMappingProvider

- (void)_saveCachedResponsePayload:(id)a3 eTag:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithCapacity:2];
  [v9 setObject:v8 forKeyedSubscript:@"mappings"];

  [v9 setObject:v7 forKeyedSubscript:@"etag"];
  v10 = [(ICMediaAPIURLMappingProvider *)self _cacheFileURL];
  v13 = 0;
  LOBYTE(v8) = [v9 writeToURL:v10 error:&v13];
  v11 = v13;

  if ((v8 & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to save cache dicationry. err=%{public}@", buf, 0x16u);
    }
  }
}

- (id)_loadCacheDictionary
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(ICMediaAPIURLMappingProvider *)self _cacheFileURL];
  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load cache from file. err=%{public}@", buf, 0x16u);
    }
  }

  return v4;
}

- (id)_cacheFileURL
{
  v2 = MSVMobileHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Caches/com.apple.iTunesCloud/"];

  v4 = [v3 stringByAppendingPathComponent:@"media_api_url_map.plist"];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];

  return v5;
}

- (void)setCurrentURLMappingSet:(id)a3
{
  v4 = [a3 responsePayload];
  [(ICMediaAPIURLMappingProvider *)self _saveCachedResponsePayload:v4 eTag:0];
}

- (void)clearCachedURLMappings
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing cache file", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(ICMediaAPIURLMappingProvider *)self _cacheFileURL];
  v9 = 0;
  v6 = [v4 removeItemAtURL:v5 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove cache file. err=%{public}@", buf, 0x16u);
    }
  }
}

- (void)updateURLMappingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [ICStoreRequestContext alloc];
  v6 = +[ICUserIdentity activeAccount];
  v7 = [(ICStoreRequestContext *)v5 initWithIdentity:v6];

  v8 = +[ICURLBagProvider sharedBagProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__ICMediaAPIURLMappingProvider_updateURLMappingsWithCompletion___block_invoke;
  v11[3] = &unk_1E7BF9DB0;
  v12 = v7;
  v13 = v4;
  v11[4] = self;
  v9 = v7;
  v10 = v4;
  [v8 getBagForRequestContext:v9 withCompletionHandler:v11];
}

void __64__ICMediaAPIURLMappingProvider_updateURLMappingsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 urlForBagKey:@"url-regex-map"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v6];
      v8 = [*(a1 + 32) _loadCacheDictionary];
      v9 = [v8 ic_stringValueForKey:@"etag"];
      if (v9)
      {
        [v7 setValue:v9 forHTTPHeaderField:@"ETag"];
      }

      v10 = [[ICURLRequest alloc] initWithURLRequest:v7 requestContext:*(a1 + 40)];
      v11 = +[ICURLSessionManager defaultSession];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __64__ICMediaAPIURLMappingProvider_updateURLMappingsWithCompletion___block_invoke_16;
      v17[3] = &unk_1E7BF9D88;
      v17[4] = *(a1 + 32);
      v18 = *(a1 + 48);
      [v11 enqueueDataRequest:v10 withCompletionHandler:v17];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Regex map file url is missing from the bag - skipping", buf, 0xCu);
      }

      v16 = *(a1 + 48);
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(v16 + 16))(v16, 0, v7);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load bag. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __64__ICMediaAPIURLMappingProvider_updateURLMappingsWithCompletion___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v18 = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch url mapping file from server. err=%{public}@", &v18, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v5 parsedBodyArray];
    if (v9)
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v18 = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v9;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetched updated url mappings %{public}@", &v18, 0x16u);
      }

      v12 = [v5 urlResponse];
      v13 = [v12 ic_valueForHTTPHeaderField:@"ETag"];
      [*(a1 + 32) _saveCachedResponsePayload:v9 eTag:v13];
      v14 = [[ICMediaAPIURLMappingSet alloc] initWithResponsePayload:v9];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to parse url mappings from response body", &v18, 0xCu);
      }

      v17 = *(a1 + 40);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      (*(v17 + 16))(v17, 0, v12);
    }
  }
}

- (id)getCurrentURLMappingSet
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(ICMediaAPIURLMappingProvider *)self _loadCacheDictionary];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 ic_arrayValueForKey:@"mappings"];
    if (v5)
    {
      v6 = v5;
      v7 = [[ICMediaAPIURLMappingSet alloc] initWithResponsePayload:v5];
      goto LABEL_10;
    }

    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load url mappings from cache file", &v10, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load mapping cache", &v10, 0xCu);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (ICMediaAPIURLMappingProvider)sharedProvider
{
  if (sharedProvider___onceToken != -1)
  {
    dispatch_once(&sharedProvider___onceToken, &__block_literal_global_39043);
  }

  v3 = sharedProvider___mappingProvider;

  return v3;
}

uint64_t __46__ICMediaAPIURLMappingProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(ICMediaAPIURLMappingProvider);
  v1 = sharedProvider___mappingProvider;
  sharedProvider___mappingProvider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end