@interface PGCurator
+ (unint64_t)maximumNumberOfItemsToElectWithTotalNumberOfItems:(unint64_t)items spanningNumberOfDays:(double)days options:(id)options;
+ (unint64_t)numberOfItemsToShaveOffWithNumberOfItems:(unint64_t)items maximumNumberOfItems:(unint64_t)ofItems options:(id)options;
- (PGCurator)init;
- (double)evaluatedDurationWithItems:(id)items options:(id)options;
- (double)maximumDurationWithItems:(id)items options:(id)options;
- (id)bestItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info;
- (id)bestItemsForFeeder:(id)feeder options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)completedItems:(id)items withNumberOfItems:(unint64_t)ofItems fromAllItems:(id)allItems avoidingItems:(id)avoidingItems options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)deduplicatedItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)defaultItemSortDescriptors;
- (id)focusedItemsInItems:(id)items withOptions:(id)options;
- (id)newSemanticalDeduperWithOptions:(id)options;
- (id)shaveItems:(id)items downToNumberOfItems:(unint64_t)ofItems options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)summarizedItemsFromCluster:(id)cluster withBeautifier:(id)beautifier debugInfo:(id)info progressBlock:(id)block;
- (unint64_t)targetDurationBasedNumberOfItemsToElectFromItems:(id)items options:(id)options;
- (void)_checkRequiredItemsWithIdentifiers:(id)identifiers inItems:(id)items;
- (void)completeItems:(id)items withFavoriteItemsFromItems:(id)fromItems upToNumberOfItems:(unint64_t)ofItems debugInfo:(id)info progressBlock:(id)block;
- (void)completeItems:(id)items withItems:(id)withItems forPersonLocalIdentifiers:(id)identifiers options:(id)options nonRemovableItems:(id)removableItems debugInfo:(id)info progressBlock:(id)block;
@end

@implementation PGCurator

- (id)newSemanticalDeduperWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(PGSemanticalDeduper);
  semanticalDedupingUsesAdaptiveSimilarStacking = [optionsCopy semanticalDedupingUsesAdaptiveSimilarStacking];

  [(PGSemanticalDeduper *)v4 setUsesAdaptiveSimilarStacking:semanticalDedupingUsesAdaptiveSimilarStacking];
  return v4;
}

- (id)shaveItems:(id)items downToNumberOfItems:(unint64_t)ofItems options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v10 = MEMORY[0x277D27670];
  blockCopy = block;
  optionsCopy = options;
  itemsCopy = items;
  v14 = [[v10 alloc] initWithSimilarityModelClass:objc_opt_class()];
  [v14 setEnableStatisticalSampling:1];
  [v14 setUsesKMeans:1];
  [v14 setEnableIntermediateNaturalClustering:0];
  [v14 setEnableFinalNaturalClustering:0];
  [v14 setEnableFinalTimeClustering:0];
  uuidsOfRequiredAssets = [optionsCopy uuidsOfRequiredAssets];

  [v14 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
  v16 = [v14 performWithItems:itemsCopy maximumNumberOfItemsToChoose:ofItems debugInfo:0 progressBlock:blockCopy];

  return v16;
}

- (id)bestItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info
{
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__PGCurator_bestItemIdentifiersWithItems_options_debugInfo___block_invoke;
  v34[3] = &unk_278886108;
  v27 = v10;
  v35 = v27;
  v11 = optionsCopy;
  v36 = v11;
  v12 = v9;
  v37 = v12;
  v29 = itemsCopy;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v34];
  v13 = [[PGCuratorInvestigationFeeder alloc] initWithItems:v12];
  v14 = [[PGCurationOptions alloc] initWithDictionaryRepresentation:v11];
  v15 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v12];
  v26 = v13;
  v16 = [(PGCurator *)self bestItemsForFeeder:v13 options:v14 debugInfo:v15 progressBlock:0];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        clsIdentifier = [*(*(&v30 + 1) + 8 * i) clsIdentifier];
        [v17 addObject:clsIdentifier];
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
  }

  if (info)
  {
    *info = [v15 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

void __60__PGCurator_bestItemIdentifiersWithItems_options_debugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

- (id)defaultItemSortDescriptors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cls_universalDate" ascending:1];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsIdentifier" ascending:1];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)completedItems:(id)items withNumberOfItems:(unint64_t)ofItems fromAllItems:(id)allItems avoidingItems:(id)avoidingItems options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v89 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  allItemsCopy = allItems;
  avoidingItemsCopy = avoidingItems;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v15 = _Block_copy(blockCopy);
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v49 = blockCopy;
  if (!v15 || (v16 = CFAbsoluteTimeGetCurrent(), v16 - v76[3] < 0.01) || (v76[3] = v16, v74 = 0, (*(v15 + 2))(v15, &v74, 0.0), v17 = *(v80 + 24) | v74, *(v80 + 24) = v17, (v17 & 1) == 0))
  {
    if (!ofItems)
    {
      v18 = itemsCopy;
      goto LABEL_45;
    }

    ofItemsCopy = ofItems;
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v20 = avoidingItemsCopy;
    v21 = [v20 countByEnumeratingWithState:&v70 objects:v84 count:16];
    if (v21)
    {
      v22 = *v71;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v71 != v22)
          {
            objc_enumerationMutation(v20);
          }

          clsIdentifier = [*(*(&v70 + 1) + 8 * i) clsIdentifier];
          [v19 addObject:clsIdentifier];
        }

        v21 = [v20 countByEnumeratingWithState:&v70 objects:v84 count:16];
      }

      while (v21);
    }

    v55 = +[PGCurationManager assetsBeautifier];
    [v55 setIdentifiersOfRequiredItems:v19];
    uuidsOfEligibleAssets = [optionsCopy uuidsOfEligibleAssets];
    [v55 setIdentifiersOfEligibleItems:uuidsOfEligibleAssets];

    v26 = [v19 count];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke;
    v65[3] = &unk_27888A188;
    v27 = v15;
    v66 = v27;
    v67 = &v75;
    v68 = &v79;
    v69 = 0x3F847AE147AE147BLL;
    v47 = [v55 performWithItems:allItemsCopy maximumNumberOfItemsToChoose:v26 + ofItemsCopy debugInfo:0 progressBlock:v65];
    if (*(v80 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v86 = 939;
        v87 = 2080;
        v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v18 = MEMORY[0x277CBEBF8];
      goto LABEL_44;
    }

    v46 = v27;
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v29 = v47;
    v30 = [v29 countByEnumeratingWithState:&v61 objects:v83 count:16];
    if (v30)
    {
      v31 = *v62;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v62 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v61 + 1) + 8 * j);
          clsIdentifier2 = [v33 clsIdentifier];
          v35 = [v19 containsObject:clsIdentifier2];

          if ((v35 & 1) == 0)
          {
            [v28 addObject:v33];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v61 objects:v83 count:16];
      }

      while (v30);
    }

    v36 = v28;
    v37 = v36;
    if ([v36 count] > ofItemsCopy)
    {
      [v55 setIdentifiersOfRequiredItems:0];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke_283;
      v56[3] = &unk_27888A188;
      v57 = v46;
      v58 = &v75;
      v59 = &v79;
      v60 = 0x3F847AE147AE147BLL;
      v37 = [v55 performWithItems:v36 maximumNumberOfItemsToChoose:ofItemsCopy progressBlock:v56];
    }

    v38 = itemsCopy;
    if ([v37 count])
    {
      v39 = [v38 arrayByAddingObjectsFromArray:v37];

      if (infoCopy)
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding %lu assets (%lu requested, %lu found) for layout purposes", objc_msgSend(v37, "count"), ofItemsCopy, objc_msgSend(v36, "count")];
        v41 = [MEMORY[0x277CBEB98] setWithArray:v37];
        [infoCopy setState:3 ofItems:v41 withReason:v40];
      }

      if (!v15)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v39 = v38;
      if (!v15)
      {
        goto LABEL_42;
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v76[3] >= 0.01)
    {
      v76[3] = Current;
      v74 = 0;
      (v46)[2](v46, &v74, 1.0);
      v43 = *(v80 + 24) | v74;
      *(v80 + 24) = v43;
      if (v43)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v86 = 971;
          v87 = 2080;
          v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v18 = MEMORY[0x277CBEBF8];
        goto LABEL_43;
      }
    }

LABEL_42:
    v18 = v39;
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v86 = 918;
    v87 = 2080;
    v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v18 = MEMORY[0x277CBEBF8];
LABEL_45:
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);

  v44 = *MEMORY[0x277D85DE8];

  return v18;
}

void __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke_283(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)completeItems:(id)items withItems:(id)withItems forPersonLocalIdentifiers:(id)identifiers options:(id)options nonRemovableItems:(id)removableItems debugInfo:(id)info progressBlock:(id)block
{
  v166 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  withItemsCopy = withItems;
  identifiersCopy = identifiers;
  optionsCopy = options;
  removableItemsCopy = removableItems;
  infoCopy = info;
  v17 = 0.0;
  v120 = _Block_copy(block);
  if (!v120)
  {
    goto LABEL_7;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_7;
  }

  v153 = 0;
  v120[2](v120, &v153, 0.0);
  if (v153 != 1)
  {
    v17 = Current;
LABEL_7:
    v98 = optionsCopy;
    v99 = infoCopy;
    v97 = identifiersCopy;
    v119 = [identifiersCopy mutableCopy];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v20 = itemsCopy;
    v115 = [v20 countByEnumeratingWithState:&v149 objects:v161 count:16];
    v118 = v20;
    if (v115)
    {
      v112 = *v150;
      do
      {
        for (i = 0; i != v115; ++i)
        {
          if (*v150 != v112)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v149 + 1) + 8 * i);
          if (v120)
          {
            v23 = CFAbsoluteTimeGetCurrent();
            if (v23 - v17 >= 0.01)
            {
              v153 = 0;
              v120[2](v120, &v153, 0.5);
              if (v153)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v163 = 789;
                  v164 = 2080;
                  v165 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v34 = v119;
                goto LABEL_100;
              }

              v17 = v23;
            }
          }

          clsPersonAndPetLocalIdentifiers = [v22 clsPersonAndPetLocalIdentifiers];
          v25 = [MEMORY[0x277CBEB98] setWithArray:clsPersonAndPetLocalIdentifiers];
          [v119 minusSet:v25];

          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v26 = clsPersonAndPetLocalIdentifiers;
          v27 = [v26 countByEnumeratingWithState:&v145 objects:v160 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v146;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v146 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v145 + 1) + 8 * j);
                v32 = [v19 objectForKeyedSubscript:v31];
                v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "unsignedIntegerValue") + 1}];

                [v19 setObject:v33 forKeyedSubscript:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v145 objects:v160 count:16];
            }

            while (v28);
          }

          v20 = v118;
        }

        v115 = [v118 countByEnumeratingWithState:&v149 objects:v161 count:16];
      }

      while (v115);
    }

    v34 = v119;
    if (![v119 count])
    {
LABEL_101:

      identifiersCopy = v97;
      optionsCopy = v98;
      infoCopy = v99;
      goto LABEL_102;
    }

    v106 = +[PGCurationManager assetsBeautifier];
    v103 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    obj = [v119 copy];
    v35 = [obj countByEnumeratingWithState:&v141 objects:v159 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v142;
      v104 = *v142;
      do
      {
        v38 = 0;
        v107 = v36;
        do
        {
          if (*v142 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v141 + 1) + 8 * v38);
          if (v120)
          {
            v40 = CFAbsoluteTimeGetCurrent();
            if (v40 - v17 >= 0.01)
            {
              v153 = 0;
              v120[2](v120, &v153, 0.5);
              if (v153)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v163 = 812;
                  v164 = 2080;
                  v165 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                goto LABEL_99;
              }

              v17 = v40;
            }
          }

          if ([v34 containsObject:v39])
          {
            v116 = v38;
            v41 = objc_opt_new();
            v137 = 0u;
            v138 = 0u;
            v139 = 0u;
            v140 = 0u;
            v42 = withItemsCopy;
            v43 = [v42 countByEnumeratingWithState:&v137 objects:v158 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v138;
              do
              {
                for (k = 0; k != v44; ++k)
                {
                  if (*v138 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v137 + 1) + 8 * k);
                  clsPersonAndPetLocalIdentifiers2 = [v47 clsPersonAndPetLocalIdentifiers];
                  v49 = [clsPersonAndPetLocalIdentifiers2 containsObject:v39];

                  if (v49)
                  {
                    [v41 addObject:v47];
                  }
                }

                v44 = [v42 countByEnumeratingWithState:&v137 objects:v158 count:16];
              }

              while (v44);
            }

            v50 = [v106 bestItemInItems:v41];
            v51 = v50;
            v34 = v119;
            if (v50)
            {
              clsPersonAndPetLocalIdentifiers3 = [v50 clsPersonAndPetLocalIdentifiers];
              [v118 addObject:v51];
              v113 = v51;
              [v103 addObject:v51];
              v53 = [MEMORY[0x277CBEB98] setWithArray:clsPersonAndPetLocalIdentifiers3];
              [v119 minusSet:v53];

              v135 = 0u;
              v136 = 0u;
              v133 = 0u;
              v134 = 0u;
              v54 = clsPersonAndPetLocalIdentifiers3;
              v55 = [v54 countByEnumeratingWithState:&v133 objects:v157 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v134;
                do
                {
                  for (m = 0; m != v56; ++m)
                  {
                    if (*v134 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = *(*(&v133 + 1) + 8 * m);
                    v60 = [v19 objectForKeyedSubscript:v59];
                    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v60, "unsignedIntegerValue") + 1}];

                    [v19 setObject:v61 forKeyedSubscript:v59];
                  }

                  v56 = [v54 countByEnumeratingWithState:&v133 objects:v157 count:16];
                }

                while (v56);
              }

              v51 = v113;
              v34 = v119;
            }

            v37 = v104;
            v36 = v107;
            v38 = v116;
          }

          ++v38;
        }

        while (v38 != v36);
        v36 = [obj countByEnumeratingWithState:&v141 objects:v159 count:16];
      }

      while (v36);
    }

    v62 = +[PGCurationManager maximumNumberOfItemsForDuration:withTotalNumberOfItems:](PGCurationManager, "maximumNumberOfItemsForDuration:withTotalNumberOfItems:", [v98 duration], objc_msgSend(withItemsCopy, "count"));
    if (v99)
    {
      [v99 setAgent:@"CompleteItems"];
      [v99 setStage:@"Repechage"];
      [v99 setState:3 ofItems:v103 withReason:@"Contains needed faces"];
    }

    v63 = v118;
    if ([v118 count] <= v62)
    {
      goto LABEL_109;
    }

    v64 = [v118 count];
    v65 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    reverseObjectEnumerator = [v118 reverseObjectEnumerator];
    v66 = [reverseObjectEnumerator countByEnumeratingWithState:&v129 objects:v156 count:16];
    if (!v66)
    {
      goto LABEL_104;
    }

    v67 = v66;
    v96 = v64 - v62;
    v68 = *v130;
    v95 = v65;
    v101 = *v130;
LABEL_62:
    v69 = 0;
    v105 = v67;
    while (1)
    {
      if (*v130 != v68)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v117 = v69;
      v70 = *(*(&v129 + 1) + 8 * v69);
      --v64;
      v71 = MEMORY[0x277CBEB98];
      clsPersonAndPetLocalIdentifiers4 = [v70 clsPersonAndPetLocalIdentifiers];
      v73 = [v71 setWithArray:clsPersonAndPetLocalIdentifiers4];

      if (([removableItemsCopy containsObject:v70] & 1) == 0)
      {
        break;
      }

      v74 = v117;
LABEL_90:

      v69 = v74 + 1;
      if (v69 == v67)
      {
        v67 = [reverseObjectEnumerator countByEnumeratingWithState:&v129 objects:v156 count:16];
        if (v67)
        {
          goto LABEL_62;
        }

LABEL_104:

        v34 = v119;
        if ([v65 count])
        {
          if (v99)
          {
            v93 = [v63 objectsAtIndexes:v65];
            v94 = [MEMORY[0x277CBEB98] setWithArray:v93];
            [v99 setState:2 ofItems:v94 withReason:@"Too many items after repechage"];
          }

          [v63 removeObjectsAtIndexes:v65];
        }

LABEL_109:
        if (v120)
        {
          if (CFAbsoluteTimeGetCurrent() - v17 >= 0.01)
          {
            v153 = 0;
            v120[2](v120, &v153, 1.0);
            if (v153)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v163 = 912;
                v164 = 2080;
                v165 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }
            }
          }
        }

LABEL_99:

        v20 = v106;
LABEL_100:

        goto LABEL_101;
      }
    }

    v114 = v64;
    if (v120)
    {
      v75 = CFAbsoluteTimeGetCurrent();
      if (v75 - v17 >= 0.01)
      {
        v153 = 0;
        v120[2](v120, &v153, 0.5);
        if (v153)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v163 = 871;
            v164 = 2080;
            v165 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v34 = v119;
          goto LABEL_99;
        }

        v17 = v75;
      }
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    obja = v73;
    v76 = v73;
    v77 = [v76 countByEnumeratingWithState:&v125 objects:v155 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v126;
LABEL_73:
      v80 = 0;
      while (1)
      {
        if (*v126 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = [v19 objectForKeyedSubscript:*(*(&v125 + 1) + 8 * v80)];
        unsignedIntegerValue = [v81 unsignedIntegerValue];

        if (unsignedIntegerValue == 1)
        {
          break;
        }

        if (v78 == ++v80)
        {
          v78 = [v76 countByEnumeratingWithState:&v125 objects:v155 count:16];
          if (v78)
          {
            goto LABEL_73;
          }

          goto LABEL_79;
        }
      }
    }

    else
    {
LABEL_79:

      v64 = v114;
      [v65 addIndex:v114];
      if (v96 == 1)
      {

        goto LABEL_104;
      }

      --v96;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v83 = v76;
      v84 = [v83 countByEnumeratingWithState:&v121 objects:v154 count:16];
      if (!v84)
      {
        goto LABEL_89;
      }

      v85 = v84;
      v86 = *v122;
      do
      {
        for (n = 0; n != v85; ++n)
        {
          if (*v122 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v121 + 1) + 8 * n);
          v89 = [v19 objectForKeyedSubscript:v88];
          unsignedIntegerValue2 = [v89 unsignedIntegerValue];
          v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2 - 1];

          [v19 setObject:v91 forKeyedSubscript:v88];
        }

        v85 = [v83 countByEnumeratingWithState:&v121 objects:v154 count:16];
      }

      while (v85);
      v63 = v118;
      v65 = v95;
    }

    v64 = v114;
LABEL_89:
    v68 = v101;
    v74 = v117;

    v67 = v105;
    v73 = obja;
    goto LABEL_90;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v163 = 781;
    v164 = 2080;
    v165 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_102:

  v92 = *MEMORY[0x277D85DE8];
}

- (void)completeItems:(id)items withFavoriteItemsFromItems:(id)fromItems upToNumberOfItems:(unint64_t)ofItems debugInfo:(id)info progressBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  fromItemsCopy = fromItems;
  infoCopy = info;
  v14 = _Block_copy(block);
  v15 = 0.0;
  if (!v14 || (v16 = CFAbsoluteTimeGetCurrent(), v16 < 0.01))
  {
LABEL_7:
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = itemsCopy;
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:itemsCopy];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = fromItemsCopy;
    v19 = fromItemsCopy;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v39 + 1) + 8 * i);
          if (([v18 containsObject:v24] & 1) == 0 && objc_msgSend(v24, "isFavorite"))
          {
            [v17 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v21);
    }

    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v26 = &unk_22F784000;
      if (Current - v15 >= 0.01)
      {
        v43 = 0;
        v14[2](v14, &v43, 0.5);
        if (v43)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v47 = 744;
            v48 = 2080;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          fromItemsCopy = v37;
          itemsCopy = v38;
LABEL_38:

          goto LABEL_39;
        }

        v15 = Current;
      }
    }

    else
    {
      v26 = &unk_22F784000;
    }

    v27 = [v17 count];
    if (v27)
    {
      v28 = v27;
      [infoCopy setAgent:@"PGManager"];
      [infoCopy setStage:@"Complete with Favorite Items"];
      if (v28 > ofItems)
      {
        v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsContentScore" ascending:0];
        v44[0] = v29;
        v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cls_universalDate" ascending:1];
        v44[1] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];

        v32 = [v17 sortedArrayUsingDescriptors:v31];
        v33 = [v32 subarrayWithRange:{0, ofItems}];

        [v38 addObjectsFromArray:v33];
        if (infoCopy)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Electing %lu out of %lu available favorite items", objc_msgSend(v33, "count"), v28];
          v35 = [MEMORY[0x277CBEB98] setWithArray:v17];
          [infoCopy setState:3 ofItems:v35 withReason:v34];
        }

        v26 = &unk_22F784000;
        goto LABEL_32;
      }

      [v38 addObjectsFromArray:v17];
      if (infoCopy)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enough remaining slots (%lu) to include all %lu available favorite items", ofItems, v28];
        v33 = [MEMORY[0x277CBEB98] setWithArray:v17];
        [infoCopy setState:3 ofItems:v33 withReason:v31];
LABEL_32:
      }
    }

    fromItemsCopy = v37;
    itemsCopy = v38;
    if (v14)
    {
      if (CFAbsoluteTimeGetCurrent() - v15 >= v26[76])
      {
        v43 = 0;
        v14[2](v14, &v43, 1.0);
        if (v43)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v47 = 774;
            v48 = 2080;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_38;
  }

  v43 = 0;
  v14[2](v14, &v43, 0.0);
  if (v43 != 1)
  {
    v15 = v16;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v47 = 732;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_39:

  v36 = *MEMORY[0x277D85DE8];
}

- (id)deduplicatedItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v46[3] < 0.01) || (v46[3] = v15, v44 = 0, (*(v14 + 2))(v14, &v44, 0.0), v16 = *(v50 + 24) | v44, *(v50 + 24) = v16, (v16 & 1) == 0))
  {
    uuidsOfRequiredAssets = [optionsCopy uuidsOfRequiredAssets];
    v19 = itemsCopy;
    if ([optionsCopy semanticalDedupingIsEnabled])
    {
      v20 = [(PGCurator *)self newSemanticalDeduperWithOptions:optionsCopy];
      if (v20)
      {
        v32 = [v19 count];
        [v20 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke;
        v39[3] = &unk_27888A188;
        v40 = v14;
        v41 = &v45;
        v42 = &v49;
        v43 = 0x3F847AE147AE147BLL;
        v21 = [v20 deduplicatedItemsWithItems:v19 debugInfo:infoCopy progressBlock:v39];

        if (*(v50 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v54 = 704;
            v55 = 2080;
            v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_35;
        }

        v22 = self->_loggingConnection;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v21 count];
          *buf = 67109376;
          v54 = v32;
          v55 = 1024;
          LODWORD(v56) = v30;
          _os_log_debug_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_DEBUG, "Semantical deduper reduced %d assets to %d", buf, 0xEu);
        }
      }

      else
      {
        v21 = v19;
      }
    }

    else
    {
      v21 = v19;
    }

    if ([optionsCopy movieDedupingIsEnabled])
    {
      v23 = [(PGCurator *)self newMovieDeduperWithOptions:optionsCopy];
      if (v23)
      {
        v33 = [v21 count];
        [v23 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke_248;
        v34[3] = &unk_27888A188;
        v35 = v14;
        v36 = &v45;
        v37 = &v49;
        v38 = 0x3F847AE147AE147BLL;
        v24 = [v23 deduplicatedItemsWithItems:v21 debugInfo:infoCopy progressBlock:v34];

        if (*(v50 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v54 = 719;
            v55 = 2080;
            v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = MEMORY[0x277CBEBF8];
          v21 = v24;
          goto LABEL_37;
        }

        v25 = self->_loggingConnection;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v31 = [v24 count];
          *buf = 67109376;
          v54 = v33;
          v55 = 1024;
          LODWORD(v56) = v31;
          _os_log_debug_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_DEBUG, "Movie deduper reduced %d assets to %d", buf, 0xEu);
        }
      }

      else
      {
        v24 = v21;
      }

      v21 = v24;
    }

    if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current - v46[3] < 0.01) || (v46[3] = Current, v44 = 0, (*(v14 + 2))(v14, &v44, 1.0), v27 = *(v50 + 24) | v44, *(v50 + 24) = v27, (v27 & 1) == 0))
    {
      v21 = v21;
      v17 = v21;
      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v54 = 724;
      v55 = 2080;
      v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_35:
    v17 = MEMORY[0x277CBEBF8];
LABEL_37:

    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v54 = 688;
    v55 = 2080;
    v56 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = MEMORY[0x277CBEBF8];
LABEL_38:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v17;
}

void __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke_248(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_checkRequiredItemsWithIdentifiers:(id)identifiers inItems:(id)items
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  itemsCopy = items;
  if (identifiersCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = itemsCopy;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          clsIdentifier = [v14 clsIdentifier];
          v16 = [identifiersCopy containsObject:clsIdentifier];

          if (v16)
          {
            if ([v8 containsObject:v14])
            {
              loggingConnection = self->_loggingConnection;
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Required items found several times in final sorted items", buf, 2u);
              }
            }

            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v18 = [v8 count];
    if (v18 != [identifiersCopy count])
    {
      v19 = self->_loggingConnection;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "Final sorted items don't contain all required items", buf, 2u);
      }
    }

    itemsCopy = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)bestItemsForFeeder:(id)feeder options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v365 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v349 = 0;
  v350 = &v349;
  v351 = 0x2020000000;
  v352 = 0;
  v345 = 0;
  v346 = &v345;
  v347 = 0x2020000000;
  v348 = 0;
  if (v10)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v346[3] >= 0.01)
    {
      v346[3] = Current;
      LOBYTE(v320) = 0;
      v10[2](v10, &v320, 0.0);
      v12 = *(v350 + 24) | v320;
      *(v350 + 24) = v12;
      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v355 = 155;
          *&v355[4] = 2080;
          *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_11;
      }
    }
  }

  if (![feederCopy numberOfItems])
  {
LABEL_11:
    v15 = MEMORY[0x277CBEBF8];
    goto LABEL_279;
  }

  selfCopy = self;
  v227 = v10;
  context = objc_autoreleasePoolPush();
  sharingFilter = [optionsCopy sharingFilter];
  if (sharingFilter)
  {
    if (sharingFilter == 1)
    {
      sharedItems = [feederCopy sharedItems];
      v14 = [sharedItems count];
    }

    else if (sharingFilter == 2)
    {
      sharedItems = [feederCopy allItems];
      v14 = [sharedItems count];
    }

    else
    {
      sharedItems = 0;
      v14 = [0 count];
    }
  }

  else
  {
    sharedItems = [feederCopy privateItems];
    v14 = [sharedItems count];
  }

  if (v14)
  {
    uuidsOfEligibleAssets = [optionsCopy uuidsOfEligibleAssets];
    identicalDedupingIsEnabled = [optionsCopy identicalDedupingIsEnabled];
    uuidsOfRequiredAssets = [optionsCopy uuidsOfRequiredAssets];
    v17 = [uuidsOfRequiredAssets count];
    v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v17];
    if (v17)
    {
      v344 = 0u;
      v343 = 0u;
      v342 = 0u;
      v341 = 0u;
      v19 = sharedItems;
      v20 = [v19 countByEnumeratingWithState:&v341 objects:v364 count:16];
      if (v20)
      {
        v21 = *v342;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v342 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v341 + 1) + 8 * i);
            clsIdentifier = [v23 clsIdentifier];
            if ([uuidsOfRequiredAssets containsObject:clsIdentifier])
            {
              if (uuidsOfEligibleAssets && ([uuidsOfEligibleAssets containsObject:clsIdentifier] & 1) == 0)
              {
                v25 = selfCopy->_loggingConnection;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v355 = clsIdentifier;
                  _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "Required item %@ is not part of eligible items", buf, 0xCu);
                }
              }

              [v18 addObject:v23];
              if ([v18 count] == v17)
              {

                goto LABEL_34;
              }
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v341 objects:v364 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_34:

      if (infoCopy)
      {
        [infoCopy setAgent:@"Curator"];
        [infoCopy setStage:@"Required Items"];
        [infoCopy setState:4 ofItems:v18 withReason:@"Items are required"];
      }
    }

    v26 = [(PGCurator *)selfCopy focusedItemsInItems:sharedItems withOptions:optionsCopy];
    if ([v26 count])
    {
      if ([v18 count])
      {
        v27 = [v18 setByAddingObjectsFromArray:v26];
        allObjects = [v27 allObjects];

        v26 = allObjects;
      }

      if (infoCopy)
      {
        v29 = [MEMORY[0x277CBEB98] setWithArray:v26];
        [infoCopy chooseItems:v29 inItems:sharedItems withReason:@"Focused Items"];
      }

      v26 = v26;

      v30 = v26;
    }

    else
    {
      v30 = sharedItems;
    }

    sharedItems = v30;
    v223 = [v30 count];
    if (!v223)
    {
      v15 = MEMORY[0x277CBEBF8];
LABEL_277:

      goto LABEL_278;
    }

    if (uuidsOfEligibleAssets)
    {
      v31 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v223];
      v340 = 0u;
      v339 = 0u;
      v338 = 0u;
      v337 = 0u;
      v32 = sharedItems;
      v33 = [v32 countByEnumeratingWithState:&v337 objects:v363 count:16];
      if (v33)
      {
        v34 = *v338;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v338 != v34)
            {
              objc_enumerationMutation(v32);
            }

            clsIdentifier2 = [*(*(&v337 + 1) + 8 * j) clsIdentifier];
            [v31 addObject:clsIdentifier2];
          }

          v33 = [v32 countByEnumeratingWithState:&v337 objects:v363 count:16];
        }

        while (v33);
      }

      [v31 intersectSet:uuidsOfEligibleAssets];
      v225 = v31;
    }

    else
    {
      v225 = 0;
    }

    duration = [optionsCopy duration];
    includesAllFaces = [optionsCopy includesAllFaces];
    useDurationBasedCuration = [optionsCopy useDurationBasedCuration];
    if (useDurationBasedCuration)
    {
      [(PGCurator *)selfCopy maximumDurationWithItems:sharedItems options:optionsCopy];
      v40 = v39;
      [optionsCopy minimumDuration];
      v42 = v41;
      if (v41 > 0.0 && v40 < v41)
      {
        v43 = selfCopy->_loggingConnection;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *v355 = v40;
          *&v355[8] = 2048;
          *&v355[10] = v42;
          _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "DurationEvaluation: maximumDuration with all items is %f, cannot match minimum duration %f", buf, 0x16u);
        }

        if ([optionsCopy failIfMinimumDurationNotReached])
        {
          v15 = MEMORY[0x277CBEBF8];
LABEL_276:
          uuidsOfEligibleAssets = v225;
          goto LABEL_277;
        }
      }

      targetNumberOfItems = [(PGCurator *)selfCopy targetDurationBasedNumberOfItemsToElectFromItems:sharedItems options:optionsCopy];
    }

    else if ([optionsCopy targetNumberOfItems])
    {
      targetNumberOfItems = [optionsCopy targetNumberOfItems];
    }

    else
    {
      universalEndDate = [feederCopy universalEndDate];
      universalStartDate = [feederCopy universalStartDate];
      [universalEndDate timeIntervalSinceDate:universalStartDate];
      v48 = v47;

      targetNumberOfItems = [objc_opt_class() maximumNumberOfItemsToElectWithTotalNumberOfItems:v223 spanningNumberOfDays:optionsCopy options:v48 / 86400.0];
    }

    v49 = targetNumberOfItems;
    if (targetNumberOfItems <= [v18 count])
    {
      defaultItemSortDescriptors = [(PGCurator *)selfCopy defaultItemSortDescriptors];
      v15 = [v18 sortedArrayUsingDescriptors:defaultItemSortDescriptors];

      goto LABEL_276;
    }

    v50 = [v225 count];
    skipCurationIfEligibleItemsFitTargetDuration = [optionsCopy skipCurationIfEligibleItemsFitTargetDuration];
    if (v225)
    {
      v52 = skipCurationIfEligibleItemsFitTargetDuration;
    }

    else
    {
      v52 = 0;
    }

    if (v52 == 1 && v49 + 2 >= v50)
    {
      v53 = MEMORY[0x277CCAC30];
      v335[0] = MEMORY[0x277D85DD0];
      v335[1] = 3221225472;
      v335[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke;
      v335[3] = &unk_27887FE70;
      v336 = v225;
      v54 = [v53 predicateWithBlock:v335];
      v15 = [sharedItems filteredArrayUsingPredicate:v54];

      goto LABEL_276;
    }

    v217 = v49;
    v222 = [PGCurationManager summaryClusteringForDuration:duration];
    if ([optionsCopy shouldSkipClustering])
    {
      v56 = objc_alloc(MEMORY[0x277D277C8]);
      v57 = [MEMORY[0x277D3AC38] clusterWithObjects:sharedItems];
      v58 = [v56 initWithCluster:v57 numberOfItemsToElect:v49];
      v362 = v58;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v362 count:1];
    }

    else
    {
      v330[0] = MEMORY[0x277D85DD0];
      v330[1] = 3221225472;
      v330[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2;
      v330[3] = &unk_27888A188;
      v331 = v227;
      v332 = &v345;
      v334 = 0x3F847AE147AE147BLL;
      v333 = &v349;
      v59 = [v222 performWithItems:sharedItems identifiersOfEligibleItems:v225 maximumNumberOfItemsToElect:v49 debugInfo:infoCopy progressBlock:v330];
      v57 = v331;
    }

    v60 = selfCopy->_loggingConnection;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = [sharedItems count];
      v62 = [v59 count];
      *buf = 134219008;
      *v355 = v61;
      *&v355[8] = 1024;
      *&v355[10] = useDurationBasedCuration;
      *&v355[14] = 2048;
      *&v355[16] = v49;
      *&v355[24] = 1024;
      *&v355[26] = includesAllFaces;
      *v356 = 2048;
      *&v356[2] = v62;
      _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "Curated Items: feederCount:%ld durationBased:%d maximumNumberOfItems:%ld includeAllFaces:%d clustersCount:%ld", buf, 0x2Cu);
    }

    if (*(v350 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v355 = 302;
        *&v355[4] = 2080;
        *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v15 = MEMORY[0x277CBEBF8];
      goto LABEL_275;
    }

    if (![v59 count])
    {
      defaultItemSortDescriptors2 = [(PGCurator *)selfCopy defaultItemSortDescriptors];
      v15 = [v18 sortedArrayUsingDescriptors:defaultItemSortDescriptors2];

LABEL_275:
      goto LABEL_276;
    }

    v63 = +[PGCurationManager assetsBeautifier];
    [v63 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
    [v63 setIdentifiersOfEligibleItems:v225];
    [v63 setDiscardNonEligibleClustersInSampling:v225 != 0];
    [v63 setEnableIntermediateNaturalClustering:identicalDedupingIsEnabled];
    [v63 setEnableFinalNaturalClustering:identicalDedupingIsEnabled];
    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v208 = includesAllFaces;
    if (useDurationBasedCuration)
    {
      v65 = objc_alloc_init(MEMORY[0x277CBEB18]);

      v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v67 = v59;
    }

    else
    {
      v67 = v59;
      v66 = 0;
      v65 = 0;
    }

    v326 = 0;
    v327 = &v326;
    v328 = 0x2020000000;
    v329 = 0;
    v320 = 0;
    v321 = &v320;
    v322 = 0x3032000000;
    v323 = __Block_byref_object_copy__10246;
    v324 = __Block_byref_object_dispose__10247;
    v325 = 0;
    v314 = 0;
    v315 = &v314;
    v316 = 0x3032000000;
    v317 = __Block_byref_object_copy__10246;
    v318 = __Block_byref_object_dispose__10247;
    v319 = 0;
    v69 = objc_alloc_init(PGUnfairLock);
    v70 = [v67 count];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_210;
    block[3] = &unk_27887FEC0;
    v207 = v67;
    v297 = v207;
    v209 = v227;
    v306 = v209;
    v312 = 0x3F847AE147AE147BLL;
    v307 = &v345;
    v308 = &v349;
    v212 = v69;
    v298 = v212;
    v299 = selfCopy;
    v213 = v63;
    v300 = v213;
    v210 = infoCopy;
    v301 = v210;
    v215 = optionsCopy;
    v302 = v215;
    v221 = v64;
    v303 = v221;
    v313 = useDurationBasedCuration;
    v216 = v66;
    v304 = v216;
    v309 = &v326;
    v214 = v65;
    v305 = v214;
    v310 = &v320;
    v311 = &v314;
    dispatch_apply(v70, 0, block);
    if (*(v350 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v355 = 372;
        *&v355[4] = 2080;
        *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v15 = MEMORY[0x277CBEBF8];
      v59 = v67;
      goto LABEL_274;
    }

    v59 = v67;
    v71 = v208;
    if ([v18 count])
    {
      v72 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v18];
      v294 = 0u;
      v295 = 0u;
      v292 = 0u;
      v293 = 0u;
      v73 = v221;
      v74 = [v73 countByEnumeratingWithState:&v292 objects:v361 count:16];
      if (v74)
      {
        v75 = *v293;
LABEL_95:
        v76 = 0;
        while (1)
        {
          if (*v293 != v75)
          {
            objc_enumerationMutation(v73);
          }

          [v72 removeObject:*(*(&v292 + 1) + 8 * v76)];
          if (![v72 count])
          {
            break;
          }

          if (v74 == ++v76)
          {
            v74 = [v73 countByEnumeratingWithState:&v292 objects:v361 count:16];
            if (v74)
            {
              goto LABEL_95;
            }

            break;
          }
        }
      }

      v71 = v208;
      if ([v72 count])
      {
        allObjects2 = [v72 allObjects];
        [v73 addObjectsFromArray:allObjects2];

        if (useDurationBasedCuration)
        {
          allObjects3 = [v72 allObjects];
          [v214 addObjectsFromArray:allObjects3];

          v79 = [v72 count];
          v327[3] += v79;
        }
      }
    }

    v80 = v215;
    v81 = [v221 count];
    v82 = [v216 count];
    if (v82)
    {
      if (v82 >= [v207 count])
      {
        LODWORD(v82) = 0;
      }

      else
      {
        v83 = v81;
        v84 = selfCopy->_loggingConnection;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
        {
          v85 = v327[3];
          *buf = 67109376;
          *v355 = v82;
          *&v355[4] = 1024;
          *&v355[6] = v85;
          _os_log_impl(&dword_22F0FC000, v84, OS_LOG_TYPE_INFO, "DurationEvaluation: Initiating second pass with %d clusters, already have %d items", buf, 0xEu);
        }

        v86 = v71;
        v87 = v217 - v327[3];
        v287[0] = MEMORY[0x277D85DD0];
        v287[1] = 3221225472;
        v287[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_213;
        v287[3] = &unk_27888A188;
        v88 = v209;
        v288 = v88;
        v289 = &v345;
        v291 = 0x3F847AE147AE147BLL;
        v290 = &v349;
        v89 = [v222 adaptiveElection:v216 identifiersOfEligibleItems:v225 maximumNumberOfItemsToElect:v87 debugInfo:v210 progressBlock:v287];
        v90 = [v89 count];
        v274[0] = MEMORY[0x277D85DD0];
        v274[1] = 3221225472;
        v274[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_214;
        v274[3] = &unk_27887FEE8;
        v283 = v88;
        v275 = v212;
        v284 = &v345;
        v286 = 0x3F847AE147AE147BLL;
        v285 = &v349;
        v91 = v89;
        v276 = v91;
        v277 = selfCopy;
        v278 = v213;
        v279 = v210;
        v280 = v215;
        v92 = v221;
        v281 = v92;
        v93 = v214;
        v282 = v93;
        dispatch_apply(v90, 0, v274);
        v221 = v93;

        v71 = v86;
        v94 = *(v350 + 24);
        if (v94 == 1)
        {
          v95 = MEMORY[0x277D86220];
          v96 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v355 = 430;
            *&v355[4] = 2080;
            *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        if (v94)
        {
          goto LABEL_272;
        }

        v81 = v83;
        LODWORD(v82) = 1;
        v80 = v215;
      }
    }

    if (useDurationBasedCuration)
    {
      if (v227)
      {
        v97 = CFAbsoluteTimeGetCurrent();
        if (v97 - v346[3] >= 0.01)
        {
          v346[3] = v97;
          v273 = 0;
          (*(v209 + 2))(v209, &v273, 0.5);
          v98 = *(v350 + 24) | v273;
          *(v350 + 24) = v98;
          if (v98)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v355 = 440;
              *&v355[4] = 2080;
              *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_272;
          }
        }
      }

      v224 = v82;
      v211 = v81;
      defaultItemSortDescriptors3 = [(PGCurator *)selfCopy defaultItemSortDescriptors];
      v108 = [v221 sortedArrayUsingDescriptors:defaultItemSortDescriptors3];

      v271 = 0u;
      v272 = 0u;
      v269 = 0u;
      v270 = 0u;
      v109 = v108;
      v110 = [v109 countByEnumeratingWithState:&v269 objects:v360 count:16];
      v219 = v59;
      v111 = v26;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      if (v110)
      {
        v115 = *v270;
        v116 = *MEMORY[0x277D3C768];
        do
        {
          for (k = 0; k != v110; ++k)
          {
            if (*v270 != v115)
            {
              objc_enumerationMutation(v109);
            }

            v118 = *(*(&v269 + 1) + 8 * k);
            [v118 clsContentScore];
            if (v119 >= v116)
            {
              ++v114;
              if ([v118 isVideo])
              {
                ++v112;
              }

              else
              {
                ++v113;
              }
            }
          }

          v110 = [v109 countByEnumeratingWithState:&v269 objects:v360 count:16];
        }

        while (v110);
      }

      v59 = v219;
      v26 = v111;
      v120 = selfCopy->_loggingConnection;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        *v355 = v114;
        *&v355[8] = 2048;
        *&v355[10] = v113;
        *&v355[18] = 2048;
        *&v355[20] = v112;
        _os_log_impl(&dword_22F0FC000, v120, OS_LOG_TYPE_INFO, "DurationEvaluation: elected %lu items, %lu photos, %lu videos", buf, 0x20u);
      }

      v121 = selfCopy->_loggingConnection;
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        v122 = [sharedItems count];
        if (v224)
        {
          v123 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d after second pass", -[NSObject count](v109, "count")];
        }

        else
        {
          v123 = @"no second pass";
        }

        *buf = 67109890;
        *v355 = v122;
        *&v355[4] = 1024;
        *&v355[6] = v217;
        *&v355[10] = 1024;
        *&v355[12] = v211;
        *&v355[16] = 2112;
        *&v355[18] = v123;
        _os_log_impl(&dword_22F0FC000, v121, OS_LOG_TYPE_INFO, "DurationEvaluation: %d total assets, was aiming for %d elected assets, got %d after first pass, %@", buf, 0x1Eu);
        if (v224)
        {
        }
      }

      minimumNumberOfItems = [v215 minimumNumberOfItems];
      [(PGCurator *)selfCopy evaluatedDurationWithItems:v109 options:v215];
      v141 = v140;
      [(PGCurator *)selfCopy maximumDurationWithItems:v109 options:v215];
      v143 = v142;
      [v215 minimumDuration];
      v145 = v144;
      v147 = fmax(v143, 0.0) < v144 || v114 < minimumNumberOfItems;
      v148 = @"passed";
      if (v147)
      {
        v148 = @"didn't pass";
      }

      v149 = v148;
      v150 = selfCopy->_loggingConnection;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
      {
        [v215 targetDuration];
        *buf = 134219266;
        *v355 = v141;
        *&v355[8] = 2048;
        *&v355[10] = v143;
        *&v355[18] = 2112;
        *&v355[20] = v149;
        *&v355[28] = 2048;
        *v356 = v145;
        *&v356[8] = 2048;
        v357 = v151;
        v358 = 1024;
        v359 = minimumNumberOfItems;
        _os_log_impl(&dword_22F0FC000, v150, OS_LOG_TYPE_INFO, "DurationEvaluation: %.2f sec. (max %.2f sec.), %@ constraint [%.2f, %.2f, %d items]", buf, 0x3Au);
      }

      if (v147 && [v215 failIfMinimumDurationNotReached])
      {

        v109 = MEMORY[0x277CBEBF8];
      }

LABEL_266:

      if (!v227 || (v201 = CFAbsoluteTimeGetCurrent(), v201 - v346[3] < 0.01) || (v346[3] = v201, v273 = 0, (*(v209 + 2))(v209, &v273, 1.0), v202 = *(v350 + 24) | v273, *(v350 + 24) = v202, (v202 & 1) == 0))
      {
        v15 = v109;

        goto LABEL_274;
      }

      v203 = MEMORY[0x277D86220];
      v204 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v355 = 649;
        *&v355[4] = 2080;
        *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_272;
    }

    if (duration == 20 || duration == 2)
    {
      universalStartDate2 = [feederCopy universalStartDate];
      universalEndDate2 = [feederCopy universalEndDate];
      [universalEndDate2 timeIntervalSinceDate:universalStartDate2];
      v102 = v101;
      [v315[5] timeIntervalSinceDate:v321[5]];
      v104 = v103;
      if (v227)
      {
        v105 = CFAbsoluteTimeGetCurrent();
        if (v105 - v346[3] >= 0.01)
        {
          v346[3] = v105;
          v273 = 0;
          (*(v209 + 2))(v209, &v273, 0.5);
          v106 = *(v350 + 24) | v273;
          *(v350 + 24) = v106;
          if (v106)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v355 = 487;
              *&v355[4] = 2080;
              *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v15 = MEMORY[0x277CBEBF8];
LABEL_191:

LABEL_274:
            _Block_object_dispose(&v314, 8);

            _Block_object_dispose(&v320, 8);
            _Block_object_dispose(&v326, 8);

            goto LABEL_275;
          }
        }
      }

      if (v104 <= v102 * 0.05)
      {
        [v210 resetWithReason:@"All clustered items span insufficient"];
        v132 = [v80 copy];
        v133 = v132;
        if (duration == 2)
        {
          v134 = 4;
        }

        else
        {
          v134 = 21;
        }

        [v132 setDuration:v134];
        v264[0] = MEMORY[0x277D85DD0];
        v264[1] = 3221225472;
        v264[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_232;
        v264[3] = &unk_27888A188;
        v265 = v209;
        v266 = &v345;
        v268 = 0x3F847AE147AE147BLL;
        v267 = &v349;
        v135 = [(PGCurator *)selfCopy bestItemsForFeeder:feederCopy options:v133 debugInfo:v210 progressBlock:v264];
        v136 = v135;
        if (*(v350 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v355 = 497;
            *&v355[4] = 2080;
            *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v15 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v15 = v135;
        }

        goto LABEL_191;
      }

      v80 = v215;
    }

    if (v71)
    {
      v124 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v262 = 0u;
      v263 = 0u;
      v260 = 0u;
      v261 = 0u;
      v125 = sharedItems;
      v126 = [v125 countByEnumeratingWithState:&v260 objects:v353 count:16];
      if (v126)
      {
        v127 = *v261;
        do
        {
          for (m = 0; m != v126; ++m)
          {
            if (*v261 != v127)
            {
              objc_enumerationMutation(v125);
            }

            clsPersonAndPetLocalIdentifiers = [*(*(&v260 + 1) + 8 * m) clsPersonAndPetLocalIdentifiers];
            [v124 addObjectsFromArray:clsPersonAndPetLocalIdentifiers];
          }

          v126 = [v125 countByEnumeratingWithState:&v260 objects:v353 count:16];
        }

        while (v126);
      }

      if (v227)
      {
        v130 = CFAbsoluteTimeGetCurrent();
        if (v130 - v346[3] >= 0.01)
        {
          v346[3] = v130;
          v273 = 0;
          (*(v209 + 2))(v209, &v273, 0.5);
          v131 = *(v350 + 24) | v273;
          *(v350 + 24) = v131;
          if (v131)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v355 = 512;
              *&v355[4] = 2080;
              *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_272;
          }
        }
      }

      v255[0] = MEMORY[0x277D85DD0];
      v255[1] = 3221225472;
      v255[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_233;
      v255[3] = &unk_27888A188;
      v256 = v209;
      v257 = &v345;
      v259 = 0x3F847AE147AE147BLL;
      v258 = &v349;
      [(PGCurator *)selfCopy completeItems:v221 withItems:v125 forPersonLocalIdentifiers:v124 options:v215 nonRemovableItems:0 debugInfo:v210 progressBlock:v255];
      if (v350[3])
      {
        v137 = MEMORY[0x277D86220];
        v138 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v355 = 518;
          *&v355[4] = 2080;
          *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_272;
      }

      v80 = v215;
    }

    if (v227)
    {
      v152 = CFAbsoluteTimeGetCurrent();
      if (v152 - v346[3] >= 0.01)
      {
        v346[3] = v152;
        v273 = 0;
        (*(v209 + 2))(v209, &v273, 0.5);
        v153 = *(v350 + 24) | v273;
        *(v350 + 24) = v153;
        if (v153)
        {
          v154 = MEMORY[0x277D86220];
          v155 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v355 = 521;
            *&v355[4] = 2080;
            *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_272;
        }
      }
    }

    v156 = [v221 count];
    v157 = v217 - v156;
    if (v217 != v156)
    {
      v250[0] = MEMORY[0x277D85DD0];
      v250[1] = 3221225472;
      v250[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_234;
      v250[3] = &unk_27888A188;
      v251 = v209;
      v252 = &v345;
      v253 = &v349;
      v254 = 0x3F847AE147AE147BLL;
      [(PGCurator *)selfCopy completeItems:v221 withFavoriteItemsFromItems:sharedItems upToNumberOfItems:v157 debugInfo:v210 progressBlock:v250];

      v80 = v215;
    }

    if (v227)
    {
      v158 = CFAbsoluteTimeGetCurrent();
      if (v158 - v346[3] >= 0.01)
      {
        v346[3] = v158;
        v273 = 0;
        (*(v209 + 2))(v209, &v273, 0.5);
        v159 = *(v350 + 24) | v273;
        *(v350 + 24) = v159;
        if (v159)
        {
          v160 = MEMORY[0x277D86220];
          v161 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v355 = 531;
            *&v355[4] = 2080;
            *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_206:

LABEL_272:
          v15 = MEMORY[0x277CBEBF8];
          goto LABEL_274;
        }
      }
    }

    [(PGCurator *)selfCopy lastPassToCompleteItems:v221 fromFeeder:feederCopy options:v80 maximumNumberOfItems:v217 debugInfo:v210];
    if (v227)
    {
      v162 = CFAbsoluteTimeGetCurrent();
      if (v162 - v346[3] >= 0.01)
      {
        v346[3] = v162;
        v273 = 0;
        (*(v209 + 2))(v209, &v273, 0.5);
        v163 = *(v350 + 24) | v273;
        *(v350 + 24) = v163;
        if (v163)
        {
          v164 = MEMORY[0x277D86220];
          v165 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v355 = 535;
            *&v355[4] = 2080;
            *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_206;
        }
      }
    }

    v245[0] = MEMORY[0x277D85DD0];
    v245[1] = 3221225472;
    v245[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_235;
    v245[3] = &unk_27888A188;
    v166 = v209;
    v246 = v166;
    v247 = &v345;
    v248 = &v349;
    v249 = 0x3F847AE147AE147BLL;
    v167 = [(PGCurator *)selfCopy deduplicatedItems:v221 options:v80 debugInfo:v210 progressBlock:v245];
    v168 = v167;
    if (*(v350 + 24) == 1)
    {
      v109 = MEMORY[0x277D86220];
      v169 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v355 = 540;
        *&v355[4] = 2080;
        *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, v109, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_216;
    }

    v170 = [v167 count];
    if (v170 > v217)
    {
      v171 = v168;
      v172 = [objc_opt_class() numberOfItemsToShaveOffWithNumberOfItems:v170 maximumNumberOfItems:v217 options:v80];
      if (v172)
      {
        v173 = [(PGCurator *)selfCopy shaveItems:v171 downToNumberOfItems:v170 - v172 options:v80 debugInfo:0 progressBlock:&__block_literal_global_10268];
        if (v210)
        {
          v174 = [MEMORY[0x277CBEB58] setWithArray:v171];
          v175 = [MEMORY[0x277CBEB98] setWithArray:v173];
          [v174 minusSet:v175];

          [v210 setState:2 ofItems:v174 withReason:@"Last minute shaving"];
        }

        v176 = v173;

        v177 = selfCopy->_loggingConnection;
        if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
        {
          v178 = [v176 count];
          *buf = 134217984;
          *v355 = v178;
          _os_log_impl(&dword_22F0FC000, v177, OS_LOG_TYPE_INFO, "Shaved down to %lu items", buf, 0xCu);
        }
      }

      else
      {
        v176 = v171;
      }

      goto LABEL_264;
    }

    v109 = 0;
    v179 = 0;
    if (duration > 19)
    {
      if (duration == 21)
      {
        goto LABEL_238;
      }

      if (duration != 20)
      {
        goto LABEL_239;
      }
    }

    else if (duration != 2)
    {
      if (duration != 4)
      {
        goto LABEL_239;
      }

      goto LABEL_238;
    }

    v180 = [v168 count];
    v181 = [PGCurationManager minimumNumberOfItemsForDuration:duration withMaximumNumberOfItems:v217];
    if (v180 < v181)
    {
      v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough best items for Short curation, %lu for a minimum of %lu, switching to Complete Short", v180, v181];
      [v210 resetWithReason:v181];
      v183 = [v215 copy];
      v184 = v183;
      if (duration == 2)
      {
        v185 = 4;
      }

      else
      {
        v185 = 21;
      }

      [v183 setDuration:v185];
      v240[0] = MEMORY[0x277D85DD0];
      v240[1] = 3221225472;
      v240[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_243;
      v240[3] = &unk_27888A188;
      v241 = v166;
      v242 = &v345;
      v243 = &v349;
      v244 = 0x3F847AE147AE147BLL;
      v109 = [(PGCurator *)selfCopy bestItemsForFeeder:feederCopy options:v184 debugInfo:v210 progressBlock:v240];
      if (*(v350 + 24) == 1)
      {
        v186 = MEMORY[0x277D86220];
        v187 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v355 = 607;
          *&v355[4] = 2080;
          *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_216;
      }

      v179 = 0;
LABEL_239:
      if (v227)
      {
        v188 = CFAbsoluteTimeGetCurrent();
        if (v188 - v346[3] >= 0.01)
        {
          v346[3] = v188;
          v273 = 0;
          (v166->data)(v166, &v273, 0.5);
          v189 = *(v350 + 24) | v273;
          *(v350 + 24) = v189;
          if (v189)
          {
            v190 = MEMORY[0x277D86220];
            v191 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v355 = 615;
              *&v355[4] = 2080;
              *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_216;
          }
        }
      }

      if (v179 && (v192 = [v168 count], v192 < v223) && v192 + 2 >= v223)
      {
        v223 = [MEMORY[0x277CCACA8] stringWithFormat:@"Almost all items included in curation (%lu out of %lu), falling back to beautification", v192, v223];
        [v210 resetWithReason:v223];
        v235[0] = MEMORY[0x277D85DD0];
        v235[1] = 3221225472;
        v235[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_247;
        v235[3] = &unk_27888A188;
        v236 = v166;
        v237 = &v345;
        v238 = &v349;
        v239 = 0x3F847AE147AE147BLL;
        v176 = [v213 performWithItems:sharedItems maximumNumberOfItemsToChoose:v217 debugInfo:v210 progressBlock:v235];

        if (*(v350 + 24) == 1)
        {
          v194 = MEMORY[0x277D86220];
          v195 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v355 = 632;
            *&v355[4] = 2080;
            *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_259;
        }
      }

      else
      {
        v176 = v168;
      }

      if (!v227 || (v196 = CFAbsoluteTimeGetCurrent(), v196 - v346[3] < 0.01) || (v346[3] = v196, v273 = 0, (v166->data)(v166, &v273, 0.5), v197 = *(v350 + 24) | v273, *(v350 + 24) = v197, (v197 & 1) == 0))
      {
        if (v109)
        {
LABEL_265:

          v149 = v246;
          goto LABEL_266;
        }

LABEL_264:
        defaultItemSortDescriptors4 = [(PGCurator *)selfCopy defaultItemSortDescriptors];
        v109 = [v176 sortedArrayUsingDescriptors:defaultItemSortDescriptors4];

        goto LABEL_265;
      }

      v198 = MEMORY[0x277D86220];
      v199 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v355 = 636;
        *&v355[4] = 2080;
        *&v355[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_259:
      v168 = v176;
LABEL_216:

      goto LABEL_272;
    }

LABEL_238:
    v109 = 0;
    v179 = 1;
    goto LABEL_239;
  }

  v15 = MEMORY[0x277CBEBF8];
LABEL_278:

  objc_autoreleasePoolPop(context);
  v10 = v227;
LABEL_279:
  _Block_object_dispose(&v345, 8);
  _Block_object_dispose(&v349, 8);

  v205 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clsIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_210(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = *(a1 + 104);
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 40) lock];
    v6 = *(*(a1 + 112) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 152))
    {
      *(v6 + 24) = Current;
      v52 = 0;
      (*(*(a1 + 104) + 16))(0.5);
      *(*(*(a1 + 120) + 8) + 24) = *(*(*(a1 + 120) + 8) + 24);
      if (*(*(*(a1 + 120) + 8) + 24) == 1)
      {
        [*(a1 + 40) unlock];
        goto LABEL_30;
      }
    }

    [*(a1 + 40) unlock];
    v4 = *(a1 + 104);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_211;
  v47[3] = &unk_27887FE98;
  v49 = v4;
  v48 = *(a1 + 40);
  v51 = *(a1 + 152);
  v50 = *(a1 + 112);
  v10 = [v7 summarizedItemsFromCluster:v3 withBeautifier:v8 debugInfo:v9 progressBlock:v47];
  [*(a1 + 40) lock];
  LOBYTE(v7) = *(*(*(a1 + 120) + 8) + 24);
  [*(a1 + 40) unlock];
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v12 = *(a1 + 48);
    v14 = *(a1 + 64);
    v13 = *(a1 + 72);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3;
    v43[3] = &unk_27888A188;
    v44 = *(a1 + 104);
    v46 = *(a1 + 152);
    v45 = *(a1 + 112);
    v11 = [v12 deduplicatedItems:v10 options:v13 debugInfo:v14 progressBlock:v43];

    [*(a1 + 40) lock];
    LOBYTE(v13) = *(*(*(a1 + 120) + 8) + 24);
    [*(a1 + 40) unlock];
    if ((v13 & 1) == 0)
    {
      v15 = *(a1 + 80);
      objc_sync_enter(v15);
      v16 = [v3 cluster];
      v17 = [v16 objects];

      if (*(a1 + 160) == 1)
      {
        v18 = [v3 numberOfItemsToElect];
        if ([v11 count] < v18 || objc_msgSend(v17, "count") <= v18)
        {
          *(*(*(a1 + 128) + 8) + 24) += [v11 count];
          [*(a1 + 96) addObjectsFromArray:v11];
        }

        else
        {
          v19 = *(a1 + 88);
          v20 = [v3 cluster];
          [v19 addObject:v20];
        }
      }

      [*(a1 + 80) addObjectsFromArray:v11];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = v17;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v22)
      {
        v23 = *v40;
        do
        {
          v24 = 0;
          do
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = [*(*(&v39 + 1) + 8 * v24) cls_universalDate];
            v26 = *(*(a1 + 136) + 8);
            v27 = *(v26 + 40);
            if (v27)
            {
              v28 = [v27 earlierDate:v25];
              v29 = *(*(a1 + 136) + 8);
              v30 = *(v29 + 40);
              *(v29 + 40) = v28;
            }

            else
            {
              v31 = v25;
              v30 = *(v26 + 40);
              *(v26 + 40) = v31;
            }

            v32 = *(*(a1 + 144) + 8);
            v33 = *(v32 + 40);
            if (v33)
            {
              v34 = [v33 laterDate:v25];
              v35 = *(*(a1 + 144) + 8);
              v36 = *(v35 + 40);
              *(v35 + 40) = v34;
            }

            else
            {
              v37 = v25;
              v36 = *(v32 + 40);
              *(v32 + 40) = v37;
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v21 countByEnumeratingWithState:&v39 objects:v53 count:16];
        }

        while (v22);
      }

      objc_sync_exit(v15);
    }
  }

LABEL_30:
  v38 = *MEMORY[0x277D85DE8];
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_213(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_214(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96))
  {
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) lock];
    v5 = *(*(a1 + 104) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 120))
    {
      *(v5 + 24) = Current;
      v29 = 0;
      (*(*(a1 + 96) + 16))(0.5);
      *(*(*(a1 + 112) + 8) + 24) = *(*(*(a1 + 112) + 8) + 24);
      if (*(*(*(a1 + 112) + 8) + 24) == 1)
      {
        [*(a1 + 32) unlock];
        return;
      }
    }

    [*(a1 + 32) unlock];
  }

  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3_215;
  v24[3] = &unk_27887FE98;
  v26 = *(a1 + 96);
  v25 = *(a1 + 32);
  v28 = *(a1 + 120);
  v27 = *(a1 + 104);
  v10 = [v7 summarizedItemsFromCluster:v6 withBeautifier:v8 debugInfo:v9 progressBlock:v24];
  [*(a1 + 32) lock];
  LOBYTE(v7) = *(*(*(a1 + 112) + 8) + 24);
  [*(a1 + 32) unlock];
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v12 = *(a1 + 48);
    v14 = *(a1 + 64);
    v13 = *(a1 + 72);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_4;
    v20 = &unk_27888A188;
    v21 = *(a1 + 96);
    v23 = *(a1 + 120);
    v22 = *(a1 + 104);
    v11 = [v12 deduplicatedItems:v10 options:v13 debugInfo:v14 progressBlock:&v17];

    [*(a1 + 32) lock];
    v15 = *(*(*(a1 + 112) + 8) + 24);
    [*(a1 + 32) unlock];
    if ((v15 & 1) == 0)
    {
      v16 = *(a1 + 80);
      objc_sync_enter(v16);
      [*(a1 + 88) addObjectsFromArray:v11];
      objc_sync_exit(v16);
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_232(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_233(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_234(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_235(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_243(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_247(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3_215(uint64_t result, _BYTE *a2, double a3)
{
  if (*(result + 40))
  {
    v5 = result;
    Current = CFAbsoluteTimeGetCurrent();
    [*(v5 + 32) lock];
    v7 = *(*(v5 + 48) + 8);
    if (Current - *(v7 + 24) >= *(v5 + 64))
    {
      *(v7 + 24) = Current;
      (*(*(v5 + 40) + 16))(a3 * 0.0 + 0.5);
      *(*(*(v5 + 56) + 8) + 24) = *(*(*(v5 + 56) + 8) + 24);
      if (*(*(*(v5 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }

    return [*(v5 + 32) unlock];
  }

  return result;
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_4(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_211(uint64_t result, _BYTE *a2, double a3)
{
  if (*(result + 40))
  {
    v5 = result;
    Current = CFAbsoluteTimeGetCurrent();
    [*(v5 + 32) lock];
    v7 = *(*(v5 + 48) + 8);
    if (Current - *(v7 + 24) >= *(v5 + 64))
    {
      *(v7 + 24) = Current;
      (*(*(v5 + 40) + 16))(a3 * 0.0 + 0.5);
      *(*(*(v5 + 56) + 8) + 24) = *(*(*(v5 + 56) + 8) + 24);
      if (*(*(*(v5 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }

    return [*(v5 + 32) unlock];
  }

  return result;
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)summarizedItemsFromCluster:(id)cluster withBeautifier:(id)beautifier debugInfo:(id)info progressBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  infoCopy = info;
  beautifierCopy = beautifier;
  clusterCopy = cluster;
  numberOfItemsToElect = [clusterCopy numberOfItemsToElect];
  cluster = [clusterCopy cluster];
  objects = [cluster objects];

  cluster2 = [clusterCopy cluster];

  v18 = [infoCopy debugInfoForCluster:cluster2];

  v19 = [beautifierCopy performWithItems:objects maximumNumberOfItemsToChoose:numberOfItemsToElect debugInfo:v18 progressBlock:blockCopy];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    v23 = loggingConnection;
    v24 = 134218496;
    v25 = [objects count];
    v26 = 2048;
    v27 = numberOfItemsToElect;
    v28 = 2048;
    v29 = [v19 count];
    _os_log_debug_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEBUG, "Curated Items: summarize cluster of %lu items, expected to elect %lu, got %lu", &v24, 0x20u);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (double)maximumDurationWithItems:(id)items options:(id)options
{
  v21 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isVideo])
        {
          [v12 clsDuration];
        }

        else if ([v12 clsIsInterestingLivePhoto])
        {
          [optionsCopy defaultDurationOfLivePhoto];
        }

        else
        {
          [optionsCopy defaultDurationOfStillPhoto];
        }

        v10 = v10 + v13;
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)evaluatedDurationWithItems:(id)items options:(id)options
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isVideo])
        {
          [optionsCopy defaultDurationOfVideo];
          v14 = v13;
          [v12 clsDuration];
          if (v14 < v15)
          {
            v15 = v14;
          }
        }

        else if ([v12 clsIsInterestingLivePhoto])
        {
          [optionsCopy defaultDurationOfLivePhoto];
        }

        else
        {
          [optionsCopy defaultDurationOfStillPhoto];
        }

        v10 = v10 + v15;
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)targetDurationBasedNumberOfItemsToElectFromItems:(id)items options:(id)options
{
  v54 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  uuidsOfEligibleAssets = [optionsCopy uuidsOfEligibleAssets];
  [optionsCopy targetDuration];
  v10 = v9;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v36 = optionsCopy;
    v14 = 0;
    v37 = 0;
    v38 = 0;
    v15 = 0;
    v16 = *v40;
    v17 = *MEMORY[0x277D3C768];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        if (uuidsOfEligibleAssets)
        {
          clsIdentifier = [*(*(&v39 + 1) + 8 * i) clsIdentifier];
          v21 = [uuidsOfEligibleAssets containsObject:clsIdentifier];

          if (!v21)
          {
            continue;
          }
        }

        [v19 clsContentScore];
        if (v22 >= v17)
        {
          ++v15;
          if ([v19 isVideo])
          {
            ++v14;
          }

          else if ([v19 clsIsInterestingLivePhoto])
          {
            ++v38;
          }

          else
          {
            ++v37;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v13);

    self = selfCopy;
    optionsCopy = v36;
    if (v15)
    {
      v23 = v10 * v15;
      [v36 defaultDurationOfStillPhoto];
      v25 = v24;
      [v36 defaultDurationOfLivePhoto];
      v27 = v26 * v38 + v25 * v37;
      [v36 defaultDurationOfVideo];
      v29 = vcvtad_u64_f64(v23 / (v27 + v28 * v14));
      if (v15 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v15;
      }

      loggingConnection = selfCopy->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 134219008;
        v44 = v30;
        v45 = 2048;
        v46 = v15;
        v47 = 2048;
        v48 = v37;
        v49 = 2048;
        v50 = v38;
        v51 = 2048;
        v52 = v14;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "targetNumberOfItemsToElect = %lu for %lu eligible items, %lu still photos, %lu live photos, %lu videos", buf, 0x34u);
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v32 = self->_loggingConnection;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "targetNumberOfItemsToElect = 0 because all items are non-eligible", buf, 2u);
  }

  v30 = 0;
LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)focusedItemsInItems:(id)items withOptions:(id)options
{
  itemsCopy = items;
  optionsCopy = options;
  personLocalIdentifiersToFocus = [optionsCopy personLocalIdentifiersToFocus];
  focusOnInterestingItems = [optionsCopy focusOnInterestingItems];

  v9 = [personLocalIdentifiersToFocus count];
  if ((focusOnInterestingItems & 1) != 0 || v9)
  {
    v11 = MEMORY[0x277CCAC30];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __45__PGCurator_focusedItemsInItems_withOptions___block_invoke;
    v17 = &unk_27887FE48;
    v19 = focusOnInterestingItems;
    v20 = v9 != 0;
    v18 = personLocalIdentifiersToFocus;
    v12 = [v11 predicateWithBlock:&v14];
    v10 = [itemsCopy filteredArrayUsingPredicate:{v12, v14, v15, v16, v17}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __45__PGCurator_focusedItemsInItems_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) == 1)
  {
    [v5 clsContentScore];
    if (v7 < *MEMORY[0x277D3C770] && ([v5 clsIsInhabited] & 1) == 0 && !objc_msgSend(v5, "clsHasInterestingScenes"))
    {
      v9 = 0;
      goto LABEL_10;
    }

    v8 = [v5 clsIsUtility] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = (*(a1 + 41) ^ 1) & v8;
  if (((*(a1 + 41) ^ 1) & 1) == 0 && v8)
  {
    v10 = *(a1 + 32);
    v11 = MEMORY[0x277CBEB98];
    v12 = [v5 clsPersonAndPetLocalIdentifiers];
    v13 = [v11 setWithArray:v12];
    v9 = [v10 intersectsSet:v13];
  }

LABEL_10:

  return v9 & 1;
}

- (PGCurator)init
{
  v5.receiver = self;
  v5.super_class = PGCurator;
  v2 = [(PGCurator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_loggingConnection, MEMORY[0x277D86220]);
  }

  return v3;
}

+ (unint64_t)numberOfItemsToShaveOffWithNumberOfItems:(unint64_t)items maximumNumberOfItems:(unint64_t)ofItems options:(id)options
{
  if (items >= ofItems)
  {
    return items - ofItems;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)maximumNumberOfItemsToElectWithTotalNumberOfItems:(unint64_t)items spanningNumberOfDays:(double)days options:(id)options
{
  duration = [options duration];

  return [PGCurationManager maximumNumberOfItemsForDuration:duration withTotalNumberOfItems:items spanningNumberOfDays:days];
}

@end