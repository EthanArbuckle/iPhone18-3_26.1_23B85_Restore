@interface SBProactiveLibraryCategoryMapProviderSource
- (BOOL)_shouldRemoveRecentsPodWithLastKnownRecentApps:(id)apps;
- (SBHLibraryCategoryMapProviderSourceDelegate)delegate;
- (SBProactiveLibraryCategoryMapProviderSource)init;
- (id)_nonHiddenBundleIdentifiersForBundleIdentifiers:(id)identifiers;
- (void)handleUpdateCategoriesNotification:(id)notification;
- (void)requestLibraryCategoryMapWithOptions:(unint64_t)options existingLibraryCategoryMap:(id)map forbiddenApplicationIdentifiers:(id)identifiers sessionId:(unint64_t)id queue:(id)queue completion:(id)completion;
@end

@implementation SBProactiveLibraryCategoryMapProviderSource

- (SBProactiveLibraryCategoryMapProviderSource)init
{
  v7.receiver = self;
  v7.super_class = SBProactiveLibraryCategoryMapProviderSource;
  v2 = [(SBProactiveLibraryCategoryMapProviderSource *)&v7 init];
  if (v2)
  {
    mEMORY[0x277CEB358] = [MEMORY[0x277CEB358] sharedInstance];
    appDirectoryClient = v2->_appDirectoryClient;
    v2->_appDirectoryClient = mEMORY[0x277CEB358];

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleUpdateCategoriesNotification_ name:*MEMORY[0x277CEB9E0] object:0 suspensionBehavior:4];
  }

  return v2;
}

- (void)requestLibraryCategoryMapWithOptions:(unint64_t)options existingLibraryCategoryMap:(id)map forbiddenApplicationIdentifiers:(id)identifiers sessionId:(unint64_t)id queue:(id)queue completion:(id)completion
{
  v89 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  identifiersCopy = identifiers;
  queueCopy = queue;
  completionCopy = completion;
  BSDispatchQueueAssert();
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v81[3] = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v80[3] = 0;
  v15 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  if ([identifiersCopy count])
  {
    v16 = MEMORY[0x277CCAC30];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke;
    v78[3] = &unk_2783BF2E8;
    v79 = identifiersCopy;
    v17 = [v16 predicateWithBlock:v78];

    v15 = v17;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (!mapCopy || (options & 1) != 0)
  {
    v19 = objc_opt_new();
  }

  else
  {
    v19 = [mapCopy mutableCopy];
  }

  v20 = v19;
  v21 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = id;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshing proactive library category source", &buf, 0xCu);
  }

  v22 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__104;
  v87 = __Block_byref_object_dispose__104;
  v88 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__104;
  v76[4] = __Block_byref_object_dispose__104;
  v77 = 0;
  v23 = MEMORY[0x277CBEB38];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:id];
  v25 = [v23 dictionaryWithObject:v24 forKey:*MEMORY[0x277D665B8]];

  sb_hasAppsPopulatedForCategoriesOtherThanProactive = [v20 sb_hasAppsPopulatedForCategoriesOtherThanProactive];
  if ((options & 0x10) != 0)
  {
    v27 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 134217984;
      idCopy4 = id;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "(%ld) We are requesting the defaults because the passed options indicated there is no cache, so we need data fast. ", v82, 0xCu);
    }
  }

  if (!((options >> 2) & 1 | sb_hasAppsPopulatedForCategoriesOtherThanProactive & 1))
  {
    v28 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(SBProactiveLibraryCategoryMapProviderSource *)id requestLibraryCategoryMapWithOptions:v28 existingLibraryCategoryMap:v29 forbiddenApplicationIdentifiers:v30 sessionId:v31 queue:v32 completion:v33, v34];
    }
  }

  if ((options >> 2) & 1 | (sb_hasAppsPopulatedForCategoriesOtherThanProactive ^ 1) & 1)
  {
    v35 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 134217984;
      idCopy4 = id;
      _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshing proactive library category source 'Categories'", v82, 0xCu);
    }

    v36 = CFAbsoluteTimeGetCurrent();
    dispatch_group_enter(v22);
    appDirectoryClient = self->_appDirectoryClient;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_31;
    v67[3] = &unk_2783BF360;
    v72 = v80;
    v74 = v36;
    v68 = queueCopy;
    p_buf = &buf;
    idCopy3 = id;
    v69 = v20;
    v70 = v15;
    v71 = v22;
    [(ATXAppDirectoryClient *)appDirectoryClient categoriesWithShouldUseDefault:(options >> 4) & 1 reply:v67];
  }

  if ((options & 2) != 0)
  {
    v38 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 134217984;
      idCopy4 = id;
      _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshing proactive library category source 'Suggestions/Recents/Hidden'", v82, 0xCu);
    }

    v39 = CFAbsoluteTimeGetCurrent();
    dispatch_group_enter(v22);
    v40 = self->_appDirectoryClient;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_37;
    v57[3] = &unk_2783BF388;
    v63 = v81;
    v65 = v39;
    v58 = queueCopy;
    v64 = v76;
    idCopy5 = id;
    v59 = v15;
    v60 = v20;
    v61 = v25;
    v62 = v22;
    [(ATXAppDirectoryClient *)v40 predictedAppsAndRecentAppsWithShouldUseDefaultCategories:(options >> 4) & 1 reply:v57];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_42;
  block[3] = &unk_2783BF3B0;
  v48 = v20;
  v49 = v25;
  v55 = Current;
  v50 = completionCopy;
  v51 = &buf;
  optionsCopy = options;
  v52 = v80;
  v53 = v81;
  idCopy6 = id;
  v41 = completionCopy;
  v42 = v25;
  v43 = v20;
  dispatch_group_notify(v22, queueCopy, block);

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(v80, 8);
  _Block_object_dispose(v81, 8);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 64) + 8) + 24) = CFAbsoluteTimeGetCurrent() - *(a1 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2;
  block[3] = &unk_2783BF338;
  v7 = *(a1 + 72);
  v13 = v6;
  v8 = *(a1 + 88);
  v18 = v7;
  v19 = v8;
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v5;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, block);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v2);
    v3 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) sb_stripCategoriesThatArentFromProactive];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_32;
    v7[3] = &unk_2783BF310;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    [v4 enumerateObjectsUsingBlock:v7];
    v5 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 80);
      *buf = 134217984;
      v11 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshed proactive library category source 'Categories'", buf, 0xCu);
    }

    v3 = v8;
  }

  dispatch_group_leave(*(a1 + 64));
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_32(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CBEB40];
  v18 = v5;
  v7 = [v5 appBundleIDs];
  v8 = [v7 filteredArrayUsingPredicate:*(a1 + 32)];
  v9 = [v6 orderedSetWithArray:v8];

  if ([v9 count])
  {
    v10 = objc_alloc(MEMORY[0x277D66220]);
    v11 = [v18 categoryID];
    v12 = [v18 localizedStringForCategoryID:{objc_msgSend(v18, "categoryID")}];
    v13 = [v10 initWithPredictionCategoryID:v11 categoryIndex:a3 localizedDisplayName:v12 localizedDisplayNameKey:0];

    [*(a1 + 40) addCategoryIdentifier:v13];
    v14 = *(a1 + 40);
    v15 = [v9 array];
    [v14 setSortedApplicationIdentifiers:v15 forCategoryIdentifier:v13];

    v16 = *(a1 + 40);
    v17 = [v13 localizedDisplayName];
    [v16 setLocalizedCategoryName:v17 forCategoryIdentifier:v13];
  }
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 72) + 8) + 24) = CFAbsoluteTimeGetCurrent() - *(a1 + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38;
  block[3] = &unk_2783BF338;
  v4 = *(a1 + 80);
  v15 = v3;
  v5 = *(a1 + 96);
  v18 = v4;
  v19 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = v3;
  dispatch_async(v6, block);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v2);
    v3 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_1();
    }
  }

  v57 = v2;
  v4 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 80);
    *buf = 134217984;
    v59 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "(%ld) Finished refreshing proactive library category source 'Suggestions/Recents/Hidden'", buf, 0xCu);
  }

  v6 = [*(a1 + 32) recentApps];
  v7 = MEMORY[0x277CBEB70];
  v56 = v6;
  v8 = [v6 filteredArrayUsingPredicate:*(a1 + 40)];
  v9 = [v7 orderedSetWithArray:v8];

  v10 = [*(a1 + 48) categoryIdentifiers];
  v11 = getRecentsCategoryIdentifier(v10);
  v54 = v11;
  if ([v9 count])
  {
    v12 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 80);
      *buf = 134218242;
      v59 = v13;
      v60 = 2112;
      v61 = v9;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "(%ld) Received recent apps: %@", buf, 0x16u);
    }

    [*(a1 + 48) sb_removeCategoryWithIdentifier:4];
    [*(a1 + 48) addCategoryIdentifier:v11];
    v14 = *(a1 + 48);
    v15 = [v9 array];
    [v14 setSortedApplicationIdentifiers:v15 forCategoryIdentifier:v11];
  }

  else
  {
    v16 = [*(a1 + 32) recentApps];
    v17 = [v16 count];

    if (!v17)
    {
      [*(a1 + 48) sb_removeCategoryWithIdentifier:4];
      v18 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 80);
        *buf = 134217984;
        v59 = v19;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "(%ld) Removing Recents Pod as we have no recent apps!", buf, 0xCu);
      }
    }

    v15 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_2();
    }
  }

  v20 = getSuggestedCategoryIdentifier(v10);
  v21 = [*(a1 + 32) predictedApps];
  v22 = MEMORY[0x277CBEB70];
  v53 = v21;
  v23 = [v21 filteredArrayUsingPredicate:*(a1 + 40)];
  v24 = [v22 orderedSetWithArray:v23];

  v25 = [v24 count];
  v26 = SBLogProactiveAppLibrary();
  v27 = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 80);
      *buf = 134218242;
      v59 = v28;
      v60 = 2112;
      v61 = v24;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "(%ld) Received predicted apps: %@", buf, 0x16u);
    }

    [*(a1 + 48) sb_removeCategoryWithIdentifier:3];
    [*(a1 + 48) addCategoryIdentifier:v20];
    v29 = *(a1 + 48);
    v30 = [v24 array];
    [v29 setSortedApplicationIdentifiers:v30 forCategoryIdentifier:v20];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_3();
  }

  v46 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  if (v46)
  {
    v47 = v46;
    v48 = [v46 BOOLValue];

    if ((v48 & 1) == 0)
    {
      v30 = [*(a1 + 48) categoryIdentifiers];
      v49 = getSuggestedCategoryIdentifier(v30);
      [*(a1 + 48) removeCategoryIdentifier:v49];
      [*(a1 + 48) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v49];

LABEL_21:
    }
  }

  v55 = v9;
  v31 = getHiddenAppsCategoryIdentifier(v10);
  v32 = [*(a1 + 32) hiddenAppsCategory];
  v33 = [v32 appBundleIDs];
  v34 = MEMORY[0x277CBEB70];
  v35 = [v33 filteredArrayUsingPredicate:*(a1 + 40)];
  v36 = [v34 orderedSetWithArray:v35];

  v37 = [MEMORY[0x277CEBEA8] sharedManager];
  LOBYTE(v35) = [v37 isAppHidingAvailable];

  if (v35)
  {
    v38 = [v36 count];
    v39 = SBLogProactiveAppLibrary();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      if (v40)
      {
        v41 = *(a1 + 80);
        *buf = 134218242;
        v59 = v41;
        v60 = 2112;
        v61 = v36;
        _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "(%ld) Received hidden apps: %@", buf, 0x16u);
      }

      [*(a1 + 48) sb_removeCategoryWithIdentifier:7];
      [*(a1 + 48) addCategoryIdentifier:v31];
      v42 = *(a1 + 48);
      v43 = [v36 array];
      [v42 setSortedApplicationIdentifiers:v43 forCategoryIdentifier:v31];
    }

    else
    {
      if (v40)
      {
        v50 = *(a1 + 80);
        *buf = 134217984;
        v59 = v50;
        _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "(%ld) No hidden apps received!", buf, 0xCu);
      }

      v51 = [*(a1 + 48) categoryIdentifiers];
      v52 = getHiddenAppsCategoryIdentifier(v51);
      [*(a1 + 48) removeCategoryIdentifier:v52];
      [*(a1 + 48) addCategoryIdentifier:v52];
      [*(a1 + 48) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v52];
    }
  }

  else
  {
    v44 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 80);
      *buf = 134217984;
      v59 = v45;
      _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "(%ld) Removing hidden pod because app protection says hiding isn't available", buf, 0xCu);
    }

    [*(a1 + 48) sb_removeCategoryWithIdentifier:7];
  }

  [*(a1 + 56) setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x277D665B0]];
  dispatch_group_leave(*(a1 + 64));
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_42(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = [*(a1 + 32) categoryIdentifiers];
  v4 = getRecentsCategoryIdentifier(v3);
  v5 = getSuggestedCategoryIdentifier(v3);
  v6 = getHiddenAppsCategoryIdentifier(v3);
  v7 = [*(a1 + 32) categoryIdentifiers];
  if ([v7 containsObject:v5])
  {
    v8 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v5];
    v8 = [v9 count] != 0;
  }

  v10 = [*(a1 + 32) categoryIdentifiers];
  if ([v10 containsObject:v4])
  {
    v11 = 1;
  }

  else
  {
    v12 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v4];
    v11 = [v12 count] != 0;
  }

  v13 = [*(a1 + 32) categoryIdentifiers];
  v56 = v6;
  if ([v13 containsObject:v6])
  {
    v14 = 1;
  }

  else
  {
    v15 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v6];
    v14 = [v15 count] != 0;
  }

  v16 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 80);
    *buf = 134218752;
    v59 = v17;
    v60 = 1024;
    *v61 = v8;
    *&v61[4] = 1024;
    *&v61[6] = v11;
    v62 = 1024;
    v63 = v14;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "(%ld) Finished refreshing proactive library category source; hasPredictedApps: %{BOOL}d; hasRecentApps: %{BOOL}d hasHiddenApps: %{BOOL}d", buf, 0x1Eu);
  }

  if (v8 || v11 || v14)
  {
    v18 = [*(a1 + 32) categoryIdentifiers];
    v19 = [v18 mutableCopy];

    v57[0] = v4;
    v57[1] = v5;
    v57[2] = v56;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
    [v19 removeObjectsInArray:v20];

    if (v11)
    {
      [v19 insertObject:v4 atIndex:0];
      v21 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v19;
        v22 = v3;
        v23 = v5;
        v24 = v2;
        v25 = *(a1 + 80);
        v26 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v4];
        *buf = 134218242;
        v59 = v25;
        v2 = v24;
        v5 = v23;
        v3 = v22;
        v19 = v55;
        v60 = 2112;
        *v61 = v26;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "(%ld) Fetched Recent apps: %@", buf, 0x16u);
      }

      if (!v8)
      {
LABEL_17:
        v27 = SBLogProactiveAppLibrary();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 80);
          *buf = 134217984;
          v59 = v28;
          _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "(%ld) No predicted apps...", buf, 0xCu);
        }

        [*(a1 + 32) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v5];
LABEL_26:
        v34 = [MEMORY[0x277CEBEA8] sharedManager];
        v35 = [v34 isAppHidingAvailable];

        if (v35)
        {
          [v19 addObject:v56];
          v36 = SBLogProactiveAppLibrary();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v37)
            {
              v38 = *(a1 + 80);
              v39 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v56];
              *buf = 134218242;
              v59 = v38;
              v60 = 2112;
              *v61 = v39;
              _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "(%ld) Fetched Hidden apps: %@", buf, 0x16u);
            }
          }

          else
          {
            if (v37)
            {
              v40 = *(a1 + 80);
              *buf = 134217984;
              v59 = v40;
              _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "(%ld) No Hidden apps...", buf, 0xCu);
            }

            [*(a1 + 32) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v56];
          }
        }

        [*(a1 + 32) setCategoryIdentifiers:v19];

        goto LABEL_35;
      }
    }

    else
    {
      v29 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 80);
        *buf = 134217984;
        v59 = v30;
        _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "(%ld) No recent apps...", buf, 0xCu);
      }

      [*(a1 + 32) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v4];
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    [v19 insertObject:v5 atIndex:0];
    v31 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 80);
      v33 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v5];
      *buf = 134218242;
      v59 = v32;
      v60 = 2112;
      *v61 = v33;
      _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "(%ld) Fetched Predicted apps: %@", buf, 0x16u);
    }

    goto LABEL_26;
  }

LABEL_35:
  [*(a1 + 32) setMetadata:*(a1 + 40)];
  Current = CFAbsoluteTimeGetCurrent();
  v42 = *(a1 + 88);
  v43 = *(a1 + 48);
  if (v2)
  {
    (*(v43 + 16))(*(a1 + 48), 0, v2);
    v44 = v56;
  }

  else
  {
    v45 = [*(a1 + 32) copy];
    (*(v43 + 16))(v43, v45, 0);

    v46 = *(a1 + 96);
    v44 = v56;
    if ((v46 & 4) != 0)
    {
      v47 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 80);
        v49 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 134218240;
        v59 = v48;
        v60 = 2048;
        *v61 = v49;
        _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEFAULT, "(%ld) Query response time for proactive library category source 'Categories' time: %f seconds ", buf, 0x16u);
      }

      v46 = *(a1 + 96);
    }

    if ((v46 & 2) != 0)
    {
      v50 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = *(a1 + 80);
        v52 = *(*(*(a1 + 72) + 8) + 24);
        *buf = 134218240;
        v59 = v51;
        v60 = 2048;
        *v61 = v52;
        _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "(%ld) Query response time for proactive library category source 'Suggestions/Recents' time: %f seconds", buf, 0x16u);
      }
    }
  }

  v53 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = *(a1 + 80);
    *buf = 134218240;
    v59 = v54;
    v60 = 2048;
    *v61 = Current - v42;
    _os_log_impl(&dword_21ED4E000, v53, OS_LOG_TYPE_DEFAULT, "(%ld) Total query response time for proactive library queries time: %f seconds", buf, 0x16u);
  }
}

- (id)_nonHiddenBundleIdentifiersForBundleIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:{v10, v13}];
        if (([v11 isHidden] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_shouldRemoveRecentsPodWithLastKnownRecentApps:(id)apps
{
  v3 = [(SBProactiveLibraryCategoryMapProviderSource *)self _nonHiddenBundleIdentifiersForBundleIdentifiers:apps];
  v4 = [v3 count] == 0;

  return v4;
}

- (void)handleUpdateCategoriesNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Proactive is requesting a refresh all because of notification: %@", &v7, 0xCu);
  }

  delegate = [(SBProactiveLibraryCategoryMapProviderSource *)self delegate];
  [delegate requestLibraryCategoryMapUpdateWithRefreshOptions:6 source:self];
}

- (SBHLibraryCategoryMapProviderSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v0, v1, "(%ld) Error refreshing proactive library category source 'Categories': %@");
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_1()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v0, v1, "(%ld) Error refreshing proactive library category source 'Suggestions/Recents/Hidden': %@");
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_2()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "(%ld) No recent apps received!", v2, v3, v4, v5, v6);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_3()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "(%ld) No predicted apps received!", v2, v3, v4, v5, v6);
}

@end