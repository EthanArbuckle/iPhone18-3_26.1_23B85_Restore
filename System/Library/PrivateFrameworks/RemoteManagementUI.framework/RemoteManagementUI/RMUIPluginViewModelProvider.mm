@interface RMUIPluginViewModelProvider
- (RMUIPluginViewModelProvider)init;
- (id)_modelForDeclarationInfo:(id)info;
- (id)_sectionNameForDeclarationType:(id)type;
- (signed)_symbolForDeclarationType:(id)type;
- (void)_addModel:(id)model toSection:(id)section;
- (void)_updateViewModelsWithDeclarations:(id)declarations;
- (void)loadPluginsFromConfigurationsWithCompletionHandler:(id)handler;
@end

@implementation RMUIPluginViewModelProvider

- (RMUIPluginViewModelProvider)init
{
  v8.receiver = self;
  v8.super_class = RMUIPluginViewModelProvider;
  v2 = [(RMUIPluginViewModelProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pluginSectionViewModels = v2->_pluginSectionViewModels;
    v2->_pluginSectionViewModels = v3;

    v5 = objc_opt_new();
    pluginViewModels = v2->_pluginViewModels;
    v2->_pluginViewModels = v5;
  }

  return v2;
}

- (void)_updateViewModelsWithDeclarations:(id)declarations
{
  v48 = *MEMORY[0x277D85DE8];
  declarationsCopy = declarations;
  pluginSectionViewModels = [(RMUIPluginViewModelProvider *)self pluginSectionViewModels];
  [pluginSectionViewModels removeAllObjects];

  pluginViewModels = [(RMUIPluginViewModelProvider *)self pluginViewModels];
  [pluginViewModels removeAllObjects];

  v7 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = declarationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(RMUIPluginViewModelProvider *)self _modelForDeclarationInfo:*(*(&v41 + 1) + 8 * i)];
        [(RMUIPluginViewModelProvider *)self _addModel:v13 toSection:v7];
        pluginViewModels2 = [(RMUIPluginViewModelProvider *)self pluginViewModels];
        [pluginViewModels2 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v35 = v8;

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"declarationType" ascending:1];
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"title" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"declarationIdentifier" ascending:1];
  v33 = v16;
  v34 = v15;
  v46[0] = v15;
  v46[1] = v16;
  v32 = v17;
  v46[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  pluginViewModels3 = [(RMUIPluginViewModelProvider *)self pluginViewModels];
  [pluginViewModels3 sortUsingDescriptors:v18];

  allKeys = [v7 allKeys];
  v21 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v37 + 1) + 8 * j);
        v27 = [v7 objectForKeyedSubscript:v26];
        v28 = [v27 sortedArrayUsingDescriptors:v18];
        v29 = [RMUIPluginSectionViewModel newPluginSectionViewModelWithHeading:v26 viewModels:v28];

        pluginSectionViewModels2 = [(RMUIPluginViewModelProvider *)self pluginSectionViewModels];
        [pluginSectionViewModels2 addObject:v29];
      }

      v23 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v23);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_modelForDeclarationInfo:(id)info
{
  v36 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_opt_new();
  label = [infoCopy label];
  [v5 setTitle:label];

  declarationType = [infoCopy declarationType];
  [v5 setSymbol:{-[RMUIPluginViewModelProvider _symbolForDeclarationType:](self, "_symbolForDeclarationType:", declarationType)}];

  declarationIdentifier = [infoCopy declarationIdentifier];
  [v5 setDeclarationIdentifier:declarationIdentifier];

  declarationServerToken = [infoCopy declarationServerToken];
  [v5 setDeclarationServerToken:declarationServerToken];

  declarationType2 = [infoCopy declarationType];
  [v5 setDeclarationType:declarationType2];

  hiddenDetails = [infoCopy hiddenDetails];

  if (hiddenDetails)
  {
    hiddenDetails2 = [infoCopy hiddenDetails];
    [v5 setHiddenDetails:hiddenDetails2];
  }

  details = [infoCopy details];
  if (details)
  {
    v28 = v5;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(details, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = details;
    v15 = details;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          if ([v20 count] == 2)
          {
            v21 = [RMUIKeyValueDetailViewModel alloc];
            v22 = [v20 objectAtIndexedSubscript:0];
            v23 = [v20 objectAtIndexedSubscript:1];
            v24 = [(RMUIKeyValueDetailViewModel *)v21 initWithTitle:v22 value:v23];
            [v14 addObject:v24];
          }

          else
          {
            v22 = +[RMUILog pluginViewModelProvider];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v20;
              _os_log_error_impl(&dword_261E8A000, v22, OS_LOG_TYPE_ERROR, "Cannot load details for non-tuple: %@", buf, 0xCu);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }

    v5 = v28;
    [v28 setDetailViewModels:v14];

    details = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_addModel:(id)model toSection:(id)section
{
  modelCopy = model;
  sectionCopy = section;
  declarationType = [modelCopy declarationType];
  v8 = [(RMUIPluginViewModelProvider *)self _sectionNameForDeclarationType:declarationType];

  v9 = [sectionCopy objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    [sectionCopy setObject:v9 forKeyedSubscript:v8];
  }

  [v9 addObject:modelCopy];
}

- (void)loadPluginsFromConfigurationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke;
  v11[3] = &unk_279B07CB0;
  objc_copyWeak(&v13, &location);
  v5 = handlerCopy;
  v12 = v5;
  v6 = MEMORY[0x266720D10](v11);
  observerStore = [(RMUIPluginViewModelProvider *)self observerStore];
  if (observerStore)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_87;
    v9[3] = &unk_279B07D00;
    v9[4] = self;
    v10 = v6;
    [observerStore displayPropertiesForConfigurationsWithCompletionHandler:v9];
  }

  else
  {
    v8 = +[RMUILog pluginViewModelProvider];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RMUIPluginViewModelProvider loadPluginsFromConfigurationsWithCompletionHandler:v8];
    }

    v6[2](v6, MEMORY[0x277CBEBF8]);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279B07C88;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

uint64_t __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _updateViewModelsWithDeclarations:*(a1 + 32)];
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v5);
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[RMUILog pluginViewModelProvider];
  v8 = v7;
  if (v5)
  {
    v29 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_87_cold_1(v5, v8);
    }

    v33 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v5;
    obj = v5;
    v35 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v35)
    {
      v34 = *v37;
      v32 = a1;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          v11 = [v10 declarationIdentifier];
          v12 = [*(a1 + 32) filterDeclarationIdentifiers];
          if (v12 && (v13 = v12, [*(a1 + 32) filterDeclarationIdentifiers], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v11), v14, v13, (v15 & 1) == 0))
          {
            v23 = +[RMUILog pluginViewModelProvider];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v41 = v11;
              _os_log_debug_impl(&dword_261E8A000, v23, OS_LOG_TYPE_DEBUG, "Ignoring configuration: %@", buf, 0xCu);
            }
          }

          else
          {
            v16 = [RMUIDeclarationInfo alloc];
            v17 = [v10 declarationServerToken];
            v18 = [v10 declarationType];
            v19 = [v10 declarationDetails];
            v20 = [v19 titleUI];
            v21 = [v10 declarationDetails];
            v22 = [v21 descriptionUI];
            v23 = [(RMUIDeclarationInfo *)v16 initWithDeclarationIdentifier:v11 declarationServerToken:v17 declarationType:v18 label:v20 descriptor:v22];

            v24 = [v10 declarationDetails];
            v25 = [v24 detailsUI];
            [v23 setDetails:v25];

            v26 = [v10 declarationDetails];
            v27 = [v26 hiddenDetails];
            [v23 setHiddenDetails:v27];

            a1 = v32;
            [v33 addObject:v23];
          }
        }

        v35 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v35);
    }

    (*(*(a1 + 40) + 16))();
    v6 = v29;
    v5 = v30;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_87_cold_2(v6, v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (signed)_symbolForDeclarationType:(id)type
{
  typeCopy = type;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RMUIPluginViewModelProvider__symbolForDeclarationType___block_invoke;
  v7[3] = &unk_279B07D28;
  v4 = typeCopy;
  v8 = v4;
  v9 = &v10;
  [&unk_287477058 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v11 + 12);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __57__RMUIPluginViewModelProvider__symbolForDeclarationType___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 intValue];
    *a4 = 1;
  }
}

- (id)_sectionNameForDeclarationType:(id)type
{
  typeCopy = type;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [RMUILocalizable string:@"RMUI_SECTION_OTHERS"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RMUIPluginViewModelProvider__sectionNameForDeclarationType___block_invoke;
  v7[3] = &unk_279B07D50;
  v4 = typeCopy;
  v8 = v4;
  v9 = &v10;
  [&unk_287477080 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __62__RMUIPluginViewModelProvider__sectionNameForDeclarationType___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    v7 = [RMUILocalizable string:v10];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

void __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_87_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_261E8A000, a2, OS_LOG_TYPE_DEBUG, "Found configuration properties: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __82__RMUIPluginViewModelProvider_loadPluginsFromConfigurationsWithCompletionHandler___block_invoke_87_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_261E8A000, a2, OS_LOG_TYPE_ERROR, "Failed to find plugin properties: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end