@interface SearchUICoreSpotlightAppTopHitAsyncSectionLoader
- (SearchUICoreSpotlightAppTopHitAsyncSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id;
- (id)buildCardSectionsForFoundItems:(id)items;
- (id)defaultFetchAttributes;
- (id)responseForFoundItems:(id)items animated:(BOOL)animated;
- (void)fetchCardSectionsWithCompletionHandler:(id)handler;
@end

@implementation SearchUICoreSpotlightAppTopHitAsyncSectionLoader

- (SearchUICoreSpotlightAppTopHitAsyncSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id
{
  v8.receiver = self;
  v8.super_class = SearchUICoreSpotlightAppTopHitAsyncSectionLoader;
  v5 = [(SearchUIAppTopHitAsyncSectionLoader *)&v8 initWithSectionModel:model result:result queryId:id];
  if (v5)
  {
    v6 = objc_opt_new();
    [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)v5 setLock:v6];
  }

  return v5;
}

- (void)fetchCardSectionsWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = SearchUIAppTopHitSectionLoaderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(SearchUIAppTopHitAsyncSectionLoader *)self bundleIdentifier];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412546;
    v27 = bundleIdentifier;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Fetching Spotlight AppTopHit results for bundle %@ using sectionLoader %@", buf, 0x16u);
  }

  lock = [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)self lock];
  [lock lock];

  v10 = objc_opt_new();
  [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)self setFoundItems:v10];

  lock2 = [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)self lock];
  [lock2 unlock];

  bundleIdentifier2 = [(SearchUIAppTopHitAsyncSectionLoader *)self bundleIdentifier];
  v13 = [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)self buildSearchQueryForBundleIdentifier:bundleIdentifier2];

  if (v13)
  {
    v14 = SSGetDisabledBundleSet();
    allObjects = [v14 allObjects];
    queryContext = [v13 queryContext];
    [queryContext setDisableBundles:allObjects];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __91__SearchUICoreSpotlightAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke;
    v25[3] = &unk_1E85B4200;
    v25[4] = self;
    [v13 setFoundItemsHandler:v25];
    objc_initWeak(buf, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __91__SearchUICoreSpotlightAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke_2;
    v22[3] = &unk_1E85B4228;
    objc_copyWeak(&v24, buf);
    v23 = handlerCopy;
    [v13 setCompletionHandler:v22];
    [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)self setQuery:v13];
    [v13 start];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = SearchUIAppTopHitSectionLoaderLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier3 = [(SearchUIAppTopHitAsyncSectionLoader *)self bundleIdentifier];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138412546;
      v27 = bundleIdentifier3;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_1DA169000, v17, OS_LOG_TYPE_DEFAULT, "Failed to fetch Spotlight AppTopHit results for bundle %@ using sectionLoader %@: No query generated", buf, 0x16u);
    }

    v21 = [(SearchUIAppTopHitAsyncSectionLoader *)self responseForCardSections:MEMORY[0x1E695E0F0] animated:0];
    (*(handlerCopy + 2))(handlerCopy, v21);
  }
}

void __91__SearchUICoreSpotlightAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 lock];
  [v5 lock];

  v6 = [*(a1 + 32) foundItems];
  [v6 addObjectsFromArray:v4];

  v7 = [*(a1 + 32) lock];
  [v7 unlock];
}

void __91__SearchUICoreSpotlightAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = SearchUIAppTopHitSectionLoaderLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = [WeakRetained bundleIdentifier];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v18 = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Failed to fetch Spotlight AppTopHit results for bundle %@ using sectionLoader %@: %@", &v18, 0x20u);
    }

    v10 = *(a1 + 32);
    v11 = [WeakRetained responseForCardSections:MEMORY[0x1E695E0F0] animated:0];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    if (v6)
    {
      v12 = [WeakRetained bundleIdentifier];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [WeakRetained foundItems];
      v18 = 138412802;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      v22 = 2048;
      v23 = [v15 count];
      _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched Spotlight AppTopHit results for bundle %@ using sectionLoader %@. Count: %lu", &v18, 0x20u);
    }

    v16 = *(a1 + 32);
    v11 = [WeakRetained foundItems];
    v17 = [WeakRetained responseForFoundItems:v11 animated:0];
    (*(v16 + 16))(v16, v17);
  }
}

- (id)defaultFetchAttributes
{
  if (defaultFetchAttributes_onceToken != -1)
  {
    [SearchUICoreSpotlightAppTopHitAsyncSectionLoader defaultFetchAttributes];
  }

  v3 = defaultFetchAttributes_fetchAttributes;

  return v3;
}

void __74__SearchUICoreSpotlightAppTopHitAsyncSectionLoader_defaultFetchAttributes__block_invoke()
{
  v0 = rankingPrefetchedAttributesArray();
  v1 = [v0 mutableCopy];

  [v1 removeObject:*MEMORY[0x1E6963D58]];
  v2 = defaultFetchAttributes_fetchAttributes;
  defaultFetchAttributes_fetchAttributes = v1;
}

- (id)buildCardSectionsForFoundItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  maxNumOfTopHitEntities = [objc_opt_class() maxNumOfTopHitEntities];
  v7 = [itemsCopy count];
  if (maxNumOfTopHitEntities >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = maxNumOfTopHitEntities;
  }

  if (v8)
  {
    v9 = 0;
    v32 = itemsCopy;
    selfCopy = self;
    v31 = v5;
    do
    {
      v36 = v9;
      v10 = [itemsCopy objectAtIndexedSubscript:v9];
      v35 = objc_alloc(MEMORY[0x1E69D3E70]);
      uniqueIdentifier = [v10 uniqueIdentifier];
      bundleID = [v10 bundleID];
      protection = [v10 protection];
      attributeSet = [v10 attributeSet];
      serializedAttributes = [attributeSet serializedAttributes];
      allKeys = [serializedAttributes allKeys];
      attributeSet2 = [v10 attributeSet];
      serializedAttributes2 = [attributeSet2 serializedAttributes];
      allValues = [serializedAttributes2 allValues];
      v19 = [v35 initWithIdentifier:uniqueIdentifier bundleIdentifier:bundleID protectionClass:protection attributeKeys:allKeys attributeValues:allValues type:3 completion:0];

      v5 = v31;
      v20 = [MEMORY[0x1E69D3EA0] resultBuilderWithResult:v19];
      buildAppTopHitEntityCardSection = [v20 buildAppTopHitEntityCardSection];
      bundleIdentifier = [(SearchUIAppTopHitAsyncSectionLoader *)selfCopy bundleIdentifier];
      [v19 setApplicationBundleIdentifier:bundleIdentifier];

      searchResult = [(SearchUIAsyncSectionLoader *)selfCopy searchResult];
      completion = [searchResult completion];
      [v19 setCompletion:completion];

      searchResult2 = [(SearchUIAsyncSectionLoader *)selfCopy searchResult];
      title = [searchResult2 title];
      [v19 setTitle:title];

      itemsCopy = v32;
      [buildAppTopHitEntityCardSection setSpotlightBackingResult:v19];
      [v31 addObject:buildAppTopHitEntityCardSection];

      v37 = v36 + 1;
      maxNumOfTopHitEntities2 = [objc_opt_class() maxNumOfTopHitEntities];
      v28 = [v32 count];
      v9 = v37;
      if (maxNumOfTopHitEntities2 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = maxNumOfTopHitEntities2;
      }
    }

    while (v37 < v29);
  }

  return v5;
}

- (id)responseForFoundItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)self buildCardSectionsForFoundItems:items];
  v7 = [(SearchUIAppTopHitAsyncSectionLoader *)self responseForCardSections:v6 animated:animatedCopy];

  return v7;
}

@end