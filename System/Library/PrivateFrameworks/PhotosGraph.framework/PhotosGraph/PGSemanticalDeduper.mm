@interface PGSemanticalDeduper
- (id)deduplicatedItemsWithItems:(id)items debugInfo:(id)info progressBlock:(id)block;
- (id)itemsNeedingSceneprintInTimeClusters:(id)clusters;
- (id)sceneprintByItemIdentifierWithItems:(id)items;
@end

@implementation PGSemanticalDeduper

- (id)itemsNeedingSceneprintInTimeClusters:(id)clusters
{
  v20 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = clustersCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objects = [*(*(&v15 + 1) + 8 * i) objects];
        if ([objects count] >= 2)
        {
          v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_45];
          v12 = [objects filteredArrayUsingPredicate:v11];

          if ([v12 count] >= 2)
          {
            [v4 addObjectsFromArray:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)deduplicatedItemsWithItems:(id)items debugInfo:(id)info progressBlock:(id)block
{
  v149 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  infoCopy = info;
  blockCopy = block;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = 0;
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 0;
  v81 = _Block_copy(blockCopy);
  if (v81 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v134[3] >= 0.01) && (v134[3] = v7, v132 = 0, (*(v81 + 2))(v81, &v132, 0.0), v8 = *(v138 + 24) | v132, *(v138 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v143 = 54;
      *&v143[4] = 2080;
      *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v86 = [itemsCopy count];
    v10 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_38698];
    [v10 setMaximumDistance:90.0];
    [v10 setMinimumNumberOfObjects:1];
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_2;
    v127[3] = &unk_27888A188;
    v79 = v81;
    v128 = v79;
    v129 = &v133;
    v131 = 0x3F847AE147AE147BLL;
    v130 = &v137;
    v73 = v10;
    v76 = [v10 performWithDataset:itemsCopy progressBlock:v127];
    if (*(v138 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v143 = 68;
        *&v143[4] = 2080;
        *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v72 = [(PGSemanticalDeduper *)self itemsNeedingSceneprintInTimeClusters:v76];
      v11 = [(PGSemanticalDeduper *)self sceneprintByItemIdentifierWithItems:?];
      v12 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_31;
      v125[3] = &unk_278883F90;
      v71 = v11;
      v126 = v71;
      [v12 setSceneprintGetterBlock:v125];
      v85 = v12;
      if (v81 && (v13 = CFAbsoluteTimeGetCurrent(), v13 - v134[3] >= 0.01) && (v134[3] = v13, v132 = 0, (*(v79 + 2))(v79, &v132, 0.2), v14 = *(v138 + 24) | v132, *(v138 + 24) = v14, (v14 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v143 = 80;
          *&v143[4] = 2080;
          *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v15 = [v76 count];
        v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        obj = v76;
        v16 = [obj countByEnumeratingWithState:&v121 objects:v148 count:16];
        if (v16)
        {
          v17 = 0.8 / v15;
          v80 = *v122;
          v18 = 0.2;
          do
          {
            v84 = 0;
            v78 = v16;
            do
            {
              if (*v122 != v80)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v121 + 1) + 8 * v84);
              v82 = objc_autoreleasePoolPush();
              objects = [v19 objects];
              v20 = [objects count];
              if (v20 >= 2)
              {
                v114[0] = MEMORY[0x277D85DD0];
                v114[1] = 3221225472;
                v114[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_34;
                v114[3] = &unk_278886858;
                v21 = v79;
                v115 = v21;
                v116 = &v133;
                v119 = v18;
                v120 = v17;
                v118 = 0x3F847AE147AE147BLL;
                v117 = &v137;
                v22 = [v85 stackSimilarItems:objects withSimilarity:2 timestampSupport:0 progressBlock:v114];
                v23 = MEMORY[0x277D86220];
                v24 = v22;
                if (*(v138 + 24) == 1)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v143 = 97;
                    *&v143[4] = 2080;
                    *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
                    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_97;
                }

                if (self->_usesAdaptiveSimilarStacking)
                {
                  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v112 = 0u;
                  v113 = 0u;
                  v110 = 0u;
                  v111 = 0u;
                  v27 = v24;
                  v28 = [v27 countByEnumeratingWithState:&v110 objects:v147 count:16];
                  if (!v28)
                  {
                    goto LABEL_48;
                  }

                  v29 = *v111;
LABEL_31:
                  v30 = 0;
                  while (1)
                  {
                    if (*v111 != v29)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v31 = *(*(&v110 + 1) + 8 * v30);
                    v32 = [v31 count];
                    if (v32 >= 4 && 3 * v32 > v86)
                    {
                      v103[0] = MEMORY[0x277D85DD0];
                      v103[1] = 3221225472;
                      v103[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_35;
                      v103[3] = &unk_278886858;
                      v104 = v21;
                      v105 = &v133;
                      v108 = v18;
                      v109 = v17;
                      v107 = 0x3F847AE147AE147BLL;
                      v106 = &v137;
                      v34 = [v85 adaptiveStackSimilarItems:v31 progressBlock:v103];
                      v35 = v34;
                      if (*(v138 + 24) == 1)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          *v143 = 111;
                          *&v143[4] = 2080;
                          *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

LABEL_97:
LABEL_98:
                        v65 = 0;
                        goto LABEL_99;
                      }

                      if ([v34 count])
                      {
                        [v26 addObjectsFromArray:v35];
                        v36 = MEMORY[0x277D86220];
                        v37 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                        {
                          v38 = [v35 count];
                          *buf = 134218240;
                          *v143 = v32;
                          *&v143[8] = 2048;
                          *&v143[10] = v38;
                          _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "Semantically deduping cluster of %lu items is too lossy, deduping at first split to %lu items", buf, 0x16u);
                        }
                      }

                      else
                      {
                        [v26 addObject:v31];
                      }
                    }

                    else
                    {
                      [v26 addObject:v31];
                    }

                    if (v28 == ++v30)
                    {
                      v28 = [v27 countByEnumeratingWithState:&v110 objects:v147 count:16];
                      if (!v28)
                      {
LABEL_48:

                        goto LABEL_50;
                      }

                      goto LABEL_31;
                    }
                  }
                }

                v26 = v22;
LABEL_50:
                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v89 = v26;
                v39 = [v89 countByEnumeratingWithState:&v99 objects:v146 count:16];
                if (!v39)
                {
                  goto LABEL_86;
                }

                v90 = *v100;
                while (2)
                {
                  v40 = 0;
                  v92 = v39;
LABEL_53:
                  if (*v100 != v90)
                  {
                    objc_enumerationMutation(v89);
                  }

                  v41 = *(*(&v99 + 1) + 8 * v40);
                  context = objc_autoreleasePoolPush();
                  v42 = [v41 count];
                  v43 = [(PGDeduper *)self requiredItemsInItems:v41];
                  v44 = [v43 count];
                  if (v44)
                  {
                    [v93 addObjectsFromArray:v43];
                    if (v42 > v44)
                    {
                      v45 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 134218498;
                        v46 = @"they are";
                        if (v44 == 1)
                        {
                          v46 = @"it is";
                        }

                        *v143 = v42;
                        *&v143[8] = 2048;
                        *&v143[10] = v44;
                        v144 = 2112;
                        v145 = v46;
                        _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "Semantically deduped %lu items to %lu because %@ required", buf, 0x20u);
                      }

                      [infoCopy dedupItems:v41 toRequiredItems:v43 withDedupingType:2];
                    }

LABEL_84:

                    objc_autoreleasePoolPop(context);
                    if (++v40 == v92)
                    {
                      v39 = [v89 countByEnumeratingWithState:&v99 objects:v146 count:16];
                      if (!v39)
                      {
LABEL_86:

                        firstObject2 = v115;
LABEL_87:

                        goto LABEL_88;
                      }

                      continue;
                    }

                    goto LABEL_53;
                  }

                  break;
                }

                v47 = v93;
                if (v42 < 2)
                {
                  firstObject = [v41 firstObject];
                  if (firstObject)
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                  v97 = 0u;
                  v98 = 0u;
                  v95 = 0u;
                  v96 = 0u;
                  v48 = v41;
                  v49 = [v48 countByEnumeratingWithState:&v95 objects:v141 count:16];
                  v87 = v42;
                  if (v49)
                  {
                    v50 = 0;
                    firstObject = 0;
                    v52 = *v96;
                    v53 = -1.79769313e308;
                    do
                    {
                      for (i = 0; i != v49; ++i)
                      {
                        if (*v96 != v52)
                        {
                          objc_enumerationMutation(v48);
                        }

                        v55 = *(*(&v95 + 1) + 8 * i);
                        [v55 clsContentScore];
                        v57 = v56;
                        isFavorite = [v55 isFavorite];
                        v59 = isFavorite;
                        if (!firstObject || v57 > v53 && ((v50 ^ 1 | isFavorite) & 1) != 0)
                        {
                          v60 = v55;

                          v50 = v59;
                          v53 = v57;
                          firstObject = v60;
                        }
                      }

                      v49 = [v48 countByEnumeratingWithState:&v95 objects:v141 count:16];
                    }

                    while (v49);
                  }

                  else
                  {
                    firstObject = 0;
                  }

                  v61 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 134217984;
                    *v143 = v87;
                    _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, "Semantically deduped %lu assets to 1", buf, 0xCu);
                  }

                  v47 = v93;
                  if (firstObject)
                  {
                    [infoCopy dedupItems:v48 toItem:firstObject withDedupingType:2];
LABEL_82:
                    [v47 addObject:firstObject];
                  }
                }

                goto LABEL_84;
              }

              if (v20 == 1)
              {
                firstObject2 = [objects firstObject];
                [v93 addObject:firstObject2];
                goto LABEL_87;
              }

LABEL_88:
              v18 = v17 + v18;
              if (v81)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - v134[3] >= 0.01)
                {
                  v134[3] = Current;
                  v132 = 0;
                  (*(v79 + 2))(v79, &v132, v18);
                  v63 = MEMORY[0x277D86220];
                  v64 = *(v138 + 24) | v132;
                  *(v138 + 24) = v64;
                  if (v64)
                  {
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v143 = 197;
                      *&v143[4] = 2080;
                      *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
                      _os_log_impl(&dword_22F0FC000, v63, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    goto LABEL_98;
                  }
                }
              }

              v65 = 1;
LABEL_99:

              objc_autoreleasePoolPop(v82);
              if (!v65)
              {

                goto LABEL_109;
              }

              ++v84;
            }

            while (v84 != v78);
            v16 = [obj countByEnumeratingWithState:&v121 objects:v148 count:16];
          }

          while (v16);
        }

        if (v81 && (v66 = CFAbsoluteTimeGetCurrent(), v66 - v134[3] >= 0.01) && (v134[3] = v66, v132 = 0, (*(v79 + 2))(v79, &v132, 1.0), v67 = *(v138 + 24) | v132, *(v138 + 24) = v67, (v67 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v143 = 201;
            *&v143[4] = 2080;
            *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_109:
          v9 = MEMORY[0x277CBEBF8];
          v68 = v93;
        }

        else
        {
          v68 = v93;
          v9 = v93;
        }
      }
    }
  }

  _Block_object_dispose(&v133, 8);
  _Block_object_dispose(&v137, 8);

  v69 = *MEMORY[0x277D85DE8];

  return v9;
}

void __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

id __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clsIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_34(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72) * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_35(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

double __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  [v5 timeIntervalSinceDate:v6];
  v8 = fabs(v7);

  return v8;
}

- (id)sceneprintByItemIdentifierWithItems:(id)items
{
  v21 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        clsSceneprint = [v10 clsSceneprint];
        if (clsSceneprint)
        {
          clsIdentifier = [v10 clsIdentifier];
          [v4 setObject:clsSceneprint forKeyedSubscript:clsIdentifier];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end