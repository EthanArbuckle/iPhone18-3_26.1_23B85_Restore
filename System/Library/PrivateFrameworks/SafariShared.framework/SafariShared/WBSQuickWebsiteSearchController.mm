@interface WBSQuickWebsiteSearchController
+ (id)sharedController;
- (BOOL)_quickWebsiteSearchProviderHasSearchURLTemplateStringOnAccessQueue:(id)a3;
- (BOOL)_shouldRemoveQuickWebsiteSearchProvider:(id)a3;
- (NSArray)quickWebsiteSearchHosts;
- (id)_dictionaryRepresentation;
- (id)_initWithSearchDescriptionsURL:(id)a3;
- (id)openSearchDescriptionForOpenSearchDescriptionURLString:(id)a3;
- (id)providerForSourcePageURLString:(id)a3;
- (id)providersMatchingQueryString:(id)a3 excludingSearchEngineHostSuffixes:(id)a4;
- (id)providersMatchingString:(id)a3 excludingSearchEngineHostSuffixes:(id)a4;
- (id)quickWebsiteSearchProvider:(id)a3 openSearchDescriptionForOpenSearchDescriptionURLString:(id)a4;
- (void)_addHost:(id)a3 toOpenSearchDescriptionWithDocumentURL:(id)a4;
- (void)_didCollectOpenSearchDescription:(id)a3;
- (void)_didFinishLoadingFromDisk;
- (void)_loadFromDisk;
- (void)_pruneUnusedQuickWebsiteSearchProviders;
- (void)_removeHost:(id)a3 fromOpenSearchDescriptionWithDocumentURL:(id)a4;
- (void)_resetCachedDataWithCompletionHandler:(id)a3;
- (void)_saveToDiskSoon;
- (void)_sendNotification:(id)a3 forQuickWebsiteSearchProvider:(id)a4;
- (void)beginLoadingFromDiskIfNeeded;
- (void)clearWithCompletionHandler:(id)a3;
- (void)didPerformSearchWithProvider:(id)a3;
- (void)noteProvidersAreStale;
- (void)removeProviderWithHost:(id)a3;
- (void)removeProvidersAddedAfterDate:(id)a3 beforeDate:(id)a4;
- (void)removeProvidersWithHosts:(id)a3 completionHandler:(id)a4;
- (void)setOpenSearchDescriptionURLString:(id)a3 forSourcePageURLString:(id)a4;
- (void)setSearchURLTemplateFromForm:(id)a3 forSourcePageURLString:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSQuickWebsiteSearchController

+ (id)sharedController
{
  if (+[WBSQuickWebsiteSearchController sharedController]::onceToken != -1)
  {
    +[WBSQuickWebsiteSearchController sharedController];
  }

  v3 = +[WBSQuickWebsiteSearchController sharedController]::controller;

  return v3;
}

void __51__WBSQuickWebsiteSearchController_sharedController__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 safari_settingsDirectoryURL];
  v4 = [v1 URLByAppendingPathComponent:@"SearchDescriptions.plist" isDirectory:0];

  v2 = [[WBSQuickWebsiteSearchController alloc] _initWithSearchDescriptionsURL:v4];
  v3 = +[WBSQuickWebsiteSearchController sharedController]::controller;
  +[WBSQuickWebsiteSearchController sharedController]::controller = v2;

  [+[WBSQuickWebsiteSearchController sharedController]::controller beginLoadingFromDiskIfNeeded];
}

- (id)_initWithSearchDescriptionsURL:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = WBSQuickWebsiteSearchController;
  v6 = [(WBSQuickWebsiteSearchController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchDescriptionsURL, a3);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.QuickWebsiteSearchProvidersAccess.%@.%p.accessQueue", objc_opt_class(), v7];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create(v9, v10);
    quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = v7->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
    v7->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    quickWebsiteSearchProvidersByHost = v7->_quickWebsiteSearchProvidersByHost;
    v7->_quickWebsiteSearchProvidersByHost = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    openSearchDescriptionsByDescriptionDocumentURLString = v7->_openSearchDescriptionsByDescriptionDocumentURLString;
    v7->_openSearchDescriptionsByDescriptionDocumentURLString = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    hostSetsByOpenSearchDescriptionDocumentURLString = v7->_hostSetsByOpenSearchDescriptionDocumentURLString;
    v7->_hostSetsByOpenSearchDescriptionDocumentURLString = v17;

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v7 selector:sel__didCollectOpenSearchDescription_ name:@"WBSOpenSearchSchemaFetcherDidCollectDescriptionNotification" object:0];
    if (!v7->_searchDescriptionsURL)
    {
      [(WBSQuickWebsiteSearchController *)v7 _didFinishLoadingFromDisk];
    }

    v20 = v7;
  }

  return v7;
}

- (void)beginLoadingFromDiskIfNeeded
{
  if (!self->_hasBegunLoadingFromDisk)
  {
    self->_hasBegunLoadingFromDisk = 1;
    [(WBSQuickWebsiteSearchController *)self _loadFromDisk];
  }
}

- (void)noteProvidersAreStale
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__WBSQuickWebsiteSearchController_noteProvidersAreStale__block_invoke;
  v2[3] = &unk_1E7FB6F80;
  v2[4] = self;
  [(WBSQuickWebsiteSearchController *)self _resetCachedDataWithCompletionHandler:v2];
}

- (void)clearWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__WBSQuickWebsiteSearchController_clearWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7FB6F08;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSQuickWebsiteSearchController *)self _resetCachedDataWithCompletionHandler:v6];
}

uint64_t __62__WBSQuickWebsiteSearchController_clearWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _saveToDiskSoon];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeProvidersAddedAfterDate:(id)a3 beforeDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSQuickWebsiteSearchController_removeProvidersAddedAfterDate_beforeDate___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, block);
}

void __76__WBSQuickWebsiteSearchController_removeProvidersAddedAfterDate_beforeDate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = *(*(a1 + 32) + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__WBSQuickWebsiteSearchController_removeProvidersAddedAfterDate_beforeDate___block_invoke_2;
  v8[3] = &unk_1E7FC9A68;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = v2;
  v11 = v5;
  v6 = v3;
  v12 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  [*(*(a1 + 32) + 32) removeObjectsForKeys:v5];
  [*(*(a1 + 32) + 48) removeObjectsForKeys:v6];
  [*(*(a1 + 32) + 40) removeObjectsForKeys:v6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSQuickWebsiteSearchController_removeProvidersAddedAfterDate_beforeDate___block_invoke_3;
  block[3] = &unk_1E7FB6F80;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__WBSQuickWebsiteSearchController_removeProvidersAddedAfterDate_beforeDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 dateAdded];
  v7 = [v6 safari_isInclusivelyBetweenDate:*(a1 + 32) andDate:*(a1 + 40)];

  if (v7)
  {
    [*(a1 + 48) addObject:v9];
    v8 = [v5 openSearchDescriptionURLString];
    if (v8)
    {
      [*(a1 + 56) addObject:v8];
    }
  }
}

- (void)_sendNotification:(id)a3 forQuickWebsiteSearchProvider:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = @"QuickWebsiteSearchProvider";
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:v6 object:self userInfo:v8];
}

- (NSArray)quickWebsiteSearchHosts
{
  if ([(WBSQuickWebsiteSearchController *)self quickWebsiteSearchProvidersLoadedFromDisk])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__32;
    v11 = __Block_byref_object_dispose__32;
    v12 = 0;
    quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__WBSQuickWebsiteSearchController_quickWebsiteSearchHosts__block_invoke;
    v6[3] = &unk_1E7FB8798;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, v6);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __58__WBSQuickWebsiteSearchController_quickWebsiteSearchHosts__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__WBSQuickWebsiteSearchController_quickWebsiteSearchHosts__block_invoke_2;
  v8[3] = &unk_1E7FC9A90;
  v8[4] = v2;
  v4 = [v3 keysOfEntriesPassingTest:v8];
  v5 = [v4 allObjects];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)providersMatchingString:(id)a3 excludingSearchEngineHostSuffixes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__WBSQuickWebsiteSearchController_providersMatchingString_excludingSearchEngineHostSuffixes___block_invoke;
  v17 = &unk_1E7FC5D00;
  v18 = self;
  v10 = v6;
  v19 = v10;
  v11 = v7;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  dispatch_sync(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, &v14);
  [v12 sortUsingComparator:{&__block_literal_global_34_1, v14, v15, v16, v17, v18}];

  return v12;
}

void __93__WBSQuickWebsiteSearchController_providersMatchingString_excludingSearchEngineHostSuffixes___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__WBSQuickWebsiteSearchController_providersMatchingString_excludingSearchEngineHostSuffixes___block_invoke_2;
  v8[3] = &unk_1E7FC9AE0;
  v7 = *(a1 + 32);
  v2 = *(v7 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v8];
}

void __93__WBSQuickWebsiteSearchController_providersMatchingString_excludingSearchEngineHostSuffixes___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([a1[4] _quickWebsiteSearchProviderHasSearchURLTemplateStringOnAccessQueue:v6])
  {
    v7 = [v5 length];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __93__WBSQuickWebsiteSearchController_providersMatchingString_excludingSearchEngineHostSuffixes___block_invoke_3;
    v8[3] = &unk_1E7FC9AB8;
    v9 = v5;
    v10 = a1[5];
    v14 = v7;
    v11 = a1[6];
    v12 = v6;
    v13 = a1[7];
    [v9 safari_enumerateSubdomainRangesInHostUsingBlock:v8];
  }
}

void __93__WBSQuickWebsiteSearchController_providersMatchingString_excludingSearchEngineHostSuffixes___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) rangeOfString:*(a1 + 40) options:393 range:{a2, *(a1 + 72) - a2}];
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = *(a1 + 48);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) safari_domainFromHost];
          v12 = [*(a1 + 56) hostname];
          v13 = [v12 safari_domainFromHost];
          v14 = [v11 isEqualToString:v13];

          if (v14)
          {

            return;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [*(a1 + 64) addObject:*(a1 + 56)];
    *a4 = 1;
  }
}

uint64_t __93__WBSQuickWebsiteSearchController_providersMatchingString_excludingSearchEngineHostSuffixes___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateOfLastSearch];
  v7 = [v5 dateOfLastSearch];
  v8 = v7;
  if (v6 || !v7)
  {
    if (!v6 || v7)
    {
      if (!v6 || !v7 || (v9 = [v7 compare:v6]) == 0)
      {
        v10 = [v5 dateAdded];
        v11 = [v4 dateAdded];
        v9 = [v10 compare:v11];
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)providersMatchingQueryString:(id)a3 excludingSearchEngineHostSuffixes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AB08] characterSetWithRange:{8206, 1}];
  v9 = [v6 stringByTrimmingCharactersInSet:v8];

  v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v11 = [v9 rangeOfCharacterFromSet:v10];

  if (v11 < 3 || v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v9 length] < 3)
    {
      v13 = MEMORY[0x1E695E0F0];
      goto LABEL_10;
    }

    v14 = v9;
  }

  else
  {
    v14 = [v9 substringToIndex:v11];
  }

  v15 = v14;
  v13 = [(WBSQuickWebsiteSearchController *)self providersMatchingString:v14 excludingSearchEngineHostSuffixes:v7];

LABEL_10:

  return v13;
}

- (void)didPerformSearchWithProvider:(id)a3
{
  v4 = a3;
  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__WBSQuickWebsiteSearchController_didPerformSearchWithProvider___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, v7);
}

void __64__WBSQuickWebsiteSearchController_didPerformSearchWithProvider___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setDateOfLastSearch:v2];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSQuickWebsiteSearchController_didPerformSearchWithProvider___block_invoke_2;
  block[3] = &unk_1E7FB6F80;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setSearchURLTemplateFromForm:(id)a3 forSourcePageURLString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  v12 = [v11 host];
  v13 = [v12 safari_stringByRemovingWwwDotPrefix];

  if (v13)
  {
    quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__WBSQuickWebsiteSearchController_setSearchURLTemplateFromForm_forSourcePageURLString_completionHandler___block_invoke;
    block[3] = &unk_1E7FC6AA0;
    block[4] = self;
    v16 = v13;
    v17 = v8;
    v19 = v10;
    v18 = v9;
    dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, block);
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

void __105__WBSQuickWebsiteSearchController_setSearchURLTemplateFromForm_forSourcePageURLString_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v7 = [[WBSQuickWebsiteSearchProvider alloc] initWithSourcePageURLString:*(a1 + 56) searchURLTemplateFromForm:*(a1 + 48) delegate:*(a1 + 32)];
    [*(*(a1 + 32) + 32) setObject:v7 forKeyedSubscript:*(a1 + 40)];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __105__WBSQuickWebsiteSearchController_setSearchURLTemplateFromForm_forSourcePageURLString_completionHandler___block_invoke_3;
    v8[3] = &unk_1E7FB7CC0;
    v8[4] = *(a1 + 32);
    v6 = &v9;
    v3 = v7;
    v9 = v3;
    v10 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    goto LABEL_5;
  }

  v4 = [(WBSQuickWebsiteSearchProvider *)v2 searchURLTemplateFromForm];
  v5 = [v4 isEqual:*(a1 + 48)];

  if ((v5 & 1) == 0)
  {
    [(WBSQuickWebsiteSearchProvider *)v3 setSearchURLTemplateFromForm:*(a1 + 48)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__WBSQuickWebsiteSearchController_setSearchURLTemplateFromForm_forSourcePageURLString_completionHandler___block_invoke_2;
    block[3] = &unk_1E7FB6F08;
    block[4] = *(a1 + 32);
    v6 = &v12;
    v12 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_5:
  }
}

uint64_t __105__WBSQuickWebsiteSearchController_setSearchURLTemplateFromForm_forSourcePageURLString_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _saveToDiskSoon];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __105__WBSQuickWebsiteSearchController_setSearchURLTemplateFromForm_forSourcePageURLString_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _sendNotification:@"WBSQuickWebsiteSearchControllerDidUpdateProviderNotification" forQuickWebsiteSearchProvider:*(a1 + 40)];
  [*(a1 + 32) _saveToDiskSoon];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setOpenSearchDescriptionURLString:(id)a3 forSourcePageURLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  v9 = [v8 host];
  v10 = [v9 safari_stringByRemovingWwwDotPrefix];

  if (v10)
  {
    quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92__WBSQuickWebsiteSearchController_setOpenSearchDescriptionURLString_forSourcePageURLString___block_invoke;
    v12[3] = &unk_1E7FC5D00;
    v12[4] = self;
    v13 = v10;
    v14 = v6;
    v15 = v7;
    dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, v12);
  }
}

void __92__WBSQuickWebsiteSearchController_setOpenSearchDescriptionURLString_forSourcePageURLString___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = [(WBSQuickWebsiteSearchProvider *)v2 openSearchDescriptionURLString];
    if (([v4 isEqualToString:*(a1 + 48)] & 1) == 0)
    {
      [(WBSQuickWebsiteSearchProvider *)v3 setOpenSearchDescriptionURLString:*(a1 + 48)];
      [*(a1 + 32) _addHost:*(a1 + 40) toOpenSearchDescriptionWithDocumentURL:*(a1 + 48)];
      if (v4)
      {
        [*(a1 + 32) _removeHost:*(a1 + 40) fromOpenSearchDescriptionWithDocumentURL:v4];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__WBSQuickWebsiteSearchController_setOpenSearchDescriptionURLString_forSourcePageURLString___block_invoke_2;
      block[3] = &unk_1E7FB6F80;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v3 = [[WBSQuickWebsiteSearchProvider alloc] initWithSourcePageURLString:*(a1 + 56) openSearchDescriptionURLString:*(a1 + 48) delegate:*(a1 + 32)];
    [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) _addHost:*(a1 + 40) toOpenSearchDescriptionWithDocumentURL:*(a1 + 48)];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __92__WBSQuickWebsiteSearchController_setOpenSearchDescriptionURLString_forSourcePageURLString___block_invoke_3;
    v5[3] = &unk_1E7FB6F80;
    v5[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (id)providerForSourcePageURLString:(id)a3
{
  v4 = a3;
  if ([(WBSQuickWebsiteSearchController *)self quickWebsiteSearchProvidersLoadedFromDisk])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__32;
    v15 = __Block_byref_object_dispose__32;
    v16 = 0;
    quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__WBSQuickWebsiteSearchController_providerForSourcePageURLString___block_invoke;
    block[3] = &unk_1E7FC4D50;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __66__WBSQuickWebsiteSearchController_providerForSourcePageURLString___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  v7 = [MEMORY[0x1E695DFF8] URLWithString:a1[5]];
  v3 = [v7 host];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)openSearchDescriptionForOpenSearchDescriptionURLString:(id)a3
{
  v4 = a3;
  if ([(WBSQuickWebsiteSearchController *)self quickWebsiteSearchProvidersLoadedFromDisk])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__32;
    v15 = __Block_byref_object_dispose__32;
    v16 = 0;
    quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__WBSQuickWebsiteSearchController_openSearchDescriptionForOpenSearchDescriptionURLString___block_invoke;
    block[3] = &unk_1E7FC4D50;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __90__WBSQuickWebsiteSearchController_openSearchDescriptionForOpenSearchDescriptionURLString___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeProvidersWithHosts:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSQuickWebsiteSearchController_removeProvidersWithHosts_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, block);
}

void __78__WBSQuickWebsiteSearchController_removeProvidersWithHosts_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    v5 = MEMORY[0x1E69E96A0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v7];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 openSearchDescriptionURLString];
          if (v10)
          {
            [*(a1 + 40) _removeHost:v7 fromOpenSearchDescriptionWithDocumentURL:v10];
          }

          [*(*(a1 + 40) + 32) removeObjectForKey:v7];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __78__WBSQuickWebsiteSearchController_removeProvidersWithHosts_completionHandler___block_invoke_2;
          block[3] = &unk_1E7FB7F10;
          block[4] = *(a1 + 40);
          v15 = v9;
          dispatch_async(v5, block);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__WBSQuickWebsiteSearchController_removeProvidersWithHosts_completionHandler___block_invoke_3;
  v12[3] = &unk_1E7FB6F08;
  v11 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v13 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __78__WBSQuickWebsiteSearchController_removeProvidersWithHosts_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _saveToDiskSoon];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeProviderWithHost:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(WBSQuickWebsiteSearchController *)self removeProvidersWithHosts:v5 completionHandler:0];
}

- (id)quickWebsiteSearchProvider:(id)a3 openSearchDescriptionForOpenSearchDescriptionURLString:(id)a4
{
  v4 = [(WBSQuickWebsiteSearchController *)self openSearchDescriptionForOpenSearchDescriptionURLString:a4];

  return v4;
}

- (BOOL)_quickWebsiteSearchProviderHasSearchURLTemplateStringOnAccessQueue:(id)a3
{
  v4 = a3;
  v5 = [v4 searchURLTemplateFromForm];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 openSearchDescriptionURLString];
    if ([v7 length])
    {
      v8 = [(NSMutableDictionary *)self->_openSearchDescriptionsByDescriptionDocumentURLString objectForKeyedSubscript:v7];
      v9 = [v8 searchURLTemplate];
      v6 = v9 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)_addHost:(id)a3 toOpenSearchDescriptionWithDocumentURL:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_hostSetsByOpenSearchDescriptionDocumentURLString objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  [v7 addObject:v8];
}

- (void)_removeHost:(id)a3 fromOpenSearchDescriptionWithDocumentURL:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_hostSetsByOpenSearchDescriptionDocumentURLString objectForKeyedSubscript:v6];
  [v7 removeObject:v8];
  if (![v7 count])
  {
    [(NSMutableDictionary *)self->_hostSetsByOpenSearchDescriptionDocumentURLString removeObjectForKey:v6];
    [(NSMutableDictionary *)self->_openSearchDescriptionsByDescriptionDocumentURLString removeObjectForKey:v6];
  }
}

- (BOOL)_shouldRemoveQuickWebsiteSearchProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 dateAdded];
  if (v4)
  {
    v5 = [v3 dateOfLastSearch];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      [v4 timeIntervalSinceNow];
      v6 = v7 < -604800.0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_pruneUnusedQuickWebsiteSearchProviders
{
  quickWebsiteSearchProvidersByHost = self->_quickWebsiteSearchProvidersByHost;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__WBSQuickWebsiteSearchController__pruneUnusedQuickWebsiteSearchProviders__block_invoke;
  v7[3] = &unk_1E7FC9A90;
  v7[4] = self;
  v4 = [(NSMutableDictionary *)quickWebsiteSearchProvidersByHost keysOfEntriesPassingTest:v7];
  v5 = self->_quickWebsiteSearchProvidersByHost;
  v6 = [v4 allObjects];
  [(NSMutableDictionary *)v5 removeObjectsForKeys:v6];
}

uint64_t __74__WBSQuickWebsiteSearchController__pruneUnusedQuickWebsiteSearchProviders__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _shouldRemoveQuickWebsiteSearchProvider:v6];
  if (v7)
  {
    v8 = [v6 openSearchDescriptionURLString];
    if (v8)
    {
      [*(a1 + 32) _removeHost:v5 fromOpenSearchDescriptionWithDocumentURL:v8];
    }
  }

  return v7;
}

- (void)_saveToDiskSoon
{
  if (self->_searchDescriptionsURL)
  {
    writer = self->_writer;
    if (!writer)
    {
      objc_initWeak(&location, self);
      v4 = objc_alloc(MEMORY[0x1E69C8840]);
      searchDescriptionsURL = self->_searchDescriptionsURL;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __50__WBSQuickWebsiteSearchController__saveToDiskSoon__block_invoke;
      v11 = &unk_1E7FC9B28;
      objc_copyWeak(&v12, &location);
      v6 = [v4 initWithName:@"SearchDescriptions" fileURL:searchDescriptionsURL dataSourceBlock:&v8];
      v7 = self->_writer;
      self->_writer = v6;

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      writer = self->_writer;
    }

    [(WBSCoalescedAsynchronousWriter *)writer scheduleWrite:v8];
  }
}

id __50__WBSQuickWebsiteSearchController__saveToDiskSoon__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x1E696AE40];
  v3 = [WeakRetained _dictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithPropertyList:v3 format:200 options:0 error:&v9];
  v5 = v9;

  if (!v4)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 safari_privacyPreservingDescription];
      __50__WBSQuickWebsiteSearchController__saveToDiskSoon__block_invoke_cold_1(v7, buf, v6);
    }
  }

  return v4;
}

- (id)_dictionaryRepresentation
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __60__WBSQuickWebsiteSearchController__dictionaryRepresentation__block_invoke;
  v13 = &unk_1E7FB7DD0;
  v14 = self;
  v6 = v3;
  v15 = v6;
  v7 = v4;
  v16 = v7;
  dispatch_sync(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, &v10);
  v17[0] = @"WebsiteSpecificSearchDescriptions";
  v17[1] = @"OpenSearchDescriptions";
  v18[0] = v6;
  v18[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:{2, v10, v11, v12, v13, v14}];

  return v8;
}

void __60__WBSQuickWebsiteSearchController__dictionaryRepresentation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _pruneUnusedQuickWebsiteSearchProviders];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__WBSQuickWebsiteSearchController__dictionaryRepresentation__block_invoke_2;
  v9[3] = &unk_1E7FC9B50;
  v9[4] = v3;
  v10 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__WBSQuickWebsiteSearchController__dictionaryRepresentation__block_invoke_3;
  v7[3] = &unk_1E7FC9B78;
  v7[4] = v5;
  v8 = *(a1 + 48);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __60__WBSQuickWebsiteSearchController__dictionaryRepresentation__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([*(a1 + 32) _quickWebsiteSearchProviderHasSearchURLTemplateStringOnAccessQueue:?])
  {
    v4 = *(a1 + 40);
    v5 = [v6 dictionaryRepresentation];
    [v4 addObject:v5];
  }
}

void __60__WBSQuickWebsiteSearchController__dictionaryRepresentation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v10];
  v7 = [v6 count];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v5 dictionaryRepresentation];
    [v8 addObject:v9];
  }
}

- (void)_loadFromDisk
{
  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSQuickWebsiteSearchController__loadFromDisk__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, block);
}

void __48__WBSQuickWebsiteSearchController__loadFromDisk__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v25 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:?];
    v24 = [v25 safari_arrayForKey:@"WebsiteSpecificSearchDescriptions"];
    if (v24)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v24;
      v3 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v3)
      {
        v4 = *v32;
        do
        {
          v5 = 0;
          do
          {
            if (*v32 != v4)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v31 + 1) + 8 * v5);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7 = [[WBSQuickWebsiteSearchProvider alloc] initWithDictionaryRepresentation:v6 delegate:*(a1 + 32)];
              v8 = v7;
              if (v7)
              {
                v9 = MEMORY[0x1E695DFF8];
                v10 = [(WBSQuickWebsiteSearchProvider *)v7 sourcePageURLString];
                v11 = [v9 URLWithString:v10];
                v12 = [v11 host];
                v13 = [v12 safari_stringByRemovingWwwDotPrefix];

                [*(*(a1 + 32) + 32) setObject:v8 forKeyedSubscript:v13];
                v14 = [(WBSQuickWebsiteSearchProvider *)v8 openSearchDescriptionURLString];
                if (v14)
                {
                  [*(a1 + 32) _addHost:v13 toOpenSearchDescriptionWithDocumentURL:v14];
                }
              }
            }

            ++v5;
          }

          while (v3 != v5);
          v3 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v3);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = [v25 safari_arrayForKey:@"OpenSearchDescriptions"];
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v16)
      {
        v17 = *v28;
        do
        {
          v18 = 0;
          do
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v27 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[WBSOpenSearchDescription alloc] initWithDictionaryRepresentation:v19];
              v21 = v20;
              if (v20)
              {
                v22 = *(*(a1 + 32) + 40);
                v23 = [(WBSOpenSearchDescription *)v20 descriptionDocumentURLString];
                [v22 setObject:v21 forKeyedSubscript:v23];
              }
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v16);
      }

      [*(a1 + 32) _pruneUnusedQuickWebsiteSearchProviders];
    }

    [*(a1 + 32) _didFinishLoadingFromDisk];
  }

  else
  {

    [v2 _didFinishLoadingFromDisk];
  }
}

- (void)_didFinishLoadingFromDisk
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSQuickWebsiteSearchController__didFinishLoadingFromDisk__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__WBSQuickWebsiteSearchController__didFinishLoadingFromDisk__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setQuickWebsiteSearchProvidersLoadedFromDisk:1];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WBSQuickWebsiteSearchControllerDidFinishLoadingNotification" object:*(a1 + 32)];
}

- (void)_didCollectOpenSearchDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"WBSOpenSearchDescription"];

  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__WBSQuickWebsiteSearchController__didCollectOpenSearchDescription___block_invoke;
  v9[3] = &unk_1E7FB7F10;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, v9);
}

void __68__WBSQuickWebsiteSearchController__didCollectOpenSearchDescription___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) descriptionDocumentURLString];
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v2];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v7)];
        if (([*(a1 + 40) _quickWebsiteSearchProviderHasSearchURLTemplateStringOnAccessQueue:v8] & 1) == 0)
        {
          [v3 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 40) setObject:*(a1 + 32) forKeyedSubscript:v2];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__WBSQuickWebsiteSearchController__didCollectOpenSearchDescription___block_invoke_2;
  v11[3] = &unk_1E7FB7F10;
  v9 = *(a1 + 40);
  v12 = v3;
  v13 = v9;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __68__WBSQuickWebsiteSearchController__didCollectOpenSearchDescription___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _sendNotification:@"WBSQuickWebsiteSearchControllerDidUpdateProviderNotification" forQuickWebsiteSearchProvider:{*(*(&v7 + 1) + 8 * v5++), v7}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return [*(a1 + 40) _saveToDiskSoon];
}

- (void)_resetCachedDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue = self->_quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__WBSQuickWebsiteSearchController__resetCachedDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(quickWebsiteSearchProvidersBySourcePageURLStringAccessQueue, v7);
}

void __73__WBSQuickWebsiteSearchController__resetCachedDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = v8;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSQuickWebsiteSearchController__resetCachedDataWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7FB7B80;
  v12 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __50__WBSQuickWebsiteSearchController__saveToDiskSoon__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "error %{public}@ trying to convert search descriptions to NSData", buf, 0xCu);
}

@end