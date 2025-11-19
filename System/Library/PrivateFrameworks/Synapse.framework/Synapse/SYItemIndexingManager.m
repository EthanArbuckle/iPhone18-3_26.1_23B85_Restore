@interface SYItemIndexingManager
+ (id)_coreSpotlightIndexBundleID;
+ (id)_customKeyForKey:(id)a3;
+ (id)_postFilteredItems:(id)a3 matchingUserActivityInfo:(id)a4;
+ (id)_queryStringForMatchingUserActivityInfo:(id)a3;
+ (id)searchableItemLinkingContentItem:(id)a3 toContainerIdentifier:(id)a4 uniqueIdentifier:(id)a5 relatedIdentifier:(id)a6 domainIdentifier:(id)a7;
+ (void)_fetchIndexedActivitiesWithActivityType:(id)a3 completion:(id)a4;
+ (void)_fetchIndexedItemsLinkedToUserActivity:(id)a3 extraFetchAttributes:(id)a4 completion:(id)a5;
+ (void)fetchActivitiesWithActivityType:(id)a3 completion:(id)a4;
+ (void)fetchIdentifiersLinkedToUserActivity:(id)a3 completion:(id)a4;
+ (void)fetchLinkContextsDataForUserActivity:(id)a3 completion:(id)a4;
+ (void)indexedContentItemsDidChange;
@end

@implementation SYItemIndexingManager

+ (id)_customKeyForKey:(id)a3
{
  v3 = _customKeyForKey__onceTokenCustomAttributeKeys;
  v4 = a3;
  if (v3 != -1)
  {
    +[SYItemIndexingManager _customKeyForKey:];
  }

  v5 = [_customKeyForKey___customAttributeKeys objectForKeyedSubscript:v4];

  return v5;
}

void __42__SYItemIndexingManager__customKeyForKey___block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = @"sy_isLinkItem";
  v0 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"sy_isLinkItem" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v10[0] = v0;
  v9[1] = @"sy_activityType";
  v1 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"sy_activityType" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v10[1] = v1;
  v9[2] = @"sy_canonicalURL";
  v2 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"sy_canonicalURL" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v10[2] = v2;
  v9[3] = @"sy_activityPersistentID";
  v3 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"sy_activityPersistentID" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v10[3] = v3;
  v9[4] = @"sy_activityTargetContentID";
  v4 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"sy_activityTargetContentID" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v10[4] = v4;
  v9[5] = @"sy_linkContextInfoData";
  v5 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"sy_linkContextInfoData" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = _customKeyForKey___customAttributeKeys;
  _customKeyForKey___customAttributeKeys = v6;

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)searchableItemLinkingContentItem:(id)a3 toContainerIdentifier:(id)a4 uniqueIdentifier:(id)a5 relatedIdentifier:(id)a6 domainIdentifier:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    +[SYItemIndexingManager searchableItemLinkingContentItem:toContainerIdentifier:uniqueIdentifier:relatedIdentifier:domainIdentifier:];
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  +[SYItemIndexingManager searchableItemLinkingContentItem:toContainerIdentifier:uniqueIdentifier:relatedIdentifier:domainIdentifier:];
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v13)
  {
LABEL_4:
    v16 = v13;
    goto LABEL_8;
  }

LABEL_7:
  v17 = [v11 itemIdentifier];
  v16 = [v17 UUIDString];

LABEL_8:
  v18 = objc_alloc(MEMORY[0x277CC34B8]);
  v19 = [v18 initWithContentType:*MEMORY[0x277CE1DB8]];
  v20 = [v11 displayTitle];
  [v19 setDisplayName:v20];

  [v19 setIdentifier:v16];
  v21 = [SYItemIndexingManager _customKeyForKey:@"sy_isLinkItem"];
  v22 = MEMORY[0x277CBEC38];
  [v19 setValue:MEMORY[0x277CBEC38] forCustomKey:v21];

  [v19 setTrashed:v22];
  [v19 setContainerIdentifier:v12];
  [v19 setRelatedUniqueIdentifier:v14];
  [v19 setDeletedWithRelatedUniqueIdentifier:v22];
  v23 = [v11 activityType];
  v24 = v23;
  v25 = &stru_2838DFF18;
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v27 = [SYItemIndexingManager _customKeyForKey:@"sy_activityType"];
  [v19 setValue:v26 forCustomKey:v27];

  v28 = [v11 itemURL];
  [v19 setURL:v28];

  v29 = [v11 activityCanonicalURL];

  if (v29)
  {
    v30 = [v11 activityCanonicalURL];
    v31 = [v30 absoluteString];

    v32 = [SYItemIndexingManager _customKeyForKey:@"sy_canonicalURL"];
    [v19 setValue:v31 forCustomKey:v32];
  }

  v33 = [v11 activityPersistentIdentifier];
  v34 = [v33 length];

  if (v34)
  {
    v35 = [v11 activityPersistentIdentifier];
    v36 = [SYItemIndexingManager _customKeyForKey:@"sy_activityPersistentID"];
    [v19 setValue:v35 forCustomKey:v36];
  }

  v37 = [v11 activityTargetContentIdentifier];
  v38 = [v37 length];

  if (v38)
  {
    v39 = [v11 activityTargetContentIdentifier];
    v40 = [SYItemIndexingManager _customKeyForKey:@"sy_activityTargetContentID"];
    [v19 setValue:v39 forCustomKey:v40];
  }

  v41 = [v11 userActivity];
  v42 = [v41 _linkContextInfo];

  if (v42)
  {
    v53 = v16;
    v54 = 0;
    v43 = v15;
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v42 requiringSecureCoding:1 error:&v54];
    v48 = v54;
    if (v47)
    {
      v49 = [SYItemIndexingManager _customKeyForKey:@"sy_linkContextInfoData"];
      [v19 setValue:v47 forCustomKey:v49];
    }

    else
    {
      v49 = os_log_create("com.apple.synapse", "ItemIndexing");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [SYItemIndexingManager searchableItemLinkingContentItem:v11 toContainerIdentifier:v48 uniqueIdentifier:v49 relatedIdentifier:? domainIdentifier:?];
      }
    }

    v14 = v46;
    v13 = v45;
    v12 = v44;
    v15 = v43;
    v16 = v53;
  }

  v50 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v16 domainIdentifier:v15 attributeSet:v19];
  v51 = [MEMORY[0x277CBEAA8] distantFuture];
  [v50 setExpirationDate:v51];

  return v50;
}

+ (void)indexedContentItemsDidChange
{
  v2 = os_log_create("com.apple.synapse", "ItemIndexing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "IndexingManager: indexedContentItemsDidChange", v4, 2u);
  }

  v3 = +[SYActivityObserver sharedInstance];
  [v3 indexedContentItemsDidChange];
}

+ (void)_fetchIndexedItemsLinkedToUserActivity:(id)a3 extraFetchAttributes:(id)a4 completion:(id)a5
{
  v37[7] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[SYItemIndexingManager _fetchIndexedItemsLinkedToUserActivity:extraFetchAttributes:completion:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  +[SYItemIndexingManager _fetchIndexedItemsLinkedToUserActivity:extraFetchAttributes:completion:];
LABEL_3:
  v12 = os_log_create("com.apple.synapse", "ItemIndexing");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SYItemIndexingManager _fetchIndexedItemsLinkedToUserActivity:v8 extraFetchAttributes:v9 completion:v12];
  }

  if (SYIsLinkableUserActivity(v8))
  {
    v13 = [a1 _queryStringForMatchingUserActivityInfo:v8];
    v14 = NSStringFromSelector(sel_URL);
    v37[0] = v14;
    v15 = NSStringFromSelector(sel_containerIdentifier);
    v37[1] = v15;
    v16 = NSStringFromSelector(sel_domainIdentifier);
    v37[2] = v16;
    v37[3] = @"sy_canonicalURL";
    v37[4] = @"sy_activityType";
    v37[5] = @"sy_activityPersistentID";
    v37[6] = @"sy_activityTargetContentID";
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:7];

    if (v9)
    {
      v18 = [v17 arrayByAddingObjectsFromArray:v9];

      v17 = v18;
    }

    v19 = objc_alloc_init(MEMORY[0x277CC34A0]);
    [v19 setFetchAttributes:v17];
    [v19 setReason:@"System Paper Backlinks"];
    [v19 setPrivateQuery:1];
    v20 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v13 queryContext:v19];
    v21 = [a1 _coreSpotlightIndexBundleID];
    v22 = v21;
    if (v21)
    {
      v36 = v21;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      [v20 setBundleIDs:v23];
    }

    v24 = [MEMORY[0x277CBEB18] array];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke;
    v32[3] = &unk_27856C450;
    v33 = v8;
    v35 = a1;
    v25 = v24;
    v34 = v25;
    [v20 setFoundItemsHandler:v32];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke_128;
    v29[3] = &unk_27856BCB0;
    v30 = v25;
    v31 = v11;
    v26 = v25;
    [v20 setCompletionHandler:v29];
    [v20 start];
  }

  else
  {
    v27 = os_log_create("com.apple.synapse", "ItemIndexing");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      +[SYItemIndexingManager _fetchIndexedItemsLinkedToUserActivity:extraFetchAttributes:completion:];
    }

    v11[2](v11, MEMORY[0x277CBEBF8]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "ItemIndexing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke_cold_1(v3, a1, v4);
  }

  v5 = [*(a1 + 48) _postFilteredItems:v3 matchingUserActivityInfo:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 40) addObjectsFromArray:v5];
  }
}

void __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke_128(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "ItemIndexing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke_128_cold_1();
    }
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

+ (void)fetchIdentifiersLinkedToUserActivity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SYItemIndexingManager_fetchIdentifiersLinkedToUserActivity_completion___block_invoke;
  v8[3] = &unk_27856B760;
  v9 = v6;
  v7 = v6;
  [a1 _fetchIndexedItemsLinkedToUserActivity:a3 extraFetchAttributes:0 completion:v8];
}

void __73__SYItemIndexingManager_fetchIdentifiersLinkedToUserActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 attributeSet];
        v10 = [v9 domainIdentifier];

        v11 = [v8 attributeSet];
        v12 = [v11 containerIdentifier];

        if (v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = &stru_2838DFF18;
        }

        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = &stru_2838DFF18;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v13, v14];
        if (v10)
        {
          v16 = v12 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && ([v3 containsObject:v15] & 1) == 0)
        {
          [v20 addObject:v10];
          [v19 addObject:v12];
          [v3 addObject:v15];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchIndexedActivitiesWithActivityType:(id)a3 completion:(id)a4
{
  v31[7] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[SYItemIndexingManager _fetchIndexedActivitiesWithActivityType:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  +[SYItemIndexingManager _fetchIndexedActivitiesWithActivityType:completion:];
LABEL_3:
  v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ == 1", @"sy_isLinkItem"];
  if ([v6 length])
  {
    v10 = _escapedSearchString(v6);
    [v9 appendFormat:@" && (%@ == \"%@\", @"sy_activityType"", v10];
  }

  v11 = NSStringFromSelector(sel_URL);
  v31[0] = v11;
  v12 = NSStringFromSelector(sel_containerIdentifier);
  v31[1] = v12;
  v13 = NSStringFromSelector(sel_domainIdentifier);
  v31[2] = v13;
  v31[3] = @"sy_canonicalURL";
  v31[4] = @"sy_activityType";
  v31[5] = @"sy_activityPersistentID";
  v31[6] = @"sy_activityTargetContentID";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:7];

  v15 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v15 setFetchAttributes:v14];
  [v15 setReason:@"System Paper Backlinks"];
  [v15 setPrivateQuery:1];
  v16 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v9 queryContext:v15];
  v17 = [a1 _coreSpotlightIndexBundleID];
  v18 = v17;
  if (v17)
  {
    v30 = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v16 setBundleIDs:v19];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__SYItemIndexingManager__fetchIndexedActivitiesWithActivityType_completion___block_invoke;
  v28[3] = &unk_27856B640;
  v21 = v20;
  v29 = v21;
  [v16 setFoundItemsHandler:v28];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__SYItemIndexingManager__fetchIndexedActivitiesWithActivityType_completion___block_invoke_2;
  v25[3] = &unk_27856BCB0;
  v26 = v21;
  v27 = v8;
  v22 = v21;
  v23 = v8;
  [v16 setCompletionHandler:v25];
  [v16 start];

  v24 = *MEMORY[0x277D85DE8];
}

void __76__SYItemIndexingManager__fetchIndexedActivitiesWithActivityType_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [SYAttributeSetActivityInfo alloc];
        v10 = [v8 attributeSet];
        v11 = [(SYAttributeSetActivityInfo *)v9 initWithAttributeSet:v10];

        [*(a1 + 32) addObject:v11];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __76__SYItemIndexingManager__fetchIndexedActivitiesWithActivityType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "ItemIndexing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke_128_cold_1();
    }
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

+ (void)fetchActivitiesWithActivityType:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SYItemIndexingManager_fetchActivitiesWithActivityType_completion___block_invoke;
  v8[3] = &unk_27856B760;
  v9 = v6;
  v7 = v6;
  [a1 _fetchIndexedActivitiesWithActivityType:a3 completion:v8];
}

+ (void)fetchLinkContextsDataForUserActivity:(id)a3 completion:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14[0] = @"sy_linkContextInfoData";
  v7 = MEMORY[0x277CBEA60];
  v8 = a3;
  v9 = [v7 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SYItemIndexingManager_fetchLinkContextsDataForUserActivity_completion___block_invoke;
  v12[3] = &unk_27856B760;
  v13 = v6;
  v10 = v6;
  [a1 _fetchIndexedItemsLinkedToUserActivity:v8 extraFetchAttributes:v9 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __73__SYItemIndexingManager_fetchLinkContextsDataForUserActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = a1;
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * v7) attributeSet];
        v9 = [SYItemIndexingManager _customKeyForKey:@"sy_linkContextInfoData"];
        v10 = [v8 valueForCustomKey:v9];

        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 addObject:v10];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  (*(*(v12 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_coreSpotlightIndexBundleID
{
  if (_SYUseLocalSearchIndex == 1)
  {
    v2 = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = @"com.apple.mobilenotes";
  }

  return v3;
}

+ (id)_queryStringForMatchingUserActivityInfo:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ == 1", @"sy_isLinkItem"];
  v5 = [v3 activityType];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v3 activityType];
    v8 = _escapedSearchString(v7);

    [v4 appendFormat:@" && (%@ == \"%@\" || %@ == \"\", @"sy_activityType", v8, @"sy_activityType""];
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v10 = [v3 webpageURL];
  v11 = [v10 host];
  v12 = [v11 length];

  if (v12)
  {
    v13 = _searchableDomainNameForURL(v10);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL == *%@*", v13];
    [v9 addObject:v14];
  }

  v15 = [v3 canonicalURL];
  v16 = [v15 host];
  v17 = [v16 length];

  if (v17)
  {
    v18 = _searchableDomainNameForURL(v15);
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == *%@*", @"sy_canonicalURL", v18];
    [v9 addObject:v19];
  }

  v20 = [v3 persistentIdentifier];
  v21 = [v20 length];

  if (v21)
  {
    v22 = [v3 persistentIdentifier];
    v23 = _escapedSearchString(v22);

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == %@", @"sy_activityPersistentID", v23];
    [v9 addObject:v24];
  }

  v25 = [v3 targetContentIdentifier];
  v26 = [v25 length];

  if (v26)
  {
    v27 = [v3 targetContentIdentifier];
    v28 = _escapedSearchString(v27);

    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == %@", @"sy_activityTargetContentID", v28];
    [v9 addObject:v29];
  }

  v30 = [v9 componentsJoinedByString:@" || "];
  [v4 appendFormat:@" && (%@)", v30];

  v31 = [v4 copy];

  return v31;
}

+ (id)_postFilteredItems:(id)a3 matchingUserActivityInfo:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 attributeSet];
        v15 = [v14 URL];

        if (!v15 || (v16 = [SYAttributeSetActivityInfo alloc], [v13 attributeSet], v17 = objc_claimAutoreleasedReturnValue(), v18 = -[SYAttributeSetActivityInfo initWithAttributeSet:](v16, "initWithAttributeSet:", v17), v17, LODWORD(v17) = SYEquivalentUserActivities(v18, v6), v18, v17))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)searchableItemLinkingContentItem:toContainerIdentifier:uniqueIdentifier:relatedIdentifier:domainIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"contentItem" object:? file:? lineNumber:? description:?];
}

+ (void)searchableItemLinkingContentItem:toContainerIdentifier:uniqueIdentifier:relatedIdentifier:domainIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"containerIdentifier" object:? file:? lineNumber:? description:?];
}

+ (void)searchableItemLinkingContentItem:(NSObject *)a3 toContainerIdentifier:uniqueIdentifier:relatedIdentifier:domainIdentifier:.cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 itemIdentifier];
  OUTLINED_FUNCTION_1_1();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Error encoding linkContextInfo dictionary for item %@, ignoring: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchIndexedItemsLinkedToUserActivity:extraFetchAttributes:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"userActivity" object:? file:? lineNumber:? description:?];
}

+ (void)_fetchIndexedItemsLinkedToUserActivity:extraFetchAttributes:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

+ (void)_fetchIndexedItemsLinkedToUserActivity:(uint64_t)a1 extraFetchAttributes:(void *)a2 completion:(NSObject *)a3 .cold.3(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = a1;
  v7 = 1024;
  v8 = [a2 count] != 0;
  _os_log_debug_impl(&dword_225901000, a3, OS_LOG_TYPE_DEBUG, "Search indexed linked items for activity: %p, has extra fetch attributes: %d", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchIndexedItemsLinkedToUserActivity:extraFetchAttributes:completion:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_225901000, v0, OS_LOG_TYPE_DEBUG, "Can't search indexed linked items for invalid activity: %p", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  [a1 count];
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_1_1();
  v9 = 2048;
  v10 = v6;
  _os_log_debug_impl(&dword_225901000, a3, OS_LOG_TYPE_DEBUG, "Process %ld indexed linked item(s) found for activity: %p", v8, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __96__SYItemIndexingManager__fetchIndexedItemsLinkedToUserActivity_extraFetchAttributes_completion___block_invoke_128_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_225901000, v0, OS_LOG_TYPE_ERROR, "Error executing search query: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchIndexedActivitiesWithActivityType:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"activityType" object:? file:? lineNumber:? description:?];
}

+ (void)_fetchIndexedActivitiesWithActivityType:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end