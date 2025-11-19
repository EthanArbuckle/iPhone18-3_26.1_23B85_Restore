@interface SUISPasteboardManager
+ (id)collectExpiredItemsFromItems:(id)a3 expirationThresholdInSeconds:(double)a4 outputNextExpirationDate:(id *)a5;
+ (id)pasteboardExpirationManagerQueue;
+ (id)pasteboardFilter;
+ (id)shared;
- (SUISPasteboardManager)init;
- (void)clearIndexAndCachedFiles;
- (void)configurePasteboardHistory;
- (void)dealloc;
- (void)deleteContinuityPasteboardItems;
- (void)indexCoreSpotlightItemWithAttributeSet:(id)a3;
- (void)indexOrUpdateIfExistsCorespotlightItemAttributeSet:(id)a3;
- (void)setChangeCount:(int64_t)a3;
- (void)setup;
- (void)tearDown;
@end

@implementation SUISPasteboardManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[SUISPasteboardManager shared];
  }

  v3 = shared_sharedPasteboardManager;

  return v3;
}

uint64_t __31__SUISPasteboardManager_shared__block_invoke()
{
  shared_sharedPasteboardManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)indexOrUpdateIfExistsCorespotlightItemAttributeSet:(id)a3
{
  v21[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  if ([v5 length])
  {
    if ([(SUISPasteboardManager *)self pasteboardHistoryItemWasCopied])
    {
      v6 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
      v7 = *MEMORY[0x277CC31F0];
      v21[0] = *MEMORY[0x277CC2640];
      v21[1] = v7;
      v8 = *MEMORY[0x277CC31B8];
      v21[2] = *MEMORY[0x277CC3038];
      v21[3] = v8;
      v21[4] = @"_kMDItemThumbnailData";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
      v20 = v5;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __76__SUISPasteboardManager_indexOrUpdateIfExistsCorespotlightItemAttributeSet___block_invoke;
      v16 = &unk_279D10278;
      v17 = v4;
      v18 = self;
      [v6 slowFetchAttributes:v9 protectionClass:0 bundleID:@"com.apple.spotlight" identifiers:v10 options:32 completionHandler:&v13];
    }

    else
    {
      [(SUISPasteboardManager *)self indexCoreSpotlightItemWithAttributeSet:v4];
    }

    [(SUISPasteboardManager *)self setPasteboardHistoryItemWasCopied:0, v13, v14, v15, v16];
  }

  else
  {
    v11 = SUISPasteboardIndexingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B8E8000, v11, OS_LOG_TYPE_DEFAULT, "identifier for CSSItem has no length", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __76__SUISPasteboardManager_indexOrUpdateIfExistsCorespotlightItemAttributeSet___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = [v3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setContentCreationDate:v4];
  }

  if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndex:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setTitle:v5];
  }

  if ([v3 count] < 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 objectAtIndex:2];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setRelatedAppBundleIdentifier:v6];
  }

  if ([v3 count] < 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 objectAtIndex:3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setThumbnailBundleID:v7];
  }

  if ([v3 count] < 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v3 objectAtIndex:4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setThumbnailData:v8];
  }

  v9 = SUISPasteboardIndexingLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [v3 count];
    _os_log_impl(&dword_26B8E8000, v9, OS_LOG_TYPE_DEFAULT, "got attributes: %lu", &v11, 0xCu);
  }

  [*(a1 + 40) indexCoreSpotlightItemWithAttributeSet:*(a1 + 32)];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)indexCoreSpotlightItemWithAttributeSet:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isShared];
  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x277D65CF0];
  if (v6)
  {
    v7 = @"com.apple.spotlight.pasteboard.continuity";
  }

  v8 = v7;

  v9 = objc_alloc(MEMORY[0x277CC34B0]);
  v10 = [v4 uniqueIdentifier];
  v11 = [v9 initWithUniqueIdentifier:v10 domainIdentifier:v8 attributeSet:v4];

  v12 = SUISPasteboardIndexingLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B8E8000, v12, OS_LOG_TYPE_DEFAULT, "indexing pasteboard contents", buf, 2u);
  }

  v13 = [v4 lastUsedDate];

  if (v13)
  {
    v14 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    v21[0] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke;
    v18[3] = &unk_279D102A0;
    v18[4] = self;
    v19 = v11;
    [v14 indexSearchableItems:v15 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:0 forBundleID:0 options:32 completionHandler:v18];
  }

  else
  {
    v16 = SUISPasteboardIndexingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SUISPasteboardManager indexCoreSpotlightItemWithAttributeSet:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SUISPasteboardIndexingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26B8E8000, v4, OS_LOG_TYPE_DEFAULT, "finished indexing pasteboard contents", v6, 2u);
  }

  if ([*(a1 + 32) isNothingDispatchedForNextExpiration])
  {
    [*(a1 + 32) deleteExpiredItemsAndDispatchForNextExpiration];
  }

  if (v3)
  {
    v5 = SUISPasteboardIndexingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke_cold_1(v3, a1, v5);
    }
  }
}

+ (id)pasteboardFilter
{
  if (pasteboardFilter_onceToken != -1)
  {
    +[SUISPasteboardManager pasteboardFilter];
  }

  v3 = pasteboardFilter_pasteboardFilter;

  return v3;
}

uint64_t __41__SUISPasteboardManager_pasteboardFilter__block_invoke()
{
  pasteboardFilter_pasteboardFilter = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemDomainIdentifier = %@*", *MEMORY[0x277D65CF0]];

  return MEMORY[0x2821F96F8]();
}

+ (id)pasteboardExpirationManagerQueue
{
  if (pasteboardExpirationManagerQueue_onceToken != -1)
  {
    +[SUISPasteboardManager pasteboardExpirationManagerQueue];
  }

  v3 = pasteboardExpirationManagerQueue_queue;

  return v3;
}

uint64_t __57__SUISPasteboardManager_pasteboardExpirationManagerQueue__block_invoke()
{
  pasteboardExpirationManagerQueue_queue = dispatch_queue_create("com.apple.spotlight.pasteboardExpirationManagerQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (SUISPasteboardManager)init
{
  v4.receiver = self;
  v4.super_class = SUISPasteboardManager;
  v2 = [(SUISPasteboardManager *)&v4 init];
  if (v2 && [MEMORY[0x277D4C898] isSpotlightPlusEnabled])
  {
    [(SUISPasteboardManager *)v2 configurePasteboardHistory];
  }

  return v2;
}

- (void)dealloc
{
  [(SUISPasteboardManager *)self tearDown];
  v3.receiver = self;
  v3.super_class = SUISPasteboardManager;
  [(SUISPasteboardManager *)&v3 dealloc];
}

- (void)deleteContinuityPasteboardItems
{
  v2 = [MEMORY[0x277D65D50] shared];
  v3 = [v2 isContinuityEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    [v4 deleteSearchableItemsWithDomainIdentifiers:&unk_287C64E90 protectionClass:0 forBundleID:0 options:32 completionHandler:&__block_literal_global_545];
  }
}

void __56__SUISPasteboardManager_deleteContinuityPasteboardItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SUISPasteboardIndexingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__SUISPasteboardManager_deleteContinuityPasteboardItems__block_invoke_cold_1(v2, v3);
    }
  }
}

- (void)configurePasteboardHistory
{
  v3 = [MEMORY[0x277D65D50] shared];
  v4 = [v3 isEnabled];

  if (v4)
  {
    [(SUISPasteboardManager *)self deleteExpiredItemsAndDispatchForNextExpiration];
    v5 = [(SUISPasteboardManager *)self sink];

    if (!v5)
    {

      [(SUISPasteboardManager *)self setup];
    }
  }

  else
  {
    [(SUISPasteboardManager *)self tearDown];

    [(SUISPasteboardManager *)self clearIndexAndCachedFiles];
  }
}

- (void)setup
{
  [(SUISPasteboardManager *)self deleteExpiredItemsAndDispatchForNextExpiration];

  [(SUISPasteboardManager *)self registerPasteboardExpirationWatchdog];
}

- (void)tearDown
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(SUISPasteboardManager *)self scheduler];
  [v4 cancel];

  v5 = [(SUISPasteboardManager *)self sink];
  [v5 cancel];

  [(SUISPasteboardManager *)self setScheduler:0];

  [(SUISPasteboardManager *)self setSink:0];
}

- (void)clearIndexAndCachedFiles
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v10[0] = *MEMORY[0x277D65CF0];
  v10[1] = @"com.apple.spotlight.pasteboard.continuity";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [v2 setDomainIdentifiers:v3];

  v4 = MEMORY[0x277CBEBC0];
  v5 = [MEMORY[0x277D65910] spotlightPasteboardCacheDirectory];
  v6 = [v4 fileURLWithPath:v5];
  v9 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v2 setFilesToDelete:v7];

  [SUIUtilities performDeleteCommand:v2];
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)collectExpiredItemsFromItems:(id)a3 expirationThresholdInSeconds:(double)a4 outputNextExpirationDate:(id *)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = [a3 sortedArrayUsingComparator:&__block_literal_global_553];
  v7 = [v6 mutableCopy];

  v45 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEAA8] now];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v10 = v7;
  v49 = [v10 countByEnumeratingWithState:&v58 objects:v67 count:16];
  v11 = 0;
  if (v49)
  {
    v47 = 0;
    v48 = *v59;
    v43 = v9;
    v44 = v10;
    do
    {
      for (i = 0; i != v49; i = v34 + 1)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(v10);
        }

        v50 = i;
        v13 = *(*(&v58 + 1) + 8 * i);
        v14 = [v13 attributeSet];
        v15 = [v14 lastUsedDate];

        if (!v15)
        {
          v16 = SUISPasteboardIndexingLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [SUISPasteboardManager collectExpiredItemsFromItems:v57 expirationThresholdInSeconds:v16 outputNextExpirationDate:?];
          }
        }

        v17 = [v13 attributeSet];
        v18 = [v17 lastUsedDate];
        v19 = [v18 dateByAddingTimeInterval:a4];

        v51 = v19;
        v20 = [v9 laterDate:v19];

        if (v20 == v9)
        {
          v23 = [v13 uniqueIdentifier];
          [v45 addObject:v23];

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v24 = [v13 attributeSet];
          v25 = [v24 attachmentPaths];

          v26 = [v25 countByEnumeratingWithState:&v52 objects:v66 count:16];
          if (v26)
          {
            v27 = v26;
            v46 = v11;
            v28 = *v53;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v53 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v52 + 1) + 8 * j);
                v31 = [MEMORY[0x277D65910] spotlightPasteboardCacheDirectory];
                v32 = [v30 containsString:v31];

                if (v32)
                {
                  v33 = [MEMORY[0x277CBEBC0] URLWithString:v30];
                  [v8 addObject:v33];
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v52 objects:v66 count:16];
            }

            while (v27);
            v9 = v43;
            v10 = v44;
            v11 = v46;
          }

          v34 = v50;
          v19 = v51;
        }

        else
        {
          if (v47)
          {
            v21 = [MEMORY[0x277CBEA80] currentCalendar];
            v22 = [v21 isDate:v47 equalToDate:v19 toUnitGranularity:64];

            if ((v22 & 1) == 0)
            {

              goto LABEL_31;
            }
          }

          else
          {
            v47 = v19;
          }

          v25 = v11;
          v11 = v19;
          v34 = v50;
        }
      }

      v49 = [v10 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v49);
  }

  else
  {
    v47 = 0;
  }

LABEL_31:

  v35 = SUISPasteboardIndexingLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v45 count];
    v37 = [v8 count];
    *buf = 134218240;
    v63 = v36;
    v64 = 2048;
    v65 = v37;
    _os_log_impl(&dword_26B8E8000, v35, OS_LOG_TYPE_DEFAULT, "Found expired items %lu, files %lu", buf, 0x16u);
  }

  if (a5)
  {
    v38 = v11;
    *a5 = v11;
  }

  v39 = objc_opt_new();
  [v39 setItemIdentifiers:v45];
  [v39 setFilesToDelete:v8];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

uint64_t __108__SUISPasteboardManager_collectExpiredItemsFromItems_expirationThresholdInSeconds_outputNextExpirationDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributeSet];
  v6 = [v5 lastUsedDate];
  v7 = [v4 attributeSet];

  v8 = [v7 lastUsedDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)setChangeCount:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = SUISPasteboardIndexingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = [(SUISPasteboardManager *)self changeCount];
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_26B8E8000, v5, OS_LOG_TYPE_DEFAULT, "updating changeCount from:%ld to %ld", &v7, 0x16u);
  }

  self->_changeCount = a3;
  v6 = *MEMORY[0x277D85DE8];
}

void __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_26B8E8000, log, OS_LOG_TYPE_ERROR, "error: %@ indexing pasteboard item :%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __56__SUISPasteboardManager_deleteContinuityPasteboardItems__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B8E8000, a2, OS_LOG_TYPE_ERROR, "error deleting continuity pasteboard items in corespotlight: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)collectExpiredItemsFromItems:(uint8_t *)buf expirationThresholdInSeconds:(_BYTE *)a2 outputNextExpirationDate:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_26B8E8000, log, OS_LOG_TYPE_ERROR, "we're missing the lastuseddate when checking for expirationdate", buf, 2u);
}

@end