@interface RMConfigurationSubscriberClient
+ (int)runConfigurationSubscriberClientWithApplicators:(id)a3 publisherClass:(Class)a4 initializeSandbox:(BOOL)a5;
+ (void)_currentLocaleDidChange:(id)a3;
+ (void)_loadDynamicSchema;
+ (void)_registerApplicatorModelClasses:(id)a3;
+ (void)_registerForLocaleChange;
+ (void)_registerPublisherModelClasses:(id)a3;
- (void)_buildSubscribedReferences:(id)a3 declarations:(id)a4 store:(id)a5;
- (void)fetchConfigurationUIsWithTypes:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)fetchConfigurationsWithTypes:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)sendStatusKeys:(id)a3 storeIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
@end

@implementation RMConfigurationSubscriberClient

+ (void)_registerForLocaleChange
{
  v3 = [MEMORY[0x277D45F58] configurationSubscriberClient];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_261E36000, v3, OS_LOG_TYPE_INFO, "Subscribing to locale changes.", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:a1 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x277CBE620] object:0];
}

+ (void)_loadDynamicSchema
{
  v2 = MEMORY[0x277D45F50];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 resourceURL];
  v14 = [v2 configurationSchemaDirectoryForXPCServiceResourceURL:v4];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v14 path];
  LODWORD(v4) = [v5 fileExistsAtPath:v6];

  if (v4)
  {
    [MEMORY[0x277D46010] loadDynamicSchemaFromDirectory:v14];
  }

  v7 = MEMORY[0x277D45F50];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 resourceURL];
  v10 = [v7 statusSchemaDirectoryForXPCServiceResourceURL:v9];

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v10 path];
  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    [MEMORY[0x277D46050] loadDynamicSchemaFromDirectory:v10];
  }
}

+ (int)runConfigurationSubscriberClientWithApplicators:(id)a3 publisherClass:(Class)a4 initializeSandbox:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277D45F58] configurationSubscriberClient];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:v9 publisherClass:? initializeSandbox:?];
  }

  v10 = [MEMORY[0x277D45F58] configurationSubscriberClient];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:v5 publisherClass:v10 initializeSandbox:?];
  }

  if (v5 && ![MEMORY[0x277D45F70] configureSandbox])
  {
    v20 = 78;
  }

  else
  {
    v11 = [MEMORY[0x277D45F58] configurationSubscriberClient];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSUserName();
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_261E36000, v11, OS_LOG_TYPE_INFO, "User: %@", buf, 0xCu);
    }

    v13 = [MEMORY[0x277D45F58] configurationSubscriberClient];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSHomeDirectory();
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_261E36000, v13, OS_LOG_TYPE_INFO, "Home directory: %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x277D45F58] configurationSubscriberClient];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSTemporaryDirectory();
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_261E36000, v15, OS_LOG_TYPE_INFO, "Temp directory: %@", buf, 0xCu);
    }

    [a1 _registerForLocaleChange];
    [a1 _loadDynamicSchema];
    [a1 _registerApplicatorModelClasses:v8];
    if (a4)
    {
      v23 = a4;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [a1 _registerPublisherModelClasses:v17];
    }

    v18 = [[RMConfigurationSubscriberXPCListenerDelegate alloc] initWithApplicators:v8 publisherClass:a4];
    v19 = [MEMORY[0x277CCAE98] serviceListener];
    [v19 setDelegate:v18];
    [v19 resume];

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (void)_currentLocaleDidChange:(id)a3
{
  v3 = [MEMORY[0x277D45F58] configurationSubscriberClient];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v3, OS_LOG_TYPE_DEFAULT, "Notified of locale change. Exiting when clean.", v4, 2u);
  }

  xpc_transaction_exit_clean();
}

+ (void)_registerApplicatorModelClasses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 supportedConfigurationClassesArray];
          [MEMORY[0x277D45FF8] ensureClassForDeclarations:v9];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_11;
          }

          v9 = [v8 supportedConfigurationClasses];
          v10 = MEMORY[0x277D45FF8];
          v11 = [v9 allObjects];
          [v10 ensureClassForDeclarations:v11];
        }

LABEL_11:
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_registerPublisherModelClasses:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 supportedStatusClasses];
          [MEMORY[0x277D45FF8] ensureClassForStatusItems:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchConfigurationsWithTypes:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__RMConfigurationSubscriberClient_fetchConfigurationsWithTypes_scope_completionHandler___block_invoke;
  v12[3] = &unk_279B05858;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
  [RMSubscriberStore subscribedStoreDeclarationsWithScope:a4 configurationTypes:v11 completionHandler:v12];
}

void __88__RMConfigurationSubscriberClient_fetchConfigurationsWithTypes_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v37 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [*(a1 + 32) subscriberDelegate];

    if (v9)
    {
      v10 = [*(a1 + 32) subscriberDelegate];
      v11 = [*(a1 + 40) allObjects];
      [v10 didFailToFetchConfigurationsWithTypes:v11 scope:*(a1 + 56) error:v8];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v34 = 0;
    v12 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v36 = a1;
    v13 = *(a1 + 40);
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          v19 = objc_opt_new();
          [v12 setObject:v19 forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v15);
    }

    v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = v7;
    v21 = v7;
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v38 + 1) + 8 * j);
          v27 = *(v36 + 32);
          v28 = [v26 identifier];
          v29 = [v37 objectForKeyedSubscript:v28];
          [v27 _buildSubscribedReferences:v12 declarations:v29 store:v26];

          v30 = [v26 identifier];
          [v20 setObject:v26 forKeyedSubscript:v30];
        }

        v23 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v23);
    }

    v31 = [*(v36 + 32) subscriberDelegate];

    if (v31)
    {
      v32 = [*(v36 + 32) subscriberDelegate];
      [v32 didFetchConfigurationsByType:v12 storesByIdentifier:v20 scope:*(v36 + 56) completionHandler:*(v36 + 48)];
    }

    else
    {
      (*(*(v36 + 48) + 16))();
    }

    v8 = v34;
    v7 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)fetchConfigurationUIsWithTypes:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__RMConfigurationSubscriberClient_fetchConfigurationUIsWithTypes_scope_completionHandler___block_invoke;
  v12[3] = &unk_279B05858;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
  [RMSubscriberStore subscribedStoreConfigurationsVisibleUIWithScope:a4 configurationTypes:v11 completionHandler:v12];
}

void __90__RMConfigurationSubscriberClient_fetchConfigurationUIsWithTypes_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v37 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [*(a1 + 32) subscriberDelegate];

    if (v9)
    {
      v10 = [*(a1 + 32) subscriberDelegate];
      v11 = [*(a1 + 40) allObjects];
      [v10 didFailToFetchConfigurationsWithTypes:v11 scope:*(a1 + 56) error:v8];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v34 = 0;
    v12 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v36 = a1;
    v13 = *(a1 + 40);
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          v19 = objc_opt_new();
          [v12 setObject:v19 forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v15);
    }

    v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = v7;
    v21 = v7;
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v38 + 1) + 8 * j);
          v27 = *(v36 + 32);
          v28 = [v26 identifier];
          v29 = [v37 objectForKeyedSubscript:v28];
          [v27 _buildSubscribedReferences:v12 declarations:v29 store:v26];

          v30 = [v26 identifier];
          [v20 setObject:v26 forKeyedSubscript:v30];
        }

        v23 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v23);
    }

    v31 = [*(v36 + 32) subscriberDelegate];

    if (v31)
    {
      v32 = [*(v36 + 32) subscriberDelegate];
      [v32 didFetchConfigurationsWithVisibleUIByType:v12 storesByIdentifier:v20 scope:*(v36 + 56) completionHandler:*(v36 + 48)];
    }

    else
    {
      (*(*(v36 + 48) + 16))();
    }

    v8 = v34;
    v7 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)sendStatusKeys:(id)a3 storeIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke;
  v16[3] = &unk_279B058A8;
  v17 = v11;
  v18 = self;
  v19 = v10;
  v20 = v12;
  v13 = v10;
  v14 = v12;
  v15 = v11;
  [RMSubscriberStore storeWithIdentifier:v15 scope:a5 completionHandler:v16];
}

void __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277D45F58] configurationSubscriberClient];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v8 = [*(a1 + 40) publisherDelegate];

    if (v8)
    {
      v9 = [*(a1 + 40) publisherDelegate];
      v10 = *(a1 + 48);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_30;
      v11[3] = &unk_279B05880;
      v12 = v10;
      v14 = *(a1 + 56);
      v13 = v5;
      [v9 fetchStatusForStatusKeys:v12 store:v13 completionHandler:v11];

      goto LABEL_7;
    }

    v7 = [MEMORY[0x277D45F58] configurationSubscriberClient];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_cold_2(v7);
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_7:
}

void __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D45F58] configurationSubscriberClient];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_30_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) publishStatus:a2 completionHandler:*(a1 + 48)];
  }
}

- (void)_buildSubscribedReferences:(id)a3 declarations:(id)a4 store:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v7 = a4;
  v41 = a5;
  v8 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 declarationIdentifier];
          [v8 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v11);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v9;
  v16 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v50;
    v20 = 0x277D46000uLL;
    *&v17 = 138543362;
    v39 = v17;
    v40 = *v50;
    do
    {
      v21 = 0;
      v43 = v18;
      do
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * v21);
        v23 = *v20;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v22 assetReferences];
          v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v45 objects:v59 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v46;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v46 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = [*(*(&v45 + 1) + 8 * j) identifier];
                v32 = [v8 objectForKeyedSubscript:v31];
                if (v32)
                {
                  [v25 addObject:v32];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v45 objects:v59 count:16];
            }

            while (v28);
          }

          if (![v25 count])
          {

            v25 = 0;
          }

          v33 = [[RMSubscribedConfigurationReference alloc] initWithDeclaration:v22 subscriberStore:v41 assets:v25];
          v34 = [v22 declarationType];
          v35 = [v42 objectForKeyedSubscript:v34];
          v36 = v35;
          v19 = v40;
          v20 = 0x277D46000;
          if (v35)
          {
            [v35 addObject:v33];
          }

          else
          {
            v37 = [MEMORY[0x277D45F58] configurationSubscriberClient];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = v39;
              v58 = v34;
              _os_log_error_impl(&dword_261E36000, v37, OS_LOG_TYPE_ERROR, "Store returned unexpected configuration type %{public}@ - ignoring", buf, 0xCu);
            }
          }

          v18 = v43;
        }

        ++v21;
      }

      while (v21 != v18);
      v18 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v18);
  }

  v38 = *MEMORY[0x277D85DE8];
}

+ (void)runConfigurationSubscriberClientWithApplicators:(NSObject *)a1 publisherClass:initializeSandbox:.cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_261E36000, a1, OS_LOG_TYPE_DEBUG, "Starting Configuration Subscriber XPC Service: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)runConfigurationSubscriberClientWithApplicators:(char)a1 publisherClass:(NSObject *)a2 initializeSandbox:.cold.2(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = @"No";
  if (a1)
  {
    v2 = @"Yes";
  }

  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_261E36000, a2, OS_LOG_TYPE_DEBUG, "Will initialize Configuration Subscriber sandbox: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_261E36000, v2, v3, "Failed to lookup store %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __90__RMConfigurationSubscriberClient_sendStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_30_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_261E36000, v2, v3, "Failed to fetch status keys %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

@end