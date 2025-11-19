@interface ICQUICoreSpotlightQueryHelper
+ (id)defaultFetchedAttributes;
+ (id)filterItems:(id)a3 usingTrashedItems:(id)a4;
+ (id)thresholdsForLargeFiles;
+ (id)totalSizeStringForItems:(id)a3;
+ (void)deleteiCloudDriveItem:(id)a3;
+ (void)deleteiCloudDriveItems:(id)a3;
+ (void)fetchTrashedItemsWithResults:(id)a3 minSizeInMegabytes:(id)a4 completion:(id)a5;
+ (void)fetchiCloudDriveItemsUsingThresholds:(id)a3 shouldCheckTrash:(BOOL)a4 completion:(id)a5;
+ (void)processFoundResults:(id)a3 minSizeInMegabytes:(id)a4 shouldCheckTrash:(BOOL)a5 completion:(id)a6;
+ (void)updateThresholdsForLargeFilesWithDictionary:(id)a3;
@end

@implementation ICQUICoreSpotlightQueryHelper

+ (void)updateThresholdsForLargeFilesWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [a1 thresholdsForLargeFiles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__ICQUICoreSpotlightQueryHelper_updateThresholdsForLargeFilesWithDictionary___block_invoke;
  v7[3] = &unk_27A65B2D0;
  v8 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
}

+ (id)thresholdsForLargeFiles
{
  if (thresholdsForLargeFiles_onceToken != -1)
  {
    +[ICQUICoreSpotlightQueryHelper thresholdsForLargeFiles];
  }

  v3 = thresholdsForLargeFiles_thresholds;

  return v3;
}

void __56__ICQUICoreSpotlightQueryHelper_thresholdsForLargeFiles__block_invoke()
{
  v0 = objc_opt_new();
  v1 = thresholdsForLargeFiles_thresholds;
  thresholdsForLargeFiles_thresholds = v0;
}

+ (id)defaultFetchedAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC3350];
  v7[0] = *MEMORY[0x277CC2A70];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [MEMORY[0x277CC63E8] fp_queryFetchAttributes];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (void)fetchiCloudDriveItemsUsingThresholds:(id)a3 shouldCheckTrash:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [a3 objectForKeyedSubscript:*MEMORY[0x277CFB110]];
  v10 = v9;
  v11 = &unk_288479C00;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = objc_alloc(MEMORY[0x277CCAB10]);
  [v12 doubleValue];
  v15 = v14;

  v16 = [MEMORY[0x277CCAE18] bytes];
  v17 = [v13 initWithDoubleValue:v16 unit:v15];

  v18 = MEMORY[0x277CCABB0];
  v19 = [MEMORY[0x277CCAE18] megabytes];
  v20 = [v17 measurementByConvertingToUnit:v19];
  [v20 doubleValue];
  v21 = [v18 numberWithDouble:?];

  v22 = [a1 queryForMinimumSizeInMegabytes:v21];
  v23 = objc_alloc_init(MEMORY[0x277CC3508]);
  v24 = [a1 defaultFetchedAttributes];
  [v23 setFetchAttributes:v24];

  [v23 setLowPriority:0];
  v25 = [objc_alloc(MEMORY[0x277CC3500]) initWithQueryString:v22 context:v23];
  v26 = objc_alloc_init(MEMORY[0x277D7F3C8]);
  v27 = objc_opt_new();
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke;
  v46[3] = &unk_27A65B2F8;
  v28 = v26;
  v47 = v28;
  v29 = v27;
  v48 = v29;
  [v25 setFoundItemsHandler:v46];
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_2;
  v38 = &unk_27A65B348;
  v39 = v25;
  v40 = v28;
  v43 = v8;
  v44 = a1;
  v41 = v29;
  v42 = v21;
  v45 = a4;
  v30 = v21;
  v31 = v29;
  v32 = v28;
  v33 = v25;
  v34 = v8;
  [v33 setCompletionHandler:&v35];
  [v33 start];
}

void __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [v3 count];
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Found %ld iCloud Drive items", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_20;
  v7[3] = &unk_27A65A708;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v5 synchronized:v7];
}

void __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_2_cold_1(v3, v4);
  }

  if (v3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else if ([*(a1 + 32) foundItemCount])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__2;
    v24 = __Block_byref_object_dispose__2;
    v25 = 0;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_26;
    v17 = &unk_27A65B320;
    v19 = &v20;
    v5 = *(a1 + 40);
    v18 = *(a1 + 48);
    [v5 synchronized:&v14];
    v6 = *(a1 + 72);
    v7 = v21[5];
    v8 = *(a1 + 80);
    v9 = *(a1 + 56);
    v10 = [*(a1 + 64) copy];
    [v6 processFoundResults:v7 minSizeInMegabytes:v9 shouldCheckTrash:v8 completion:v10];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_2_cold_2(v11);
    }

    v12 = *(a1 + 64);
    v13 = ICQCreateErrorWithMessage();
    (*(v12 + 16))(v12, 0, 0, v13);
  }
}

void __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)fetchTrashedItemsWithResults:(id)a3 minSizeInMegabytes:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CC63E8];
  v10 = a3;
  v11 = [v9 alloc];
  v12 = [v10 firstObject];

  v13 = [v11 initWithSearchableItem:v12];
  v14 = [v13 providerDomainID];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CC6400]);
    v16 = [v13 providerDomainID];
    v17 = [v15 initWithProviderDomainID:v16 itemIdentifier:*MEMORY[0x277CC6358]];

    v18 = [MEMORY[0x277CC6408] defaultManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke;
    v20[3] = &unk_27A65B3C0;
    v22 = v8;
    v21 = v7;
    [v18 fetchURLForItemID:v17 completionHandler:v20];
  }

  else
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ICQUICoreSpotlightQueryHelper fetchTrashedItemsWithResults:v19 minSizeInMegabytes:? completion:?];
    }

    (*(v8 + 2))(v8, 0);
  }
}

void __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = *MEMORY[0x277CBE868];
    v42[0] = *MEMORY[0x277CBE8E8];
    v42[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v40 = 0;
    v9 = [v6 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v8 options:1 error:&v40];
    v10 = v40;

    if (v10)
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_cold_1(v10);
      }
    }

    v24 = v10;
    v25 = v5;
    v12 = objc_opt_new();
    v13 = objc_alloc_init(MEMORY[0x277D7F3C8]);
    v14 = dispatch_group_create();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          dispatch_group_enter(v14);
          v20 = [MEMORY[0x277CC6408] defaultManager];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_31;
          v31[3] = &unk_27A65B370;
          v32 = *(a1 + 32);
          v33 = v13;
          v34 = v12;
          v35 = v14;
          [v20 fetchItemForURL:v19 completionHandler:v31];
        }

        v16 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v16);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_2;
    block[3] = &unk_27A65B398;
    v21 = *(a1 + 40);
    v29 = v12;
    v30 = v21;
    v22 = v12;
    dispatch_group_notify(v14, MEMORY[0x277D85CD0], block);

    v5 = v25;
  }

  else
  {
    v23 = _ICQGetLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_cold_2(v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_31_cold_1(v6);
    }
  }

  if (v5)
  {
    if (([v5 isFolder] & 1) == 0)
    {
      v8 = [v5 documentSize];
      [v8 doubleValue];
      v10 = v9;
      [*(a1 + 32) doubleValue];
      v12 = v11;

      if (v10 > v12)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_32;
        v14[3] = &unk_27A65A708;
        v13 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16 = v5;
        [v13 synchronized:v14];
      }
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_32(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [v1 itemIdentifier];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

void __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

+ (void)processFoundResults:(id)a3 minSizeInMegabytes:(id)a4 shouldCheckTrash:(BOOL)a5 completion:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [v10 count];
    _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Found total of %ld iCloud Drive items", buf, 0xCu);
  }

  if (a5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __100__ICQUICoreSpotlightQueryHelper_processFoundResults_minSizeInMegabytes_shouldCheckTrash_completion___block_invoke;
    v15[3] = &unk_27A65B3E8;
    v19 = a1;
    v16 = v10;
    v18 = v12;
    v17 = v11;
    [a1 fetchTrashedItemsWithResults:v16 minSizeInMegabytes:v17 completion:v15];

    v14 = v16;
  }

  else
  {
    v14 = [a1 filterItems:v10 usingTrashedItems:0];
    (*(v12 + 2))(v12, v11, v14, 0);
  }
}

void __100__ICQUICoreSpotlightQueryHelper_processFoundResults_minSizeInMegabytes_shouldCheckTrash_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) filterItems:*(a1 + 32) usingTrashedItems:a2];
  (*(*(a1 + 48) + 16))();
}

+ (id)filterItems:(id)a3 usingTrashedItems:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = objc_alloc(MEMORY[0x277CC63E8]);
        v15 = [v14 initWithSearchableItem:{v13, v22}];
        if ([v15 isShared])
        {
          v16 = [v15 isSharedByCurrentUser] ^ 1;
          if (!v15)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v16 = 0;
          if (!v15)
          {
            goto LABEL_16;
          }
        }

        if ((([v15 isFolder] | v16) & 1) == 0)
        {
          v17 = [v15 itemIdentifier];
          v18 = [v6 objectForKey:v17];

          if (v18)
          {
            v19 = _ICQGetLogSystem();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [(ICQUICoreSpotlightQueryHelper *)v26 filterItems:v15 usingTrashedItems:&v27, v19];
            }
          }

          else
          {
            [v7 addObject:v15];
          }
        }

LABEL_16:

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = [v7 copy];

  return v20;
}

+ (void)deleteiCloudDriveItems:(id)a3
{
  v3 = MEMORY[0x277CC6408];
  v4 = a3;
  v6 = [v3 defaultManager];
  v5 = [objc_alloc(MEMORY[0x277CC6470]) initWithItems:v4];

  [v6 scheduleAction:v5];
}

+ (void)deleteiCloudDriveItem:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [a1 deleteiCloudDriveItems:{v6, v7, v8}];
}

+ (id)totalSizeStringForItems:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v31 + 1) + 8 * i) documentSize];
        [v9 doubleValue];
        v7 = v7 + v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v11 = objc_alloc(MEMORY[0x277CCAB10]);
  v12 = [MEMORY[0x277CCAE18] bytes];
  v13 = [v11 initWithDoubleValue:v12 unit:v7];

  v14 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v14 setUnitStyle:1];
  v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v15 setMaximumFractionDigits:0];
  v16 = MEMORY[0x277CCABB0];
  v17 = [MEMORY[0x277CCAE18] megabytes];
  v18 = [v13 measurementByConvertingToUnit:v17];
  [v18 doubleValue];
  v19 = [v16 numberWithDouble:?];

  [v19 doubleValue];
  if (v20 >= 1000.0)
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = [MEMORY[0x277CCAE18] gigabytes];
    v27 = [v13 measurementByConvertingToUnit:v26];
    [v27 doubleValue];
    v21 = [v25 numberWithDouble:?];

    [v15 setMaximumFractionDigits:1];
    v23 = [v15 stringFromNumber:v21];
    v28 = [MEMORY[0x277CCAE18] gigabytes];
    v29 = [v14 stringFromUnit:v28];

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v23, v29];
  }

  else
  {
    v21 = [v15 stringFromNumber:v19];
    v22 = [MEMORY[0x277CCAE18] megabytes];
    v23 = [v14 stringFromUnit:v22];

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v21, v23];
  }

  return v24;
}

void __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 136315394;
  v5 = "+[ICQUICoreSpotlightQueryHelper fetchiCloudDriveItemsUsingThresholds:shouldCheckTrash:completion:]_block_invoke_2";
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_275623000, a2, OS_LOG_TYPE_DEBUG, "%s completed with error: %@", &v4, 0x16u);
}

void __98__ICQUICoreSpotlightQueryHelper_fetchiCloudDriveItemsUsingThresholds_shouldCheckTrash_completion___block_invoke_2_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[ICQUICoreSpotlightQueryHelper fetchiCloudDriveItemsUsingThresholds:shouldCheckTrash:completion:]_block_invoke";
  _os_log_debug_impl(&dword_275623000, log, OS_LOG_TYPE_DEBUG, "%s completed with 0 item count. ", &v1, 0xCu);
}

void __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_2(&dword_275623000, v2, v3, "Can't read the trash: %@", v4, v5, v6, v7, 2u);
}

void __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_2(&dword_275623000, v2, v3, "There is no trash directory for this user. Error: %@", v4, v5, v6, v7, 2u);
}

void __92__ICQUICoreSpotlightQueryHelper_fetchTrashedItemsWithResults_minSizeInMegabytes_completion___block_invoke_31_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_2(&dword_275623000, v2, v3, "Can't read trash contents: %@", v4, v5, v6, v7, 2u);
}

+ (void)filterItems:(void *)a3 usingTrashedItems:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 displayName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_275623000, a4, OS_LOG_TYPE_DEBUG, "This item was already deleted. Skipping %@", a1, 0xCu);
}

@end