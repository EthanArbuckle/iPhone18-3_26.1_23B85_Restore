@interface SearchUIAppClipValidationCache
- (void)computeObjectsForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUIAppClipValidationCache

- (void)computeObjectsForKeys:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 url];
        if (v14)
        {
          v15 = v14;
          v16 = [v13 applicationBundleIdentifier];

          if (v16)
          {
            v17 = [v13 applicationBundleIdentifier];
            v18 = [v13 url];
            [v7 setObject:v17 forKey:v18];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v19 = [objc_alloc(MEMORY[0x1E6994688]) initWithValidation:v7];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__SearchUIAppClipValidationCache_computeObjectsForKeys_completionHandler___block_invoke;
  v22[3] = &unk_1E85B2E98;
  v23 = v8;
  v24 = v6;
  v20 = v6;
  v21 = v8;
  [v19 validateWithCompletion:v22];
}

void __74__SearchUIAppClipValidationCache_computeObjectsForKeys_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = a1;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v3 availabilities];
        v12 = [v10 url];
        v13 = [v11 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v8;
        }

        v16 = v15;

        [v4 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  (*(*(v17 + 40) + 16))();
}

@end