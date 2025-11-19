@interface PSContactCache
@end

@implementation PSContactCache

void __23___PSContactCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "_PSContactCache: Received ContactStore change notification. Processing...", buf, 2u);
    }

    v3 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23___PSContactCache_init__block_invoke_45;
    block[3] = &unk_1E7C24268;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __33___PSContactCache_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __41___PSContactCache__setContact_forHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v6 = [v3 distantFuture];
  v5 = [[_PSCachedContact alloc] initWithExpirationDate:v6 contact:*(a1 + 32)];
  [v4 setObject:v5 forKey:*(a1 + 40)];
}

void __57___PSContactCache__removeAllHandlesForContactIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57___PSContactCache__removeAllHandlesForContactIdentifier___block_invoke_2;
  v16[3] = &unk_1E7C26810;
  v17 = *(a1 + 32);
  v5 = v4;
  v18 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v3 removeObjectForKey:{*(*(&v12 + 1) + 8 * v10++), v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __57___PSContactCache__removeAllHandlesForContactIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 contact];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

void __46___PSContactCache__getCachedContactForHandle___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    v7 = [v6 expirationDate];
    [v7 timeIntervalSinceNow];
    v9 = v8;

    if (v9 <= 0.0)
    {
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;

      [v12 removeObjectForKey:*(a1 + 32)];
    }
  }
}

void __65___PSContactCache__setLikelyFaceTimeHandle_forContactIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v6 = [v3 distantFuture];
  v5 = [[_PSCachedFaceTimeableHandle alloc] initWithExpirationDate:v6 handle:*(a1 + 32)];
  [v4 setObject:v5 forKey:*(a1 + 40)];
}

void __68___PSContactCache__getCachedFaceTimeableHandleForContactIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    v7 = [v6 expirationDate];
    [v7 timeIntervalSinceNow];
    v9 = v8;

    if (v9 <= 0.0)
    {
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;

      [v12 removeObjectForKey:*(a1 + 32)];
    }
  }
}

id __88___PSContactCache_getFaceTimeableHandleForContact_interactionStore_seedRecipientHandle___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 formattedInternationalStringValue];

  return v3;
}

uint64_t __88___PSContactCache_getFaceTimeableHandleForContact_interactionStore_seedRecipientHandle___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = [a2 personId];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __88___PSContactCache_getFaceTimeableHandleForContact_interactionStore_seedRecipientHandle___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = [a2 personId];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __88___PSContactCache_getFaceTimeableHandleForContact_interactionStore_seedRecipientHandle___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = [a2 personId];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end