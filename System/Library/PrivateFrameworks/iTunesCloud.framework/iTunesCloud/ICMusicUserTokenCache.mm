@interface ICMusicUserTokenCache
+ (ICMusicUserTokenCache)sharedCache;
+ (id)_decodeDeveloperTokenPart:(id)part;
+ (void)_getCacheKeyForDeveloperToken:(id)token requestContext:(id)context completion:(id)completion;
- (id)_init;
- (void)_handleMusicUserTokensDidChangeDistributedNotification:(id)notification;
- (void)_loadPersistedCacheWithCompletion:(id)completion;
- (void)_persistCache;
- (void)_postLocalChangeNotification;
- (void)dealloc;
- (void)getCachedUserTokenForDeveloperToken:(id)token requestContext:(id)context completion:(id)completion;
- (void)setCachedUserToken:(id)token forDeveloperToken:(id)developerToken requestContext:(id)context completion:(id)completion;
@end

@implementation ICMusicUserTokenCache

- (void)_postLocalChangeNotification
{
  dispatch_assert_queue_V2(self->_calloutQueue);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICMusicUserTokenCacheDidChangeNotification" object:self];
}

- (void)_persistCache
{
  dispatch_assert_queue_barrier(self->_accessQueue);
  v3 = +[ICDefaults standardDefaults];
  [v3 setCachedMusicUserTokens:self->_cachedUserTokens];
  [v3 synchronize];
}

- (void)_loadPersistedCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_barrier(self->_accessQueue);
  v5 = [(NSMutableDictionary *)self->_cachedUserTokens copy];
  cachedUserTokens = self->_cachedUserTokens;
  self->_cachedUserTokens = 0;

  v7 = +[ICDefaults standardDefaults];
  [v7 synchronize];
  cachedMusicUserTokens = [v7 cachedMusicUserTokens];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__ICMusicUserTokenCache__loadPersistedCacheWithCompletion___block_invoke;
  v15[3] = &unk_1E7BF7900;
  v15[4] = self;
  [cachedMusicUserTokens enumerateKeysAndObjectsUsingBlock:v15];
  v9 = self->_cachedUserTokens;
  if (v5 == v9)
  {
    v10 = 0;
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 1;
  if (v5 && v9)
  {
    v10 = [(NSMutableDictionary *)v5 isEqualToDictionary:?]^ 1;
  }

  if (completionCopy)
  {
LABEL_6:
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__ICMusicUserTokenCache__loadPersistedCacheWithCompletion___block_invoke_2;
    block[3] = &unk_1E7BF8C60;
    v13 = completionCopy;
    v14 = v10;
    dispatch_async(calloutQueue, block);
  }

LABEL_7:
}

void __59__ICMusicUserTokenCache__loadPersistedCacheWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSString())
  {
    v6 = *(*(a1 + 32) + 24);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v8 + 24) = v7;

      v6 = *(*(a1 + 32) + 24);
    }

    [v6 setObject:v5 forKey:v10];
  }
}

- (void)_handleMusicUserTokensDidChangeDistributedNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_INFO, "%{public}@: Reloading Music User Token due to external change notification.", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ICMusicUserTokenCache__handleMusicUserTokensDidChangeDistributedNotification___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

uint64_t __80__ICMusicUserTokenCache__handleMusicUserTokensDidChangeDistributedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__ICMusicUserTokenCache__handleMusicUserTokensDidChangeDistributedNotification___block_invoke_2;
  v3[3] = &unk_1E7BF78B0;
  v3[4] = v1;
  return [v1 _loadPersistedCacheWithCompletion:v3];
}

void __80__ICMusicUserTokenCache__handleMusicUserTokensDidChangeDistributedNotification___block_invoke_2(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_INFO, "%{public}@: _handleMusicUserTokensDidChangeDistributedNotification: didContentsChange = %{BOOL}d", &v6, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) _postLocalChangeNotification];
  }
}

- (void)setCachedUserToken:(id)token forDeveloperToken:(id)developerToken requestContext:(id)context completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  contextCopy = context;
  developerTokenCopy = developerToken;
  v14 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke;
  v17[3] = &unk_1E7BF9C10;
  v18 = tokenCopy;
  v19 = completionCopy;
  v17[4] = self;
  v15 = tokenCopy;
  v16 = completionCopy;
  [v14 _getCacheKeyForDeveloperToken:developerTokenCopy requestContext:contextCopy completion:v17];
}

void __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke_3;
    v12[3] = &unk_1E7BF9E78;
    v12[4] = v8;
    v13 = v5;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    dispatch_barrier_async(v9, v12);

    v10 = v13;
LABEL_5:

    goto LABEL_6;
  }

  if (*(a1 + 48))
  {
    v11 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v17 = v6;
    v18 = *(a1 + 48);
    dispatch_async(v11, block);

    v10 = v17;
    goto LABEL_5;
  }

LABEL_6:
}

void __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8103 underlyingError:*(a1 + 32) debugDescription:@"User Token caching failed"];
  (*(*(a1 + 40) + 16))();
}

void __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2 != *(a1 + 48) && ![v2 isEqualToString:?])
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 24);
    if (v7)
    {
      if (!v8)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = *(a1 + 32);
        v11 = *(v10 + 24);
        *(v10 + 24) = v9;

        v8 = *(*(a1 + 32) + 24);
        v7 = *(a1 + 48);
      }

      [v8 setObject:v7 forKey:*(a1 + 40)];
    }

    else
    {
      [v8 removeObjectForKey:*(a1 + 40)];
      if (![*(*(a1 + 32) + 24) count])
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 24);
        *(v12 + 24) = 0;
      }
    }

    [*(a1 + 32) _persistCache];
    v14 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v14 postNotificationName:@"com.apple.iTunesCloud.ICMusicUserTokensDidChangeDistributedNotification" object:0];

    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke_5;
    v17[3] = &unk_1E7BF9EC8;
    v17[4] = v15;
    v18 = *(a1 + 56);
    dispatch_async(v16, v17);
    v6 = v18;
    goto LABEL_12;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke_4;
    block[3] = &unk_1E7BF9D20;
    v20 = v4;
    dispatch_async(v5, block);
    v6 = v20;
LABEL_12:
  }
}

uint64_t __88__ICMusicUserTokenCache_setCachedUserToken_forDeveloperToken_requestContext_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _postLocalChangeNotification];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)getCachedUserTokenForDeveloperToken:(id)token requestContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  tokenCopy = token;
  v11 = objc_opt_class();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__ICMusicUserTokenCache_getCachedUserTokenForDeveloperToken_requestContext_completion___block_invoke;
  v13[3] = &unk_1E7BF9C58;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 _getCacheKeyForDeveloperToken:tokenCopy requestContext:contextCopy completion:v13];
}

void __87__ICMusicUserTokenCache_getCachedUserTokenForDeveloperToken_requestContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__ICMusicUserTokenCache_getCachedUserTokenForDeveloperToken_requestContext_completion___block_invoke_3;
    v12[3] = &unk_1E7BF9E28;
    v12[4] = v7;
    v13 = v5;
    v14 = *(a1 + 40);
    dispatch_async(v8, v12);

    v9 = v13;
LABEL_5:

    goto LABEL_6;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__ICMusicUserTokenCache_getCachedUserTokenForDeveloperToken_requestContext_completion___block_invoke_2;
    block[3] = &unk_1E7BF9D20;
    v16 = v10;
    dispatch_async(v11, block);
    v9 = v16;
    goto LABEL_5;
  }

LABEL_6:
}

void __87__ICMusicUserTokenCache_getCachedUserTokenForDeveloperToken_requestContext_completion___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = a1[6];
  if (v3)
  {
    v4 = *(a1[4] + 16);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __87__ICMusicUserTokenCache_getCachedUserTokenForDeveloperToken_requestContext_completion___block_invoke_4;
    v5[3] = &unk_1E7BF9EC8;
    v7 = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.iTunesCloud.ICMusicUserTokensDidChangeDistributedNotification" object:0];

  v4.receiver = self;
  v4.super_class = ICMusicUserTokenCache;
  [(ICMusicUserTokenCache *)&v4 dealloc];
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = ICMusicUserTokenCache;
  v2 = [(ICMusicUserTokenCache *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicUserTokenCache.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicUserTokenCache.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleMusicUserTokensDidChangeDistributedNotification_ name:@"com.apple.iTunesCloud.ICMusicUserTokensDidChangeDistributedNotification" object:0];

    v8 = v2->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__ICMusicUserTokenCache__init__block_invoke;
    block[3] = &unk_1E7BFA300;
    v11 = v2;
    dispatch_barrier_async(v8, block);
  }

  return v2;
}

+ (void)_getCacheKeyForDeveloperToken:(id)token requestContext:(id)context completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  contextCopy = context;
  completionCopy = completion;
  v11 = [tokenCopy componentsSeparatedByString:@"."];
  selfCopy = self;
  if ([v11 count] == 3)
  {
    v25 = completionCopy;
    v26 = contextCopy;
    v12 = [v11 objectAtIndex:0];
    v13 = [self _decodeDeveloperTokenPart:v12];
    v14 = [v13 objectForKey:@"kid"];
    v15 = 0;
    if (_NSIsNSString())
    {
      v15 = v14;
    }

    v16 = [v11 objectAtIndex:1];
    v17 = [self _decodeDeveloperTokenPart:v16];
    v18 = [v17 objectForKey:@"iss"];
    if (_NSIsNSString())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v15)
    {
      completionCopy = v25;
      contextCopy = v26;
      if (v19)
      {
        identity = [v26 identity];
        identityStore = [v26 identityStore];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __81__ICMusicUserTokenCache__getCacheKeyForDeveloperToken_requestContext_completion___block_invoke;
        v28[3] = &unk_1E7BF78D8;
        v32 = selfCopy;
        v31 = v25;
        v15 = v15;
        v29 = v15;
        v19 = v19;
        v30 = v19;
        [identityStore getPropertiesForUserIdentity:identity completionHandler:v28];

        goto LABEL_16;
      }
    }

    else
    {
      completionCopy = v25;
      contextCopy = v26;
    }
  }

  else
  {
    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v35 = 2112;
      v36 = tokenCopy;
      v37 = 2048;
      v38 = [v11 count];
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to extract key identifier and team identifier from developer token %@ because it has an unexpected number of parts: %lu.", buf, 0x20u);
    }

    v15 = 0;
    v19 = 0;
  }

  identity = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8202 debugDescription:{@"Failed to create a key for the Music User Token Cache because the key identifier and/or the team identifier could not be derived from developer token %@.", tokenCopy}];
  v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    msv_description = [identity msv_description];
    *buf = 138543618;
    selfCopy2 = selfCopy;
    v35 = 2114;
    v36 = msv_description;
    _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
  }

  (*(completionCopy + 2))(completionCopy, 0, identity);
LABEL_16:
}

void __81__ICMusicUserTokenCache__getCacheKeyForDeveloperToken_requestContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 DSID];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli%@;%@", objc_msgSend(v6, "longLongValue"), a1[4], a1[5]];;
    v9 = *(a1[6] + 16);
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7401 underlyingError:v5 debugDescription:@"Failed to create a key for the Music User Token Cache because there was no DSID in the user identity for the request."];
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[7];
      v12 = [v8 msv_description];
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
    }

    v9 = *(a1[6] + 16);
  }

  v9();
}

+ (id)_decodeDeveloperTokenPart:(id)part
{
  v21 = *MEMORY[0x1E69E9840];
  partCopy = part;
  v5 = [partCopy length]& 3;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = @"==";
    }

    else
    {
      v7 = @"=";
    }

    v6 = [partCopy stringByAppendingString:v7];

LABEL_8:
    if (!v6)
    {
      goto LABEL_13;
    }

    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
    if (!v8)
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to convert base 64 encoded string with developer token encoded part to data: %@.", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_25;
    }

    v16 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v16];
    v10 = v16;
    if (v9)
    {
      if (_NSIsNSDictionary())
      {
        v11 = v9;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        selfCopy4 = self;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode developer token encoded part because resulting object is of unexpected type: %{public}@.", buf, 0x16u);
      }
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to deserialize developer token encoded part data with error: %{public}@.", buf, 0x16u);
      }
    }

    v11 = 0;
    goto LABEL_24;
  }

  v6 = partCopy;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_13:
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy4 = self;
    v19 = 2112;
    v20 = partCopy;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to correct developer token encoded part: %@.", buf, 0x16u);
  }

  v6 = 0;
  v11 = 0;
LABEL_26:

  return v11;
}

+ (ICMusicUserTokenCache)sharedCache
{
  if (sharedCache_sOnceToken_29908 != -1)
  {
    dispatch_once(&sharedCache_sOnceToken_29908, &__block_literal_global_29909);
  }

  v3 = sharedCache_sSharedCache_29910;

  return v3;
}

uint64_t __36__ICMusicUserTokenCache_sharedCache__block_invoke()
{
  v0 = [[ICMusicUserTokenCache alloc] _init];
  v1 = sharedCache_sSharedCache_29910;
  sharedCache_sSharedCache_29910 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end