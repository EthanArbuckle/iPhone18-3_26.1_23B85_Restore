@interface SKUISoftwareLibraryInterface
- (BOOL)performActionForLibraryItem:(id)a3;
- (id)exposedPlatformItemKinds;
- (id)stateForLibraryItem:(id)a3;
- (void)enumerateStatesForLibraryItems:(id)a3 usingBlock:(id)a4;
@end

@implementation SKUISoftwareLibraryInterface

- (void)enumerateStatesForLibraryItems:(id)a3 usingBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUISoftwareLibraryInterface *)v7 enumerateStatesForLibraryItems:v8 usingBlock:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v35 + 1) + 8 * v20) storeItemIdentifier];
        [v15 addObject:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = objc_alloc_init(MEMORY[0x277D69C68]);
  v24 = dispatch_semaphore_create(0);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __74__SKUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke;
  v32[3] = &unk_2781F9DC8;
  v25 = v22;
  v33 = v25;
  v34 = v24;
  v26 = v24;
  [v23 getLibraryItemsForITunesStoreItemIdentifiers:v15 completionBlock:v32];
  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __74__SKUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke_2;
  v29[3] = &unk_2782001F0;
  v30 = v25;
  v31 = v6;
  v27 = v6;
  v28 = v25;
  [v16 enumerateObjectsUsingBlock:v29];
}

void __74__SKUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277D6A5D0];
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 valueForProperty:v10];
        if (v14 && ([v12 isPlaceholder] & 1) == 0)
        {
          v15 = [[SKUILibraryItemState alloc] initWithApplication:v12];
          [*(a1 + 32) setObject:v15 forKey:v14];
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __74__SKUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v7 storeItemIdentifier];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(SKUILibraryItemState);
  }

  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v3);
}

- (id)exposedPlatformItemKinds
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUISoftwareLibraryInterface *)v2 exposedPlatformItemKinds:v3];
      }
    }
  }

  v10 = [MEMORY[0x277CBEB98] setWithObject:@"iosSoftware"];

  return v10;
}

- (BOOL)performActionForLibraryItem:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISoftwareLibraryInterface *)v5 performActionForLibraryItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUISoftwareLibraryInterface *)self stateForLibraryItem:v4];
  v14 = [v13 bundleIdentifier];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    SKUIMetricsLaunchApplicationWithIdentifier(v16, 0);
    CFRelease(v16);
  }

  return v15 != 0;
}

- (id)stateForLibraryItem:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISoftwareLibraryInterface *)v4 stateForLibraryItem:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__91;
  v26 = __Block_byref_object_dispose__91;
  v27 = 0;
  v12 = objc_alloc_init(MEMORY[0x277D69C68]);
  v13 = dispatch_semaphore_create(0);
  v14 = [v3 storeItemIdentifier];
  v28[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__SKUISoftwareLibraryInterface_stateForLibraryItem___block_invoke;
  v19[3] = &unk_2781FB1F0;
  v21 = &v22;
  v16 = v13;
  v20 = v16;
  [v12 getLibraryItemsForITunesStoreItemIdentifiers:v15 completionBlock:v19];

  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

void __52__SKUISoftwareLibraryInterface_stateForLibraryItem___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 firstObject];
  if (v6 && ([v6 isPlaceholder] & 1) == 0)
  {
    v3 = [[SKUILibraryItemState alloc] initWithApplication:v6];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end