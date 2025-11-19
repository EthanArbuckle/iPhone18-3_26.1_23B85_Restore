@interface SearchUIAsyncSectionLoader
+ (id)asyncLoaderSupportingSectionModel:(id)a3 result:(id)a4 queryId:(unint64_t)a5;
- (SearchUIAsyncSectionLoader)initWithSectionModel:(id)a3 result:(id)a4 queryId:(unint64_t)a5;
- (SearchUIAsyncSectionLoaderDelegate)delegate;
- (id)cachedValue;
- (id)cardSections;
- (void)clearLocalCache;
- (void)preloadIfNecessary;
- (void)reloadWithCardSections:(id)a3 animated:(BOOL)a4 reconfigureExisting:(BOOL)a5;
- (void)start;
@end

@implementation SearchUIAsyncSectionLoader

+ (id)asyncLoaderSupportingSectionModel:(id)a3 result:(id)a4 queryId:(unint64_t)a5
{
  v25[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = asyncLoaderSupportingSectionModel_result_queryId__classes;
  if (!asyncLoaderSupportingSectionModel_result_queryId__classes)
  {
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    v11 = asyncLoaderSupportingSectionModel_result_queryId__classes;
    asyncLoaderSupportingSectionModel_result_queryId__classes = v10;

    v9 = asyncLoaderSupportingSectionModel_result_queryId__classes;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (([(objc_class *)v17 supportsSectionModel:v7, v20]& 1) != 0)
        {
          v18 = [[v17 alloc] initWithSectionModel:v7 result:v8 queryId:a5];
          goto LABEL_13;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (SearchUIAsyncSectionLoader)initWithSectionModel:(id)a3 result:(id)a4 queryId:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SearchUIAsyncSectionLoader *)self init];
  if (v10)
  {
    v11 = [v8 section];
    v12 = [v11 sectionIdentifier];
    sectionIdentifier = v10->_sectionIdentifier;
    v10->_sectionIdentifier = v12;

    objc_storeStrong(&v10->_searchResult, a4);
    v10->_queryId = a5;
    if (initWithSectionModel_result_queryId__onceToken != -1)
    {
      [SearchUIAsyncSectionLoader initWithSectionModel:result:queryId:];
    }
  }

  return v10;
}

uint64_t __66__SearchUIAsyncSectionLoader_initWithSectionModel_result_queryId___block_invoke()
{
  computeCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)cardSections
{
  v3 = [(SearchUIAsyncSectionLoader *)self cachedValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SearchUIAsyncSectionLoader *)self placeholderCardSections];
  }

  v6 = v5;

  return v6;
}

- (void)preloadIfNecessary
{
  if ([(SearchUIAsyncSectionLoader *)self supportsPreloading])
  {

    [(SearchUIAsyncSectionLoader *)self start];
  }
}

- (void)start
{
  v3 = [(SearchUIAsyncSectionLoader *)self cachedValue];

  if (!v3)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __35__SearchUIAsyncSectionLoader_start__block_invoke;
    aBlock[3] = &unk_1E85B42C0;
    objc_copyWeak(&v11, &location);
    v4 = _Block_copy(aBlock);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__SearchUIAsyncSectionLoader_start__block_invoke_2;
    v8[3] = &unk_1E85B42E8;
    objc_copyWeak(&v9, &location);
    v5 = _Block_copy(v8);
    v6 = [(SearchUIAsyncSectionLoader *)self cacheIdentifier];
    if (v6)
    {
      v7 = objc_opt_new();
      [v7 setIdentifier:v6];
      [v7 setComputeBlock:v5];
      [computeCache getObjectForKey:v7 completionHandler:v4];
    }

    else
    {
      v5[2](v5, v4);
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __35__SearchUIAsyncSectionLoader_start__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v6 cardSection];

  if (v4)
  {
    v5 = [v6 cardSection];
    [WeakRetained reloadWithCardSections:v5 animated:objc_msgSend(v6 reconfigureExisting:{"animated"), objc_msgSend(v6, "reconfigureExisting")}];
  }
}

void __35__SearchUIAsyncSectionLoader_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SearchUIAppTopHitSectionLoaderLog();
  v6 = os_signpost_id_generate(v5);

  v7 = SearchUIAppTopHitSectionLoaderLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DA169000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "performAsyncSectionLoader", "", buf, 2u);
  }

  [WeakRetained fetchCardSectionsWithCompletionHandler:v3];
  v9 = SearchUIAppTopHitSectionLoaderLog();
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DA169000, v10, OS_SIGNPOST_INTERVAL_END, v6, "performAsyncSectionLoader", "", v11, 2u);
  }
}

- (void)reloadWithCardSections:(id)a3 animated:(BOOL)a4 reconfigureExisting:(BOOL)a5
{
  v8 = a3;
  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__SearchUIAsyncSectionLoader_reloadWithCardSections_animated_reconfigureExisting___block_invoke;
    v9[3] = &unk_1E85B2D10;
    objc_copyWeak(&v11, &location);
    v10 = v8;
    v12 = a4;
    v13 = a5;
    [SearchUIUtilities dispatchMainIfNecessary:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __82__SearchUIAsyncSectionLoader_reloadWithCardSections_animated_reconfigureExisting___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setObjectCache:*(a1 + 32)];
  v2 = [WeakRetained delegate];
  v3 = [WeakRetained sectionIdentifier];
  [v2 reloadSectionWithIdentifier:v3 animated:*(a1 + 48) reconfigureExisting:*(a1 + 49)];
}

- (id)cachedValue
{
  v3 = [(SearchUIAsyncSectionLoader *)self cacheIdentifier];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(SearchUIAsyncSectionLoader *)self cacheIdentifier];
    [v4 setIdentifier:v5];

    v6 = [computeCache getCachedObjectIfAvailableForKey:v4];
    v7 = [v6 cardSection];
  }

  else
  {
    v7 = [(SearchUIAsyncSectionLoader *)self objectCache];
  }

  return v7;
}

- (void)clearLocalCache
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__SearchUIAsyncSectionLoader_clearLocalCache__block_invoke;
  v2[3] = &unk_1E85B4310;
  objc_copyWeak(&v3, &location);
  [SearchUIUtilities dispatchMainIfNecessary:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __45__SearchUIAsyncSectionLoader_clearLocalCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setObjectCache:MEMORY[0x1E695E0F0]];
}

- (SearchUIAsyncSectionLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end