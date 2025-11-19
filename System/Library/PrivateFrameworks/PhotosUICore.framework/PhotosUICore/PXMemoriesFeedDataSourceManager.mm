@interface PXMemoriesFeedDataSourceManager
- (PXMemoriesFeedDataSourceManager)initWithPhotoLibrary:(id)a3;
- (id)objectReferenceForMemory:(id)a3;
- (unint64_t)_indexOfEntry:(id)a3 inSortedEntries:(id)a4 options:(unint64_t)a5;
- (unint64_t)_indexOfEntryForMemory:(id)a3 inSortedEntries:(id)a4 options:(unint64_t)a5;
- (void)_generateAdditionalEntriesWithOldDataSource:(id)a3 startingIndex:(unint64_t)a4 sync:(BOOL)a5;
- (void)_handleFinishedGeneratingAdditionalEntriesWithNewDataSource:(id)a3 changeDetails:(id)a4 firstUngroupedMemoryIndex:(unint64_t)a5;
- (void)generateAdditionalEntriesIfPossible;
- (void)generateAdditionalEntriesWithOldDataSource:(id)a3 startingIndex:(unint64_t)a4 sync:(BOOL)a5;
- (void)handleChangedKeyAssetsForMemories:(id)a3;
- (void)handleIncrementalFetchResultChange:(id)a3 updatedFetchResultsForMemoriesWithChangedKeyAssets:(id)a4;
- (void)handleNonIncrementalFetchResultChange:(id)a3;
- (void)reloadMemories:(BOOL)a3;
- (void)startGeneratingMemories;
@end

@implementation PXMemoriesFeedDataSourceManager

- (id)objectReferenceForMemory:(id)a3
{
  v4 = a3;
  v5 = [(PXSectionedDataSourceManager *)self dataSource];
  v6 = [v5 entries];
  v7 = [(PXMemoriesFeedDataSourceManager *)self _indexOfEntryForMemory:v4 inSortedEntries:v6 options:256];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [v6 objectAtIndex:v7];
    v11 = [v10 indexOfMemory:v4];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v12 = v11;
      v14[0] = [v5 identifier];
      v14[1] = v9;
      v14[2] = v12;
      v14[3] = 0x7FFFFFFFFFFFFFFFLL;
      v8 = [v5 objectReferenceAtIndexPath:v14];
    }
  }

  return v8;
}

- (unint64_t)_indexOfEntry:(id)a3 inSortedEntries:(id)a4 options:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), a5, &__block_literal_global_250}];

  return v9;
}

- (unint64_t)_indexOfEntryForMemory:(id)a3 inSortedEntries:(id)a4 options:(unint64_t)a5
{
  v9 = a4;
  v10 = a3;
  v11 = [v9 count];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__PXMemoriesFeedDataSourceManager__indexOfEntryForMemory_inSortedEntries_options___block_invoke_2;
  v14[3] = &unk_1E7730680;
  v15 = &__block_literal_global_32436;
  v16 = a2;
  v14[4] = self;
  v12 = [v9 indexOfObject:v10 inSortedRange:0 options:v11 usingComparator:{a5, v14}];

  return v12;
}

uint64_t __82__PXMemoriesFeedDataSourceManager__indexOfEntryForMemory_inSortedEntries_options___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 compare:v6];
LABEL_6:
      v8 = v7;
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = (*(a1[5] + 16))();
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a1[6] object:a1[4] file:@"PXMemoriesFeedDataSourceManager.m" lineNumber:527 description:@"Unexpected class for comparison"];

    abort();
  }

  v8 = -(*(a1[5] + 16))();
LABEL_9:

  return v8;
}

uint64_t __82__PXMemoriesFeedDataSourceManager__indexOfEntryForMemory_inSortedEntries_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 startDate];
  if ([v5 isEqualToDate:v6])
  {

LABEL_4:
    v9 = 0;
    goto LABEL_5;
  }

  v7 = [v4 endDate];
  v8 = [v5 isEqualToDate:v7];

  if (v8)
  {
    goto LABEL_4;
  }

  v11 = [v4 startDate];
  v12 = [v5 earlierDate:v11];

  if (v12 == v5)
  {
    v9 = 1;
  }

  else
  {
    v13 = [v4 endDate];
    v14 = [v5 laterDate:v13];

    if (v14 == v5)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_5:

  return v9;
}

- (void)handleChangedKeyAssetsForMemories:(id)a3
{
  v4 = a3;
  v5 = [(PXSectionedDataSourceManager *)self dataSource];
  v19 = [v5 entries];

  v6 = [v19 mutableCopy];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__PXMemoriesFeedDataSourceManager_handleChangedKeyAssetsForMemories___block_invoke;
  v22[3] = &unk_1E7730638;
  v22[4] = self;
  v23 = v6;
  v24 = v7;
  v8 = v7;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v22];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__PXMemoriesFeedDataSourceManager_handleChangedKeyAssetsForMemories___block_invoke_2;
  v20[3] = &unk_1E774C160;
  v21 = v10;
  v11 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v20];
  v12 = [[PXMemoriesFeedDataSource alloc] initWithEntries:v9];
  v13 = [off_1E77218B0 alloc];
  v14 = [(PXSectionedDataSourceManager *)self dataSource];
  v15 = [v14 identifier];
  v16 = [(PXMemoriesFeedDataSource *)v12 identifier];
  v17 = [off_1E7721450 changeDetailsWithNoChanges];
  v18 = [v13 initWithFromDataSourceIdentifier:v15 toDataSourceIdentifier:v16 sectionChanges:v17 itemChangeDetailsBySection:v11 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)self setDataSource:v12 changeDetails:v18];
}

void __69__PXMemoriesFeedDataSourceManager_handleChangedKeyAssetsForMemories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _indexOfEntryForMemory:v20 inSortedEntries:*(a1 + 40) options:256];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [*(a1 + 40) objectAtIndexedSubscript:v6];
    v9 = [v8 indexOfMemory:v20];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      v11 = [v8 memories];
      v12 = [v11 objectAtIndexedSubscript:v10];
      v13 = [v12 memoryInfoWithUpdatedKeyAssetFetchResult:v5];

      v14 = [v8 entryByReplacingMemoryInfoAtIndex:v10 withMemoryInfo:v13];
      [*(a1 + 40) replaceObjectAtIndex:v7 withObject:v14];
      v15 = *(a1 + 48);
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      v17 = [v15 objectForKeyedSubscript:v16];

      if (!v17)
      {
        v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
        v18 = *(a1 + 48);
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
        [v18 setObject:v17 forKeyedSubscript:v19];
      }

      [v17 addIndex:v10];
    }
  }
}

void __69__PXMemoriesFeedDataSourceManager_handleChangedKeyAssetsForMemories___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (void)handleNonIncrementalFetchResultChange:(id)a3
{
  v4 = [a3 fetchResultAfterChanges];
  v5 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];

  if (v4 != v5)
  {
    v6 = PLMemoriesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "Handling non-incremental memories feed update", v8, 2u);
    }

    [(PXMemoriesFeedDataSourceManagerBase *)self setMemoriesFetchResult:v4];
    v7 = +[(PXSectionedDataSource *)PXMemoriesFeedDataSource];
    [(PXMemoriesFeedDataSourceManager *)self generateAdditionalEntriesWithOldDataSource:v7 startingIndex:0 sync:0];
  }
}

- (void)handleIncrementalFetchResultChange:(id)a3 updatedFetchResultsForMemoriesWithChangedKeyAssets:(id)a4
{
  v7 = a3;
  v8 = a4;
  privateWorkQueue = self->_privateWorkQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke;
  v12[3] = &unk_1E774A768;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(privateWorkQueue, v12);
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke(uint64_t a1)
{
  v164 = *MEMORY[0x1E69E9840];
  v151 = 0;
  v152 = &v151;
  v153 = 0x3032000000;
  v154 = __Block_byref_object_copy__32459;
  v155 = __Block_byref_object_dispose__32460;
  v156 = 0;
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x2020000000;
  v150[3] = 0;
  v144 = 0;
  v145 = &v144;
  v146 = 0x3032000000;
  v147 = __Block_byref_object_copy__32459;
  v148 = __Block_byref_object_dispose__32460;
  v149 = 0;
  v138 = 0;
  v139 = &v138;
  v140 = 0x3032000000;
  v141 = __Block_byref_object_copy__32459;
  v142 = __Block_byref_object_dispose__32460;
  v143 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_198;
  block[3] = &unk_1E77304D8;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v133 = &v151;
  v3 = v2;
  v75 = a1;
  v137 = *(a1 + 56);
  v132 = v3;
  v134 = v150;
  v135 = &v144;
  v136 = &v138;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v4 = PLMemoriesGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "Handling incremental update to memories feed data", buf, 2u);
  }

  *buf = 0;
  v128 = buf;
  v129 = 0x2020000000;
  v5 = [v145[5] count];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    v6 = 0;
  }

  v130 = v6;
  v71 = [v152[5] removedObjects];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9 = PLMemoriesGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v71 count];
    LODWORD(v161) = 134217984;
    *(&v161 + 4) = v10;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Removing %lu memories from the feed.", &v161, 0xCu);
  }

  v11 = [*(a1 + 32) firstUngroupedMemoryIndex];
  *&v161 = 0;
  *(&v161 + 1) = &v161;
  v162 = 0x2020000000;
  v163 = 0;
  v12 = [v152[5] removedIndexes];
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_200;
  v117[3] = &unk_1E7730500;
  v13 = *(v75 + 32);
  v120 = &v161;
  v117[4] = v13;
  v121 = &v151;
  v122 = &v144;
  v14 = *(v75 + 56);
  v125 = v11;
  v126 = v14;
  v15 = v7;
  v118 = v15;
  v123 = &v138;
  v124 = buf;
  v83 = v8;
  v119 = v83;
  [v12 enumerateIndexesUsingBlock:v117];
  v70 = v11;

  v69 = *(*(&v161 + 1) + 24);
  v16 = [v15 allKeys];
  v17 = [v16 sortedArrayUsingSelector:sel_compare_];

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v113 objects:v160 count:16];
  if (v18)
  {
    v19 = *v114;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v114 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [*(*(&v113 + 1) + 8 * i) unsignedIntegerValue];
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_211;
        v112[3] = &__block_descriptor_40_e12_B24__0Q8_B16l;
        v112[4] = v21;
        v22 = [v83 indexesPassingTest:v112];
        v23 = [v22 count];
        v24 = v21 - v23;
        if (v21 >= v23)
        {
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          v26 = [v15 objectForKeyedSubscript:v25];
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
          [v15 setObject:v26 forKeyedSubscript:v27];

          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          [v15 setObject:0 forKeyedSubscript:v28];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v113 objects:v160 count:16];
    }

    while (v18);
  }

  [v139[5] removeObjectsAtIndexes:v83];
  v74 = [v152[5] insertedObjects];
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = PLMemoriesGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v74 count];
    *v158 = 134217984;
    v159 = v31;
    _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEFAULT, "Inserting %lu memories into the feed.", v158, 0xCu);
  }

  v32 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_213;
  v105[3] = &unk_1E7730570;
  v33 = *(v75 + 32);
  v109 = &v138;
  v105[4] = v33;
  v72 = v32;
  v106 = v72;
  v34 = v29;
  v111 = *(v75 + 56);
  v73 = v34;
  v107 = v34;
  v110 = buf;
  v81 = v15;
  v108 = v81;
  [v74 enumerateObjectsWithOptions:2 usingBlock:v105];
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_230;
  v101[3] = &unk_1E7730598;
  v101[4] = *(v75 + 32);
  v36 = *(v75 + 56);
  v103 = &v138;
  v104 = v36;
  v80 = v35;
  v102 = v80;
  [v73 enumerateKeysAndObjectsUsingBlock:v101];
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v39 = [v152[5] changedIndexes];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_3;
  v96[3] = &unk_1E77305C0;
  v40 = *(v75 + 32);
  v99 = &v151;
  v96[4] = v40;
  v100 = &v138;
  v79 = v37;
  v97 = v79;
  v76 = v38;
  v98 = v76;
  [v39 enumerateIndexesUsingBlock:v96];

  v41 = *(v75 + 48);
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_4;
  v95[3] = &unk_1E77305E8;
  v95[4] = *(v75 + 32);
  v95[5] = &v138;
  [v41 enumerateKeysAndObjectsUsingBlock:v95];
  v82 = [MEMORY[0x1E695DFA8] set];
  v42 = [v81 allKeys];
  [v82 addObjectsFromArray:v42];

  v43 = [v80 allKeys];
  [v82 addObjectsFromArray:v43];

  v44 = [MEMORY[0x1E695DFA8] set];
  v45 = [v79 allKeys];
  [v44 addObjectsFromArray:v45];

  [v44 unionSet:v82];
  if (*(v128 + 3) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v44 addObject:v46];
  }

  v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v94 = 0u;
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v77 = v44;
  v48 = [v77 countByEnumeratingWithState:&v91 objects:v157 count:16];
  if (v48)
  {
    v49 = *v92;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v92 != v49)
        {
          objc_enumerationMutation(v77);
        }

        v51 = *(*(&v91 + 1) + 8 * j);
        v52 = [off_1E7721450 alloc];
        v53 = [v81 objectForKeyedSubscript:v51];
        v54 = [v80 objectForKeyedSubscript:v51];
        v55 = [v79 objectForKeyedSubscript:v51];
        v56 = [v52 initWithIncrementalChangeDetailsRemovedIndexes:v53 insertedIndexes:v54 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v55];

        [v47 setObject:v56 forKeyedSubscript:v51];
        if ([v82 containsObject:v51])
        {
          [v76 addIndex:{objc_msgSend(v51, "unsignedIntegerValue")}];
        }
      }

      v48 = [v77 countByEnumeratingWithState:&v91 objects:v157 count:16];
    }

    while (v48);
  }

  v57 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v83 insertedIndexes:v72 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v76];
  v58 = [v74 count];
  v59 = [PXMemoriesFeedDataSource alloc];
  v60 = [(PXMemoriesFeedDataSource *)v59 initWithEntries:v139[5]];
  v61 = [off_1E77218B0 alloc];
  v62 = [*(v75 + 32) dataSource];
  v63 = [v61 initWithFromDataSourceIdentifier:objc_msgSend(v62 toDataSourceIdentifier:"identifier") sectionChanges:-[PXMemoriesFeedDataSource identifier](v60 itemChangeDetailsBySection:"identifier") subitemChangeDetailsByItemBySection:{v57, v47, 0}];

  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_5;
  v84[3] = &unk_1E7730610;
  v64 = *(v75 + 32);
  v65 = *(v75 + 56);
  v88 = &v151;
  v89 = v65;
  v90 = v70 - v69 + v58;
  v84[4] = v64;
  v85 = v60;
  v86 = v63;
  v87 = v150;
  v66 = v63;
  v67 = v60;
  v68 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v84);

  _Block_object_dispose(&v161, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v138, 8);
  _Block_object_dispose(&v144, 8);

  _Block_object_dispose(v150, 8);
  _Block_object_dispose(&v151, 8);
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_198(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) memoriesFetchResult];
  v3 = [*(a1 + 40) changeDetailsForFetchResult:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (!v6)
  {
    PXAssertGetLog();
  }

  v7 = [v6 fetchResultAfterChanges];

  if (!v7)
  {
    PXAssertGetLog();
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 160) + 1;
  *(v8 + 160) = v9;
  *(*(*(a1 + 56) + 8) + 24) = v9;
  v10 = [*(a1 + 32) dataSource];
  v11 = [v10 entries];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(*(a1 + 64) + 8) + 40) mutableCopy];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_200(uint64_t a1, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) > a2)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v4 = [*(*(*(a1 + 64) + 8) + 40) fetchResultBeforeChanges];
    v5 = [v4 objectAtIndexedSubscript:a2];

    v6 = [*(a1 + 32) _indexOfEntryForMemory:v5 inSortedEntries:*(*(*(a1 + 72) + 8) + 40) options:256];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:*(a1 + 104) object:*(a1 + 32) file:@"PXMemoriesFeedDataSourceManager.m" lineNumber:207 description:@"Unable to find entry for removed memory"];
    }

    v7 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndex:v6];
    v8 = [v7 indexOfMemory:v5];
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v12 = *(a1 + 40);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }

    [v11 addIndex:v8];
    v14 = [*(*(*(a1 + 80) + 8) + 40) objectAtIndex:v6];
    v15 = PLMemoriesGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138412802;
      v27 = v5;
      v28 = 2048;
      v29 = v6;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "Removing memory %@ from feed with memory index path [%lu, %lu]", &v26, 0x20u);
    }

    v16 = [v14 memories];
    v17 = [v16 count];

    if (v17 != 1)
    {
      v24 = [v14 entryByRemovingMemory:v5];

      [*(*(*(a1 + 80) + 8) + 40) replaceObjectAtIndex:v6 withObject:v24];
      v14 = v24;
      goto LABEL_18;
    }

    v18 = PLMemoriesGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v26 = 134217984;
      v27 = v6;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEBUG, "Only remaining memory removed from entry %lu. Removing entry.", &v26, 0xCu);
    }

    v19 = *(*(a1 + 88) + 8);
    v20 = *(v19 + 24);
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6 != v20)
    {
      if (v20 == 0x7FFFFFFFFFFFFFFFLL || v6 >= v20)
      {
        goto LABEL_16;
      }

      v21 = v20 - 1;
    }

    *(v19 + 24) = v21;
LABEL_16:
    [*(a1 + 48) addIndex:v6];
    v22 = *(a1 + 40);
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [v22 setObject:0 forKeyedSubscript:v23];

LABEL_18:
  }
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_213(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 creationDate];
  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v50 = v3;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Seeking destination feed entry for memory: %@", buf, 0xCu);
  }

  v6 = *(*(*(a1 + 64) + 8) + 40);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_214;
  v45[3] = &unk_1E7730548;
  v45[4] = *(a1 + 32);
  v7 = v4;
  v46 = v7;
  v8 = [v6 indexOfObjectPassingTest:v45];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [PXMemoryInfo memoryInfoWithMemory:v3];
    v10 = [PXMemoryEntryInfo alloc];
    v39 = v9;
    v48 = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    v12 = [(PXMemoryEntryInfo *)v10 initWithSortedMemories:v11];

    v13 = [*(a1 + 32) _indexOfEntry:v12 inSortedEntries:*(*(*(a1 + 64) + 8) + 40) options:1024];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      [v36 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"PXMemoriesFeedDataSourceManager.m" lineNumber:310 description:@"Unable to find insertion index for new entry"];
    }

    v40 = v7;
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 24);
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v13 <= v15)
      {
        ++v15;
      }

      *(v14 + 24) = v15;
    }

    v38 = v12;
    [*(*(*(a1 + 64) + 8) + 40) insertObject:v12 atIndex:v13];
    [*(a1 + 40) shiftIndexesStartingAtIndex:v13 by:1];
    [*(a1 + 40) addIndex:v13];
    v16 = [*(a1 + 56) allKeys];
    v17 = [v16 sortedArrayUsingSelector:sel_compare_];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = v17;
    v18 = [v17 reverseObjectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          v24 = [v23 integerValue];
          if (v24 >= v13)
          {
            v25 = [MEMORY[0x1E696AD98] numberWithInteger:v24 + 1];
            v26 = [*(a1 + 56) objectForKeyedSubscript:v25];

            if (v26)
            {
              v28 = [MEMORY[0x1E696AAA8] currentHandler];
              [v28 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"PXMemoriesFeedDataSourceManager.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"removedMemoryIndexesBySection[adjustedSectionNumber] == nil"}];
            }

            v27 = [*(a1 + 56) objectForKeyedSubscript:v23];
            [*(a1 + 56) setObject:v27 forKeyedSubscript:v25];

            [*(a1 + 56) setObject:0 forKeyedSubscript:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v20);
    }

    v7 = v40;
    v30 = v38;
    v29 = v39;
    v31 = v37;
  }

  else
  {
    v32 = v8;
    v29 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:v8];
    v30 = [v29 entryByAddingMemory:v3];
    if (([*(a1 + 40) containsIndex:v32] & 1) == 0)
    {
      v33 = [*(a1 + 48) objectForKeyedSubscript:v29];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 setByAddingObject:v3];

        [*(a1 + 48) setObject:0 forKeyedSubscript:v29];
      }

      else
      {
        v35 = [MEMORY[0x1E695DFD8] setWithObject:v3];
      }

      [*(a1 + 48) setObject:v35 forKeyedSubscript:v30];
    }

    [*(*(*(a1 + 64) + 8) + 40) replaceObjectAtIndex:v32 withObject:v30];
    v31 = PLMemoriesGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v50 = v3;
      v51 = 2048;
      v52 = v32;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_DEBUG, "Inserted memory %@ is grouped with entry %lu. Inserting there.", buf, 0x16u);
    }
  }
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_230(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _indexOfEntry:v5 inSortedEntries:*(*(*(a1 + 48) + 8) + 40) options:256];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXMemoriesFeedDataSourceManager.m" lineNumber:339 description:@"Unable to find inserted entry"];
  }

  v8 = [v5 memories];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_2;
  v16[3] = &unk_1E7735308;
  v9 = v6;
  v17 = v9;
  v10 = [v8 indexesOfObjectsPassingTest:v16];

  v11 = [v9 count];
  if (v11 != [v10 count])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXMemoriesFeedDataSourceManager.m" lineNumber:346 description:{@"Count of inserted memories (%lu) doesn't match with count of inserted indexes (%lu)", objc_msgSend(v9, "count"), objc_msgSend(v10, "count")}];
  }

  v12 = *(a1 + 40);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [v12 setObject:v10 forKeyedSubscript:v13];
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(*(a1 + 56) + 8) + 40) fetchResultAfterChanges];
  v17 = [v4 objectAtIndexedSubscript:a2];

  v5 = [*(a1 + 32) _indexOfEntryForMemory:v17 inSortedEntries:*(*(*(a1 + 64) + 8) + 40) options:256];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndex:v5];
    v8 = [v7 indexOfMemory:v17];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [PXMemoryInfo memoryInfoWithMemory:v17];
      v11 = [v7 entryByReplacingMemoryInfoAtIndex:v9 withMemoryInfo:v10];
      [*(*(*(a1 + 64) + 8) + 40) replaceObjectAtIndex:v6 withObject:v11];
      v12 = *(a1 + 40);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      v14 = [v12 objectForKeyedSubscript:v13];

      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
        v15 = *(a1 + 40);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
        [v15 setObject:v14 forKeyedSubscript:v16];
      }

      [v14 addIndex:v9];
      [*(a1 + 48) addIndex:v6];
    }
  }
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v5 _indexOfEntryForMemory:v8 inSortedEntries:v6 options:256];
  v15 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndex:v9];
  v10 = [v15 indexOfMemory:v8];

  v11 = [v15 memories];
  v12 = [v11 objectAtIndexedSubscript:v10];
  v13 = [v12 memoryInfoWithUpdatedKeyAssetFetchResult:v7];

  v14 = [v15 entryByReplacingMemoryInfoAtIndex:v10 withMemoryInfo:v13];
  [*(*(*(a1 + 40) + 8) + 40) replaceObjectAtIndex:v9 withObject:v14];
}

void __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 56) + 8) + 24) == *(*(a1 + 32) + 160))
  {
    v2 = [*(*(*(a1 + 64) + 8) + 40) fetchResultAfterChanges];
    if (!v2)
    {
      PXAssertGetLog();
    }

    v3 = [v2 firstObject];
    [*(a1 + 32) setMemoriesFetchResult:v2];
    [*(a1 + 32) setFirstUngroupedMemoryIndex:*(a1 + 80)];
    [*(a1 + 32) setDataSource:*(a1 + 40) changeDetails:*(a1 + 48)];
  }
}

uint64_t __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 assetCollection];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

uint64_t __121__PXMemoriesFeedDataSourceManager_handleIncrementalFetchResultChange_updatedFetchResultsForMemoriesWithChangedKeyAssets___block_invoke_214(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = [v3 endDate];
  if ([v4 shouldGroupTogetherMemoriesWithCreationDate:v5 andCreationDate:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v10 = [v3 startDate];
    v7 = [v8 shouldGroupTogetherMemoriesWithCreationDate:v9 andCreationDate:v10];
  }

  return v7;
}

- (void)_handleFinishedGeneratingAdditionalEntriesWithNewDataSource:(id)a3 changeDetails:(id)a4 firstUngroupedMemoryIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  [(PXMemoriesFeedDataSourceManagerBase *)self setFirstUngroupedMemoryIndex:a5];
  [(PXMemoriesFeedDataSourceManager *)self _setGeneratingAdditionalEntries:0];
  [(PXSectionedDataSourceManager *)self setDataSource:v9 changeDetails:v8];
}

- (void)_generateAdditionalEntriesWithOldDataSource:(id)a3 startingIndex:(unint64_t)a4 sync:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = +[PXMemoriesFeedSettings sharedInstance];
  v10 = [v9 groupsPerBatch];

  v26 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];
  v11 = [objc_opt_class() generateEntriesFromMemories:v26 startingFromIndex:a4 maximumNumberOfEntries:v10 finalMemoryIndex:&v36];
  if (![v11 count])
  {
    v25 = a4;
    v14 = v8;
    v23 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__PXMemoriesFeedDataSourceManager__generateAdditionalEntriesWithOldDataSource_startingIndex_sync___block_invoke_2;
    block[3] = &unk_1E77422A8;
    objc_copyWeak(v30, &location);
    v28 = v14;
    v29 = v23;
    v30[1] = v25;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  v25 = (v36 + 1);
  v12 = [v8 entries];
  v13 = [v12 arrayByAddingObjectsFromArray:v11];
  v14 = [[PXMemoriesFeedDataSource alloc] initWithEntries:v13];
  v15 = [v12 count];
  v16 = [v11 count];
  [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v15, v16}];
  v17 = v24 = v5;
  v18 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:v17 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __98__PXMemoriesFeedDataSourceManager__generateAdditionalEntriesWithOldDataSource_startingIndex_sync___block_invoke;
  v32[3] = &unk_1E774BF90;
  v33 = v12;
  v34 = v13;
  v35 = v19;
  v20 = v19;
  v21 = v13;
  v22 = v12;
  [v11 enumerateObjectsUsingBlock:v32];
  v23 = [[off_1E77218B0 alloc] initWithFromDataSourceIdentifier:objc_msgSend(v8 toDataSourceIdentifier:"identifier") sectionChanges:-[PXMemoriesFeedDataSource identifier](v14 itemChangeDetailsBySection:"identifier") subitemChangeDetailsByItemBySection:{v18, v20, 0}];

  if (!v24)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(PXMemoriesFeedDataSourceManager *)self _handleFinishedGeneratingAdditionalEntriesWithNewDataSource:v14 changeDetails:v23 firstUngroupedMemoryIndex:v25];
LABEL_6:
}

void __98__PXMemoriesFeedDataSourceManager__generateAdditionalEntriesWithOldDataSource_startingIndex_sync___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) count];
  v12 = [*(a1 + 40) objectAtIndex:v5 + a3];
  v6 = MEMORY[0x1E696AC90];
  v7 = [v12 memories];
  v8 = [v6 indexSetWithIndexesInRange:{0, objc_msgSend(v7, "count")}];

  v9 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:v8 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  v10 = *(a1 + 48);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 + a3];
  [v10 setObject:v9 forKeyedSubscript:v11];
}

void __98__PXMemoriesFeedDataSourceManager__generateAdditionalEntriesWithOldDataSource_startingIndex_sync___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleFinishedGeneratingAdditionalEntriesWithNewDataSource:*(a1 + 32) changeDetails:*(a1 + 40) firstUngroupedMemoryIndex:*(a1 + 56)];
}

- (void)reloadMemories:(BOOL)a3
{
  v3 = a3;
  [(PXMemoriesFeedDataSourceManager *)self startGeneratingMemories];
  v5 = +[(PXSectionedDataSource *)PXMemoriesFeedDataSource];
  [(PXMemoriesFeedDataSourceManager *)self generateAdditionalEntriesWithOldDataSource:v5 startingIndex:0 sync:v3];
}

- (void)generateAdditionalEntriesIfPossible
{
  v3 = [(PXMemoriesFeedDataSourceManagerBase *)self firstUngroupedMemoryIndex];
  v6 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];
  v4 = [v6 count];
  if (v4 && v3 < v4)
  {
    v5 = [(PXSectionedDataSourceManager *)self dataSource];
    [(PXMemoriesFeedDataSourceManager *)self generateAdditionalEntriesWithOldDataSource:v5 startingIndex:v3 sync:0];
  }
}

- (void)generateAdditionalEntriesWithOldDataSource:(id)a3 startingIndex:(unint64_t)a4 sync:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([(PXMemoriesFeedDataSourceManager *)self _isGeneratingAdditionalEntries])
  {
    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring update request while update is already in progress", buf, 2u);
    }
  }

  else
  {
    [(PXMemoriesFeedDataSourceManager *)self _setGeneratingAdditionalEntries:1];
    if (v5)
    {
      [(PXMemoriesFeedDataSourceManager *)self _generateAdditionalEntriesWithOldDataSource:v8 startingIndex:a4 sync:1];
    }

    else
    {
      objc_initWeak(buf, self);
      privateWorkQueue = self->_privateWorkQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __97__PXMemoriesFeedDataSourceManager_generateAdditionalEntriesWithOldDataSource_startingIndex_sync___block_invoke;
      block[3] = &unk_1E7746600;
      objc_copyWeak(v13, buf);
      v12 = v8;
      v13[1] = a4;
      dispatch_async(privateWorkQueue, block);

      objc_destroyWeak(v13);
      objc_destroyWeak(buf);
    }
  }
}

void __97__PXMemoriesFeedDataSourceManager_generateAdditionalEntriesWithOldDataSource_startingIndex_sync___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _generateAdditionalEntriesWithOldDataSource:*(a1 + 32) startingIndex:*(a1 + 48) sync:0];
}

- (void)startGeneratingMemories
{
  v6.receiver = self;
  v6.super_class = PXMemoriesFeedDataSourceManager;
  [(PXMemoriesFeedDataSourceManagerBase *)&v6 startGeneratingMemories];
  v3 = [(PXSectionedDataSourceManager *)self dataSource];
  v4 = [v3 containsAnyItems];

  if ((v4 & 1) == 0)
  {
    v5 = [(PXSectionedDataSourceManager *)self dataSource];
    [(PXMemoriesFeedDataSourceManager *)self generateAdditionalEntriesWithOldDataSource:v5 startingIndex:0 sync:1];
  }
}

- (PXMemoriesFeedDataSourceManager)initWithPhotoLibrary:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXMemoriesFeedDataSourceManager;
  v3 = [(PXMemoriesFeedDataSourceManagerBase *)&v7 initWithPhotoLibrary:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.PXMemoriesFeedDataSourceManager", 0);
    privateWorkQueue = v3->_privateWorkQueue;
    v3->_privateWorkQueue = v4;
  }

  return v3;
}

@end