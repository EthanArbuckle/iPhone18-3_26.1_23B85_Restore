@interface STSSearchModel
+ (id)serverURLString;
- (PARSession)parsecSession;
- (STSRecentsDelegate)recentsDelegate;
- (STSSearchModel)init;
- (STSSearchModelDelegate)delegate;
- (STSSearchModelQuerySuggestionsDelegate)querySuggestionsDelegate;
- (id)createQuerySession;
- (id)defaultCategoryList;
- (id)mockQuerySuggestions;
- (id)removeOutdatedReportedResults:(id)a3;
- (id)resultsWithReportedImagesRemoved:(id)a3;
- (unint64_t)numberOfReportedResults;
- (void)_clearQuerySuggestionsAndNotifyDelegate;
- (void)_clearSectionsAndNotifyDelegate;
- (void)_performParsecdSearchQuery:(id)a3 requestType:(int64_t)a4 completion:(id)a5;
- (void)_updateSearchProviderImageForResult:(id)a3;
- (void)addSearchResultToReportConcernStore:(id)a3;
- (void)appendQueryItemsForRequest:(id)a3 type:(int64_t)a4;
- (void)fetchMoreResults;
- (void)loadReportConcernStoreFromDefaults;
- (void)performCategoryListRequest:(id)a3;
- (void)performSearchWithQueryString:(id)a3 requestType:(int64_t)a4 completion:(id)a5;
- (void)performZKWSearchQueryWithCompletion:(id)a3;
- (void)prefetchRecentsWithCompletion:(id)a3;
- (void)removeResultAtIndexPath:(id)a3;
- (void)saveReportConcernStoreToUserDefaults;
- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5;
@end

@implementation STSSearchModel

- (STSSearchModel)init
{
  v18.receiver = self;
  v18.super_class = STSSearchModel;
  v2 = [(STSSearchModel *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    sections = v2->_sections;
    v2->_sections = v3;

    v5 = dispatch_queue_create("com.apple.messages.searchbrowser.sectionq", 0);
    mutableSectionsQueue = v2->_mutableSectionsQueue;
    v2->_mutableSectionsQueue = v5;

    v7 = dispatch_queue_create("com.apple.messages.searchbrowser.queryq", MEMORY[0x277D85CD8]);
    queryQueue = v2->_queryQueue;
    v2->_queryQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    zkwResultStore = v2->_zkwResultStore;
    v2->_zkwResultStore = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    searchResultStore = v2->_searchResultStore;
    v2->_searchResultStore = v11;

    v13 = [(STSSearchModel *)v2 defaultCategoryList];
    categoryList = v2->_categoryList;
    v2->_categoryList = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recentsToDedup = v2->_recentsToDedup;
    v2->_recentsToDedup = v15;

    [(STSSearchModel *)v2 loadReportConcernStoreFromDefaults];
  }

  return v2;
}

- (void)fetchMoreResults
{
  v3 = [(NSArray *)self->_sections firstObject];
  v4 = [v3 results];
  v5 = v4;
  v6 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v7 lastObject];
  v9 = [v8 moreResults];

  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__STSSearchModel_fetchMoreResults__block_invoke;
    v11[3] = &unk_279B8B3B0;
    v11[4] = self;
    [v9 loadSearchResultsWithCompletionHandler:v11];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchModel:self insertedResultsAtIndexPaths:0 removedResultsAtIndexPaths:0];
  }
}

void __34__STSSearchModel_fetchMoreResults__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "More results loaded %@ results", &buf, 0xCu);
  }

  v21 = [*(*(a1 + 32) + 16) firstObject];
  if (v21)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x2020000000;
    v33 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __34__STSSearchModel_fetchMoreResults__block_invoke_12;
    v30[3] = &unk_279B8B338;
    v30[4] = &buf;
    [v3 enumerateObjectsUsingBlock:v30];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 32) + 152);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __34__STSSearchModel_fetchMoreResults__block_invoke_2;
    v27[3] = &unk_279B8B360;
    v7 = v3;
    v28 = v7;
    v19 = v5;
    v29 = v19;
    [v6 enumerateObjectsUsingBlock:v27];
    v20 = [v7 mutableCopy];
    [v20 removeObjectsInArray:v19];
    v8 = [v20 copy];

    v9 = [*(a1 + 32) resultsWithReportedImagesRemoved:v8];

    v10 = [v21 results];
    v11 = [v10 arrayByAddingObjectsFromArray:v9];
    v12 = [[STSSearchResultSection alloc] initWithResultsArray:v11];
    v13 = [v10 count];
    v14 = [MEMORY[0x277CBEB18] array];
    for (i = v13; i < [v9 count] + v13; ++i)
    {
      v16 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:0];
      [v14 addObject:v16];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__STSSearchModel_fetchMoreResults__block_invoke_4;
    block[3] = &unk_279B8B388;
    block[4] = *(a1 + 32);
    v23 = v12;
    v3 = v9;
    v24 = v3;
    v25 = v14;
    p_buf = &buf;
    v17 = v14;
    v18 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);

    _Block_object_dispose(&buf, 8);
  }
}

void __34__STSSearchModel_fetchMoreResults__block_invoke_12(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 queryId])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 queryId];
    *a4 = 1;
  }
}

void __34__STSSearchModel_fetchMoreResults__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__STSSearchModel_fetchMoreResults__block_invoke_3;
  v6[3] = &unk_279B8B360;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __34__STSSearchModel_fetchMoreResults__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) identifier];
  v7 = [v9 identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
    *a4 = 1;
  }
}

void __34__STSSearchModel_fetchMoreResults__block_invoke_4(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = a1[5];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v3 = a1[4];
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = +[STSFeedbackReporter sharedInstance];
  [v5 didLoadResults:a1[6] indexPaths:a1[7] queryId:*(*(a1[8] + 8) + 24)];

  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  [WeakRetained searchModel:a1[4] insertedResultsAtIndexPaths:a1[7] removedResultsAtIndexPaths:0];
}

+ (id)serverURLString
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 stringForKey:@"TCServerURLKey"];

  if (![(__CFString *)v3 length])
  {

    v3 = @"https://api.smoot.apple.com";
  }

  return v3;
}

- (id)createQuerySession
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"TCUseThirdParty"];

  v4 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v5 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:104857600 diskPath:@"Search"];
  [v4 setURLCache:v5];

  [v4 setHTTPCookieStorage:0];
  [v4 setHTTPMaximumConnectionsPerHost:8];
  [v4 set_connectionCacheCellPurgeTimeout:10.0];
  [v4 set_allowsTCPFastOpen:1];
  [v4 set_allowsTLSSessionTickets:1];
  if (v3)
  {
    v9 = @"User-Agent";
    v10[0] = @"Mozilla/5.0 (iPhone; CPU iPhone OS 9_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13C75 Safari/601.1";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v4 setHTTPAdditionalHeaders:v6];
  }

  v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v4];

  return v7;
}

- (void)appendQueryItemsForRequest:(id)a3 type:(int64_t)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  if (a4 > 9)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_279B8B618[a4];
  }

  v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"qtype" value:v7];
  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v6 addObjectsFromArray:v9];

  [v5 setQueryItems:v6];
}

- (void)performSearchWithQueryString:(id)a3 requestType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(STSSearchModel *)self _clearSectionsAndNotifyDelegate];
  [(NSMutableArray *)self->_recentsToDedup removeAllObjects];
  if (!a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_querySuggestionsDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_querySuggestionsDelegate);
      [v12 searchModelWillFetchQuerySuggestionsCompletions:self];
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke;
  v14[3] = &unk_279B8B428;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [(STSSearchModel *)self _performParsecdSearchQuery:v8 requestType:a4 completion:v14];
}

void __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_cold_1(v11, v13);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_69;
    block[3] = &unk_279B8B3D8;
    v40 = *(a1 + 40);
    v39 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v14 = v40;
  }

  else
  {
    v15 = [v12 results];
    if (v15)
    {
      v16 = [v12 results];
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    if (a3 == 8 || (a3 & 0xFFFFFFFFFFFFFFFBLL) - 1 <= 2)
    {
      v14 = [*(a1 + 32) resultsWithReportedImagesRemoved:v16];

      if ([v14 count])
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_2;
        v33[3] = &unk_279B8B400;
        v14 = v14;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v34 = v14;
        v35 = v17;
        v37 = a4;
        v36 = v18;
        dispatch_async(MEMORY[0x277D85CD0], v33);
      }

      else
      {
        v19 = MEMORY[0x277CCACA8];
        v20 = STSLocalizedString(@"ERROR_DESC_NO_RESULTS_FOR_QUERY");
        v21 = [v19 stringWithFormat:v20, v11];

        v41 = *MEMORY[0x277CCA450];
        v42[0] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"STSErrorDomain" code:2 userInfo:v22];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_3;
        v30[3] = &unk_279B8B3D8;
        v24 = *(a1 + 40);
        v31 = v23;
        v32 = v24;
        v25 = v23;
        dispatch_async(MEMORY[0x277D85CD0], v30);
      }
    }

    else
    {
      if (!a3)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_4;
        v26[3] = &unk_279B8B400;
        v26[4] = *(a1 + 32);
        v27 = v12;
        v29 = a4;
        v28 = *(a1 + 40);
        dispatch_async(MEMORY[0x277D85CD0], v26);
      }

      v14 = v16;
    }
  }
}

void __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_2(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = +[STSImageCache sharedCache];
  v3 = [v2 searchProviderImage];

  if (!v3)
  {
    v4 = [*(a1 + 32) firstObject];
    [*(a1 + 40) _updateSearchProviderImageForResult:v4];
  }

  v5 = [[STSSearchResultSection alloc] initWithResultsArray:*(a1 + 32)];
  v6 = [MEMORY[0x277CBEB18] array];
  if ([*(a1 + 32) count])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:0];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < [*(a1 + 32) count]);
  }

  v9 = [*(*(a1 + 40) + 16) firstObject];
  v10 = [v9 results];
  v11 = [v10 count];
  v12 = 0x277CBE000uLL;
  if (v11 > 0)
  {
    v13 = v11;
    v14 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != v13; ++i)
    {
      v16 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:0];
      [v14 addObject:v16];
    }

    v17 = [STSSearchResultSection alloc];
    v18 = [(STSSearchResultSection *)v17 initWithResultsArray:MEMORY[0x277CBEBF8]];
    v33[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v20 = *(a1 + 40);
    v21 = *(v20 + 16);
    *(v20 + 16) = v19;

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = objc_loadWeakRetained((*(a1 + 40) + 40));
      [v24 searchModel:*(a1 + 40) insertedResultsAtIndexPaths:0 removedResultsAtIndexPaths:v14];
    }

    v12 = 0x277CBE000;
  }

  v32 = v5;
  v25 = [*(v12 + 2656) arrayWithObjects:&v32 count:1];
  v26 = *(a1 + 40);
  v27 = *(v26 + 16);
  *(v26 + 16) = v25;

  v28 = objc_loadWeakRetained((*(a1 + 40) + 40));
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = +[STSFeedbackReporter sharedInstance];
    [v30 didLoadResults:*(a1 + 32) indexPaths:v6 queryId:*(a1 + 56)];

    v31 = objc_loadWeakRetained((*(a1 + 40) + 40));
    [v31 searchModel:*(a1 + 40) insertedResultsAtIndexPaths:v6 removedResultsAtIndexPaths:0];
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 40) suggestions];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v8 searchModelUpdatedQuerySuggestions:*(a1 + 32)];

    v9 = +[STSFeedbackReporter sharedInstance];
    v10 = [*(a1 + 40) suggestions];
    [v9 didShowQuerySuggestions:v10 queryId:*(a1 + 56)];
  }

  v11 = *(*(a1 + 48) + 16);

  return v11();
}

- (void)prefetchRecentsWithCompletion:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSArray *)self->_recentResults count])
  {
    v24 = v4;
    v5 = dispatch_group_create();
    v26 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v6 setRequestCachePolicy:1];
    [v6 setURLCache:0];
    v23 = v6;
    v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = self;
    obj = self->_recentResults;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        v11 = 0;
        do
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v38 + 1) + 8 * v11);
          dispatch_group_enter(v5);
          v13 = [v12 thumbnail];
          v14 = [v13 urlValue];
          v15 = [MEMORY[0x277CCAB70] requestWithURL:v14];
          [v15 setHTTPMethod:@"HEAD"];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __48__STSSearchModel_prefetchRecentsWithCompletion___block_invoke;
          v33[3] = &unk_279B8B450;
          v34 = v26;
          v35 = v12;
          v36 = v14;
          v37 = v5;
          v16 = v14;
          v17 = [v7 dataTaskWithRequest:v15 completionHandler:v33];
          [v17 resume];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v9);
    }

    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__STSSearchModel_prefetchRecentsWithCompletion___block_invoke_86;
    block[3] = &unk_279B8B478;
    v28 = v5;
    v29 = v7;
    v30 = v22;
    v31 = v26;
    v4 = v24;
    v32 = v24;
    v19 = v26;
    v20 = v7;
    v21 = v5;
    dispatch_async(v18, block);
  }

  else
  {
    v4[2](v4);
  }
}

void __48__STSSearchModel_prefetchRecentsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a3 statusCode];
  if (!a4 || v6 == 200)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v11 = 138412290;
      v12 = v10;
      v8 = MEMORY[0x277D86220];
      v9 = "successfully downloaded header for image %@, adding to recents";
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v11 = 138412290;
    v12 = v7;
    v8 = MEMORY[0x277D86220];
    v9 = "failed to download header for image %@, removing from to recents";
LABEL_7:
    _os_log_impl(&dword_264E95000, v8, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __48__STSSearchModel_prefetchRecentsWithCompletion___block_invoke_86(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v2, v3);
  [*(a1 + 40) invalidateAndCancel];
  objc_storeStrong((*(a1 + 48) + 80), *(a1 + 56));
  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__STSSearchModel_prefetchRecentsWithCompletion___block_invoke_2;
  block[3] = &unk_279B8A988;
  block[4] = *(a1 + 48);
  dispatch_async(v5, block);
}

void __48__STSSearchModel_prefetchRecentsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained updateRecentResults:*(*(a1 + 32) + 80)];
}

- (void)performZKWSearchQueryWithCompletion:(id)a3
{
  v4 = a3;
  [(STSSearchModel *)self _clearSectionsAndNotifyDelegate];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke;
  v13[3] = &unk_279B8A988;
  v6 = v5;
  v14 = v6;
  [(STSSearchModel *)self prefetchRecentsWithCompletion:v13];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_2;
  v9[3] = &unk_279B8B4F0;
  v11 = self;
  v12 = v4;
  v10 = v6;
  v7 = v4;
  v8 = v6;
  [(STSSearchModel *)self _performParsecdSearchQuery:&stru_2876AE098 requestType:4 completion:v9];
}

void __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a5;
  v12 = a6;
  v13 = *(a1 + 32);
  v14 = dispatch_time(0, 11000000000);
  dispatch_group_wait(v13, v14);
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_2_cold_1(v12);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_90;
    block[3] = &unk_279B8B3D8;
    v15 = &v27;
    v27 = *(a1 + 48);
    v26 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v16 = v26;
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_2_91;
    v20[3] = &unk_279B8B4C8;
    v15 = v21;
    v17 = v11;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v21[0] = v17;
    v21[1] = v18;
    v24 = a4;
    v23 = v19;
    v22 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v20);

    v16 = v23;
  }
}

void __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_2_91(uint64_t a1)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) results];
  if (v2)
  {
    v3 = [*(a1 + 32) results];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = *(a1 + 40);
  v45 = v4;
  if (*(v5 + 80))
  {
    v6 = v4;
    [*(v5 + 152) removeAllObjects];
    [*(*(a1 + 40) + 152) addObjectsFromArray:*(*(a1 + 40) + 80)];
    v7 = *(*(a1 + 40) + 80);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_3;
    v46[3] = &unk_279B8B4A0;
    v47 = v3;
    v8 = v6;
    v9 = *(a1 + 40);
    v48 = v8;
    v49 = v9;
    v10 = v3;
    [v7 enumerateObjectsUsingBlock:v46];
    v11 = [v10 mutableCopy];
    [v11 removeObjectsInArray:v8];
    v3 = [*(*(a1 + 40) + 80) arrayByAddingObjectsFromArray:v11];
  }

  v44 = [[STSSearchResultSection alloc] initWithResultsArray:v3];
  v12 = [MEMORY[0x277CBEB18] array];
  if ([v3 count])
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x277CCAA70] indexPathForRow:v13 inSection:0];
      [v12 addObject:v14];

      ++v13;
    }

    while (v13 < [v3 count]);
  }

  v43 = [*(*(a1 + 40) + 16) firstObject];
  v15 = [v43 results];
  v16 = [v15 count];
  v17 = 0x277CBE000;
  if (v16 > 0)
  {
    v18 = v16;
    v19 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != v18; ++i)
    {
      v21 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:0];
      [v19 addObject:v21];
    }

    v22 = [STSSearchResultSection alloc];
    v23 = [(STSSearchResultSection *)v22 initWithResultsArray:MEMORY[0x277CBEBF8]];
    v53[0] = v23;
    v17 = 0x277CBE000uLL;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    v25 = *(a1 + 40);
    v26 = *(v25 + 16);
    *(v25 + 16) = v24;

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
    [WeakRetained searchModel:*(a1 + 40) insertedResultsAtIndexPaths:0 removedResultsAtIndexPaths:v19];
  }

  v52 = v44;
  v28 = [*(v17 + 2656) arrayWithObjects:&v52 count:1];
  v29 = *(a1 + 40);
  v30 = *(v29 + 16);
  *(v29 + 16) = v28;

  v31 = +[STSFeedbackReporter sharedInstance];
  [v31 didLoadResults:v3 indexPaths:v12 queryId:*(a1 + 64)];

  v32 = objc_loadWeakRetained((*(a1 + 40) + 40));
  [v32 searchModel:*(a1 + 40) insertedResultsAtIndexPaths:v12 removedResultsAtIndexPaths:0];

  if ([v3 count])
  {
    v33 = +[STSImageCache sharedCache];
    v34 = [v33 searchProviderImage];

    if (!v34)
    {
      v35 = [v3 firstObject];
      [*(a1 + 40) _updateSearchProviderImageForResult:v35];
    }

    v36 = *(a1 + 56);
    if (v36)
    {
      (*(v36 + 16))(v36, 1, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_2_91_cold_1();
    }

    v37 = MEMORY[0x277CCACA8];
    v38 = STSLocalizedString(@"ERROR_DESC_NO_SUGGESTIONS_FOUND");
    v39 = [v37 stringWithFormat:v38, *(a1 + 48)];

    v50 = *MEMORY[0x277CCA450];
    v51 = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"STSErrorDomain" code:2 userInfo:v40];
    v42 = *(a1 + 56);
    if (v42)
    {
      (*(v42 + 16))(v42, 0, v41);
    }
  }
}

void __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) firstObject];
  [v3 setQueryId:{objc_msgSend(v4, "queryId")}];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_4;
  v9[3] = &unk_279B8B4A0;
  v10 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v5 enumerateObjectsUsingBlock:v9];
}

void __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) identifier];
  v7 = [v9 identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
    [*(*(a1 + 48) + 152) removeObject:*(a1 + 32)];
    *a4 = 1;
  }
}

- (void)_performParsecdSearchQuery:(id)a3 requestType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 <= 3)
  {
    if ((a4 - 2) < 2)
    {
      goto LABEL_10;
    }

    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_18;
      }

      v11 = 22;
    }

    else
    {
      v11 = 21;
    }

LABEL_11:
    +[STSSearchModel incrementClientQueryId];
    v12 = +[STSSearchModel clientQueryId];
    v10 = [MEMORY[0x277D007B8] searchRequestWithString:v8 triggerEvent:v11 queryId:v12];
    goto LABEL_12;
  }

  if (a4 > 6)
  {
    if (a4 == 7)
    {
      v11 = 9;
    }

    else
    {
      if (a4 != 8)
      {
        goto LABEL_18;
      }

      v11 = 23;
    }

    goto LABEL_11;
  }

  if ((a4 - 5) < 2)
  {
LABEL_10:
    v11 = 8;
    goto LABEL_11;
  }

  if (a4 != 4)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_11;
  }

  +[STSSearchModel incrementClientQueryId];
  v10 = [MEMORY[0x277D007D8] zeroKeywordRequest:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
LABEL_12:
  v13 = v10;
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  [v13 setScale:?];

  v15 = [MEMORY[0x277D75688] sharedInputModeController];
  v16 = [v15 currentInputMode];
  v17 = [v16 identifierWithLayouts];
  [v13 setKeyboardInputMode:v17];

  [(STSSearchModel *)self appendQueryItemsForRequest:v13 type:a4];
  v18 = [(STSSearchModel *)self parsecSession];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __68__STSSearchModel__performParsecdSearchQuery_requestType_completion___block_invoke;
  v28 = &unk_279B8B518;
  v29 = self;
  v31 = v9;
  v19 = v8;
  v30 = v19;
  v32 = a4;
  v20 = v9;
  v21 = [v18 taskWithRequest:v13 completion:&v25];

  currentQuery = self->_currentQuery;
  self->_currentQuery = v19;
  v23 = v19;

  [(STSSearchModel *)self setCurrentTask:v21, v25, v26, v27, v28, v29];
  v24 = [(STSSearchModel *)self currentTask];
  [v24 resume];
}

void __68__STSSearchModel__performParsecdSearchQuery_requestType_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a2;
  v10 = [v8 currentTask];

  if (v10 == v9)
  {
    (*(a1[6] + 16))(a1[6], a1[5], a1[7], +[STSSearchModel clientQueryId], v11, v7);
  }
}

- (void)_updateSearchProviderImageForResult:(id)a3
{
  v3 = [a3 sts_searchProviderImage];
  [v3 loadImageDataWithCompletionHandler:&__block_literal_global_3];
}

void __54__STSSearchModel__updateSearchProviderImageForResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STSImageCache sharedCache];
    v4 = [v3 searchProviderImage];

    if (!v4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__STSSearchModel__updateSearchProviderImageForResult___block_invoke_2;
      block[3] = &unk_279B8A988;
      v6 = v2;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __54__STSSearchModel__updateSearchProviderImageForResult___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755B8]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v7 = [v2 initWithData:v3 scale:?];

  v5 = [v7 imageWithRenderingMode:2];
  v6 = +[STSImageCache sharedCache];
  [v6 setSearchProviderImage:v5];
}

- (void)_clearSectionsAndNotifyDelegate
{
  v7 = [(NSArray *)self->_sections firstObject];
  v3 = [v7 results];
  v4 = [v3 sts_map:&__block_literal_global_105];

  sections = self->_sections;
  self->_sections = MEMORY[0x277CBEBF8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchModel:self insertedResultsAtIndexPaths:0 removedResultsAtIndexPaths:v4];
}

- (void)_clearQuerySuggestionsAndNotifyDelegate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__STSSearchModel__clearQuerySuggestionsAndNotifyDelegate__block_invoke;
  block[3] = &unk_279B8A988;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__STSSearchModel__clearQuerySuggestionsAndNotifyDelegate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = MEMORY[0x277CBEBF8];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v6 searchModelUpdatedQuerySuggestions:*(a1 + 32)];
  }
}

- (void)removeResultAtIndexPath:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  sections = self->_sections;
  v5 = a3;
  v6 = [(NSArray *)sections firstObject];
  v7 = [v6 results];
  v8 = [v7 mutableCopy];

  [v8 removeObjectAtIndex:{objc_msgSend(v5, "row")}];
  [v6 setResults:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [WeakRetained searchModel:self insertedResultsAtIndexPaths:0 removedResultsAtIndexPaths:v10];
}

- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "bag loaded", v5, 2u);
  }
}

- (id)mockQuerySuggestions
{
  if (mockQuerySuggestions_swap)
  {
    v2 = &unk_2876BA510;
  }

  else
  {
    v2 = &unk_2876BA4F8;
  }

  mockQuerySuggestions_swap ^= 1u;
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__STSSearchModel_mockQuerySuggestions__block_invoke;
  v7[3] = &unk_279B8B580;
  v8 = v3;
  v4 = v3;
  [v2 enumerateObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __38__STSSearchModel_mockQuerySuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setSuggestion:v3];

  [*(a1 + 32) addObject:v4];
}

- (PARSession)parsecSession
{
  parsecSession = self->_parsecSession;
  if (!parsecSession)
  {
    v4 = [objc_alloc(MEMORY[0x277D007C8]) initWithId:@"Messages-searchToShare-session" userAgent:@"Messages/1.0"];
    [v4 setDontPreloadImages:1];
    v5 = [MEMORY[0x277D007C0] sessionWithConfiguration:v4 delegate:self startImmediately:1];
    [v5 setDelegate:self];
    v6 = self->_parsecSession;
    self->_parsecSession = v5;

    parsecSession = self->_parsecSession;
  }

  return parsecSession;
}

- (void)performCategoryListRequest:(id)a3
{
  v4 = a3;
  v5 = +[STSSearchModel clientQueryId];
  self->_categoryListRequestQueryId = v5;
  v6 = [MEMORY[0x277D007D8] zeroKeywordRequest:v5];
  v7 = [MEMORY[0x277D75688] sharedInputModeController];
  v8 = [v7 currentInputMode];
  v9 = [v8 identifierWithLayouts];
  [v6 setKeyboardInputMode:v9];

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  [v6 setScale:?];

  [(STSSearchModel *)self appendQueryItemsForRequest:v6 type:7];
  v11 = [(STSSearchModel *)self parsecSession];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __45__STSSearchModel_performCategoryListRequest___block_invoke;
  v17 = &unk_279B8B5A8;
  v18 = self;
  v19 = v4;
  v12 = v4;
  v13 = [v11 taskWithRequest:v6 completion:&v14];

  [v13 resume];
}

void __45__STSSearchModel_performCategoryListRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 suggestions];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v14 suggestions];
    v10 = [v9 copy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 72);
    *(v11 + 72) = v10;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v6);
  }
}

- (id)defaultCategoryList
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__STSSearchModel_defaultCategoryList__block_invoke;
  v6[3] = &unk_279B8B5D0;
  v7 = v2;
  v3 = v2;
  [&unk_2876BA528 enumerateObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

void __37__STSSearchModel_defaultCategoryList__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D4C5D8];
  v4 = a2;
  v5 = [[v3 alloc] initWithSuggestion:v4 query:&stru_2876AE098 score:1 type:0.0];

  [*(a1 + 32) addObject:v5];
}

- (id)resultsWithReportedImagesRemoved:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __51__STSSearchModel_resultsWithReportedImagesRemoved___block_invoke;
  v13 = &unk_279B8B360;
  v14 = self;
  v15 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __51__STSSearchModel_resultsWithReportedImagesRemoved___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 url];
  v5 = [v4 absoluteString];

  v6 = [*(*(a1 + 32) + 160) objectForKey:v5];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removed reported image from result set", v7, 2u);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)addSearchResultToReportConcernStore:(id)a3
{
  v4 = [a3 url];
  v7 = [v4 absoluteString];

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [(NSMutableDictionary *)self->_reportConcernStore objectForKey:v7];
  if (v6 || ![v7 length])
  {
  }

  else if (v5)
  {
    [(NSMutableDictionary *)self->_reportConcernStore setObject:v5 forKey:v7];
  }

  [(STSSearchModel *)self saveReportConcernStoreToUserDefaults];
}

- (id)removeOutdatedReportedResults:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__STSSearchModel_removeOutdatedReportedResults___block_invoke;
  v8[3] = &unk_279B8B5F8;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __48__STSSearchModel_removeOutdatedReportedResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v7 components:16 fromDate:v8 toDate:v6 options:0];

  if ([v9 day] > -31)
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removed expired reported image", v10, 2u);
  }
}

- (void)saveReportConcernStoreToUserDefaults
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [(NSMutableDictionary *)self->_reportConcernStore copy];
  [v4 setObject:v3 forKey:@"STSReportConcernResults"];

  [v4 synchronize];
}

- (void)loadReportConcernStoreFromDefaults
{
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v7 dictionaryForKey:@"STSReportConcernResults"];
  v4 = [(STSSearchModel *)self removeOutdatedReportedResults:v3];
  v5 = [v4 mutableCopy];
  reportConcernStore = self->_reportConcernStore;
  self->_reportConcernStore = v5;

  [(STSSearchModel *)self saveReportConcernStoreToUserDefaults];
}

- (unint64_t)numberOfReportedResults
{
  v2 = [(NSMutableDictionary *)self->_reportConcernStore allKeys];
  v3 = [v2 count];

  return v3;
}

- (STSSearchModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (STSRecentsDelegate)recentsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recentsDelegate);

  return WeakRetained;
}

- (STSSearchModelQuerySuggestionsDelegate)querySuggestionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_querySuggestionsDelegate);

  return WeakRetained;
}

void __70__STSSearchModel_performSearchWithQueryString_requestType_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Search with query %@ failed: %@", &v2, 0x16u);
}

void __54__STSSearchModel_performZKWSearchQueryWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ZKW search failed: %@", &v1, 0xCu);
}

@end