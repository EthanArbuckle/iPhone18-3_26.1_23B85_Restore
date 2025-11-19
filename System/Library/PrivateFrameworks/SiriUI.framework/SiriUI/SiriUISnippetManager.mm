@interface SiriUISnippetManager
+ (id)sharedInstance;
- (BOOL)_compareObject:(id)a3 toObject:(id)a4 usingBlock:(id)a5;
- (BOOL)_listItem:(id)a3 isEqualToListItem:(id)a4;
- (BOOL)_listItem:(id)a3 isPreferredOverListItem:(id)a4;
- (SiriUISnippetManager)init;
- (id)_createDebugViewControllerForAceObject:(id)a3;
- (id)_snippetExtensionsCache;
- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4;
- (id)extensionForSnippet:(id)a3;
- (id)filteredDisambiguationListItems:(id)a3;
- (id)listItemToPickInAutodisambiguationForListItems:(id)a3;
- (id)safeDisambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4;
- (id)snippetViewControllerForSnippet:(id)a3;
- (id)transcriptItemForObject:(id)a3 sizeClass:(int64_t)a4;
- (void)_prewarmSnippetExtensionsCacheSynchronously;
- (void)preloadPluginBundles;
- (void)prewarmSnippetExtensionsCache;
@end

@implementation SiriUISnippetManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SiriUISnippetManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __38__SiriUISnippetManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SiriUISnippetManager);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SiriUISnippetManager)init
{
  v13.receiver = self;
  v13.super_class = SiriUISnippetManager;
  v2 = [(SiriUISnippetManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEF1E0] clientPluginManagerWithFactoryInitializationBlock:&__block_literal_global_7];
    pluginManager = v2->_pluginManager;
    v2->_pluginManager = v3;

    snippetExtensionsCache = v2->_snippetExtensionsCache;
    v2->_snippetExtensionsCache = 0;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("SnippetExtensionsQueue", v6);
    snippetExtensionsQueue = v2->_snippetExtensionsQueue;
    v2->_snippetExtensionsQueue = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("PluginBundlesQueue", v9);
    pluginBundlesQueue = v2->_pluginBundlesQueue;
    v2->_pluginBundlesQueue = v10;

    [(SiriUISnippetManager *)v2 preloadPluginBundles];
  }

  return v2;
}

id __28__SiriUISnippetManager_init__block_invoke(uint64_t a1, objc_class *a2)
{
  v2 = objc_alloc_init(a2);
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    [v2 setOrientationDelegate:v3];
  }

  return v2;
}

- (void)preloadPluginBundles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SiriUISnippetManager_preloadPluginBundles__block_invoke;
  block[3] = &unk_279C59D78;
  block[4] = self;
  if (preloadPluginBundles_onceToken != -1)
  {
    dispatch_once(&preloadPluginBundles_onceToken, block);
  }
}

void __44__SiriUISnippetManager_preloadPluginBundles__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SiriUISnippetManager_preloadPluginBundles__block_invoke_2;
  block[3] = &unk_279C59D78;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)prewarmSnippetExtensionsCache
{
  snippetExtensionsQueue = self->_snippetExtensionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SiriUISnippetManager_prewarmSnippetExtensionsCache__block_invoke;
  block[3] = &unk_279C59D78;
  block[4] = self;
  dispatch_async(snippetExtensionsQueue, block);
}

- (id)extensionForSnippet:(id)a3
{
  v4 = a3;
  v5 = [(SiriUISnippetManager *)self _snippetExtensionsCache];
  v6 = objc_opt_class();

  v7 = NSStringFromClass(v6);
  v8 = [v5 objectForKeyedSubscript:v7];

  return v8;
}

- (void)_prewarmSnippetExtensionsCacheSynchronously
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SiriUISnippetManager__prewarmSnippetExtensionsCacheSynchronously__block_invoke;
  block[3] = &unk_279C59D78;
  block[4] = self;
  if (_prewarmSnippetExtensionsCacheSynchronously_onceToken != -1)
  {
    dispatch_once(&_prewarmSnippetExtensionsCacheSynchronously_onceToken, block);
  }
}

void __67__SiriUISnippetManager__prewarmSnippetExtensionsCacheSynchronously__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = MEMORY[0x277CCA9C8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SiriUISnippetManager__prewarmSnippetExtensionsCacheSynchronously__block_invoke_2;
  v6[3] = &unk_279C5A3F8;
  v6[4] = *(a1 + 32);
  v7 = v2;
  v4 = v2;
  [v3 _intents_matchSiriUISnippetExtensionsWithCompletion:v6];
  v5 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v4, v5);
}

void __67__SiriUISnippetManager__prewarmSnippetExtensionsCacheSynchronously__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = MEMORY[0x277CBEC10];
  }

  else
  {
    v25 = a1;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [v13 attributes];
          v15 = [v14 objectForKeyedSubscript:@"SAUISnippetSubclassNames"];

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v28;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v28 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [v8 setObject:v13 forKeyedSubscript:*(*(&v27 + 1) + 8 * j)];
              }

              v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v18);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    v21 = [v8 copy];
    a1 = v25;
    v22 = *(v25 + 32);
    v23 = *(v22 + 16);
    *(v22 + 16) = v21;

    v5 = v24;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)_snippetExtensionsCache
{
  snippetExtensionsQueue = self->_snippetExtensionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SiriUISnippetManager__snippetExtensionsCache__block_invoke;
  block[3] = &unk_279C59D78;
  block[4] = self;
  dispatch_sync(snippetExtensionsQueue, block);
  return self->_snippetExtensionsCache;
}

void *__47__SiriUISnippetManager__snippetExtensionsCache__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _prewarmSnippetExtensionsCacheSynchronously];
  }

  return result;
}

- (id)_createDebugViewControllerForAceObject:(id)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCA8D8];
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x26D63F490]();
  v13[0] = v6;
  v13[1] = @"AppleInternal";
  v13[2] = @"/Library/Assistant/UIPlugins";
  v13[3] = @"Debug.siriUIBundle";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v8 = [v5 pathWithComponents:v7];
  v9 = [v4 bundleWithPath:v8];

  v10 = 0;
  if ([v9 loadAndReturnError:0])
  {
    v11 = objc_alloc_init([v9 principalClass]);
    v10 = [v11 viewControllerForSnippet:v3];
  }

  return v10;
}

- (BOOL)_listItem:(id)a3 isEqualToListItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 object];
  v9 = [v7 object];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SiriUISnippetManager__listItem_isEqualToListItem___block_invoke;
  v13[3] = &unk_279C5A420;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  LOBYTE(self) = [(SiriUISnippetManager *)self _compareObject:v8 toObject:v9 usingBlock:v13];

  return self;
}

BOOL __52__SiriUISnippetManager__listItem_isEqualToListItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && ([v3 listItem:*(a1 + 32) isEqualToListItem:*(a1 + 40)] & 1) != 0;

  return v4;
}

- (BOOL)_listItem:(id)a3 isPreferredOverListItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 object];
  v9 = [v7 object];
  if (v8 | v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__SiriUISnippetManager__listItem_isPreferredOverListItem___block_invoke;
    v12[3] = &unk_279C5A420;
    v13 = v6;
    v14 = v7;
    v10 = [(SiriUISnippetManager *)self _compareObject:v8 toObject:v9 usingBlock:v12];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

BOOL __58__SiriUISnippetManager__listItem_isPreferredOverListItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && ([v3 listItem:*(a1 + 32) isPreferredOverListItem:*(a1 + 40)] & 1) != 0;

  return v4;
}

- (BOOL)_compareObject:(id)a3 toObject:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v10 && v8 && v9)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __59__SiriUISnippetManager__compareObject_toObject_usingBlock___block_invoke;
    v25 = &unk_279C5A448;
    v27 = &v28;
    v26 = v10;
    v13 = MEMORY[0x26D63F900](&v22);
    pluginManager = self->_pluginManager;
    v15 = [v8 groupIdentifier];
    v16 = [v8 encodedClassName];
    v17 = *MEMORY[0x277CEEFB0];
    [(AFClientPluginManager *)pluginManager enumerateFactoryInstancesForDomainKey:*MEMORY[0x277CEEFB0] groupIdentifier:v15 classIdentifier:v16 usingBlock:v13];

    if (v29[3])
    {
      v12 = 1;
    }

    else
    {
      v18 = self->_pluginManager;
      v19 = [v9 groupIdentifier];
      v20 = [v9 encodedClassName];
      [(AFClientPluginManager *)v18 enumerateFactoryInstancesForDomainKey:v17 groupIdentifier:v19 classIdentifier:v20 usingBlock:v13];

      v12 = *(v29 + 24);
    }

    _Block_object_dispose(&v28, 8);
  }

  return v12 & 1;
}

uint64_t __59__SiriUISnippetManager__compareObject_toObject_usingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)transcriptItemForObject:(id)a3 sizeClass:(int64_t)a4
{
  v7 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke;
  v18[3] = &unk_279C5A498;
  v8 = v7;
  v21 = &v24;
  v22 = a4;
  v19 = v8;
  v20 = self;
  v23 = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke_3;
  v17[3] = &unk_279C59F40;
  v17[4] = &v30;
  SiriUIBlockExecuteMonitored(v18, v17);
  if ([v25[5] conformsToProtocol:&unk_287A30D78])
  {
    [v25[5] configureContentWithSizeClass:a4];
  }

  if (!v25[5])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v31[3] & 1) == 0)
    {
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [SiriUISnippetManager transcriptItemForObject:v8 sizeClass:v9];
      }

      v10 = [(SiriUISnippetManager *)self _createDebugViewControllerForAceObject:v8];
      v11 = v25[5];
      v25[5] = v10;
    }
  }

  if (!v25[5])
  {
    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriUISnippetManager transcriptItemForObject:v8 sizeClass:v12];
    }

    v13 = [[SiriUIErrorSnippetViewController alloc] initWithError:0];
    v14 = v25[5];
    v25[5] = v13;
  }

  v15 = [MEMORY[0x277D60130] transcriptItemWithAceObject:v8];
  [v15 setViewController:v25[5]];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = *(a1 + 32);
    v2 = [SiriUIPrivateViewControllerOverrides viewControllerForSnippet:"viewControllerForSnippet:sizeClass:" sizeClass:?];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v5 = [*(a1 + 40) snippetViewControllerForSnippet:v14];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(*(a1 + 40) + 8);
      v9 = *MEMORY[0x277CEEFB8];
      v10 = [*(a1 + 32) groupIdentifier];
      v11 = [*(a1 + 32) encodedClassName];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke_2;
      v15[3] = &unk_279C5A470;
      v18 = *(a1 + 48);
      v12 = *(a1 + 32);
      v19 = *(a1 + 64);
      v13 = *(a1 + 40);
      v16 = v12;
      v17 = v13;
      [v8 enumerateFactoryInstancesForDomainKey:v9 groupIdentifier:v10 classIdentifier:v11 usingBlock:v15];
    }
  }
}

uint64_t __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v11 viewControllerForAceObject:*(a1 + 32)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = v11;
  if (v8 == v11)
  {
    __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke_2_cold_1();
    v9 = v11;
    v8 = v13;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    goto LABEL_7;
  }

  v8 = [v8 conformsToProtocol:{&unk_287A20858, v11}];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke_2_cold_2();
    v9 = v12;
  }

LABEL_7:
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a3 = 1;
  }

  return MEMORY[0x2821F96F8](v8, v9);
}

- (id)snippetViewControllerForSnippet:(id)a3
{
  v5 = a3;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__0;
  v28[4] = __Block_byref_object_dispose__0;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__0;
  v26[4] = __Block_byref_object_dispose__0;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  pluginManager = self->_pluginManager;
  v7 = [v5 groupIdentifier];
  v8 = [v5 encodedClassName];
  v9 = *MEMORY[0x277CEEFB8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SiriUISnippetManager_snippetViewControllerForSnippet___block_invoke;
  v13[3] = &unk_279C5A4C0;
  v16 = &v20;
  v10 = v5;
  v14 = v10;
  v15 = self;
  v17 = v26;
  v18 = v28;
  v19 = a2;
  [(AFClientPluginManager *)pluginManager enumerateFactoryInstancesForDomainKey:v9 groupIdentifier:v7 classIdentifier:v8 usingBlock:v13];

  v11 = v21[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  return v11;
}

void __56__SiriUISnippetManager_snippetViewControllerForSnippet___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = a1[4];
    v7 = *(a1[7] + 8);
    obj = *(v7 + 40);
    v8 = [v5 viewControllerForSnippet:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = [v5 viewControllerForSnippet:a1[4]];
    v12 = *(a1[6] + 8);
    v10 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

LABEL_6:
  if ([*(*(a1[7] + 8) + 40) isSiriUISnippetPluginError])
  {
    v13 = [*(*(a1[7] + 8) + 40) code] == 100;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a1[6] + 8) + 40);
  if (v14 == v5)
  {
    __56__SiriUISnippetManager_snippetViewControllerForSnippet___block_invoke_cold_1();
    if (!*buf)
    {
      goto LABEL_13;
    }
  }

  else if (!v14)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __56__SiriUISnippetManager_snippetViewControllerForSnippet___block_invoke_cold_2();
  }

LABEL_13:
  if (!v13 && (v15 = *(*(a1[7] + 8) + 40), *(*(a1[6] + 8) + 40) | v15))
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v15);
    v20 = *(a1[7] + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;

    *a3 = 1;
  }

  else
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[4];
      *buf = 136315650;
      *&buf[4] = "[SiriUISnippetManager snippetViewControllerForSnippet:]_block_invoke";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_26948D000, v16, OS_LOG_TYPE_DEFAULT, "%s Plugin:%@ does not support snippet:%@. Trying next plugin.", buf, 0x20u);
    }

    v18 = *(a1[7] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }
}

- (id)filteredDisambiguationListItems:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 object];
  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v7 = v4;
    v22 = v7;
    pluginManager = self->_pluginManager;
    v9 = [v6 groupIdentifier];
    v10 = [v6 encodedClassName];
    v11 = *MEMORY[0x277CEEFB0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__SiriUISnippetManager_filteredDisambiguationListItems___block_invoke;
    v14[3] = &unk_279C5A4E8;
    v16 = &v17;
    v15 = v7;
    [(AFClientPluginManager *)pluginManager enumerateFactoryInstancesForDomainKey:v11 groupIdentifier:v9 classIdentifier:v10 usingBlock:v14];

    v12 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v12 = v4;
  }

  return v12;
}

void __56__SiriUISnippetManager_filteredDisambiguationListItems___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v8 filteredDisambiguationListItems:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

- (id)safeDisambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = +[SiriUIDisambiguationItem disambiguationItem];
  pluginBundlesQueue = self->_pluginBundlesQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SiriUISnippetManager_safeDisambiguationItemForListItem_disambiguationKey___block_invoke;
  v13[3] = &unk_279C5A510;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(pluginBundlesQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __76__SiriUISnippetManager_safeDisambiguationItemForListItem_disambiguationKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) disambiguationItemForListItem:*(a1 + 40) disambiguationKey:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 object];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  if (!v9)
  {
    v27 = [v7 title];
    v28 = v27 == 0;

    if (!v28)
    {
      v29 = +[SiriUIDisambiguationItem disambiguationItem];
      v30 = v47[5];
      v47[5] = v29;

      v31 = v47[5];
      v32 = [v7 title];
      [v31 setTitle:v32];

      v25 = v47[5];
      goto LABEL_14;
    }
  }

  v10 = [v9 groupIdentifier];
  if (v10)
  {
    v11 = [v9 encodedClassName];
    v12 = v11 == 0;

    if (!v12)
    {
      pluginManager = self->_pluginManager;
      v14 = [v9 groupIdentifier];
      v15 = [v9 encodedClassName];
      v16 = *MEMORY[0x277CEEFB0];
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __72__SiriUISnippetManager_disambiguationItemForListItem_disambiguationKey___block_invoke;
      v39 = &unk_279C5A538;
      v44 = &v46;
      v17 = v7;
      v40 = v17;
      v41 = v8;
      v45 = a2;
      v42 = v9;
      v43 = self;
      [(AFClientPluginManager *)pluginManager enumerateFactoryInstancesForDomainKey:v16 groupIdentifier:v14 classIdentifier:v15 usingBlock:&v36];

      v18 = [v17 label];
      if ([v18 length])
      {
        v19 = [v17 labelValue];
        v20 = [v19 length] == 0;

        if (v20)
        {
LABEL_8:
          v25 = v47[5];

          goto LABEL_14;
        }

        [v47[5] setHeadingText:0];
        v21 = v47[5];
        v22 = MEMORY[0x277CCACA8];
        v18 = [v17 label];
        v23 = [v17 labelValue];
        v24 = [v22 stringWithFormat:@"%@ %@", v18, v23, v36, v37, v38, v39, v40, v41];
        [v21 setSubtitle:v24];
      }

      goto LABEL_8;
    }
  }

  v26 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v34 = [v9 groupIdentifier];
    v35 = [v9 encodedClassName];
    *buf = 136315906;
    v53 = "[SiriUISnippetManager disambiguationItemForListItem:disambiguationKey:]";
    v54 = 2112;
    v55 = v34;
    v56 = 2112;
    v57 = v35;
    v58 = 2112;
    v59 = v7;
    _os_log_error_impl(&dword_26948D000, v26, OS_LOG_TYPE_ERROR, "%s No disambiguation item can be found with empty groupIdentifier  (%@) or classname (%@). ListItem: %@", buf, 0x2Au);
  }

  v25 = 0;
LABEL_14:
  _Block_object_dispose(&v46, 8);

  return v25;
}

void __72__SiriUISnippetManager_disambiguationItemForListItem_disambiguationKey___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 disambiguationItemForListItem:a1[4] disambiguationKey:a1[5]];
    v7 = *(a1[8] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1[8] + 8) + 40);
    if (v9)
    {
      if (v9 == v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __72__SiriUISnippetManager_disambiguationItemForListItem_disambiguationKey___block_invoke_cold_1(a1);
      }
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __72__SiriUISnippetManager_disambiguationItemForListItem_disambiguationKey___block_invoke_cold_2(v10, v5, a1);
      }
    }
  }

  if (*(*(a1[8] + 8) + 40))
  {
    *a3 = 1;
  }
}

- (id)listItemToPickInAutodisambiguationForListItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__0;
      v17 = __Block_byref_object_dispose__0;
      v18 = [v4 firstObject];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __71__SiriUISnippetManager_listItemToPickInAutodisambiguationForListItems___block_invoke;
      v8[3] = &unk_279C5A560;
      v9 = v4;
      v10 = self;
      v11 = &v19;
      v12 = &v13;
      [v9 enumerateObjectsUsingBlock:v8];
      if (*(v20 + 24) == 1)
      {
        v6 = v14[5];
      }

      else
      {
        v6 = 0;
      }

      v5 = v6;

      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __71__SiriUISnippetManager_listItemToPickInAutodisambiguationForListItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a3)
  {
    v14 = v7;
    v8 = [*(a1 + 32) objectAtIndex:a3 - 1];
    v9 = *(*(a1 + 48) + 8);
    if (*(v9 + 24) == 1)
    {
      v10 = [*(a1 + 40) _listItem:v14 isEqualToListItem:v8];
      v9 = *(*(a1 + 48) + 8);
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 24) = v10;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v11 = [*(a1 + 40) _listItem:v14 isPreferredOverListItem:*(*(*(a1 + 56) + 8) + 40)];
      v12 = *(*(a1 + 56) + 8);
      v13 = v14;
      if ((v11 & 1) == 0)
      {
        v13 = *(v12 + 40);
      }

      objc_storeStrong((v12 + 40), v13);
    }

    else
    {
      *a4 = 1;
    }

    v7 = v14;
  }
}

- (void)transcriptItemForObject:(uint64_t)a1 sizeClass:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SiriUISnippetManager transcriptItemForObject:sizeClass:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26948D000, a2, OS_LOG_TYPE_ERROR, "%s unable to find plugin capable of creating a view controller for ACE object. Falling back to the debug view controller. ACE object=%@", &v2, 0x16u);
}

- (void)transcriptItemForObject:(uint64_t)a1 sizeClass:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "[SiriUISnippetManager transcriptItemForObject:sizeClass:]";
  v4 = 2114;
  v5 = 0;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_26948D000, a2, OS_LOG_TYPE_ERROR, "%s unable to create view controller for ACE object. Falling back to error snippet view controller. Error=%{public}@; ACE object=%@", &v2, 0x20u);
}

void __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  [v1 handleFailureInMethod:*(v0 + 56) object:*(v0 + 40) file:@"SiriUISnippetManager.m" lineNumber:219 description:{@"Plugin factory %@ must return an new allocated instance of SiriUIAceObjectViewController from viewControllerForAceObject:", objc_opt_class()}];

  OUTLINED_FUNCTION_0_2();
}

void __58__SiriUISnippetManager_transcriptItemForObject_sizeClass___block_invoke_2_cold_2()
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  v2 = v0;
  [v0 handleFailureInMethod:v1 object:? file:? lineNumber:? description:?];
}

void __56__SiriUISnippetManager_snippetViewControllerForSnippet___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  [v1 handleFailureInMethod:*(v0 + 72) object:*(v0 + 40) file:@"SiriUISnippetManager.m" lineNumber:267 description:{@"Plugin factory %@ must return an new allocated instance of SiriUIBaseSnippetViewController from viewControllerForSnippet:", objc_opt_class()}];

  OUTLINED_FUNCTION_0_2();
}

void __56__SiriUISnippetManager_snippetViewControllerForSnippet___block_invoke_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v1 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

void __72__SiriUISnippetManager_disambiguationItemForListItem_disambiguationKey___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 56) file:@"SiriUISnippetManager.m" lineNumber:335 description:{@"Plugin factory %@ must return an new allocated instance of id SiriUIDisambiguationItem from disambiguationItemForListItem:disambiguationKey:", objc_opt_class()}];
}

void __72__SiriUISnippetManager_disambiguationItemForListItem_disambiguationKey___block_invoke_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = *(a3 + 48);
  v7 = v5;
  v8 = [v6 groupIdentifier];
  v10 = 136315906;
  v11 = "[SiriUISnippetManager disambiguationItemForListItem:disambiguationKey:]_block_invoke";
  v12 = 2114;
  v13 = v5;
  v14 = 2114;
  v15 = v8;
  v16 = 2114;
  v17 = objc_opt_class();
  v9 = v17;
  _os_log_error_impl(&dword_26948D000, v4, OS_LOG_TYPE_ERROR, "%s Plugin factory %{public}@ returned a nil disambiguationItem for group id %{public}@ & item object class %{public}@", &v10, 0x2Au);
}

@end