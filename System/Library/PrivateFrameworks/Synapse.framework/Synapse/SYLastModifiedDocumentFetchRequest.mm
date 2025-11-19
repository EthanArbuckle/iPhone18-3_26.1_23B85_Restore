@interface SYLastModifiedDocumentFetchRequest
+ (id)_buildResultWithMatches:(id)a3;
+ (id)_createSearchQueryWithString:(id)a3;
+ (void)fetchLastModifiedDocument:(id)a3 completion:(id)a4;
@end

@implementation SYLastModifiedDocumentFetchRequest

+ (void)fetchLastModifiedDocument:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "Fetching last modified document attributes for document with index key: %@", buf, 0xCu);
  }

  v9 = [a1 _buildQueryStringWithDocumentRelatedUniqueIdentifier:v6];
  v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SYDocumentFetchRequest _fetchDocumentsWithReason:v9 queryString:v10 completion:?];
  }

  v11 = [a1 _createSearchQueryWithString:v9];
  v12 = [MEMORY[0x277CBEB18] array];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __75__SYLastModifiedDocumentFetchRequest_fetchLastModifiedDocument_completion___block_invoke;
  v27[3] = &unk_27856B640;
  v13 = v12;
  v28 = v13;
  [v11 setFoundItemsHandler:v27];
  objc_initWeak(buf, v11);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __75__SYLastModifiedDocumentFetchRequest_fetchLastModifiedDocument_completion___block_invoke_2;
  v22 = &unk_27856C7D0;
  objc_copyWeak(v26, buf);
  v14 = v13;
  v23 = v14;
  v15 = v6;
  v24 = v15;
  v26[1] = a1;
  v16 = v7;
  v25 = v16;
  [v11 setCompletionHandler:&v19];
  if (fetchLastModifiedDocument_completion__onceToken != -1)
  {
    +[SYLastModifiedDocumentFetchRequest fetchLastModifiedDocument:completion:];
  }

  v17 = _sQueries_0;
  objc_sync_enter(v17);
  [_sQueries_0 addObject:{v11, v19, v20, v21, v22}];
  objc_sync_exit(v17);

  [v11 start];
  objc_destroyWeak(v26);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

void __75__SYLastModifiedDocumentFetchRequest_fetchLastModifiedDocument_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = _sQueries_0;
    objc_sync_enter(v5);
    [_sQueries_0 removeObject:WeakRetained];
    objc_sync_exit(v5);
  }

  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v8 = *(a1 + 40);
    v13 = 134218498;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Found %ld matching document(s) with index key: %@, error: %@", &v13, 0x20u);
  }

  v9 = [*(a1 + 64) _buildResultWithMatches:*(a1 + 32)];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_17];
  v11 = [v10 lastObject];

  (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __75__SYLastModifiedDocumentFetchRequest_fetchLastModifiedDocument_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 modifiedDate];
  v6 = [v4 modifiedDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __75__SYLastModifiedDocumentFetchRequest_fetchLastModifiedDocument_completion___block_invoke_2_6()
{
  if (!_sQueries_0)
  {
    _sQueries_0 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];

    MEMORY[0x2821F96F8]();
  }
}

+ (id)_createSearchQueryWithString:(id)a3
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC34A0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v10[0] = @"SYDocumentRelatedUniqueIdentifierKey";
  v10[1] = @"kMDItemContentURL";
  v10[2] = @"kMDItemContentCreationDate";
  v10[3] = @"kMDItemContentModificationDate";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  [v5 setFetchAttributes:v6];

  [v5 setReason:@"Document Workflows: Get last modified document"];
  v7 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v4 context:v5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_buildResultWithMatches:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v30;
    *&v5 = 138478851;
    v26 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [SYDocumentFetchRequest _contentURLForItem:v9, v26];
        v11 = [v9 attributeSet];
        v12 = [v11 contentCreationDate];

        v13 = [v9 attributeSet];
        v14 = [v13 contentModificationDate];

        v15 = v10;
        if ([v15 isFileURL])
        {
          v16 = [v15 pathExtension];
          v17 = [v16 hasPrefix:@"sb-"];
        }

        else
        {
          v17 = 0;
        }

        if (v15)
        {
          v18 = v14 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18 || ![v12 compare:v14])
        {
          v19 = 0;
        }

        else
        {
          v19 = v17 ^ 1;
        }

        v20 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v15 path];
          *buf = v26;
          v34 = v21;
          v35 = 2113;
          v36 = v12;
          v37 = 2113;
          v38 = v14;
          v39 = 1024;
          v40 = v17;
          v41 = 1024;
          v42 = v19;
          _os_log_impl(&dword_225901000, v20, OS_LOG_TYPE_DEFAULT, "Found searchable item with contentURL: %{private}@, creationDate: %{private}@, lastModifiedDate: %{private}@, isAutosaveFileURL: %{BOOL}d, isValid: %{BOOL}d", buf, 0x2Cu);
        }

        if (v19)
        {
          v22 = [[SYLastModifiedDocumentAttributes alloc] initWithFileURL:v15 modifiedDate:v14];
          [v28 addObject:v22];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v6);
  }

  v23 = [v28 copy];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end