@interface PSSearchModel
+ (id)sharedInstance;
- (PSSearchModel)init;
- (PSSearchModelDataSource)dataSource;
- (PSSearchResults)currentResults;
- (id)_defaultSearchResultsSectionComparator;
- (id)_rootSpecifiers;
- (id)recursiveDescription;
- (id)searchOperation:(id)operation filteredEntriesForEntries:(id)entries;
- (void)_addSearchEntries:(id)entries parent:(id)parent usingBlock:(id)block;
- (void)_addSpecifierDataSource:(id)source forSearchEntry:(id)entry;
- (void)_beginIndexingIfNecessary;
- (void)_beginSearchingEntriesForCurrentQuery:(id)query newSearch:(BOOL)search;
- (void)_cancelAllSearchOperations;
- (void)_enumerateDelegatesUsingBlock:(id)block;
- (void)_finishedIndexingEntry:(id)entry;
- (void)_loadChildrenForEntry:(id)entry;
- (void)_performDeferredUpdatesForEntry:(id)entry;
- (void)_performSpecifierUpdates:(id)updates forSearchEntries:(id)entries;
- (void)_reloadSearchEntries:(id)entries;
- (void)_removeSearchEntries:(id)entries usingBlock:(id)block forReload:(BOOL)reload;
- (void)_updateWithNewSearchResults:(id)results forQuery:(id)query newSearch:(BOOL)search;
- (void)_updatedEntry:(id)entry withChildren:(id)children;
- (void)addDelegate:(id)delegate;
- (void)addRootSpecifier:(id)specifier;
- (void)dataSource:(id)source performUpdates:(id)updates;
- (void)dealloc;
- (void)invalidateSpecifiersForDataSource:(id)source;
- (void)preheat;
- (void)reloadRootSpecifier:(id)specifier;
- (void)removeDelegate:(id)delegate;
- (void)removeRootSpecifier:(id)specifier;
- (void)searchForQuery:(id)query;
- (void)searchIndexOperation:(id)operation didFindSpecifierDataSource:(id)source;
- (void)searchIndexOperationDidCancel:(id)cancel;
- (void)searchIndexOperationDidFinish:(id)finish searchEntries:(id)entries;
- (void)searchOperation:(id)operation configureSearchResults:(id)results;
- (void)searchOperationDidBegin:(id)begin;
- (void)searchOperationDidCancel:(id)cancel;
- (void)searchOperationDidFinish:(id)finish withResults:(id)results;
@end

@implementation PSSearchModel

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PSSearchModel sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __31__PSSearchModel_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PSSearchModel);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
}

- (PSSearchModel)init
{
  v28.receiver = self;
  v28.super_class = PSSearchModel;
  v2 = [(PSSearchModel *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    indexOperationQueue = v2->_indexOperationQueue;
    v2->_indexOperationQueue = v3;

    [(NSOperationQueue *)v2->_indexOperationQueue setName:@"com.apple.preferences.search.indexingOperationQueue"];
    [(NSOperationQueue *)v2->_indexOperationQueue setMaxConcurrentOperationCount:8];
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    searchOperationQueue = v2->_searchOperationQueue;
    v2->_searchOperationQueue = v5;

    [(NSOperationQueue *)v2->_searchOperationQueue setName:@"com.apple.preferences.search.searchOperationQueue"];
    [(NSOperationQueue *)v2->_searchOperationQueue setMaxConcurrentOperationCount:1];
    v7 = objc_opt_new();
    delegates = v2->_delegates;
    v2->_delegates = v7;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    specifierDataSources = v2->_specifierDataSources;
    v2->_specifierDataSources = strongToStrongObjectsMapTable;

    v11 = objc_opt_new();
    rootEntries = v2->_rootEntries;
    v2->_rootEntries = v11;

    v13 = objc_opt_new();
    entriesBeingIndexed = v2->_entriesBeingIndexed;
    v2->_entriesBeingIndexed = v13;

    v15 = objc_opt_new();
    indexingEntriesWithLoadedDataSources = v2->_indexingEntriesWithLoadedDataSources;
    v2->_indexingEntriesWithLoadedDataSources = v15;

    v17 = objc_opt_new();
    removedEntriesStillIndexing = v2->_removedEntriesStillIndexing;
    v2->_removedEntriesStillIndexing = v17;

    v19 = objc_opt_new();
    deferredSpecifierUpdates = v2->_deferredSpecifierUpdates;
    v2->_deferredSpecifierUpdates = v19;

    v21 = objc_opt_new();
    entriesPendingSearch = v2->_entriesPendingSearch;
    v2->_entriesPendingSearch = v21;

    v23 = objc_opt_new();
    removedEntriesStillSearching = v2->_removedEntriesStillSearching;
    v2->_removedEntriesStillSearching = v23;

    v25 = dispatch_queue_create("com.apple.preferences.search.pendingSearchAccessQueue", 0);
    searchStateAccessQueue = v2->_searchStateAccessQueue;
    v2->_searchStateAccessQueue = v25;
  }

  return v2;
}

- (void)dealloc
{
  operations = [(NSOperationQueue *)self->_indexOperationQueue operations];
  [operations enumerateObjectsUsingBlock:&__block_literal_global_43_1];

  [(NSOperationQueue *)self->_indexOperationQueue cancelAllOperations];
  operations2 = [(NSOperationQueue *)self->_searchOperationQueue operations];
  [operations2 enumerateObjectsUsingBlock:&__block_literal_global_45];

  [(NSOperationQueue *)self->_searchOperationQueue cancelAllOperations];
  v5.receiver = self;
  v5.super_class = PSSearchModel;
  [(PSSearchModel *)&v5 dealloc];
}

- (id)_rootSpecifiers
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained rootSpecifiersForSearchModel:self];

  if (![v4 count])
  {
    v5 = objc_loadWeakRetained(&self->_dataSource);
    NSLog(&cfstr_ErrorDataSourc.isa, self, v5);
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [PSSpecifier specifierWithSpecifier:*(*(&v14 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)preheat
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (!WeakRetained)
  {
    NSLog(&cfstr_ErrorWasAskedT.isa, self);
  }

  if (!self->_hasLoadedRootEntries)
  {
    _rootSpecifiers = [(PSSearchModel *)self _rootSpecifiers];
    if ([_rootSpecifiers count])
    {
      v5 = SearchEntriesFromSpecifiers(_rootSpecifiers, 0, 0);
      rootEntries = self->_rootEntries;
      self->_rootEntries = v5;

      v7 = objc_loadWeakRetained(&self->_dataSource);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_dataSource);
        v10 = [v9 rootSearchControllerClassForSearchModel:self];

        if (objc_opt_respondsToSelector())
        {
          [v10 formatSearchEntries:self->_rootEntries parent:0];
        }
      }

      self->_hasLoadedRootEntries = 1;
    }
  }

  if ([(NSMutableArray *)self->_rootEntries count])
  {

    [(PSSearchModel *)self _beginIndexingIfNecessary];
  }
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    delegates = self->_delegates;
    v4 = [PSWeakReference weakReferenceWithObject:?];
    [(NSMutableSet *)delegates addObject:v4];
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    [(NSMutableSet *)self->_delegates removeObject:?];
  }
}

- (void)_enumerateDelegatesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    delegates = self->_delegates;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__PSSearchModel__enumerateDelegatesUsingBlock___block_invoke;
    v7[3] = &unk_1E71DD940;
    v8 = blockCopy;
    [(NSMutableSet *)delegates enumerateObjectsUsingBlock:v7];
  }
}

void __47__PSSearchModel__enumerateDelegatesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (void)_addSpecifierDataSource:(id)source forSearchEntry:(id)entry
{
  sourceCopy = source;
  entryCopy = entry;
  v7 = [(NSMapTable *)self->_specifierDataSources objectForKey:sourceCopy];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    [(NSMapTable *)self->_specifierDataSources setObject:v7 forKey:sourceCopy];
  }

  [v7 addObject:entryCopy];
  [sourceCopy addObserver:self];
}

- (void)addRootSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (self->_hasLoadedRootEntries)
  {
    v6 = SearchEntryFromSpecifier(specifierCopy, 0);
    if (v6)
    {
      objc_initWeak(&location, self->_rootEntries);
      v7 = [MEMORY[0x1E695DFD8] setWithObject:v6];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __34__PSSearchModel_addRootSpecifier___block_invoke;
      v8[3] = &unk_1E71DBF68;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      [(PSSearchModel *)self _addSearchEntries:v7 parent:0 usingBlock:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __34__PSSearchModel_addRootSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addObject:*(a1 + 32)];
}

- (void)reloadRootSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(PSSearchModel *)self removeRootSpecifier:specifierCopy];
  [(PSSearchModel *)self addRootSpecifier:specifierCopy];
}

- (void)removeRootSpecifier:(id)specifier
{
  v23 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  if (self->_hasLoadedRootEntries)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_rootEntries;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v19;
LABEL_4:
      v10 = 0;
      v16 = v8 + v7;
      while (1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        identifier = [*(*(&v18 + 1) + 8 * v10) identifier];
        identifier2 = [specifierCopy identifier];
        v13 = [identifier isEqualToString:identifier2];

        if (v13)
        {
          break;
        }

        ++v8;
        if (v7 == ++v10)
        {
          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
          v8 = v16;
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      v14 = [(NSMutableArray *)self->_rootEntries objectAtIndexedSubscript:v8];
      v15 = [MEMORY[0x1E695DFD8] setWithObject:v14];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __37__PSSearchModel_removeRootSpecifier___block_invoke;
      v17[3] = &unk_1E71DD968;
      v17[4] = self;
      v17[5] = v8;
      [(PSSearchModel *)self _removeSearchEntries:v15 usingBlock:v17];
    }

    else
    {
LABEL_10:

LABEL_12:
      NSLog(&cfstr_ErrorNoRootSea.isa, specifierCopy);
    }
  }
}

- (void)_addSearchEntries:(id)entries parent:(id)parent usingBlock:(id)block
{
  entriesCopy = entries;
  blockCopy = block;
  parentCopy = parent;
  currentQuery = [(PSSearchModel *)self currentQuery];

  if (currentQuery)
  {
    searchStateAccessQueue = self->_searchStateAccessQueue;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__PSSearchModel__addSearchEntries_parent_usingBlock___block_invoke;
    v17 = &unk_1E71DC570;
    selfCopy = self;
    v13 = entriesCopy;
    v19 = v13;
    dispatch_async(searchStateAccessQueue, &v14);

    blockCopy[2](blockCopy);
    [(PSSearchModel *)self _beginSearchingEntriesForCurrentQuery:v13 newSearch:0, v14, v15, v16, v17, selfCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }

  [(PSSearchModel *)self _updatedEntry:parentCopy withChildren:entriesCopy];
}

- (void)_removeSearchEntries:(id)entries usingBlock:(id)block forReload:(BOOL)reload
{
  entriesCopy = entries;
  blockCopy = block;
  currentQuery = [(PSSearchModel *)self currentQuery];
  if (currentQuery)
  {
    searchStateAccessQueue = self->_searchStateAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PSSearchModel__removeSearchEntries_usingBlock_forReload___block_invoke;
    block[3] = &unk_1E71DC570;
    block[4] = self;
    v24 = entriesCopy;
    dispatch_async(searchStateAccessQueue, block);
  }

  if (!reload)
  {
    removedEntriesStillIndexing = self->_removedEntriesStillIndexing;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__PSSearchModel__removeSearchEntries_usingBlock_forReload___block_invoke_2;
    v22[3] = &unk_1E71DD990;
    v22[4] = self;
    v13 = [entriesCopy objectsPassingTest:v22];
    [(NSMutableSet *)removedEntriesStillIndexing unionSet:v13];
  }

  blockCopy[2](blockCopy);
  if (currentQuery)
  {
    currentResults = self->_currentResults;
    allObjects = [entriesCopy allObjects];
    v16 = [(PSSearchResults *)currentResults removeEntries:allObjects];

    if (v16)
    {
      [(PSSearchResults *)self->_currentResults sortResults];
      currentResults = [(PSSearchModel *)self currentResults];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__PSSearchModel__removeSearchEntries_usingBlock_forReload___block_invoke_3;
      v19[3] = &unk_1E71DD9B8;
      v19[4] = self;
      v20 = currentResults;
      v21 = currentQuery;
      v18 = currentResults;
      [(PSSearchModel *)self _enumerateDelegatesUsingBlock:v19];
    }
  }
}

void __59__PSSearchModel__removeSearchEntries_usingBlock_forReload___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 searchModel:a1[4] updatedWithNewResults:a1[5] forQuery:a1[6]];
  }
}

- (void)_reloadSearchEntries:(id)entries
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__PSSearchModel__reloadSearchEntries___block_invoke;
  v3[3] = &unk_1E71DD9E0;
  v3[4] = self;
  [entries enumerateObjectsUsingBlock:v3];
}

void __38__PSSearchModel__reloadSearchEntries___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 childEntries];
  if ([v4 count])
  {
    v5 = *(a1 + 32);
    v6 = [v4 copy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__PSSearchModel__reloadSearchEntries___block_invoke_2;
    v7[3] = &unk_1E71DBE20;
    v8 = v4;
    [v5 _removeSearchEntries:v6 usingBlock:v7 forReload:1];
  }

  [*(a1 + 32) _loadChildrenForEntry:v3];
}

- (void)_performDeferredUpdatesForEntry:(id)entry
{
  entryCopy = entry;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_deferredSpecifierUpdates, "count")}];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  deferredSpecifierUpdates = self->_deferredSpecifierUpdates;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__PSSearchModel__performDeferredUpdatesForEntry___block_invoke;
  v25[3] = &unk_1E71DDA08;
  v7 = entryCopy;
  v26 = v7;
  v8 = v5;
  v27 = v8;
  v28 = &v29;
  [(NSMutableArray *)deferredSpecifierUpdates enumerateObjectsUsingBlock:v25];
  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PSSearchModel__performDeferredUpdatesForEntry___block_invoke_2;
  aBlock[3] = &unk_1E71DDA30;
  v10 = v7;
  v23 = v10;
  v11 = array;
  v24 = v11;
  v12 = _Block_copy(aBlock);
  if (v30[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__PSSearchModel__performDeferredUpdatesForEntry___block_invoke_3;
    v20[3] = &unk_1E71DDA58;
    v21 = v12;
    [v8 enumerateObjectsAtIndexes:v13 options:0 usingBlock:v20];
    [v8 removeObjectsAtIndexes:v13];
  }

  v14 = [MEMORY[0x1E695DFD8] setWithObject:v10];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__PSSearchModel__performDeferredUpdatesForEntry___block_invoke_4;
  v17[3] = &unk_1E71DDA80;
  v17[4] = self;
  v15 = v14;
  v18 = v15;
  v16 = v12;
  v19 = v16;
  [v8 enumerateObjectsUsingBlock:v17];
  if ([v11 count])
  {
    [(NSMutableArray *)self->_deferredSpecifierUpdates removeObjectsInArray:v11];
  }

  _Block_object_dispose(&v29, 8);
}

void __49__PSSearchModel__performDeferredUpdatesForEntry___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 searchEntries];
  v4 = [v3 containsObject:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
    if ([v5 invalidatedSpecifiers])
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) count] - 1;
    }
  }
}

void __49__PSSearchModel__performDeferredUpdatesForEntry___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 searchEntries];
  [v3 removeObject:*(a1 + 32)];

  v4 = [v6 searchEntries];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __49__PSSearchModel__performDeferredUpdatesForEntry___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 invalidatedSpecifiers])
  {
    [*(a1 + 32) _reloadSearchEntries:*(a1 + 40)];
    *a4 = 1;
  }

  else
  {
    v6 = [v9 specifierUpdates];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v9 specifierUpdates];
      [v7 _performSpecifierUpdates:v8 forSearchEntries:*(a1 + 40)];
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_beginIndexingIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_hasStartedIndexing)
  {
    self->_hasStartedIndexing = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__PSSearchModel__beginIndexingIfNecessary__block_invoke;
    v12[3] = &unk_1E71DDAA8;
    v12[4] = self;
    [(PSSearchModel *)self _enumerateDelegatesUsingBlock:v12];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_rootEntries;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(PSSearchModel *)self _loadChildrenForEntry:*(*(&v8 + 1) + 8 * v7++), v8];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

void __42__PSSearchModel__beginIndexingIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 searchModelWillBeginIndexing:*(a1 + 32)];
  }
}

- (void)_loadChildrenForEntry:(id)entry
{
  v22[1] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = [[PSSearchIndexOperation alloc] initWithSearchEntry:entryCopy delegate:self];
  if (v5)
  {
    self->_indexing = 1;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    specifier = [entryCopy specifier];
    v7 = [specifier propertyForKey:@"dataSourceClass"];

    entriesBeingIndexed = self->_entriesBeingIndexed;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __39__PSSearchModel__loadChildrenForEntry___block_invoke;
    v15 = &unk_1E71DDAD0;
    v9 = v7;
    v16 = v9;
    v17 = &v18;
    [(NSMutableSet *)entriesBeingIndexed enumerateObjectsUsingBlock:&v12];
    if ((v19[3] & 1) == 0)
    {
      [(NSMutableSet *)self->_entriesBeingIndexed addObject:entryCopy, v12, v13, v14, v15];
      [(PSSearchIndexOperation *)v5 setQueuePriority:-4];
      indexOperationQueue = self->_indexOperationQueue;
      v22[0] = v5;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [(NSOperationQueue *)indexOperationQueue addOperations:v11 waitUntilFinished:self->_waitUntilFinished];
    }

    _Block_object_dispose(&v18, 8);
  }
}

void __39__PSSearchModel__loadChildrenForEntry___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 specifier];
  v6 = [v5 propertyForKey:@"dataSourceClass"];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_updatedEntry:(id)entry withChildren:(id)children
{
  v18 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  childrenCopy = children;
  if ([(NSMutableSet *)self->_removedEntriesStillIndexing containsObject:entryCopy])
  {
    [(NSMutableSet *)self->_removedEntriesStillIndexing removeObject:entryCopy];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = childrenCopy;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(PSSearchModel *)self _loadChildrenForEntry:*(*(&v13 + 1) + 8 * v12++), v13];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_finishedIndexingEntry:(id)entry
{
  entriesBeingIndexed = self->_entriesBeingIndexed;
  entryCopy = entry;
  [(NSMutableSet *)entriesBeingIndexed removeObject:entryCopy];
  [(NSMutableSet *)self->_indexingEntriesWithLoadedDataSources removeObject:entryCopy];
  [(PSSearchModel *)self _performDeferredUpdatesForEntry:entryCopy];

  if (![(NSMutableSet *)self->_entriesBeingIndexed count])
  {
    self->_indexing = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__PSSearchModel__finishedIndexingEntry___block_invoke;
    v6[3] = &unk_1E71DDAA8;
    v6[4] = self;
    [(PSSearchModel *)self _enumerateDelegatesUsingBlock:v6];
  }
}

void __40__PSSearchModel__finishedIndexingEntry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 searchModelDidFinishIndexing:*(a1 + 32)];
  }
}

- (void)searchIndexOperation:(id)operation didFindSpecifierDataSource:(id)source
{
  sourceCopy = source;
  searchEntry = [operation searchEntry];
  [(NSMutableSet *)self->_indexingEntriesWithLoadedDataSources addObject:searchEntry];
  [(PSSearchModel *)self _addSpecifierDataSource:sourceCopy forSearchEntry:searchEntry];
}

- (void)searchIndexOperationDidFinish:(id)finish searchEntries:(id)entries
{
  entriesCopy = entries;
  searchEntry = [finish searchEntry];
  if ([entriesCopy count])
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:entriesCopy];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __61__PSSearchModel_searchIndexOperationDidFinish_searchEntries___block_invoke;
    v13 = &unk_1E71DC570;
    v14 = searchEntry;
    v15 = v8;
    v9 = v8;
    [(PSSearchModel *)self _addSearchEntries:v9 parent:v14 usingBlock:&v10];
  }

  [(PSSearchModel *)self _finishedIndexingEntry:searchEntry, v10, v11, v12, v13];
}

void __61__PSSearchModel_searchIndexOperationDidFinish_searchEntries___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) childEntries];
  [v2 unionSet:*(a1 + 40)];
}

- (void)searchIndexOperationDidCancel:(id)cancel
{
  searchEntry = [cancel searchEntry];
  [(PSSearchModel *)self _finishedIndexingEntry:searchEntry];
}

- (PSSearchResults)currentResults
{
  activeSearchOperation = [(PSSearchModel *)self activeSearchOperation];
  v4 = activeSearchOperation;
  if (activeSearchOperation)
  {
    currentResults = [activeSearchOperation currentResults];
    if (([v4 isNewQuery] & 1) != 0 || (-[PSSearchModel currentQuery](self, "currentQuery"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", self->_queryForCurrentResults), v6, (v7 & 1) == 0))
    {
      v8 = currentResults;
    }

    else
    {
      v8 = [currentResults resultsByMergingWithResults:self->_currentResults];
      [v8 sortResults];
    }
  }

  else
  {
    v8 = [(PSSearchResults *)self->_currentResults copy];
  }

  return v8;
}

- (void)searchForQuery:(id)query
{
  queryCopy = query;
  [(PSSearchModel *)self preheat];
  currentQuery = [(PSSearchModel *)self currentQuery];
  v5 = [currentQuery isEqualToString:queryCopy];

  if ((v5 & 1) == 0)
  {
    [(PSSearchModel *)self setCurrentQuery:queryCopy];
    v6 = [MEMORY[0x1E695DFD8] setWithArray:self->_rootEntries];
    [(PSSearchModel *)self _beginSearchingEntriesForCurrentQuery:v6 newSearch:1];
  }
}

- (id)_defaultSearchResultsSectionComparator
{
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_rootEntries];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PSSearchModel__defaultSearchResultsSectionComparator__block_invoke;
  v6[3] = &unk_1E71DDAF8;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

uint64_t __55__PSSearchModel__defaultSearchResultsSectionComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 rootEntry];
  v8 = [v6 rootEntry];
  v9 = [*(a1 + 32) indexOfObject:v7];
  v10 = [*(a1 + 32) indexOfObject:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (v9 == v10)
    {
LABEL_14:
      v14 = [v5 name];
      v15 = [v6 name];
      v13 = [v14 localizedCaseInsensitiveCompare:v15];

      goto LABEL_15;
    }

    if (v9 > v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }
  }

LABEL_15:

  return v13;
}

- (void)_cancelAllSearchOperations
{
  [(NSOperationQueue *)self->_searchOperationQueue cancelAllOperations];
  [(PSSearchModel *)self setActiveSearchOperation:0];
  searchStateAccessQueue = self->_searchStateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PSSearchModel__cancelAllSearchOperations__block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(searchStateAccessQueue, block);
}

uint64_t __43__PSSearchModel__cancelAllSearchOperations__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeAllObjects];
  v2 = *(*(a1 + 32) + 88);

  return [v2 removeAllObjects];
}

- (void)_beginSearchingEntriesForCurrentQuery:(id)query newSearch:(BOOL)search
{
  searchCopy = search;
  v11[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  if (searchCopy)
  {
    [(PSSearchModel *)self _cancelAllSearchOperations];
  }

  currentQuery = [(PSSearchModel *)self currentQuery];
  if ([currentQuery length])
  {
    v8 = [[PSSearchOperation alloc] initWithSearchQuery:currentQuery rootEntries:queryCopy];
    [(PSSearchOperation *)v8 setDelegate:self];
    [(PSSearchOperation *)v8 setNewQuery:searchCopy];
    searchOperationQueue = self->_searchOperationQueue;
    v11[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(NSOperationQueue *)searchOperationQueue addOperations:v10 waitUntilFinished:self->_waitUntilFinished];
  }

  else
  {
    [(PSSearchModel *)self _updateWithNewSearchResults:0 forQuery:currentQuery newSearch:1];
  }
}

- (void)_updateWithNewSearchResults:(id)results forQuery:(id)query newSearch:(BOOL)search
{
  searchCopy = search;
  resultsCopy = results;
  queryCopy = query;
  v11 = queryCopy;
  if (searchCopy)
  {
    v12 = [queryCopy copy];
    queryForCurrentResults = self->_queryForCurrentResults;
    self->_queryForCurrentResults = v12;

    objc_storeStrong(&self->_currentResults, results);
  }

  else
  {
    [(PSSearchResults *)self->_currentResults mergeWithResults:resultsCopy];
    [(PSSearchResults *)self->_currentResults sortResults];
  }

  currentResults = [(PSSearchModel *)self currentResults];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PSSearchModel__updateWithNewSearchResults_forQuery_newSearch___block_invoke;
  v17[3] = &unk_1E71DD9B8;
  v17[4] = self;
  v18 = currentResults;
  v19 = v11;
  v15 = v11;
  v16 = currentResults;
  [(PSSearchModel *)self _enumerateDelegatesUsingBlock:v17];
}

- (void)searchOperationDidBegin:(id)begin
{
  beginCopy = begin;
  [(PSSearchModel *)self setActiveSearchOperation:beginCopy];
  searchStateAccessQueue = self->_searchStateAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PSSearchModel_searchOperationDidBegin___block_invoke;
  v7[3] = &unk_1E71DC570;
  v7[4] = self;
  v8 = beginCopy;
  v6 = beginCopy;
  dispatch_async(searchStateAccessQueue, v7);
}

void __41__PSSearchModel_searchOperationDidBegin___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  v2 = [*(a1 + 40) rootEntries];
  [v1 minusSet:v2];
}

- (void)searchOperation:(id)operation configureSearchResults:(id)results
{
  resultsCopy = results;
  searchStateAccessQueue = self->_searchStateAccessQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __56__PSSearchModel_searchOperation_configureSearchResults___block_invoke;
  v14 = &unk_1E71DC570;
  v8 = resultsCopy;
  v15 = v8;
  selfCopy = self;
  operationCopy = operation;
  dispatch_sync(searchStateAccessQueue, &v11);
  LODWORD(searchStateAccessQueue) = [operationCopy isNewQuery];

  if (searchStateAccessQueue)
  {
    _defaultSearchResultsSectionComparator = [(PSSearchModel *)self _defaultSearchResultsSectionComparator];
    [v8 setSectionComparator:_defaultSearchResultsSectionComparator];

    [v8 sortResults];
  }
}

void __56__PSSearchModel_searchOperation_configureSearchResults___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PSSearchModel_searchOperation_configureSearchResults___block_invoke_2;
  aBlock[3] = &unk_1E71DD990;
  v7 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = [*(*(a1 + 40) + 88) objectsPassingTest:v2];
  v4 = [*(*(a1 + 40) + 80) objectsPassingTest:v2];
  v5 = [MEMORY[0x1E695DFA8] setWithSet:v3];
  [v5 unionSet:v4];
  [*(*(a1 + 40) + 88) minusSet:v5];
}

- (id)searchOperation:(id)operation filteredEntriesForEntries:(id)entries
{
  entriesCopy = entries;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  searchStateAccessQueue = self->_searchStateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PSSearchModel_searchOperation_filteredEntriesForEntries___block_invoke;
  block[3] = &unk_1E71DDB20;
  block[4] = self;
  v12 = entriesCopy;
  v13 = &v14;
  v7 = entriesCopy;
  dispatch_sync(searchStateAccessQueue, block);
  v8 = v15[5];
  if (!v8)
  {
    v8 = v7;
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __59__PSSearchModel_searchOperation_filteredEntriesForEntries___block_invoke(void *a1)
{
  if ([*(a1[4] + 80) count] || objc_msgSend(*(a1[4] + 88), "count"))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:a1[5]];
    [v2 minusSet:*(a1[4] + 80)];
    [v2 minusSet:*(a1[4] + 88)];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)searchOperationDidFinish:(id)finish withResults:(id)results
{
  finishCopy = finish;
  resultsCopy = results;
  activeSearchOperation = [(PSSearchModel *)self activeSearchOperation];

  if (activeSearchOperation == finishCopy)
  {
    [(PSSearchModel *)self setActiveSearchOperation:0];
  }

  query = [finishCopy query];
  -[PSSearchModel _updateWithNewSearchResults:forQuery:newSearch:](self, "_updateWithNewSearchResults:forQuery:newSearch:", resultsCopy, query, [finishCopy isNewQuery]);

  if (![(NSOperationQueue *)self->_searchOperationQueue operationCount])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PSSearchModel_searchOperationDidFinish_withResults___block_invoke;
    v12[3] = &unk_1E71DDAA8;
    v12[4] = self;
    [(PSSearchModel *)self _enumerateDelegatesUsingBlock:v12];
    searchStateAccessQueue = self->_searchStateAccessQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PSSearchModel_searchOperationDidFinish_withResults___block_invoke_2;
    v11[3] = &unk_1E71DBE20;
    v11[4] = self;
    dispatch_async(searchStateAccessQueue, v11);
  }
}

void __54__PSSearchModel_searchOperationDidFinish_withResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 searchModelDidFinishQuery:*(a1 + 32)];
  }
}

- (void)searchOperationDidCancel:(id)cancel
{
  cancelCopy = cancel;
  activeSearchOperation = [(PSSearchModel *)self activeSearchOperation];

  if (activeSearchOperation == cancelCopy)
  {

    [(PSSearchModel *)self setActiveSearchOperation:0];
  }
}

- (void)_performSpecifierUpdates:(id)updates forSearchEntries:(id)entries
{
  v6 = MEMORY[0x1E695DF70];
  entriesCopy = entries;
  updatesCopy = updates;
  updates = [updatesCopy updates];
  v10 = [v6 arrayWithCapacity:{objc_msgSend(updates, "count")}];

  v11 = MEMORY[0x1E695DFA8];
  updates2 = [updatesCopy updates];
  v13 = [v11 setWithCapacity:{objc_msgSend(updates2, "count")}];

  v14 = MEMORY[0x1E695DFA8];
  updates3 = [updatesCopy updates];
  v16 = [v14 setWithCapacity:{objc_msgSend(updates3, "count")}];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke;
  v28[3] = &unk_1E71DDB48;
  v17 = v10;
  v29 = v17;
  v18 = v16;
  v30 = v18;
  v19 = v13;
  v31 = v19;
  [updatesCopy enumerateUpdatesUsingBlock:v28];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_2;
  v23[3] = &unk_1E71DDB70;
  v24 = v17;
  selfCopy = self;
  v26 = v19;
  v27 = v18;
  v20 = v18;
  v21 = v19;
  v22 = v17;
  [entriesCopy enumerateObjectsUsingBlock:v23];
}

void __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 specifier];
  v4 = [v3 operation];

  if (v4 == 4)
  {
    v6 = *(a1 + 48);
    goto LABEL_7;
  }

  if (v4 == 3)
  {
    v6 = *(a1 + 40);
LABEL_7:
    v7 = [v8 identifier];
    [v6 addObject:v7];

    goto LABEL_8;
  }

  v5 = v8;
  if (v4 != 1)
  {
    goto LABEL_9;
  }

  [*(a1 + 32) addObject:v8];
LABEL_8:
  v5 = v8;
LABEL_9:
}

void __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_2(void **a1, void *a2)
{
  v3 = a2;
  if ([a1[4] count])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = SearchEntriesFromSpecifiers(a1[4], v3, 0);
    v6 = [v4 setWithArray:v5];

    if ([v6 count])
    {
      v7 = a1[5];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_3;
      v23[3] = &unk_1E71DC570;
      v24 = v3;
      v25 = v6;
      [v7 _addSearchEntries:v25 parent:v24 usingBlock:v23];
    }
  }

  if ([a1[6] count])
  {
    v8 = [v3 childEntries];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_4;
    v21[3] = &unk_1E71DD990;
    v22 = a1[6];
    v9 = [v8 objectsPassingTest:v21];

    if ([v9 count])
    {
      v10 = a1[5];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_5;
      v18[3] = &unk_1E71DC570;
      v19 = v3;
      v20 = v9;
      [v10 _removeSearchEntries:v20 usingBlock:v18];
    }
  }

  if ([a1[7] count])
  {
    v11 = [v3 childEntries];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_6;
    v16 = &unk_1E71DD990;
    v17 = a1[7];
    v12 = [v11 objectsPassingTest:&v13];

    if ([v12 count])
    {
      [a1[5] _reloadSearchEntries:v12];
    }
  }
}

void __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) childEntries];
  [v2 unionSet:*(a1 + 40)];
}

uint64_t __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) childEntries];
  [v2 minusSet:*(a1 + 40)];
}

uint64_t __59__PSSearchModel__performSpecifierUpdates_forSearchEntries___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)dataSource:(id)source performUpdates:(id)updates
{
  sourceCopy = source;
  updatesCopy = updates;
  v7 = [(PSSearchModel *)self _searchEntriesForSpecifierDataSource:sourceCopy];
  v8 = [v7 mutableCopy];

  if ([v8 count])
  {
    v9 = [MEMORY[0x1E695DFA8] setWithSet:v8];
    [v9 intersectSet:self->_indexingEntriesWithLoadedDataSources];
    [v8 minusSet:v9];
    if ([v8 count])
    {
      [(PSSearchModel *)self _performSpecifierUpdates:updatesCopy forSearchEntries:v8];
    }

    if ([v9 count])
    {
      v10 = [_PSDeferredUpdates deferredUpdatesWithEntries:v9 specifierUpdates:updatesCopy];
      [(NSMutableArray *)self->_deferredSpecifierUpdates addObject:v10];
    }
  }

  else
  {
    NSLog(&cfstr_ErrorCouldNotF.isa, sourceCopy);
  }
}

- (void)invalidateSpecifiersForDataSource:(id)source
{
  sourceCopy = source;
  v4 = [(PSSearchModel *)self _searchEntriesForSpecifierDataSource:?];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DFA8] setWithSet:v5];
    [v6 intersectSet:self->_indexingEntriesWithLoadedDataSources];
    [v5 minusSet:v6];
    if ([v5 count])
    {
      [(PSSearchModel *)self _reloadSearchEntries:v5];
    }

    if ([v6 count])
    {
      v7 = [_PSDeferredUpdates deferredInvalidationUpdatesWithEntries:v6];
      [(NSMutableArray *)self->_deferredSpecifierUpdates addObject:v7];
    }
  }

  else
  {
    NSLog(&cfstr_ErrorCouldNotF.isa, sourceCopy);
  }
}

- (id)recursiveDescription
{
  v17 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_rootEntries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        recursiveDescription = [*(*(&v12 + 1) + 8 * i) recursiveDescription];
        [string appendFormat:@"%@\n", recursiveDescription];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  string2 = [MEMORY[0x1E696AD60] string];
  [string2 appendFormat:@"<%@ %p> entries:\n%@", objc_opt_class(), self, string];

  return string2;
}

- (PSSearchModelDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end