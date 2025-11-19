@interface SYDocumentFetchRequest
+ (BOOL)_isSearchableItemValid:(id)a3 loggableErrorDescription:(id *)a4;
+ (id)_buildResultWithMatches:(id)a3;
+ (id)_contentURLForItem:(id)a3;
+ (id)_itemIdFromSearchableItem:(id)a3;
+ (void)_fetchDocumentsWithReason:(id)a3 queryString:(id)a4 completion:(id)a5;
+ (void)fetchAllDocumentsMatchingAnyIndexIdWithCompletion:(id)a3;
+ (void)fetchDocumentsWithIndexIds:(id)a3 completion:(id)a4;
@end

@implementation SYDocumentFetchRequest

+ (void)fetchAllDocumentsMatchingAnyIndexIdWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "Fetching all documents matching any id", buf, 2u);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ = '*') && (kMDItemIsTrashed != 1)", @"SYDocumentRelatedUniqueIdentifierKey"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SYDocumentFetchRequest_fetchAllDocumentsMatchingAnyIndexIdWithCompletion___block_invoke;
  v8[3] = &unk_27856B5F0;
  v9 = v4;
  v10 = a1;
  v7 = v4;
  [a1 _fetchDocumentsWithReason:@"Document Workflows: Fetch documents to update link state." queryString:v6 completion:v8];
}

void __76__SYDocumentFetchRequest_fetchAllDocumentsMatchingAnyIndexIdWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 _buildResultWithMatches:a2];
  (*(*(a1 + 32) + 16))();
}

+ (void)fetchDocumentsWithIndexIds:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v22 = v6;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "Fetching documents matching ids: %{private}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCAB68] string];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__SYDocumentFetchRequest_fetchDocumentsWithIndexIds_completion___block_invoke;
  v18[3] = &unk_27856B618;
  v19 = v9;
  v20 = v6;
  v10 = v6;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:v18];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemIsTrashed != 1) && (%@)", v11];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SYDocumentFetchRequest_fetchDocumentsWithIndexIds_completion___block_invoke_2;
  v15[3] = &unk_27856B5F0;
  v16 = v7;
  v17 = a1;
  v13 = v7;
  [a1 _fetchDocumentsWithReason:@"Document Workflows: Fetch documents for unlinking." queryString:v12 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __64__SYDocumentFetchRequest_fetchDocumentsWithIndexIds_completion___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + 32) appendFormat:@"(%@ = '%@')", @"SYDocumentRelatedUniqueIdentifierKey", a2];
  result = [*(a1 + 40) count];
  if (result - 1 > a3)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:@" || "];
  }

  return result;
}

void __64__SYDocumentFetchRequest_fetchDocumentsWithIndexIds_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 _buildResultWithMatches:a2];
  (*(*(a1 + 32) + 16))();
}

+ (void)_fetchDocumentsWithReason:(id)a3 queryString:(id)a4 completion:(id)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v10 setReason:v7];
  v30[0] = @"SYDocumentRelatedUniqueIdentifierKey";
  v30[1] = @"kMDItemContentURL";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [v10 setFetchAttributes:v11];

  v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SYDocumentFetchRequest _fetchDocumentsWithReason:v8 queryString:v12 completion:?];
  }

  v13 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v8 queryContext:v10];
  v14 = [MEMORY[0x277CBEB18] array];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__SYDocumentFetchRequest__fetchDocumentsWithReason_queryString_completion___block_invoke;
  v28[3] = &unk_27856B640;
  v15 = v14;
  v29 = v15;
  [v13 setFoundItemsHandler:v28];
  objc_initWeak(&location, v13);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __75__SYDocumentFetchRequest__fetchDocumentsWithReason_queryString_completion___block_invoke_2;
  v23 = &unk_27856B668;
  objc_copyWeak(&v26, &location);
  v16 = v15;
  v24 = v16;
  v17 = v9;
  v25 = v17;
  [v13 setCompletionHandler:&v20];
  if (_fetchDocumentsWithReason_queryString_completion__onceToken != -1)
  {
    +[SYDocumentFetchRequest _fetchDocumentsWithReason:queryString:completion:];
  }

  v18 = _sQueries;
  objc_sync_enter(v18);
  [_sQueries addObject:{v13, v20, v21, v22, v23}];
  objc_sync_exit(v18);

  [v13 start];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __75__SYDocumentFetchRequest__fetchDocumentsWithReason_queryString_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = _sQueries;
    objc_sync_enter(v5);
    [_sQueries removeObject:WeakRetained];
    objc_sync_exit(v5);
  }

  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v10 = 134218242;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Query finished with matches count: %ld, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

void __75__SYDocumentFetchRequest__fetchDocumentsWithReason_queryString_completion___block_invoke_30()
{
  if (!_sQueries)
  {
    _sQueries = [MEMORY[0x277CCAA50] hashTableWithOptions:0];

    MEMORY[0x2821F96F8]();
  }
}

+ (id)_buildResultWithMatches:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v24;
    *&v8 = 138412546;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v22 = 0;
        v13 = [a1 _isSearchableItemValid:v12 loggableErrorDescription:{&v22, v21}];
        v14 = v22;
        if (v13)
        {
          v15 = [a1 _itemIdFromSearchableItem:v12];
          v16 = [SYDocumentFetchRequest _contentURLForItem:v12];
          v17 = [[SYDocumentFetchResult alloc] initWithDocumentId:v15 fileURL:v16];
          [v5 addObject:v17];
        }

        else
        {
          v15 = os_log_create("com.apple.synapse", "DocumentWorkflows");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v28 = v12;
            v29 = 2112;
            v30 = v14;
            _os_log_impl(&dword_225901000, v15, OS_LOG_TYPE_DEFAULT, "Searchable item isn't valid: %@, error: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  v18 = [v5 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)_isSearchableItemValid:(id)a3 loggableErrorDescription:(id *)a4
{
  v6 = a3;
  v7 = [v6 attributeSet];
  v8 = [v7 bundleID];

  if (v8 && ![v8 isEqualToString:@"com.apple.mobilemail"])
  {
    v10 = [a1 _itemIdFromSearchableItem:v6];
    v11 = [SYDocumentFetchRequest _contentURLForItem:v6];
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    v9 = !v13;
    if (a4 && !v9)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v11 path];
      *a4 = [v14 stringWithFormat:@"Skip invalid searchable with itemId: %@, contentURL: %@", v10, v15];
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Skip searchable item with bundle id: %@", v8];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_itemIdFromSearchableItem:(id)a3
{
  v3 = MEMORY[0x277CC33B0];
  v4 = a3;
  v5 = [[v3 alloc] initWithKeyName:@"SYDocumentRelatedUniqueIdentifierKey"];
  v6 = [v4 attributeSet];

  v7 = [v6 valueForCustomKey:v5];

  return v7;
}

+ (id)_contentURLForItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = [v3 contentURL];

  return v4;
}

+ (void)_fetchDocumentsWithReason:(uint64_t)a1 queryString:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "Query: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end