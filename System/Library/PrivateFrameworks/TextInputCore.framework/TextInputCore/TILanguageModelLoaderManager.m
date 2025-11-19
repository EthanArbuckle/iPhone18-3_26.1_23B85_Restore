@interface TILanguageModelLoaderManager
+ (id)knownClients;
+ (id)modelLocalesForInputModes:(id)a3;
+ (id)recipientRecords;
+ (shared_ptr<KB::LanguageModel>)modelForLocale:(id)a3 isMultilingualModel:(BOOL)a4 languageLocales:(id)a5 adaptationContext:(id)a6 staticResourcePaths:(id)a7 dynamicResourcePath:(id)a8 isMultiLingualModeEnabled:(BOOL)a9 isSiriMode:(BOOL)a10 validEnglishTransformerMultilingualConfig:(BOOL)a11 trialParameters:(id)a12 inlineCompletionPrecision:(int)a13 isInlineCompletionEnabled:(BOOL)a14;
+ (shared_ptr<KB::LanguageModel>)stubForModelLocale:(id)a3 isMultilingualModel:(BOOL)a4 languageLocales:(id)a5 adaptationContext:(id)a6 staticResourcePaths:(id)a7 dynamicResourcePath:(id)a8 isMultiLingualModeEnabled:(BOOL)a9 isSiriMode:(BOOL)a10 isInlineCompletionEnabled:(BOOL)a11;
+ (void)clearDynamicResourcesAtPath:(id)a3;
+ (void)contactStoreDidChange:(id)a3;
+ (void)dropResourcesExcludingInputModes:(id)a3;
+ (void)flushDynamicResourcesForInputModes:(id)a3;
+ (void)performMaintenance;
+ (void)resetClientAndRecipientCache;
+ (void)startObservingContactStore;
+ (void)unwireAllLanguageModelMemory;
+ (void)wireAllLanguageModelMemory;
@end

@implementation TILanguageModelLoaderManager

+ (void)wireAllLanguageModelMemory
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [__sharedInstances allKeys];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [__sharedInstances objectForKey:*(*(&v9 + 1) + 8 * v6)];
        [v7 wireLanguageModelMemory];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)recipientRecords
{
  if (+[TILanguageModelLoaderManager recipientRecords]::dispatchOnce != -1)
  {
    dispatch_once(&+[TILanguageModelLoaderManager recipientRecords]::dispatchOnce, &__block_literal_global_3);
  }

  v3 = +[TILanguageModelLoaderManager recipientRecords]::__recipientRecords;

  return v3;
}

+ (void)contactStoreDidChange:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[TILanguageModelLoaderManager recipientRecords];
    [v5 removeAllObjects];
  }

  else
  {
    [a1 performSelectorOnMainThread:a2 withObject:v6 waitUntilDone:1];
  }
}

+ (void)startObservingContactStore
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:a1 selector:sel_contactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
}

+ (id)modelLocalesForInputModes:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 preferredModelLocaleIdentifier];
        v12 = [v11 mutableCopy];

        if ([v10 isSiriMode])
        {
          [v12 appendString:@"_SiriMode"];
        }

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)unwireAllLanguageModelMemory
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [__sharedInstances allKeys];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [__sharedInstances objectForKey:*(*(&v9 + 1) + 8 * v6)];
        [v7 unwireLanguageModelMemory];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)performMaintenance
{
  v2 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v2 retainBackgroundActivityAssertion];

  KB::LanguageModel::perform_maintenance(&__block_literal_global_22);
}

void __50__TILanguageModelLoaderManager_performMaintenance__block_invoke()
{
  v0 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v0 releaseBackgroundActivityAssertion];
}

+ (void)flushDynamicResourcesForInputModes:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [TILanguageModelLoaderManager modelLocalesForInputModes:a3];
  v4 = [__sharedInstances allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    v9 = MEMORY[0x277D86220];
    *&v6 = 136315394;
    v14 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v3 containsObject:{v11, v14}])
        {
          v12 = [__sharedInstances objectForKey:v11];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = "+[TILanguageModelLoaderManager flushDynamicResourcesForInputModes:]";
            v21 = 2112;
            v22 = v11;
            _os_log_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEFAULT, "%s  Flushing dynamic learning caches for model %@", buf, 0x16u);
          }

          [v12 flushDynamicLearningCaches];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)dropResourcesExcludingInputModes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [__sharedInstances allKeys];
  v15 = v3;
  v5 = [TILanguageModelLoaderManager modelLocalesForInputModes:v3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v5 containsObject:v12] & 1) == 0)
        {
          v13 = [__sharedInstances objectForKey:v12];
          [v13 flushDynamicLearningCaches];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v21 = "+[TILanguageModelLoaderManager dropResourcesExcludingInputModes:]";
            v22 = 2112;
            v23 = v12;
            _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEFAULT, "%s  Dropping loader for model %@", buf, 0x16u);
          }

          [__sharedInstances removeObjectForKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__TILanguageModelLoaderManager_flushDynamicLearningCaches__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[TILanguageModelLoaderManager flushDynamicLearningCaches]_block_invoke";
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Flushing dynamic learning caches for %@", &v6, 0x16u);
  }

  [v4 flushDynamicLearningCaches];

  v5 = *MEMORY[0x277D85DE8];
}

void __58__TILanguageModelLoaderManager_clearDynamicLearningCaches__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[TILanguageModelLoaderManager clearDynamicLearningCaches]_block_invoke";
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Clearing caches for input mode %@", &v6, 0x16u);
  }

  [v4 clearDynamicLearningCaches];

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)clearDynamicResourcesAtPath:(id)a3
{
  v3 = a3;
  v4 = __sharedInstances;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke;
  v14[3] = &unk_2787307F8;
  v5 = v3;
  v15 = v5;
  v6 = [v4 keysOfEntriesPassingTest:v14];
  v7 = __sharedInstances;
  v8 = [v6 allObjects];
  [v7 removeObjectsForKeys:v8];

  v9 = +[TILanguageModelLoaderManager knownClients];
  [v9 removeAllObjects];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke_2;
  v12[3] = &unk_278730820;
  v13 = v5;
  v11 = v5;
  KB::LanguageModel::clear_dynamic_learning_bundles(v10, v12);
}

uint64_t __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 dynamicResourcePath];
  if (v5 == *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    v6 = [v4 dynamicResourcePath];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  return v7;
}

void __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v10 = 136315394;
      v11 = "+[TILanguageModelLoaderManager clearDynamicResourcesAtPath:]_block_invoke_2";
      v12 = 2112;
      v13 = v5;
      v6 = MEMORY[0x277D86220];
      v7 = "%s  Removed dynamic resource bundles at %@";
LABEL_6:
      _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x16u);
    }
  }

  else if (v4)
  {
    v8 = *(a1 + 32);
    v10 = 136315394;
    v11 = "+[TILanguageModelLoaderManager clearDynamicResourcesAtPath:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v6 = MEMORY[0x277D86220];
    v7 = "%s  Could remove dynamic resource bundles at %@";
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __48__TILanguageModelLoaderManager_recipientRecords__block_invoke()
{
  +[TILanguageModelLoaderManager recipientRecords]::__recipientRecords = [[TILRUDictionary alloc] initWithMaximumCapacity:10];

  return MEMORY[0x2821F96F8]();
}

+ (id)knownClients
{
  if (+[TILanguageModelLoaderManager knownClients]::dispatchOnce != -1)
  {
    dispatch_once(&+[TILanguageModelLoaderManager knownClients]::dispatchOnce, &__block_literal_global_7454);
  }

  v3 = +[TILanguageModelLoaderManager knownClients]::__knownClients;

  return v3;
}

uint64_t __44__TILanguageModelLoaderManager_knownClients__block_invoke()
{
  +[TILanguageModelLoaderManager knownClients]::__knownClients = [[TILRUDictionary alloc] initWithMaximumCapacity:10];

  return MEMORY[0x2821F96F8]();
}

+ (shared_ptr<KB::LanguageModel>)stubForModelLocale:(id)a3 isMultilingualModel:(BOOL)a4 languageLocales:(id)a5 adaptationContext:(id)a6 staticResourcePaths:(id)a7 dynamicResourcePath:(id)a8 isMultiLingualModeEnabled:(BOOL)a9 isSiriMode:(BOOL)a10 isInlineCompletionEnabled:(BOOL)a11
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [v17 appContext];
  v21 = [v17 recipientContext];

  KB::LanguageModelConfig::LanguageModelConfig(&v23, v19, a4, v18, v16, v15, v20, v21, 0, !a9, a10, 1, 1, 90, a11);
  operator new();
}

+ (shared_ptr<KB::LanguageModel>)modelForLocale:(id)a3 isMultilingualModel:(BOOL)a4 languageLocales:(id)a5 adaptationContext:(id)a6 staticResourcePaths:(id)a7 dynamicResourcePath:(id)a8 isMultiLingualModeEnabled:(BOOL)a9 isSiriMode:(BOOL)a10 validEnglishTransformerMultilingualConfig:(BOOL)a11 trialParameters:(id)a12 inlineCompletionPrecision:(int)a13 isInlineCompletionEnabled:(BOOL)a14
{
  v19 = a12;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = [v22 appContext];
  v26 = [v22 recipientContext];
  v27 = [v22 isOnline];

  KB::LanguageModelConfig::LanguageModelConfig(&v29, v24, a4, v23, v21, v20, v25, v26, v19, !a9, a10, v27 ^ 1, !a11, a13, a14);
  operator new();
}

+ (void)resetClientAndRecipientCache
{
  v2 = +[TILanguageModelLoaderManager knownClients];
  [v2 removeAllObjects];

  v3 = +[TILanguageModelLoaderManager recipientRecords];
  [v3 removeAllObjects];
}

@end