@interface PXFeedSectionInfosManager
- (BOOL)_shouldPerformFullReloadForFeedEntriesChangeNotifications:(id)a3 commentsChangeNotifications:(id)a4;
- (BOOL)hasEnoughCloudFeedAssetEntriesToDisplay;
- (BOOL)reconfigureToIncludeCloudFeedEntry:(id)a3;
- (PXFeedSectionInfosManager)initWithPhotoLibrary:(id)a3 configurationBlock:(id)a4;
- (PXFeedSectionInfosManager)initWithPhotoLibraryForTesting:(id)a3 filter:(int64_t)a4;
- (PXFeedSectionInfosManagerDelegate)delegate;
- (id)_sectionInfoSortingComparator;
- (id)indexesOfInvitationsReceivedSectionInfos;
- (id)indexesOfUnloadedSectionInfosAtIndexes:(id)a3;
- (id)sectionInfoAtIndex:(int64_t)a3;
- (id)sectionInfoWithIdentifier:(id)a3;
- (int64_t)indexOfSectionInfoForCloudFeedEntry:(id)a3;
- (int64_t)numberOfInvitationsReceived;
- (void)_didFinishPostingNotifications:(id)a3;
- (void)_getEarliestDate:(id *)a3 mostRecentEntries:(id *)a4 forBatchWithLatestDate:(id)a5;
- (void)_rebuildSectionInfos;
- (void)_updateSectionInfosForFeedEntriesChangeNotifications:(id)a3 commentsChangeNotifications:(id)a4 assetsChangeNotifications:(id)a5;
- (void)cloudCommentsDidChange:(id)a3;
- (void)cloudFeedEntriesDidChange:(id)a3;
- (void)dealloc;
- (void)loadSectionInfosAtIndexes:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
- (void)reconfigure:(id)a3;
- (void)shouldReload:(id)a3;
- (void)updateObservedAssetsFromEntry:(id)a3 outObservedAssetOIDs:(id *)a4;
@end

@implementation PXFeedSectionInfosManager

- (PXFeedSectionInfosManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXFeedSectionInfosManager)initWithPhotoLibraryForTesting:(id)a3 filter:(int64_t)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v26.receiver = self;
  v26.super_class = PXFeedSectionInfosManager;
  v8 = [(PXFeedSectionInfosManager *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoLibrary, a3);
    v9->_entryFilter = a4;
    v10 = [(PXFeedTestSectionInfo *)[PXFeedTestInvitationSectionInfo alloc] initWithPhotoLibrary:v9->_photoLibrary];
    v11 = [(PXFeedTestSectionInfo *)[PXFeedTestInvitationSectionInfo alloc] initWithPhotoLibrary:v9->_photoLibrary];
    v12 = [(PXFeedTestSectionInfo *)[PXFeedTestCommentsSectionInfo alloc] initWithPhotoLibrary:v9->_photoLibrary];
    v13 = [(PXFeedTestSectionInfo *)[PXFeedTestCommentsSectionInfo alloc] initWithPhotoLibrary:v9->_photoLibrary];
    v14 = [[PXFeedTestAssetsSectionInfo alloc] initWithPhotoLibrary:v9->_photoLibrary];
    v15 = [[PXFeedTestAssetsSectionInfo alloc] initWithPhotoLibrary:v9->_photoLibrary];
    v16 = v15;
    entryFilter = v9->_entryFilter;
    if ((entryFilter - 2) >= 4 && entryFilter)
    {
      if (entryFilter != 1)
      {
        v23 = 0;
        goto LABEL_5;
      }

      v18 = MEMORY[0x1E695DF70];
      v28[0] = v11;
      v28[1] = v10;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v28;
      v21 = 2;
    }

    else
    {
      v18 = MEMORY[0x1E695DF70];
      v27[0] = v13;
      v27[1] = v15;
      v27[2] = v12;
      v27[3] = v14;
      v27[4] = v11;
      v27[5] = v10;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v27;
      v21 = 6;
    }

    v22 = [v19 arrayWithObjects:v20 count:v21];
    v23 = [v18 arrayWithArray:v22];

LABEL_5:
    sectionInfos = v9->_sectionInfos;
    v9->_sectionInfos = v23;
  }

  return v9;
}

- (id)_sectionInfoSortingComparator
{
  v2 = [&__block_literal_global_51 copy];

  return v2;
}

uint64_t __58__PXFeedSectionInfosManager__sectionInfoSortingComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cloudFeedEntry];
  v6 = [v4 cloudFeedEntry];

  v7 = [v5 entryPriority];
  v8 = [v6 entryPriority];
  if (v7 >= v8)
  {
    if (v7 <= v8)
    {
      v10 = [v5 entryDate];
      v11 = [v6 entryDate];
      v9 = [v10 compare:v11];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)_updateSectionInfosForFeedEntriesChangeNotifications:(id)a3 commentsChangeNotifications:(id)a4 assetsChangeNotifications:(id)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromSelector(a2);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "will %@", &buf, 0xCu);
  }

  v13 = [(PXFeedSectionInfosManager *)self earliestDate];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x1E695DF00] distantPast];
  }

  v16 = v15;

  v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = [(PXFeedSectionInfosManager *)self _sectionInfoSortingComparator];
  v38 = self->_sectionInfosByCloudFeedEntry;
  v18 = [(NSMutableArray *)self->_sectionInfos mutableCopy];
  v36 = v17;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v35 = a2;
  v21 = objc_alloc_init(MEMORY[0x1E696AD50]);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__69334;
  v81 = __Block_byref_object_dispose__69335;
  v82 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__69334;
  v70 = __Block_byref_object_dispose__69335;
  v71 = 0;
  photoLibrary = self->_photoLibrary;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __136__PXFeedSectionInfosManager__updateSectionInfosForFeedEntriesChangeNotifications_commentsChangeNotifications_assetsChangeNotifications___block_invoke;
  v48[3] = &unk_1E7734B28;
  v32 = v46;
  v49 = v32;
  v33 = v16;
  v50 = v33;
  v34 = v44;
  v51 = v34;
  v45 = v38;
  v52 = v45;
  v39 = v42;
  v53 = v39;
  v41 = v40;
  v54 = v41;
  v47 = v18;
  v55 = v47;
  v23 = v19;
  v56 = v23;
  v57 = self;
  v43 = v36;
  v62 = v43;
  v24 = v20;
  v58 = v24;
  v25 = v21;
  v59 = v25;
  v63 = &v72;
  v37 = v9;
  v60 = v37;
  p_buf = &buf;
  v26 = v10;
  v61 = v26;
  v65 = &v66;
  [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v48];
  objc_storeStrong(&self->_sectionInfos, v18);
  v27 = objc_alloc_init(PXFeedSectionInfosChange);
  v28 = v27;
  if (*(v73 + 24) == 1)
  {
    [(PXFeedSectionInfosChange *)v27 setShouldReload:1];
  }

  else
  {
    [(PXFeedSectionInfosChange *)v27 setDeletedIndexes:v23];
    [(PXFeedSectionInfosChange *)v28 setInsertedIndexes:v24];
    [(PXFeedSectionInfosChange *)v28 setUpdatedIndexes:v25];
    [(PXFeedSectionInfosChange *)v28 setSectionInfosWithCommentChanges:*(*(&buf + 1) + 40)];
    [(PXFeedSectionInfosChange *)v28 setUpdatedAssets:v67[5]];
  }

  v29 = [(PXFeedSectionInfosManager *)self delegate];
  [v29 feedSectionInfosManager:self sectionInfosDidChange:v28];

  v30 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = NSStringFromSelector(v35);
    *v76 = 138412290;
    v77 = v31;
    _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEBUG, "did %@", v76, 0xCu);
  }

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v72, 8);
}

void __136__PXFeedSectionInfosManager__updateSectionInfosForFeedEntriesChangeNotifications_commentsChangeNotifications_assetsChangeNotifications___block_invoke(uint64_t a1)
{
  v1 = a1;
  v156 = *MEMORY[0x1E69E9840];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = *(a1 + 32);
  v106 = v1;
  v100 = [obj countByEnumeratingWithState:&v139 objects:v155 count:16];
  if (v100)
  {
    v99 = *v140;
    v104 = (v1 + 48);
    v2 = (v1 + 72);
    v103 = (v1 + 64);
    do
    {
      v3 = 0;
      do
      {
        if (*v140 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v102 = v3;
        v4 = *(*(&v139 + 1) + 8 * v3);
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v5 = [v4 insertedEntries];
        v6 = [v5 countByEnumeratingWithState:&v135 objects:v154 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v136;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v136 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v135 + 1) + 8 * i);
              v11 = [v10 entryDate];
              if ([*(v1 + 40) compare:v11] == -1)
              {
                [*v104 addObject:v10];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v135 objects:v154 count:16];
          }

          while (v7);
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v101 = v4;
        v12 = [v4 updatedEntries];
        v13 = [v12 countByEnumeratingWithState:&v131 objects:v153 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v132;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v132 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v131 + 1) + 8 * j);
              v18 = [v17 entryDate];
              v19 = [*(v1 + 40) compare:v18];
              v20 = *(v1 + 56);
              v21 = [v17 objectID];
              v22 = [v20 objectForKey:v21];

              if (v19 == -1)
              {
                v23 = v104;
                if (v22)
                {
                  v23 = v103;
                }

LABEL_25:
                [*v23 addObject:v17];
                goto LABEL_26;
              }

              v23 = v2;
              if (v22)
              {
                goto LABEL_25;
              }

LABEL_26:

              v1 = v106;
            }

            v14 = [v12 countByEnumeratingWithState:&v131 objects:v153 count:16];
          }

          while (v14);
        }

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v24 = [v101 deletedEntries];
        v25 = [v24 countByEnumeratingWithState:&v127 objects:v152 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v128;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v128 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v127 + 1) + 8 * k);
              v30 = *(v1 + 56);
              v31 = [v29 objectID];
              v32 = [v30 objectForKey:v31];

              if (v32)
              {
                [*v2 addObject:v29];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v127 objects:v152 count:16];
          }

          while (v26);
        }

        v3 = v102 + 1;
      }

      while (v102 + 1 != v100);
      v100 = [obj countByEnumeratingWithState:&v139 objects:v155 count:16];
    }

    while (v100);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v33 = *(v1 + 72);
  v34 = [v33 countByEnumeratingWithState:&v123 objects:v151 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v124;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v124 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v123 + 1) + 8 * m);
        v39 = *(v1 + 56);
        v40 = [v38 objectID];
        v41 = [v39 objectForKey:v40];

        v42 = [*(v1 + 80) indexOfObjectIdenticalTo:v41];
        if (v42 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(v1 + 88) addIndex:v42];
          v43 = *(v1 + 56);
          v44 = [v38 objectID];
          [v43 removeObjectForKey:v44];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v123 objects:v151 count:16];
    }

    while (v35);
  }

  [*(v1 + 80) removeObjectsAtIndexes:*(v1 + 88)];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v45 = *(v1 + 48);
  v46 = [v45 countByEnumeratingWithState:&v119 objects:v150 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v120;
    do
    {
      for (n = 0; n != v47; ++n)
      {
        if (*v120 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v119 + 1) + 8 * n);
        if (([v50 isDeleted] & 1) == 0)
        {
          v51 = *(v106 + 56);
          v52 = [v50 objectID];
          v53 = [v51 objectForKey:v52];

          if (v53)
          {
            [*(v106 + 64) addObject:v50];
          }

          else
          {
            v54 = [PXFeedSectionInfo sectionInfoWithCloudFeedEntry:v50 inPhotoLibrary:*(*(v106 + 96) + 16)];
            v55 = *(v106 + 56);
            v56 = [v50 objectID];
            [v55 setObject:v54 forKey:v56];

            v57 = [*(v106 + 80) indexOfObject:v54 inSortedRange:0 options:objc_msgSend(*(v106 + 80) usingComparator:{"count"), 1024, *(v106 + 136)}];
            [*(v106 + 80) insertObject:v54 atIndex:v57];
            v58 = *(v106 + 104);
            v59 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v57];
            [v58 pl_adjustIndexesForInsertions:v59];

            [*(v106 + 104) addIndex:v57];
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v119 objects:v150 count:16];
    }

    while (v47);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v60 = v106;
  v105 = *(v106 + 64);
  v61 = [v105 countByEnumeratingWithState:&v115 objects:v149 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v116;
    do
    {
      for (ii = 0; ii != v62; ++ii)
      {
        if (*v116 != v63)
        {
          objc_enumerationMutation(v105);
        }

        v65 = *(v60 + 56);
        v66 = [*(*(&v115 + 1) + 8 * ii) objectID];
        v67 = [v65 objectForKey:v66];

        v68 = [*(v60 + 80) indexOfObjectIdenticalTo:v67];
        if (v68 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = v68;
          if ([v67 isLoaded])
          {
            [v67 reload];
            [*(v60 + 112) addIndex:v69];
          }

          if (v69 < 1)
          {
            v70 = 0;
          }

          else
          {
            v70 = [*(v60 + 80) objectAtIndex:v69 - 1];
          }

          if (v69 >= ([*(v60 + 80) count] - 1))
          {
            v71 = 0;
            if (v70)
            {
              goto LABEL_74;
            }

            goto LABEL_75;
          }

          v71 = [*(v60 + 80) objectAtIndex:v69 + 1];
          if (!v70)
          {
            goto LABEL_75;
          }

LABEL_74:
          if ((*(*(v106 + 136) + 16))() == -1)
          {
LABEL_75:
            if (v71 && (*(*(v106 + 136) + 16))() != -1)
            {
              goto LABEL_77;
            }
          }

          else
          {
LABEL_77:
            [*(v106 + 80) removeObjectAtIndex:v69];
            v72 = [*(v106 + 80) indexOfObject:v67 inSortedRange:0 options:objc_msgSend(*(v106 + 80) usingComparator:{"count"), 1024, *(v106 + 136)}];
            [*(v106 + 80) insertObject:v67 atIndex:v72];
            *(*(*(v106 + 144) + 8) + 24) = 1;
            v73 = PLCloudFeedGetLog();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v146 = v69;
              v147 = 2048;
              v148 = v72;
              _os_log_impl(&dword_1A3C1C000, v73, OS_LOG_TYPE_DEBUG, "Section move detected (%li -> %li)", buf, 0x16u);
            }
          }

          v60 = v106;
        }
      }

      v62 = [v105 countByEnumeratingWithState:&v115 objects:v149 count:16];
    }

    while (v62);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v74 = *(v60 + 120);
  v75 = [v74 countByEnumeratingWithState:&v111 objects:v144 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v112;
    do
    {
      for (jj = 0; jj != v76; ++jj)
      {
        if (*v112 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = [*(*(&v111 + 1) + 8 * jj) asset];
        v80 = [v79 cloudFeedAssetsEntry];
        v81 = *(v106 + 56);
        v82 = [v80 objectID];
        v83 = [v81 objectForKey:v82];

        if (v83)
        {
          v84 = *(*(*(v106 + 152) + 8) + 40);
          if (!v84)
          {
            v85 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v86 = *(*(v106 + 152) + 8);
            v87 = *(v86 + 40);
            *(v86 + 40) = v85;

            v84 = *(*(*(v106 + 152) + 8) + 40);
          }

          [v84 addObject:v83];
        }
      }

      v76 = [v74 countByEnumeratingWithState:&v111 objects:v144 count:16];
    }

    while (v76);
  }

  if ((*(*(*(v106 + 144) + 8) + 24) & 1) == 0 && [*(v106 + 128) count])
  {
    v88 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v89 = *(*(v106 + 160) + 8);
    v90 = *(v89 + 40);
    *(v89 + 40) = v88;

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v91 = *(v106 + 128);
    v92 = [v91 countByEnumeratingWithState:&v107 objects:v143 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v108;
      do
      {
        for (kk = 0; kk != v93; ++kk)
        {
          if (*v108 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = *(*(*(v106 + 160) + 8) + 40);
          v97 = [*(*(&v107 + 1) + 8 * kk) updatedAssets];
          [v96 unionSet:v97];
        }

        v93 = [v91 countByEnumeratingWithState:&v107 objects:v143 count:16];
      }

      while (v93);
    }
  }
}

- (BOOL)_shouldPerformFullReloadForFeedEntriesChangeNotifications:(id)a3 commentsChangeNotifications:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) shouldReload])
        {
          v5 = PLCloudFeedGetLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            *v9 = 0;
          }

          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

- (void)_didFinishPostingNotifications:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications count];
    v8 = [(NSMutableArray *)self->_pendingCommentsChangeNotifications count];
    v9 = [(NSMutableArray *)self->_pendingAssetsChangeNotifications count];
    v15 = 138544130;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ (pendingFeedEntries: %lu, pendingCommentsChange: %lu, pendingAssetsChange: %lu)", &v15, 0x2Au);
  }

  if ([(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications count]|| [(NSMutableArray *)self->_pendingCommentsChangeNotifications count]|| [(NSMutableArray *)self->_pendingAssetsChangeNotifications count])
  {
    v10 = [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications copy];
    v11 = [(NSMutableArray *)self->_pendingCommentsChangeNotifications copy];
    v12 = [(NSMutableArray *)self->_pendingAssetsChangeNotifications copy];
    [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications removeAllObjects];
    [(NSMutableArray *)self->_pendingCommentsChangeNotifications removeAllObjects];
    [(NSMutableArray *)self->_pendingAssetsChangeNotifications removeAllObjects];
    v13 = [(PXFeedSectionInfosManager *)self _shouldPerformFullReloadForFeedEntriesChangeNotifications:v10 commentsChangeNotifications:v11];
    v14 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67109120;
      LODWORD(v16) = v13;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEBUG, "needsFullReload=%i", &v15, 8u);
    }

    if (v13)
    {
      [(PXFeedSectionInfosManager *)self _rebuildSectionInfos];
    }

    else
    {
      [(PXFeedSectionInfosManager *)self _updateSectionInfosForFeedEntriesChangeNotifications:v10 commentsChangeNotifications:v11 assetsChangeNotifications:v12];
    }
  }
}

- (void)shouldReload:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%@", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications removeAllObjects];
  [(NSMutableArray *)self->_pendingCommentsChangeNotifications removeAllObjects];
  [(NSMutableArray *)self->_pendingAssetsChangeNotifications removeAllObjects];
  [(PXFeedSectionInfosManager *)self _rebuildSectionInfos];
}

- (void)cloudCommentsDidChange:(id)a3
{
  v4 = a3;
  if ([(PXFeedSectionInfosManager *)self entryFilter]!= 1)
  {
    [(NSMutableArray *)self->_pendingCommentsChangeNotifications addObject:v4];
  }
}

- (void)cloudFeedEntriesDidChange:(id)a3
{
  v13 = a3;
  v4 = [(PXFeedSectionInfosManager *)self entryFilter];
  if (([v13 shouldReload] & 1) != 0 || !v4)
  {
    [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications addObject:v13];
  }

  else
  {
    v5 = [v13 insertedEntries];
    v6 = [v5 mutableCopy];

    v7 = [v13 updatedEntries];
    v8 = [v7 mutableCopy];

    v9 = [v13 deletedEntries];
    v10 = [v9 mutableCopy];

    v11 = [MEMORY[0x1E69BE320] notificationPredicateForFilter:v4];
    [v6 filterUsingPredicate:v11];
    [v8 filterUsingPredicate:v11];
    [v10 filterUsingPredicate:v11];
    v12 = [MEMORY[0x1E69BE318] notificationWithInsertedEntries:v6 updatedEntries:v8 deletedEntries:v10];
    [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications addObject:v12];
  }
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E6978AB0] sensitiveContentAnalysisEnabled])
  {
    v5 = [v4 updatedObjectIDs];
    if ([(NSMutableSet *)self->_observedAssetOIDs intersectsSet:v5])
    {
      photoLibrary = self->_photoLibrary;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__PXFeedSectionInfosManager_photoLibraryDidChange___block_invoke;
      v7[3] = &unk_1E774C620;
      v8 = v5;
      v9 = self;
      [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v7];
    }
  }
}

void __51__PXFeedSectionInfosManager_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(PXFeedSectionInfosChange);
  [(PXFeedSectionInfosChange *)v3 setUpdatedAssetOIDs:*(a1 + 32)];
  v2 = [*(a1 + 40) delegate];
  [v2 feedSectionInfosManager:*(a1 + 40) sectionInfosDidChange:v3];
}

- (void)_getEarliestDate:(id *)a3 mostRecentEntries:(id *)a4 forBatchWithLatestDate:(id)a5
{
  v8 = a5;
  v9 = [(PXFeedSectionInfosManager *)self entryFilter];
  if (v9 == 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = 75;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__69334;
  v29 = __Block_byref_object_dispose__69335;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__69334;
  v23 = __Block_byref_object_dispose__69335;
  v24 = 0;
  photoLibrary = self->_photoLibrary;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PXFeedSectionInfosManager__getEarliestDate_mostRecentEntries_forBatchWithLatestDate___block_invoke;
  v13[3] = &unk_1E7734B00;
  v13[4] = self;
  v12 = v8;
  v17 = v10;
  v18 = v9;
  v14 = v12;
  v15 = &v25;
  v16 = &v19;
  [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v13];
  if (a3)
  {
    *a3 = v26[5];
  }

  if (a4)
  {
    *a4 = v20[5];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

void __87__PXFeedSectionInfosManager__getEarliestDate_mostRecentEntries_forBatchWithLatestDate___block_invoke(void *a1)
{
  v20 = [MEMORY[0x1E69BE320] recentEntriesInLibrary:*(a1[4] + 8) earliestDate:0 latestDate:a1[5] limit:a1[8] filter:a1[9] sortDescriptors:0];
  if ([v20 count] >= a1[8])
  {
    v8 = [v20 lastObject];
    v9 = [v8 entryDate];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v20 count];
    do
    {
      v13 = v12--;
      if (v12 < 1)
      {
        break;
      }

      v14 = *(*(a1[6] + 8) + 40);
      v15 = [v20 objectAtIndexedSubscript:v12];
      v16 = [v15 entryDate];
      v17 = [v14 compare:v16];
    }

    while (v17 != -1);
    v18 = [v20 subarrayWithRange:{0, v13}];
    v19 = *(a1[7] + 8);
    v7 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else
  {
    v2 = [MEMORY[0x1E695DF00] distantPast];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(a1[7] + 8);
    v6 = v20;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }
}

- (void)updateObservedAssetsFromEntry:(id)a3 outObservedAssetOIDs:(id *)a4
{
  v8 = a3;
  v4 = [MEMORY[0x1E6978AB0] sensitiveContentAnalysisEnabled];
  v5 = v8;
  if (v4)
  {
    v6 = v8;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;

      if (v7)
      {
        [v7 entryAssets];
        objc_claimAutoreleasedReturnValue();
        PXMap();
      }
    }

    else
    {
      v7 = 0;
    }

    v5 = v8;
  }
}

- (void)_rebuildSectionInfos
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "will rebuild section infos", buf, 2u);
  }

  v4 = [(PXFeedSectionInfosManager *)self earliestDate];
  v25 = v4;
  if (v4)
  {
    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__69334;
    v41 = __Block_byref_object_dispose__69335;
    v42 = 0;
    photoLibrary = self->_photoLibrary;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __49__PXFeedSectionInfosManager__rebuildSectionInfos__block_invoke;
    v34[3] = &unk_1E7746448;
    v36 = buf;
    v34[4] = self;
    v35 = v4;
    [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v34, v25];
    v27 = *(v38 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v43 = 0;
    v44 = 0;
    [(PXFeedSectionInfosManager *)self _getEarliestDate:&v44 mostRecentEntries:&v43 forBatchWithLatestDate:0, 0];
    v6 = v44;
    v27 = v43;
    [(PXFeedSectionInfosManager *)self setEarliestDate:v6];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
  sectionInfos = self->_sectionInfos;
  self->_sectionInfos = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sectionInfosByCloudFeedEntry = self->_sectionInfosByCloudFeedEntry;
  self->_sectionInfosByCloudFeedEntry = v9;

  v11 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [v27 reverseObjectEnumerator];
  v12 = [obj countByEnumeratingWithState:&v30 objects:v45 count:16];
  if (v12)
  {
    v13 = *v31;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * v14);
        v17 = [PXFeedSectionInfo sectionInfoWithCloudFeedEntry:v16 inPhotoLibrary:self->_phPhotoLibrary];
        v18 = self->_sectionInfosByCloudFeedEntry;
        v19 = [v16 objectID];
        [(NSMutableDictionary *)v18 setObject:v17 forKey:v19];

        [(NSMutableArray *)self->_sectionInfos addObject:v17];
        v29 = v15;
        [(PXFeedSectionInfosManager *)self updateObservedAssetsFromEntry:v16 outObservedAssetOIDs:&v29];
        v11 = v29;

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v30 objects:v45 count:16];
    }

    while (v12);
  }

  observedAssetOIDs = self->_observedAssetOIDs;
  v21 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  [(NSMutableSet *)observedAssetOIDs unionSet:v21];

  v22 = objc_alloc_init(PXFeedSectionInfosChange);
  [(PXFeedSectionInfosChange *)v22 setShouldReload:1];
  v23 = [(PXFeedSectionInfosManager *)self delegate];
  [v23 feedSectionInfosManager:self sectionInfosDidChange:v22];

  v24 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEBUG, "did rebuild section infos", buf, 2u);
  }
}

void __49__PXFeedSectionInfosManager__rebuildSectionInfos__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69BE320] recentEntriesInLibrary:*(*(a1 + 32) + 8) earliestDate:*(a1 + 40) latestDate:0 limit:objc_msgSend(*(a1 + 32) filter:"fetchLimit") sortDescriptors:{objc_msgSend(*(a1 + 32), "entryFilter"), 0}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)indexesOfInvitationsReceivedSectionInfos
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  sectionInfos = self->_sectionInfos;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PXFeedSectionInfosManager_indexesOfInvitationsReceivedSectionInfos__block_invoke;
  v7[3] = &unk_1E774BCB0;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)sectionInfos enumerateObjectsWithOptions:2 usingBlock:v7];

  return v5;
}

uint64_t __69__PXFeedSectionInfosManager_indexesOfInvitationsReceivedSectionInfos__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 sectionType];
  if (result == 2)
  {
    v8 = *(a1 + 32);

    return [v8 addIndex:a3];
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (int64_t)numberOfInvitationsReceived
{
  v2 = [(PXFeedSectionInfosManager *)self indexesOfInvitationsReceivedSectionInfos];
  v3 = [v2 count];

  return v3;
}

- (BOOL)reconfigureToIncludeCloudFeedEntry:(id)a3
{
  v4 = [a3 entryDate];
  v5 = [v4 dateByAddingTimeInterval:-1.0];

  v6 = [(NSMutableArray *)self->_sectionInfos lastObject];
  v7 = [v6 cloudFeedEntry];
  v8 = [v7 entryDate];

  v9 = 0;
  if (v5 && v8)
  {
    if ([v5 compare:v8] == -1)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64__PXFeedSectionInfosManager_reconfigureToIncludeCloudFeedEntry___block_invoke;
      v11[3] = &unk_1E7734AB8;
      v12 = v5;
      [(PXFeedSectionInfosManager *)self reconfigure:v11];

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __64__PXFeedSectionInfosManager_reconfigureToIncludeCloudFeedEntry___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setEarliestDate:v2];
  [v3 setFetchLimit:0];
}

- (void)reconfigure:(id)a3
{
  (*(a3 + 2))(a3, self);

  [(PXFeedSectionInfosManager *)self _rebuildSectionInfos];
}

- (void)loadSectionInfosAtIndexes:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  sectionInfos = self->_sectionInfos;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __55__PXFeedSectionInfosManager_loadSectionInfosAtIndexes___block_invoke;
  v41[3] = &unk_1E774BCB0;
  v8 = v6;
  v42 = v8;
  [(NSMutableArray *)sectionInfos enumerateObjectsAtIndexes:v4 options:0 usingBlock:v41];
  v9 = [(PXFeedSectionInfosManager *)self entryFilter];
  if ([v4 containsIndex:0])
  {
    if ([(PXFeedSectionInfosManager *)self fetchLimit])
    {
      v10 = [(NSMutableArray *)self->_sectionInfos count];
      if (v10 < [(PXFeedSectionInfosManager *)self fetchLimit]&& v9 != 5)
      {
        v11 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [MEMORY[0x1E696AF00] callStackSymbols];
          *buf = 138412290;
          v45 = v12;
          _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "will load next batch of sections %@", buf, 0xCu);
        }

        v31 = v8;
        v32 = v5;

        v39 = 0;
        v40 = 0;
        [(PXFeedSectionInfosManager *)self _getEarliestDate:&v40 mostRecentEntries:&v39 forBatchWithLatestDate:self->_earliestDate];
        v13 = v40;
        v14 = v39;
        v30 = v13;
        [(PXFeedSectionInfosManager *)self setEarliestDate:v13];
        v15 = objc_opt_new();
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        obj = v14;
        v16 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          do
          {
            v19 = 0;
            v20 = v15;
            do
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v35 + 1) + 8 * v19);
              v22 = [PXFeedSectionInfo sectionInfoWithCloudFeedEntry:v21 inPhotoLibrary:self->_phPhotoLibrary];
              sectionInfosByCloudFeedEntry = self->_sectionInfosByCloudFeedEntry;
              v24 = [v21 objectID];
              [(NSMutableDictionary *)sectionInfosByCloudFeedEntry setObject:v22 forKey:v24];

              [(NSMutableArray *)self->_sectionInfos insertObject:v22 atIndex:0];
              v34 = v20;
              [(PXFeedSectionInfosManager *)self updateObservedAssetsFromEntry:v21 outObservedAssetOIDs:&v34];
              v15 = v34;

              ++v19;
              v20 = v15;
            }

            while (v17 != v19);
            v17 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v17);
        }

        observedAssetOIDs = self->_observedAssetOIDs;
        v26 = [MEMORY[0x1E695DFD8] setWithArray:v15];
        [(NSMutableSet *)observedAssetOIDs unionSet:v26];

        v5 = v32;
        [v32 addIndexesInRange:{0, objc_msgSend(obj, "count")}];
        v8 = v31;
        [v31 pl_adjustIndexesForInsertions:v32];
        v27 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_DEBUG, "did load next batch of sections", buf, 2u);
        }
      }
    }
  }

  if ([v5 count] || objc_msgSend(v8, "count"))
  {
    v28 = objc_alloc_init(PXFeedSectionInfosChange);
    [(PXFeedSectionInfosChange *)v28 setInsertedIndexes:v5];
    [(PXFeedSectionInfosChange *)v28 setUpdatedIndexes:v8];
    v29 = [(PXFeedSectionInfosManager *)self delegate];
    [v29 feedSectionInfosManager:self sectionInfosDidChange:v28];
  }
}

void __55__PXFeedSectionInfosManager_loadSectionInfosAtIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isLoaded] & 1) == 0)
  {
    [v5 reload];
    [*(a1 + 32) addIndex:a3];
  }
}

- (id)indexesOfUnloadedSectionInfosAtIndexes:(id)a3
{
  v4 = MEMORY[0x1E696AD50];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  sectionInfos = self->_sectionInfos;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PXFeedSectionInfosManager_indexesOfUnloadedSectionInfosAtIndexes___block_invoke;
  v10[3] = &unk_1E774BCB0;
  v8 = v6;
  v11 = v8;
  [(NSMutableArray *)sectionInfos enumerateObjectsAtIndexes:v5 options:0 usingBlock:v10];

  return v8;
}

uint64_t __68__PXFeedSectionInfosManager_indexesOfUnloadedSectionInfosAtIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isLoaded];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

- (int64_t)indexOfSectionInfoForCloudFeedEntry:(id)a3
{
  sectionInfosByCloudFeedEntry = self->_sectionInfosByCloudFeedEntry;
  v5 = [a3 objectID];
  v6 = [(NSMutableDictionary *)sectionInfosByCloudFeedEntry objectForKey:v5];

  v7 = [(NSMutableArray *)self->_sectionInfos indexOfObject:v6];
  return v7;
}

- (id)sectionInfoWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sectionInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 transientIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)sectionInfoAtIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSMutableArray *)self->_sectionInfos count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_sectionInfos objectAtIndexedSubscript:a3];
    }
  }

  return v6;
}

- (BOOL)hasEnoughCloudFeedAssetEntriesToDisplay
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_sectionInfos;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) cloudFeedEntry];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 entryAssets];
          v4 += [v8 count];

          if (v4 >= 4)
          {

            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69BE2F0] defaultCenter];
  [v3 removeCloudFeedEntriesObserver:self];
  [v3 removeCloudCommentsChangeObserver:self asset:0];
  [v3 removeAssetChangeObserver:self];
  [v3 removeShouldReloadObserver:self];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69BE918] object:0];

  v5.receiver = self;
  v5.super_class = PXFeedSectionInfosManager;
  [(PXFeedSectionInfosManager *)&v5 dealloc];
}

- (PXFeedSectionInfosManager)initWithPhotoLibrary:(id)a3 configurationBlock:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = PXFeedSectionInfosManager;
  v10 = [(PXFeedSectionInfosManager *)&v28 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibrary, a3);
    if (v11->_photoLibrary)
    {
      v12 = [objc_alloc(MEMORY[0x1E69789A8]) initWithPLPhotoLibrary:v11->_photoLibrary];
      p_super = &v11->_phPhotoLibrary->super;
      v11->_phPhotoLibrary = v12;
    }

    else
    {
      p_super = PLCloudFeedGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, p_super, OS_LOG_TYPE_ERROR, "Unable to create PHPhotoLibrary, PLPhotoLibrary is nil", buf, 2u);
      }
    }

    earliestDate = v11->_earliestDate;
    v11->_entryFilter = 0;
    v11->_earliestDate = 0;

    v11->_fetchLimit = 0;
    v15 = [MEMORY[0x1E695DFA8] set];
    observedAssetOIDs = v11->_observedAssetOIDs;
    v11->_observedAssetOIDs = v15;

    if (v9)
    {
      v9[2](v9, v11);
    }

    v17 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [(PXFeedSectionInfosManager *)v11 _rebuildSectionInfos];
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingFeedEntriesChangeNotifications = v11->_pendingFeedEntriesChangeNotifications;
    v11->_pendingFeedEntriesChangeNotifications = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingCommentsChangeNotifications = v11->_pendingCommentsChangeNotifications;
    v11->_pendingCommentsChangeNotifications = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingAssetsChangeNotifications = v11->_pendingAssetsChangeNotifications;
    v11->_pendingAssetsChangeNotifications = v23;

    v25 = [MEMORY[0x1E69BE2F0] defaultCenter];
    [v25 addCloudFeedEntriesObserver:v11];
    [v25 addCloudCommentsChangeObserver:v11 asset:0];
    [v25 addAssetChangeObserver:v11];
    [v25 addShouldReloadObserver:v11];
    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v11 selector:sel__didFinishPostingNotifications_ name:*MEMORY[0x1E69BE918] object:0];

    [(PHPhotoLibrary *)v11->_phPhotoLibrary registerChangeObserver:v11];
  }

  return v11;
}

@end