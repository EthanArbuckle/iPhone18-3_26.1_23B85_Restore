@interface WBSPasswordManagerWebsiteMetadataStore
- (WBSPasswordManagerWebsiteMetadataStore)initWithMetadataEntryClass:(Class)class isForTesting:(BOOL)testing;
- (id)_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group;
- (id)synchronousMetadataForDomain:(id)domain;
- (id)test_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group;
- (void)allMetadataWithCompletionHandler:(id)handler;
- (void)debug_deleteAllPersistedDataWithCompletionHandler:(id)handler;
- (void)metadataForDomain:(id)domain completionHandler:(id)handler;
- (void)saveMetadataEntry:(id)entry forDomain:(id)domain completionHandler:(id)handler;
@end

@implementation WBSPasswordManagerWebsiteMetadataStore

- (WBSPasswordManagerWebsiteMetadataStore)initWithMetadataEntryClass:(Class)class isForTesting:(BOOL)testing
{
  if (testing)
  {
    v4 = @"com.apple.password-manager.website-metadata.testing";
  }

  else
  {
    v4 = @"com.apple.password-manager.website-metadata";
  }

  return [(WBSPasswordManagerWebsiteMetadataStore *)self _initWithMetadataEntryClass:class keychainAccessGroup:v4];
}

- (id)test_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group
{
  v4 = [(WBSPasswordManagerWebsiteMetadataStore *)self _initWithMetadataEntryClass:class keychainAccessGroup:group];

  return v4;
}

- (id)_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group
{
  groupCopy = group;
  v19.receiver = self;
  v19.super_class = WBSPasswordManagerWebsiteMetadataStore;
  v7 = [(WBSPasswordManagerWebsiteMetadataStore *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_metadataEntryClass = class;
    v9 = [groupCopy copy];
    accessGroup = v8->_accessGroup;
    v8->_accessGroup = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"com.apple.SafariCore.%@.%p", v13, v8];
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    queue = v8->_queue;
    v8->_queue = v15;

    v8->_metadataEntryLock._os_unfair_lock_opaque = 0;
    v17 = v8;
  }

  return v8;
}

- (void)allMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v52[9] = *MEMORY[0x1E69E9840];
  v51[0] = *MEMORY[0x1E697AC30];
  v2 = [*(*(a1 + 32) + 8) keychainAccountName];
  v3 = *MEMORY[0x1E697ABD0];
  v41 = a1;
  v4 = *(*(a1 + 32) + 16);
  v52[0] = v2;
  v52[1] = v4;
  v5 = *MEMORY[0x1E697AFF8];
  v51[1] = v3;
  v51[2] = v5;
  v6 = *MEMORY[0x1E697AE00];
  v7 = *MEMORY[0x1E697AE30];
  v52[2] = *MEMORY[0x1E697B018];
  v52[3] = v7;
  v8 = *MEMORY[0x1E697AEB0];
  v51[3] = v6;
  v51[4] = v8;
  v9 = *MEMORY[0x1E697B390];
  v52[4] = MEMORY[0x1E695E118];
  v52[5] = MEMORY[0x1E695E118];
  v10 = *MEMORY[0x1E697B318];
  v51[5] = v9;
  v51[6] = v10;
  v11 = *MEMORY[0x1E697B310];
  v52[6] = MEMORY[0x1E695E118];
  v52[7] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697B260];
  v51[7] = v11;
  v51[8] = v12;
  v52[8] = *MEMORY[0x1E697B268];
  v13 = 0x1E695D000uLL;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:9];

  result = 0;
  v15 = SecItemCopyMatching(v14, &result);
  if (!v15)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = result;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v38 = v14;
      v40 = 0;
      v43 = 0;
      v44 = 0;
      v20 = *v46;
      v21 = *MEMORY[0x1E697AE80];
      v22 = *MEMORY[0x1E697B3C0];
      do
      {
        v23 = 0;
        v42 = v19;
        do
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v45 + 1) + 8 * v23);
          v25 = [v24 objectForKeyedSubscript:v21];
          v26 = [v24 objectForKeyedSubscript:v22];
          if ([v25 length])
          {
            v27 = [*(v13 + 3872) safari_dictionaryWithPropertyListData:v26];
            if (v27)
            {
              v28 = v22;
              v29 = v21;
              v30 = v20;
              v31 = v13;
              v32 = v17;
              v33 = [objc_alloc(*(*(v41 + 32) + 8)) initWithKeychainDictionary:v27 forDomain:v25];
              if (v33)
              {
                [v39 setObject:v33 forKeyedSubscript:v25];
              }

              else
              {
                ++v40;
              }

              v17 = v32;
              v13 = v31;
              v20 = v30;
              v21 = v29;
              v22 = v28;
              v19 = v42;
            }

            else
            {
              ++v43;
            }
          }

          else
          {
            ++v44;
          }

          ++v23;
        }

        while (v19 != v23);
        v19 = [v17 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v19);

      if (v44)
      {
        v34 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_1();
        }
      }

      v14 = v38;
      if (v43 && (v35 = WBS_LOG_CHANNEL_PREFIXKeychain(), os_log_type_enabled(v35, OS_LOG_TYPE_ERROR)))
      {
        __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_2();
        if (v40)
        {
LABEL_28:
          v36 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_3();
          }
        }
      }

      else if (v40)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    (*(*(v41 + 40) + 16))();

    goto LABEL_32;
  }

  if (v15 != -25300)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_4();
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_32:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)metadataForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  block[4] = self;
  v12 = domainCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = domainCopy;
  dispatch_async(queue, block);
}

void __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke(void *a1)
{
  v22[8] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(*(a1[4] + 8));
  v21[0] = *MEMORY[0x1E697AC30];
  v3 = [*(a1[4] + 8) keychainAccountName];
  v4 = *MEMORY[0x1E697ABD0];
  v5 = *(a1[4] + 16);
  v22[0] = v3;
  v22[1] = v5;
  v6 = *MEMORY[0x1E697AFF8];
  v21[1] = v4;
  v21[2] = v6;
  v7 = *MEMORY[0x1E697AE00];
  v8 = *MEMORY[0x1E697AE30];
  v22[2] = *MEMORY[0x1E697B018];
  v22[3] = v8;
  v9 = *MEMORY[0x1E697AE80];
  v21[3] = v7;
  v21[4] = v9;
  v10 = *MEMORY[0x1E697AEB0];
  v22[4] = a1[5];
  v22[5] = MEMORY[0x1E695E118];
  v11 = *MEMORY[0x1E697B390];
  v21[5] = v10;
  v21[6] = v11;
  v21[7] = *MEMORY[0x1E697B318];
  v22[6] = MEMORY[0x1E695E118];
  v22[7] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:8];

  v20 = 0;
  v13 = SecItemCopyMatching(v12, &v20);
  if (v13)
  {
    if (v13 != -25300)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke_cold_2();
      }
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v15 = v20;
    v16 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:v20];

    if (v16)
    {
      v17 = [objc_alloc(*(a1[4] + 8)) initWithKeychainDictionary:v16 forDomain:a1[5]];

      v2 = v17;
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke_cold_1(a1 + 5, v18);
      }
    }

    (*(a1[6] + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)synchronousMetadataForDomain:(id)domain
{
  domainCopy = domain;
  v5 = dispatch_group_create();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  dispatch_group_enter(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__WBSPasswordManagerWebsiteMetadataStore_synchronousMetadataForDomain___block_invoke;
  v10[3] = &unk_1E7CF1930;
  v10[4] = self;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [(WBSPasswordManagerWebsiteMetadataStore *)self metadataForDomain:domainCopy completionHandler:v10];
  v7 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v6, v7);
  os_unfair_lock_lock(&self->_metadataEntryLock);
  v8 = v14[5];
  os_unfair_lock_unlock(&self->_metadataEntryLock);

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __71__WBSPasswordManagerWebsiteMetadataStore_synchronousMetadataForDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  dispatch_group_leave(*(a1 + 40));
}

- (void)saveMetadataEntry:(id)entry forDomain:(id)domain completionHandler:(id)handler
{
  entryCopy = entry;
  domainCopy = domain;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF1958;
  v16 = entryCopy;
  selfCopy = self;
  v18 = domainCopy;
  v19 = handlerCopy;
  v12 = domainCopy;
  v13 = handlerCopy;
  v14 = entryCopy;
  dispatch_async(queue, v15);
}

void __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke(uint64_t a1)
{
  v46[7] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) originalBackingDictionary];
  v3 = [*(a1 + 32) dictionaryRepresentation];
  if ([v3 isEqualToDictionary:v2])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v39 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v39];
    v5 = v39;
    v6 = v5;
    if (v4)
    {
      v37 = v5;
      v45[0] = *MEMORY[0x1E697AC30];
      v7 = [*(*(a1 + 40) + 8) keychainAccountName];
      v8 = *MEMORY[0x1E697ABD0];
      v9 = *(a1 + 48);
      v10 = *(*(a1 + 40) + 16);
      v46[0] = v7;
      v46[1] = v10;
      v11 = *MEMORY[0x1E697AFF8];
      v45[1] = v8;
      v45[2] = v11;
      v12 = *MEMORY[0x1E697AE00];
      v13 = *MEMORY[0x1E697AE30];
      v46[2] = *MEMORY[0x1E697B018];
      v46[3] = v13;
      v14 = *MEMORY[0x1E697AE80];
      v45[3] = v12;
      v45[4] = v14;
      v15 = *MEMORY[0x1E697AEB0];
      v16 = MEMORY[0x1E695E118];
      v46[4] = v9;
      v46[5] = MEMORY[0x1E695E118];
      v17 = *MEMORY[0x1E697B390];
      v45[5] = v15;
      v45[6] = v17;
      v46[6] = MEMORY[0x1E695E118];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:7];

      v18 = *MEMORY[0x1E697B3C0];
      v38 = v4;
      v44[0] = v4;
      v19 = *MEMORY[0x1E697ADC8];
      v43[0] = v18;
      v43[1] = v19;
      v20 = [*(a1 + 32) keychainItemLabelForDomain:*(a1 + 48)];
      v44[1] = v20;
      v43[2] = *MEMORY[0x1E697ACE0];
      v21 = [*(a1 + 32) keychainItemDescription];
      v44[2] = v21;
      v43[3] = v8;
      v22 = *(*(a1 + 40) + 16);
      v43[4] = v15;
      v44[3] = v22;
      v44[4] = v16;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:5];

      v24 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v33 = v24;
        v34 = [v23 objectForKeyedSubscript:v8];
        v35 = [v23 objectForKeyedSubscript:v19];
        *buf = 138543619;
        *&buf[4] = v34;
        v41 = 2113;
        v42 = v35;
        _os_log_debug_impl(&dword_1B8447000, v33, OS_LOG_TYPE_DEBUG, "Within WebsiteMetadataStore, attributes for credential SecItemUpdate: { accessGroup: %{public}@, label: %{private}@ }", buf, 0x16u);
      }

      *buf = 0;
      SecItemUpdateWithError();
      v6 = *buf;

      v25 = [v6 code];
      if (v25 == -25300)
      {
        v27 = [v23 mutableCopy];
        [v27 addEntriesFromDictionary:v36];
        v28 = v27;

        v29 = SecItemAdd(v28, 0);
        if (v29)
        {
          v30 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_1();
          }
        }

        v23 = v28;
        v4 = v38;
      }

      else
      {
        v4 = v38;
        if (v25)
        {
          v31 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_2(v31, v6);
          }
        }
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_3(v26, v6);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)debug_deleteAllPersistedDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v21[6] = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 8) keychainAccountName];
  v4 = *MEMORY[0x1E697ABD0];
  v20[0] = *MEMORY[0x1E697AC30];
  v20[1] = v4;
  v5 = *(*v2 + 16);
  v21[0] = v3;
  v21[1] = v5;
  v6 = *MEMORY[0x1E697B018];
  v7 = *MEMORY[0x1E697AE00];
  v20[2] = *MEMORY[0x1E697AFF8];
  v20[3] = v7;
  v8 = *MEMORY[0x1E697AE30];
  v21[2] = v6;
  v21[3] = v8;
  v9 = *MEMORY[0x1E697B390];
  v20[4] = *MEMORY[0x1E697AEB0];
  v20[5] = v9;
  v21[4] = MEMORY[0x1E695E118];
  v21[5] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v11 = SecItemDelete(v10);
  v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke_cold_1(v2, v3, v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*v2 + 16);
    v16 = 138412546;
    v17 = v14;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_DEFAULT, "Within WebsiteMetadataStore, deleted all items in %@ with kSecAttrAccount %@", &v16, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v15 = *MEMORY[0x1E69E9840];
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B8447000, a2, OS_LOG_TYPE_DEBUG, "Within WebsiteMetadataStore, fetched keychain entry for %@ wasn't a dictionary", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_2(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Within WebsiteMetadataStore, SecItemUpdateWithError failed with error %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_3(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Within WebsiteMetadataStore, could not create data from dictionary to persist; error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 16);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Within WebsiteMetadataStore, failed to delete all items in %@ with kSecAttrAccount %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end