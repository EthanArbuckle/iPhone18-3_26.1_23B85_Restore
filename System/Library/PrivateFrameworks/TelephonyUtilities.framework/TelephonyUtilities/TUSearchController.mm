@interface TUSearchController
+ (TUSearchController)sharedInstance;
- (CNContactStore)contactStore;
- (TUSearchController)init;
- (id)_searchModuleCompletionWithModules:(id)a3 searchTerm:(id)a4 resultsClass:(Class)a5 completion:(id)a6;
- (id)recentsModuleCompletionWithCompletion:(id)a3;
- (id)searchModuleCompletionWithSearchTerm:(id)a3 completion:(id)a4;
- (void)_cancelRecentSearches;
- (void)_cancelSearchsForSearchTerm:(id)a3;
- (void)_clearIdsDestinations;
- (void)_fetchIdsDestinationsIfNeeded:(id)a3 withReason:(int)a4;
- (void)recentsWithCompletion:(id)a3;
- (void)searchForString:(id)a3 completion:(id)a4;
@end

@implementation TUSearchController

+ (TUSearchController)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[TUSearchController sharedInstance];
  }

  v3 = sharedInstance_gSharedController;

  return v3;
}

uint64_t __36__TUSearchController_sharedInstance__block_invoke()
{
  sharedInstance_gSharedController = objc_alloc_init(TUSearchController);

  return MEMORY[0x1EEE66BB8]();
}

- (TUSearchController)init
{
  v8.receiver = self;
  v8.super_class = TUSearchController;
  v2 = [(TUSearchController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.searchcontroller", 0);
    searchQueue = v2->_searchQueue;
    v2->_searchQueue = v3;

    v2->_searchModulesLock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    searchModules = v2->_searchModules;
    v2->_searchModules = v5;
  }

  return v2;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = [MEMORY[0x1E695CE18] tu_contactStore];
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)recentsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TUSearchController *)self searchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TUSearchController_recentsWithCompletion___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__TUSearchController_recentsWithCompletion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _cancelRecentSearches];
  v2 = +[TUSearchModuleManager recentsModuleClasses];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  [*(a1 + 32) setRecentsModules:v3];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = objc_alloc_init(*(*(&v23 + 1) + 8 * v8));
        [v9 setSearchController:*(a1 + 32)];
        v10 = [*(a1 + 32) recentsModules];
        [v10 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [*(a1 + 32) recentsModules];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = [*(a1 + 32) recentsModuleCompletionWithCompletion:*(a1 + 40)];
        [v16 searchForString:&stru_1F098C218 completion:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)searchForString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUSearchController *)self searchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__TUSearchController_searchForString_completion___block_invoke;
  block[3] = &unk_1E7426458;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __49__TUSearchController_searchForString_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _cancelSearchsForSearchTerm:*(a1 + 40)];
  v2 = +[TUSearchModuleManager searchModuleClasses];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = objc_alloc_init(*(*(&v25 + 1) + 8 * i));
        [v9 setSearchController:*(a1 + 32)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  if ([*(a1 + 40) length])
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v10 = [v3 copy];
    v11 = [*(a1 + 32) searchModules];
    [v11 setObject:v10 forKeyedSubscript:*(a1 + 40)];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * j);
          v18 = *(a1 + 40);
          v19 = [*(a1 + 32) searchModuleCompletionWithSearchTerm:v18 completion:{*(a1 + 48), v21}];
          [v17 searchForString:v18 completion:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_cancelRecentSearches
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(TUSearchController *)self recentsModules];

  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(TUSearchController *)self recentsModules];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v8++) cancelSearch];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(TUSearchController *)self setRecentsModules:0];
    v9 = +[TUIDSLookupManager sharedManager];
    [v9 cancelQueries];

    [(TUSearchController *)self _clearIdsDestinations];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_cancelSearchsForSearchTerm:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_searchModulesLock);
  v5 = [(TUSearchController *)self searchModules];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v11++) cancelSearch];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v12 = [(TUSearchController *)self searchModules];
    [v12 removeObjectForKey:v4];

    v13 = +[TUIDSLookupManager sharedManager];
    [v13 cancelQueries];

    [(TUSearchController *)self _clearIdsDestinations];
  }

  os_unfair_lock_unlock(&self->_searchModulesLock);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_fetchIdsDestinationsIfNeeded:(id)a3 withReason:(int)a4
{
  v11 = a3;
  v6 = [(TUSearchController *)self searchQueue];
  dispatch_assert_queue_V2(v6);

  if (!self->_idsDestinations)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    idsDestinations = self->_idsDestinations;
    self->_idsDestinations = v7;
  }

  if (a4 == 1)
  {
    v9 = [v11 mutableCopy];
    [v9 minusSet:self->_idsDestinations];
  }

  else if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v11;
  }

  if ([v9 count])
  {
    v10 = +[TUIDSLookupManager sharedManager];
    [v10 beginBatchQueryWithDestinations:v9];

    [(NSMutableSet *)self->_idsDestinations unionSet:v9];
  }
}

- (void)_clearIdsDestinations
{
  v3 = [(TUSearchController *)self searchQueue];
  dispatch_assert_queue_V2(v3);

  idsDestinations = self->_idsDestinations;
  self->_idsDestinations = 0;
}

- (id)recentsModuleCompletionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TUSearchController *)self recentsModules];
  v6 = [(TUSearchController *)self _searchModuleCompletionWithModules:v5 searchTerm:&stru_1F098C218 resultsClass:objc_opt_class() completion:v4];

  return v6;
}

- (id)searchModuleCompletionWithSearchTerm:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_searchModulesLock);
  v8 = [(TUSearchController *)self searchModules];
  v9 = [v8 objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_searchModulesLock);
  v10 = [(TUSearchController *)self _searchModuleCompletionWithModules:v9 searchTerm:v7 resultsClass:objc_opt_class() completion:v6];

  return v10;
}

- (id)_searchModuleCompletionWithModules:(id)a3 searchTerm:(id)a4 resultsClass:(Class)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__TUSearchController__searchModuleCompletionWithModules_searchTerm_resultsClass_completion___block_invoke;
  aBlock[3] = &unk_1E74267B8;
  aBlock[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = a5;
  v21 = v11;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = _Block_copy(aBlock);
  v17 = _Block_copy(v16);

  return v17;
}

void __92__TUSearchController__searchModuleCompletionWithModules_searchTerm_resultsClass_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) searchQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__TUSearchController__searchModuleCompletionWithModules_searchTerm_resultsClass_completion___block_invoke_2;
  v8[3] = &unk_1E7426790;
  v9 = *(a1 + 40);
  v10 = v3;
  v14 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v4, v8);
}

void __92__TUSearchController__searchModuleCompletionWithModules_searchTerm_resultsClass_completion___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) containsObject:*(a1 + 40)])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v34;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v33 + 1) + 8 * v6) isSearchComplete])
        {
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      if (+[TUCallCapabilities supportsTelephonyCalls])
      {
        v7 = +[TUCallCapabilities supportsPrimaryCalling]^ 1;
      }

      else
      {
        v7 = 0;
      }

      v2 = [objc_alloc(*(a1 + 72)) initWithSearchTerm:*(a1 + 48) shouldAddAdhocResults:v7];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        do
        {
          v12 = 0;
          do
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v29 + 1) + 8 * v12) searchResults];
            [v2 addSearchResults:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v10);
      }

      [v2 finalizeSearchResults];
      v14 = [MEMORY[0x1E695DFA8] set];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = [v2 allDataItems];
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v25 + 1) + 8 * v19) idsCanonicalDestinations];
            [v14 addObjectsFromArray:v20];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v17);
      }

      [*(a1 + 56) _fetchIdsDestinationsIfNeeded:v14 withReason:{objc_msgSend(*(a1 + 48), "length") == 0}];
      (*(*(a1 + 64) + 16))();
      v21 = [*(a1 + 48) length];
      v22 = *(a1 + 56);
      if (v21)
      {
        os_unfair_lock_lock(v22 + 2);
        v23 = [*(a1 + 56) searchModules];
        [v23 removeObjectForKey:*(a1 + 48)];

        os_unfair_lock_unlock((*(a1 + 56) + 8));
      }

      else
      {
        [(os_unfair_lock_s *)v22 setRecentsModules:0];
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end