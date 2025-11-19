@interface SSFileProviderUtilities
+ (id)allFileProviderDomains;
+ (id)domainWithIds:(id)a3;
+ (id)domainsForProviderWithTopLevelBundleId:(id)a3;
+ (id)domainsSupportingSearchOnServer;
+ (void)fetchDomainsSupportingSearchOnServerWithCompletionBlock:(id)a3;
+ (void)initialize;
@end

@implementation SSFileProviderUtilities

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSFileProviderUtilities_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __37__SSFileProviderUtilities_initialize__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SSFileProviderUtilities_initialize__block_invoke_2;
  v4[3] = &__block_descriptor_40_e34_v24__0__NSDictionary_8__NSError_16l;
  v4[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E69673E8] beginMonitoringProviderDomainChangesWithHandler:v4];
  v2 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v3 = _domainsByIDLock;
  _domainsByIDLock = v2;
}

void __37__SSFileProviderUtilities_initialize__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SSGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __37__SSFileProviderUtilities_initialize__block_invoke_2_cold_1(v6, v7);
    }
  }

  [_domainsByIDLock lock];
  v8 = _domainsByID;
  _domainsByID = v5;
  v9 = v5;

  _domainsFetchedOnce = 1;
  [_domainsByIDLock unlock];
  v10 = +[SSICloudDriveAppLibraryCollectionObserver shared];
  v11 = [*(a1 + 32) allFileProviderDomains];

  [v10 updateWithDomains:v11];
}

+ (void)fetchDomainsSupportingSearchOnServerWithCompletionBlock:(id)a3
{
  v4 = a3;
  [_domainsByIDLock lock];
  v5 = _domainsFetchedOnce;
  [_domainsByIDLock unlock];
  if (v5 == 1)
  {
    v6 = [a1 domainsSupportingSearchOnServer];
    v4[2](v4, v6);
  }

  else
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__0;
    v12[4] = __Block_byref_object_dispose__0;
    v13 = _Block_copy(v4);
    v7 = dispatch_queue_create("file provider fetch domains queue", 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__SSFileProviderUtilities_fetchDomainsSupportingSearchOnServerWithCompletionBlock___block_invoke;
    v9[3] = &unk_1E85955F0;
    v10 = v7;
    v11 = v12;
    v8 = v7;
    dispatch_async(v8, v9);

    _Block_object_dispose(v12, 8);
  }
}

void __83__SSFileProviderUtilities_fetchDomainsSupportingSearchOnServerWithCompletionBlock___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__16;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v2 = MEMORY[0x1E69673E8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__SSFileProviderUtilities_fetchDomainsSupportingSearchOnServerWithCompletionBlock___block_invoke_18;
  v7[3] = &unk_1E85955C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = &v11;
  v5 = [v2 beginMonitoringProviderDomainChangesWithHandler:v7];
  v6 = v12[5];
  v12[5] = v5;

  _Block_object_dispose(&v11, 8);
}

void __83__SSFileProviderUtilities_fetchDomainsSupportingSearchOnServerWithCompletionBlock___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SSFileProviderUtilities_fetchDomainsSupportingSearchOnServerWithCompletionBlock___block_invoke_2;
  block[3] = &unk_1E85955A0;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v11, block);
}

void __83__SSFileProviderUtilities_fetchDomainsSupportingSearchOnServerWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = SSGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __83__SSFileProviderUtilities_fetchDomainsSupportingSearchOnServerWithCompletionBlock___block_invoke_2_cold_1((a1 + 40), v3);
    }
  }

  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(a1 + 48) allValues];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 supportsSearchOnServer] && (objc_msgSend(v10, "isHidden") & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v4);
    v11 = *(*(a1 + 56) + 8);
    v13 = *(v11 + 40);
  }

  else
  {
    v13 = 0;
  }

  *(v11 + 40) = 0;

  [MEMORY[0x1E69673E8] endMonitoringProviderDomainChanges:*(*(*(a1 + 64) + 8) + 40)];
  v14 = *MEMORY[0x1E69E9840];
}

+ (id)domainsSupportingSearchOnServer
{
  v17 = *MEMORY[0x1E69E9840];
  [_domainsByIDLock lock];
  v2 = [_domainsByID allValues];
  [_domainsByIDLock unlock];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 supportsSearchOnServer] && (objc_msgSend(v9, "isHidden") & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)allFileProviderDomains
{
  [_domainsByIDLock lock];
  v2 = [_domainsByID allValues];
  [_domainsByIDLock unlock];

  return v2;
}

+ (id)domainsForProviderWithTopLevelBundleId:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [_domainsByIDLock lock];
  v4 = [_domainsByID allValues];
  [_domainsByIDLock unlock];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 topLevelBundleIdentifier];
        if ([v12 isEqualToString:v3])
        {
          v13 = [v11 isHidden];

          if ((v13 & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)domainWithIds:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [_domainsByIDLock lock];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [_domainsByID objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [_domainsByIDLock unlock];
  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end