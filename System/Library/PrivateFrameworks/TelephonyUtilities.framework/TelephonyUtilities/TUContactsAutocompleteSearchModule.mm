@interface TUContactsAutocompleteSearchModule
- (TUContactsAutocompleteSearchModule)init;
- (TUSearchController)searchController;
- (TUSearchResults)searchResults;
- (void)_cleanup;
- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetchDidFinish:(id)a3;
- (void)cancelSearch;
- (void)dealloc;
- (void)searchForString:(id)a3 completion:(id)a4;
@end

@implementation TUContactsAutocompleteSearchModule

- (TUContactsAutocompleteSearchModule)init
{
  v9.receiver = self;
  v9.super_class = TUContactsAutocompleteSearchModule;
  v2 = [(TUContactsAutocompleteSearchModule *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUAutocompleteResultPartitioner);
    autocompleteResultPartitioner = v2->_autocompleteResultPartitioner;
    v2->_autocompleteResultPartitioner = v3;

    v5 = [(TUContactsAutocompleteSearchModule *)v2 searchController];
    [(TUAutocompleteResultPartitioner *)v2->_autocompleteResultPartitioner setSearchController:v5];

    v6 = dispatch_queue_create("com.apple.telephonyutilities.autocompletesearchmodule", 0);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

- (void)dealloc
{
  [(TUContactsAutocompleteSearchModule *)self _cleanup];
  v3.receiver = self;
  v3.super_class = TUContactsAutocompleteSearchModule;
  [(TUContactsAutocompleteSearchModule *)&v3 dealloc];
}

- (void)_cleanup
{
  v2 = [(TUContactsAutocompleteSearchModule *)self fetchRequest];
  [v2 cancel];
}

- (void)searchForString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUContactsAutocompleteSearchModule *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__TUContactsAutocompleteSearchModule_searchForString_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __65__TUContactsAutocompleteSearchModule_searchForString_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanup];
  [*(a1 + 32) setCompletion:*(a1 + 48)];
  v2 = CUTWeakLinkClass();
  v3 = CUTWeakLinkClass();
  v4 = CUTWeakLinkClass();
  if (v2 && v3 && (v5 = v4) != 0)
  {
    v6 = [v2 request];
    [v6 setSearchString:*(a1 + 40)];
    [v6 setSearchType:2];
    [v6 setIncludeContacts:1];
    [v6 setIncludeRecents:0];
    [v6 setIncludeSuggestions:1];
    [v6 setIncludePredictions:1];
    [v6 setIncludeDirectoryServers:0];
    [v6 setIncludeCalendarServers:0];
    v7 = objc_opt_new();
    if (kAppIDShareBear_block_invoke__pred_IMPreferredAccountForServiceIMCore != -1)
    {
      __65__TUContactsAutocompleteSearchModule_searchForString_completion___block_invoke_cold_1();
    }

    v8 = CUTWeakLinkClass();
    v9 = kAppIDShareBear_block_invoke__IMPreferredAccountForService;
    v10 = [v8 facetimeService];
    v11 = v9();

    if (v11)
    {
      v12 = [v11 uniqueID];
      [v7 setSendingAddressAccountIdentifier:v12];
    }

    [v6 setFetchContext:v7];
    v13 = [[v5 alloc] initWithDelegate:*(a1 + 32)];
    [*(a1 + 32) setAutocompleteStore:v13];

    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Requesting fetch from CNAutocompleteStore", buf, 2u);
    }

    v15 = [*(a1 + 32) autocompleteStore];
    v16 = [v15 scheduleFetchRequest:v6];
    [*(a1 + 32) setFetchRequest:v16];
  }

  else
  {
    v17 = [*(a1 + 32) completion];

    if (v17)
    {
      v18 = [*(a1 + 32) completion];
      (*(v18 + 2))(v18, *(a1 + 32), 0);
    }
  }
}

void *__65__TUContactsAutocompleteSearchModule_searchForString_completion___block_invoke_2()
{
  result = CUTWeakLinkSymbol();
  kAppIDShareBear_block_invoke__IMPreferredAccountForService = result;
  return result;
}

- (void)cancelSearch
{
  v3 = [(TUContactsAutocompleteSearchModule *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__TUContactsAutocompleteSearchModule_cancelSearch__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __50__TUContactsAutocompleteSearchModule_cancelSearch__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCancelled:1];
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (TUSearchResults)searchResults
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v3 = [(TUContactsAutocompleteSearchModule *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__TUContactsAutocompleteSearchModule_searchResults__block_invoke;
  v6[3] = &unk_1E7425318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__TUContactsAutocompleteSearchModule_searchResults__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) autocompleteResultPartitioner];
  v2 = [v5 searchResults];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUContactsAutocompleteSearchModule *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUContactsAutocompleteSearchModule_autocompleteFetch_didReceiveResults___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __74__TUContactsAutocompleteSearchModule_autocompleteFetch_didReceiveResults___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "autocompleteFetch:didReceiveResults:", buf, 2u);
  }

  if ([*(a1 + 32) isCancelled])
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = [*(a1 + 32) fetchRequest];
      *buf = 138412546;
      v22 = v4;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "[WARN] ZOMBIE FETCH %@ did receive results but current search is %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = [*(a1 + 32) autocompleteResultPartitioner];

    if (!v6)
    {
      v7 = objc_alloc_init(TUAutocompleteResultPartitioner);
      [*(a1 + 32) setAutocompleteResultPartitioner:v7];

      v8 = [*(a1 + 32) searchController];
      v9 = [*(a1 + 32) autocompleteResultPartitioner];
      [v9 setSearchController:v8];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = *(a1 + 40);
    v10 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          v15 = [*(a1 + 32) autocompleteResultPartitioner];
          [v15 addResult:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(TUContactsAutocompleteSearchModule *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__TUContactsAutocompleteSearchModule_autocompleteFetch_didFailWithError___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t __73__TUContactsAutocompleteSearchModule_autocompleteFetch_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __73__TUContactsAutocompleteSearchModule_autocompleteFetch_didFailWithError___block_invoke_cold_1(a1, v2);
  }

  result = [*(a1 + 40) isCancelled];
  if ((result & 1) == 0)
  {
    [*(a1 + 40) setSearchComplete:1];
    v4 = [*(a1 + 40) completion];

    if (v4)
    {
      v5 = [*(a1 + 40) completion];
      v5[2](v5, *(a1 + 40), 0);
    }

    return [*(a1 + 40) _cleanup];
  }

  return result;
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  v4 = [(TUContactsAutocompleteSearchModule *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__TUContactsAutocompleteSearchModule_autocompleteFetchDidFinish___block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v4, block);
}

void __65__TUContactsAutocompleteSearchModule_autocompleteFetchDidFinish___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "autocompleteFetchDidFinish:", v5, 2u);
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 32) setSearchComplete:1];
    v3 = [*(a1 + 32) completion];

    if (v3)
    {
      v4 = [*(a1 + 32) completion];
      v4[2](v4, *(a1 + 32), 1);
    }
  }
}

- (TUSearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

void __73__TUContactsAutocompleteSearchModule_autocompleteFetch_didFailWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "autocompleteFetch:didFailWithError: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end