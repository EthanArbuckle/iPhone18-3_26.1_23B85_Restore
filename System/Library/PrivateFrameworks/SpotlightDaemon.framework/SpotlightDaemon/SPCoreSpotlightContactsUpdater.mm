@interface SPCoreSpotlightContactsUpdater
+ (id)sharedInstance;
- (SPCoreSpotlightContactsUpdater)init;
- (id)updatedCountsFromExisting:(id)existing result:(int64_t *)result shouldUpdateMonth:(BOOL)month;
- (void)updateContactCounts:(id)counts;
@end

@implementation SPCoreSpotlightContactsUpdater

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SPCoreSpotlightContactsUpdater sharedInstance];
  }

  v3 = sharedInstance_updater;

  return v3;
}

uint64_t __48__SPCoreSpotlightContactsUpdater_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_updater;
  sharedInstance_updater = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SPCoreSpotlightContactsUpdater)init
{
  v3.receiver = self;
  v3.super_class = SPCoreSpotlightContactsUpdater;
  return [(SPCoreSpotlightContactsUpdater *)&v3 init];
}

- (id)updatedCountsFromExisting:(id)existing result:(int64_t *)result shouldUpdateMonth:(BOOL)month
{
  monthCopy = month;
  v22[4] = *MEMORY[0x277D85DE8];
  existingCopy = existing;
  if ([existingCopy count] == 4)
  {
    v7 = [existingCopy objectAtIndexedSubscript:3];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    v9 = [existingCopy objectAtIndexedSubscript:2];
    unsignedIntegerValue2 = [v9 unsignedIntegerValue];

    v11 = [existingCopy objectAtIndexedSubscript:1];
    unsignedIntegerValue3 = [v11 unsignedIntegerValue];

    v13 = [existingCopy objectAtIndexedSubscript:0];
    unsignedIntegerValue4 = [v13 unsignedIntegerValue];

    if (monthCopy)
    {
      v15 = unsignedIntegerValue2 >> 2;
    }

    else
    {
      v15 = 0;
    }

    v22[0] = &unk_2846C96C8;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3 - ((4 * (unsignedIntegerValue3 / 7)) >> 2) + unsignedIntegerValue4];
    v22[1] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2 - v15 + unsignedIntegerValue3 / 7];
    v22[2] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15 + unsignedIntegerValue];
    v22[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)updateContactCounts:(id)counts
{
  v49 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v3 = objc_opt_new();
  [v3 setInternal:1];
  v28 = *MEMORY[0x277CC2C18];
  v4 = *MEMORY[0x277CC2C18];
  v38[0] = *MEMORY[0x277CC3208];
  v38[1] = v4;
  v26 = *MEMORY[0x277CC2C28];
  v5 = *MEMORY[0x277CC2C28];
  v39 = *MEMORY[0x277CC2E20];
  v27 = v39;
  v40 = v5;
  v7 = *MEMORY[0x277CC2C30];
  v41 = *MEMORY[0x277CC2E30];
  v6 = v41;
  v42 = v7;
  v9 = *MEMORY[0x277CC2C10];
  v43 = *MEMORY[0x277CC2E38];
  v8 = v43;
  v44 = v9;
  v11 = *MEMORY[0x277CC2C20];
  v45 = *MEMORY[0x277CC2E18];
  v10 = v45;
  v46 = v11;
  v13 = *MEMORY[0x277CC26B8];
  v47 = *MEMORY[0x277CC2E28];
  v12 = v47;
  v48 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:12];
  [v3 setFetchAttributes:v14];

  v37 = @"com.apple.MobileAddressBook";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [v3 setBundleIDs:v15];

  fetchAttributes = [v3 fetchAttributes];
  v17 = [fetchAttributes count];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@=\"*\"", v28, v27, v26, v6, v7, v8, v9, v10, v11, v12, *MEMORY[0x277CC26B0], *MEMORY[0x277CC26B0]];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v20 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v36 = countsCopy;
    _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_INFO, "3 Enter group %p", buf, 0xCu);
  }

  if (countsCopy)
  {
    dispatch_group_enter(countsCopy);
  }

  v21 = +[SPCoreSpotlightIndexer sharedInstance];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke;
  v31[3] = &unk_2789373C0;
  v34 = v17;
  v31[4] = self;
  v32 = v19;
  v22 = countsCopy;
  v33 = v22;
  v23 = v19;
  v24 = [v21 startQuery:v18 withContext:v3 handler:v31];

  if (countsCopy && !v24)
  {
    dispatch_group_leave(v22);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a6;
  if (a2 == 1)
  {
    v17 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      *buf = 134217984;
      v26 = v18;
      _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_INFO, "3 Leave group %p", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else if (!a2)
  {
    v10 = objc_opt_new();
    v11 = *(a1 + 56);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_2;
    v22[3] = &unk_278937398;
    v12 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v12;
    v13 = v10;
    v24 = v13;
    [a5 enumerateQueryResults:v11 stringCache:0 usingBlock:v22];
    v14 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 134217984;
      v26 = v15;
      _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "4 Enter group %p", buf, 0xCu);
    }

    dispatch_group_enter(*(a1 + 48));
    v16 = +[SPCoreSpotlightIndexer sharedInstance];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_17;
    v20[3] = &unk_2789348E8;
    v21 = *(a1 + 48);
    [v16 indexSearchableItems:v13 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:0 forBundleID:@"com.apple.MobileAddressBook" options:0 completionHandler:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_2(uint64_t a1, id *a2)
{
  v78[1] = *MEMORY[0x277D85DE8];
  v47 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v54 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v53 = a2[7];
  v52 = a2[8];
  v51 = a2[9];
  v50 = a2[10];
  v49 = a2[11];
  [v49 timeIntervalSinceNow];
  v10 = v9;
  v11 = v9 > 604800.0;
  v12 = objc_alloc_init(MEMORY[0x277CC34B8]);
  v46 = v4;
  v13 = [*(a1 + 32) updatedCountsFromExisting:v4 result:0 shouldUpdateMonth:v11];
  v45 = v5;
  v14 = [*(a1 + 32) updatedCountsFromExisting:v5 result:0 shouldUpdateMonth:v11];
  if ([v13 count])
  {
    v77 = *MEMORY[0x277CC2C18];
    v78[0] = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    [v12 addAttributesFromDictionary:v15];
  }

  if ([v14 count])
  {
    v75 = *MEMORY[0x277CC2E20];
    v76 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    [v12 addAttributesFromDictionary:v16];
  }

  v17 = v6;
  v18 = [*(a1 + 32) updatedCountsFromExisting:v6 result:0 shouldUpdateMonth:v10 > 604800.0];
  v48 = [*(a1 + 32) updatedCountsFromExisting:v54 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v18 count])
  {
    v73 = *MEMORY[0x277CC2C28];
    v74 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    [v12 addAttributesFromDictionary:v19];
  }

  if ([v48 count])
  {
    v71 = *MEMORY[0x277CC2E30];
    v72 = v48;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    [v12 addAttributesFromDictionary:v20];
  }

  v43 = v7;
  v21 = [*(a1 + 32) updatedCountsFromExisting:v7 result:0 shouldUpdateMonth:v10 > 604800.0];
  v42 = v8;
  v22 = [*(a1 + 32) updatedCountsFromExisting:v8 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v21 count])
  {
    v69 = *MEMORY[0x277CC2C30];
    v70 = v21;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    [v12 addAttributesFromDictionary:v23];
  }

  v40 = v14;
  v41 = v13;
  if ([v22 count])
  {
    v67 = *MEMORY[0x277CC2E38];
    v68 = v22;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    [v12 addAttributesFromDictionary:v24];
  }

  v25 = [*(a1 + 32) updatedCountsFromExisting:v53 result:0 shouldUpdateMonth:v10 > 604800.0];
  v26 = [*(a1 + 32) updatedCountsFromExisting:v52 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v25 count])
  {
    v65 = *MEMORY[0x277CC2C10];
    v66 = v25;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    [v12 addAttributesFromDictionary:v27];
  }

  v44 = v17;
  if ([v26 count])
  {
    v63 = *MEMORY[0x277CC2E18];
    v64 = v26;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    [v12 addAttributesFromDictionary:v28];
  }

  v29 = [*(a1 + 32) updatedCountsFromExisting:v51 result:0 shouldUpdateMonth:v10 > 604800.0];
  v30 = [*(a1 + 32) updatedCountsFromExisting:v50 result:0 shouldUpdateMonth:v10 > 604800.0];
  if ([v29 count])
  {
    v61 = *MEMORY[0x277CC2C20];
    v62 = v29;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    [v12 addAttributesFromDictionary:v31];
  }

  if ([v30 count])
  {
    v59 = *MEMORY[0x277CC2E28];
    v60 = v30;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    [v12 addAttributesFromDictionary:v32];
  }

  if (!v49 || v10 > 604800.0)
  {
    v33 = *(a1 + 40);
    v57 = *MEMORY[0x277CC26B8];
    v58 = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    [v12 addAttributesFromDictionary:v34];
  }

  v35 = *(a1 + 40);
  v55 = *MEMORY[0x277CC26B0];
  v56 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  [v12 addAttributesFromDictionary:v36];

  v37 = objc_alloc_init(MEMORY[0x277CC34B0]);
  [v37 setUniqueIdentifier:v47];
  [v37 setIsUpdate:1];
  [v37 setAttributeSet:v12];
  [*(a1 + 48) addObject:v37];

  v38 = *MEMORY[0x277D85DE8];
}

void __54__SPCoreSpotlightContactsUpdater_updateContactCounts___block_invoke_17(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "4 Leave group %p", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
  v4 = *MEMORY[0x277D85DE8];
}

@end