@interface PPSocialHighlightStorageUtilities
+ (id)excludedChatBundleIds;
+ (id)filteredAllowedChatBundleIds:(id)a3;
- (PPSocialHighlightStorageUtilities)init;
- (id)resolveBundleIdToApplicationIdentifierIfInstalled:(id)a3;
@end

@implementation PPSocialHighlightStorageUtilities

+ (id)excludedChatBundleIds
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v14 = objc_opt_class();
              *buf = 138543619;
              v22 = v14;
              v23 = 2113;
              v24 = v8;
              v15 = v14;
              _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "Item of unexpected type in SBSearchDisabledBundles array: %{public}@ (%{private}@)", buf, 0x16u);
            }

            goto LABEL_17;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v3 = v3;
    v9 = v3;
    goto LABEL_18;
  }

  if (v2)
  {
    v3 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543619;
      v22 = objc_opt_class();
      v23 = 2113;
      v24 = v2;
      v10 = v22;
      _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "Unexpected type for SBSearchDisabledBundles: %{public}@ (%{private}@)", buf, 0x16u);
    }

LABEL_17:
    v9 = MEMORY[0x277CBEBF8];
LABEL_18:

    goto LABEL_19;
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_19:

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)resolveBundleIdToApplicationIdentifierIfInstalled:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v30 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (!v5)
    {
      goto LABEL_26;
    }

    v32 = *v47;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v46 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = __Block_byref_object_copy__1068;
        v44 = __Block_byref_object_dispose__1069;
        v45 = 0;
        bundleIdToAppIdCacheLock = self->_bundleIdToAppIdCacheLock;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke;
        v39[3] = &unk_2789720D8;
        v39[4] = v7;
        v39[5] = &v40;
        [(_PASLock *)bundleIdToAppIdCacheLock runWithLockAcquired:v39];
        v10 = v41[5];
        if (!v10)
        {
          v14 = v7;
          v15 = objc_alloc(MEMORY[0x277CC1E70]);
          v38 = 0;
          v16 = [v15 initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v38];
          v17 = v38;
          if (v16)
          {
            v18 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v51 = v14;
              v52 = 2112;
              v53 = v16;
              _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "Considering registered bundleID: %@, got record: %@", buf, 0x16u);
            }

            v19 = [v16 applicationState];
            if ([v19 isInstalled])
            {
              v20 = [v16 URL];
              v21 = v20 == 0;

              if (!v21)
              {
                v19 = [v16 applicationIdentifier];
                if (v19)
                {
                  [v30 addObject:v19];
                  v22 = self->_bundleIdToAppIdCacheLock;
                  v33[0] = MEMORY[0x277D85DD0];
                  v33[1] = 3221225472;
                  v33[2] = __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke_19;
                  v33[3] = &unk_278971C38;
                  v34 = v14;
                  v19 = v19;
                  v35 = v19;
                  [(_PASLock *)v22 runWithLockAcquired:v33];
                }

                goto LABEL_22;
              }

LABEL_23:

              goto LABEL_24;
            }
          }

          else
          {
            v23 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v51 = v14;
              v52 = 2112;
              v53 = v17;
              _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_INFO, "Failed to initialize LSApplicationRecord with bundle id %@: %@", buf, 0x16u);
            }

            v24 = self->_bundleIdToAppIdCacheLock;
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke_18;
            v36[3] = &unk_278971C10;
            v37 = v14;
            [(_PASLock *)v24 runWithLockAcquired:v36];
            v19 = v37;
          }

LABEL_22:

          goto LABEL_23;
        }

        v11 = [MEMORY[0x277CBEB68] null];
        v12 = v10 == v11;

        if (!v12)
        {
          v13 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v25 = v41[5];
            *buf = 138412546;
            v51 = v25;
            v52 = 2112;
            v53 = v7;
            _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "Fetching cached application identifier %@ for bundle ID: %@", buf, 0x16u);
          }

          [v30 addObject:v41[5]];
        }

LABEL_24:
        _Block_object_dispose(&v40, 8);

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (!v5)
      {
LABEL_26:

        v26 = [v30 copy];
        v4 = v29;
        goto LABEL_28;
      }
    }
  }

  v26 = 0;
LABEL_28:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB68];
  v4 = a2;
  v5 = [v3 null];
  [v4 setObject:v5 forKeyedSubscript:*(a1 + 32)];
}

- (PPSocialHighlightStorageUtilities)init
{
  v8.receiver = self;
  v8.super_class = PPSocialHighlightStorageUtilities;
  v2 = [(PPSocialHighlightStorageUtilities *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    bundleIdToAppIdCacheLock = v2->_bundleIdToAppIdCacheLock;
    v2->_bundleIdToAppIdCacheLock = v5;
  }

  return v2;
}

+ (id)filteredAllowedChatBundleIds:(id)a3
{
  v4 = a3;
  v5 = [a1 excludedChatBundleIds];
  if ([v5 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__PPSocialHighlightStorageUtilities_filteredAllowedChatBundleIds___block_invoke;
    v8[3] = &unk_2789793E0;
    v9 = v5;
    v6 = [v4 _pas_filteredArrayWithTest:v8];

    v4 = v9;
  }

  else
  {
    v6 = [v4 copy];
  }

  return v6;
}

@end