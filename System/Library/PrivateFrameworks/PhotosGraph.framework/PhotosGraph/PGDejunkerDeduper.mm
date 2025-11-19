@interface PGDejunkerDeduper
+ (BOOL)useFaceprintsForIdenticalDedupingWithOptions:(id)a3;
- (BOOL)isJunkForItem:(id)a3;
- (BOOL)shouldPerformIdenticalDedupingForItemFeature:(id)a3 options:(id)a4;
- (BOOL)shouldPerformSemanticalDedupingForItemFeature:(id)a3 options:(id)a4;
- (PGDejunkerDeduper)initWithSimilarityModelClass:(Class)a3;
- (double)identicalDedupingSimilarityForItemFeature:(id)a3 options:(id)a4;
- (double)identicalDedupingTimeIntervalForItemFeature:(id)a3 options:(id)a4;
- (double)semanticalDedupingSimilarityForItemFeature:(id)a3 options:(id)a4;
- (double)semanticalDedupingTimeIntervalForItemFeature:(id)a3 options:(id)a4;
- (id)bestItemGroupsBasedOnFaceprintsWithItemGroups:(id)a3 options:(id)a4;
- (id)bestItemGroupsBasedOnSceneprintsWithItemGroups:(id)a3 forSimilarity:(int64_t)a4 options:(id)a5;
- (id)bestItemsInItems:(id)a3 options:(id)a4;
- (id)debugPersonStringForItem:(id)a3;
- (id)dejunkedDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)dejunkedItemsWithItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)eligibleItemsInItems:(id)a3 options:(id)a4;
- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)a3;
- (id)featureWithItem:(id)a3;
- (id)finalItemsWithItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)identicallyDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)itemsByFeatureWithItems:(id)a3;
- (id)itemsSortedByScoreWithItems:(id)a3 options:(id)a4;
- (id)requiredItemsInItems:(id)a3 options:(id)a4 containStronglyRequiredItems:(BOOL *)a5;
- (id)semanticallyDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)splitItemGroupsWithItemGroups:(id)a3 maximumNumberOfItemsPerGroup:(unint64_t)a4 debugInfo:(id)a5;
- (id)splitItemGroupsWithTimeSortedItems:(id)a3 numberOfBuckets:(unint64_t)a4;
- (id)timeGroupsOfTimeSortedItemsWithTimeSortedItems:(id)a3 timeInterval:(double)a4 maximumTimeGroupExtension:(double)a5;
@end

@implementation PGDejunkerDeduper

- (id)requiredItemsInItems:(id)a3 options:(id)a4 containStronglyRequiredItems:(BOOL *)a5
{
  v10 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315138;
    v9 = "[PGDejunkerDeduper requiredItemsInItems:options:containStronglyRequiredItems:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEBF8];
}

- (id)itemsSortedByScoreWithItems:(id)a3 options:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[PGDejunkerDeduper itemsSortedByScoreWithItems:options:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEBF8];
}

- (id)featureWithItem:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[PGDejunkerDeduper featureWithItem:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v7, 0xCu);
  }

  v4 = [[PGDejunkerDeduperFeature alloc] initWithPersonLocalIdentifiers:0 peopleScenes:0 isVideo:0];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[PGDejunkerDeduper faceprintByPersonLocalIdentifierByItemIdentifierWithItems:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEC10];
}

- (id)debugPersonStringForItem:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[PGDejunkerDeduper debugPersonStringForItem:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return &stru_2843F5C58;
}

- (BOOL)isJunkForItem:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[PGDejunkerDeduper isJunkForItem:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)bestItemsInItems:(id)a3 options:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[PGDejunkerDeduper bestItemsInItems:options:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEBF8];
}

- (id)eligibleItemsInItems:(id)a3 options:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 identifiersOfEligibleItems];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 clsIdentifier];
          v15 = [v6 containsObject:v14];

          if (v15)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)itemsByFeatureWithItems:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(PGDejunkerDeduper *)self featureWithItem:v11, v16];
        if (v12)
        {
          v13 = [v5 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v5 setObject:v13 forKeyedSubscript:v12];
          [v13 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __46__PGDejunkerDeduper_timeSortedItemsWithItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 cls_universalDate];
  v7 = [v5 cls_universalDate];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 clsIdentifier];
    v10 = [v5 clsIdentifier];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (id)bestItemGroupsBasedOnSceneprintsWithItemGroups:(id)a3 forSimilarity:(int64_t)a4 options:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(PGDejunkerDeduper *)self itemsSortedByScoreWithItems:a3 options:v7];
  v9 = [v7 identifiersOfEligibleItems];
  v31 = v7;
  v10 = [(PGDejunkerDeduper *)self requiredItemsInItems:v8 options:v7 containStronglyRequiredItems:0];
  v34 = [v10 mutableCopy];
  v30 = v10;
  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    v32 = *v41;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        if (([v11 containsObject:v16] & 1) == 0)
        {
          if (!v9 || ([v16 clsIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v9, "containsObject:", v17), v17, v18))
          {
            v19 = v11;
            -[CLSSimilarStacker distanceThresholdForSimilarity:withSimilarityModelVersion:](self->_similarStacker, "distanceThresholdForSimilarity:withSimilarityModelVersion:", a4, [v16 clsSimilarityModelVersion]);
            v21 = v20;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v22 = v34;
            v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v37;
              while (2)
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v37 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  [(CLSSimilarStacker *)self->_similarStacker distanceBetweenItem:*(*(&v36 + 1) + 8 * j) andItem:v16];
                  if (v27 < v21)
                  {

                    goto LABEL_19;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            [v22 addObject:v16];
LABEL_19:
            v11 = v19;
            v14 = v32;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v13);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)bestItemGroupsBasedOnFaceprintsWithItemGroups:(id)a3 options:(id)a4
{
  v115 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v72 = a4;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v107;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v107 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v106 + 1) + 8 * i);
        if ([v11 count] < 2)
        {
          [v6 addObject:v11];
        }

        else
        {
          v12 = [(PGDejunkerDeduper *)self itemsSortedByScoreWithItems:v11 options:v72];
          [v6 addObject:v12];
          [v66 addObjectsFromArray:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v8);
  }

  v85 = [(PGDejunkerDeduper *)self faceprintByPersonLocalIdentifierByItemIdentifierWithItems:v66];
  [v72 identicalDedupingFaceprintDistance];
  v14 = v13;
  v15 = [v72 identifiersOfEligibleItems];
  v70 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v68 = v6;
  v16 = [v68 countByEnumeratingWithState:&v102 objects:v113 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v103;
    v74 = v15;
    v65 = *v103;
    do
    {
      v19 = 0;
      v67 = v17;
      do
      {
        if (*v103 != v18)
        {
          v20 = v19;
          objc_enumerationMutation(v68);
          v19 = v20;
        }

        v73 = v19;
        v21 = *(*(&v102 + 1) + 8 * v19);
        if ([v21 count] == 1)
        {
          v22 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v21 options:v72];
          if ([v22 count])
          {
            [v70 addObject:v22];
          }
        }

        else
        {
          v23 = [(PGDejunkerDeduper *)self requiredItemsInItems:v21 options:v72 containStronglyRequiredItems:0];
          v77 = [v23 mutableCopy];
          v71 = v23;
          v24 = [MEMORY[0x277CBEB98] setWithArray:v23];
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v81 = v21;
          v25 = [v81 countByEnumeratingWithState:&v98 objects:v112 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v99;
            v75 = *v99;
            v76 = v24;
            do
            {
              v28 = 0;
              v79 = v26;
              do
              {
                if (*v99 != v27)
                {
                  objc_enumerationMutation(v81);
                }

                v29 = *(*(&v98 + 1) + 8 * v28);
                if (([v24 containsObject:v29] & 1) == 0)
                {
                  if (!v15 || ([v29 clsIdentifier], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v15, "containsObject:", v30), v30, v31))
                  {
                    v82 = v28;
                    v32 = [(PGDejunkerDeduper *)self featureWithItem:v29];
                    v87 = [v32 personLocalIdentifiers];

                    v33 = [v29 clsIdentifier];
                    v34 = [v85 objectForKeyedSubscript:v33];

                    v80 = v29;
                    v35 = [v29 curationModel];
                    v36 = [v35 faceModel];

                    v96 = 0u;
                    v97 = 0u;
                    v94 = 0u;
                    v95 = 0u;
                    v88 = v77;
                    v37 = [v88 countByEnumeratingWithState:&v94 objects:v111 count:16];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = *v95;
                      v83 = *v95;
                      v84 = v36;
                      while (2)
                      {
                        v40 = 0;
                        v86 = v38;
                        do
                        {
                          if (*v95 != v39)
                          {
                            objc_enumerationMutation(v88);
                          }

                          v41 = *(*(&v94 + 1) + 8 * v40);
                          v42 = [v36 version];
                          v43 = [v41 curationModel];
                          v44 = [v43 faceModel];
                          v45 = [v44 version];

                          if (v42 == v45)
                          {
                            v46 = [v41 clsIdentifier];
                            v47 = [v85 objectForKeyedSubscript:v46];

                            v92 = 0u;
                            v93 = 0u;
                            v90 = 0u;
                            v91 = 0u;
                            v48 = v87;
                            v49 = [v48 countByEnumeratingWithState:&v90 objects:v110 count:16];
                            if (v49)
                            {
                              v50 = v49;
                              v51 = *v91;
                              v52 = 0.0;
                              do
                              {
                                for (j = 0; j != v50; ++j)
                                {
                                  if (*v91 != v51)
                                  {
                                    objc_enumerationMutation(v48);
                                  }

                                  v54 = *(*(&v90 + 1) + 8 * j);
                                  v55 = [v34 objectForKeyedSubscript:v54];
                                  v56 = [v47 objectForKeyedSubscript:v54];
                                  v89 = 0;
                                  v57 = [v55 computeDistance:v56 withDistanceFunction:0 error:&v89];
                                  [v57 doubleValue];
                                  v52 = v52 + v58 * v58;
                                }

                                v50 = [v48 countByEnumeratingWithState:&v90 objects:v110 count:16];
                              }

                              while (v50);
                            }

                            else
                            {
                              v52 = 0.0;
                            }

                            v59 = [v48 count];
                            v60 = v14;
                            v36 = v84;
                            if (v14 == -1.0)
                            {
                              v61 = [v84 distanceNode];
                              [v61 operatingPoint];
                              v60 = v62;
                            }

                            v39 = v83;
                            v38 = v86;
                            if (sqrt(v52 / v59) < v60)
                            {

                              goto LABEL_49;
                            }
                          }

                          ++v40;
                        }

                        while (v40 != v38);
                        v38 = [v88 countByEnumeratingWithState:&v94 objects:v111 count:16];
                        if (v38)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    [v88 addObject:v80];
LABEL_49:

                    v15 = v74;
                    v27 = v75;
                    v24 = v76;
                    v26 = v79;
                    v28 = v82;
                  }
                }

                ++v28;
              }

              while (v28 != v26);
              v26 = [v81 countByEnumeratingWithState:&v98 objects:v112 count:16];
            }

            while (v26);
          }

          [v70 addObject:v77];
          v18 = v65;
          v17 = v67;
          v22 = v71;
        }

        v19 = v73 + 1;
      }

      while (v73 + 1 != v17);
      v17 = [v68 countByEnumeratingWithState:&v102 objects:v113 count:16];
    }

    while (v17);
  }

  v63 = *MEMORY[0x277D85DE8];

  return v70;
}

- (id)splitItemGroupsWithItemGroups:(id)a3 maximumNumberOfItemsPerGroup:(unint64_t)a4 debugInfo:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    v40 = a4 - 1;
    v43 = v8;
    do
    {
      v12 = 0;
      v41 = v10;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * v12);
        v14 = [v13 count];
        if (v14 > a4)
        {
          v15 = v11;
          v16 = a4;
          v17 = (v40 + v14) / a4;
          v18 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v13];
          v19 = [(PGDejunkerDeduper *)self splitItemGroupsWithTimeSortedItems:v18 numberOfBuckets:v17];
          [v45 addObjectsFromArray:v19];
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
          {
            v34 = loggingConnection;
            v35 = [obj count];
            v36 = [v19 count];
            *buf = 134218240;
            v51 = v35;
            v52 = 2048;
            v53 = v36;
            _os_log_debug_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_DEBUG, "DejunkerDeduper: cluster with %lu items, split in %lu", buf, 0x16u);

            if (v8)
            {
LABEL_9:
              v21 = [v18 lastObject];
              v22 = [v21 cls_universalDate];
              v23 = [v18 firstObject];
              v24 = [v23 cls_universalDate];
              [v22 timeIntervalSinceDate:v24];
              v26 = v25;

              v8 = v43;
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f sec, %lu items, split in %lu", v26, objc_msgSend(v18, "count"), objc_msgSend(v19, "count")];
              [v43 setState:1 ofCluster:v13 withReason:v27];
            }
          }

          else if (v8)
          {
            goto LABEL_9;
          }

          a4 = v16;
          v11 = v15;
          v10 = v41;
          goto LABEL_13;
        }

        [v45 addObject:v13];
        if (!v8)
        {
          goto LABEL_14;
        }

        v18 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v13];
        v28 = [v18 lastObject];
        v29 = [v28 cls_universalDate];
        v30 = [v18 firstObject];
        v31 = [v30 cls_universalDate];
        [v29 timeIntervalSinceDate:v31];
        v33 = v32;

        v8 = v43;
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f sec, %lu items", v33, objc_msgSend(v13, "count")];
        [v43 setState:1 ofCluster:v13 withReason:v19];
LABEL_13:

LABEL_14:
        ++v12;
      }

      while (v10 != v12);
      v37 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      v10 = v37;
    }

    while (v37);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)splitItemGroupsWithTimeSortedItems:(id)a3 numberOfBuckets:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v5 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v23;
    do
    {
      v13 = 0;
      v19 = v10;
      v14 = a4 * v10;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        if (v14 >= v9 * v6)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);

          [v20 addObject:v16];
          ++v9;
          v11 = v16;
        }

        [v11 addObject:v15];
        ++v13;
        v14 += a4;
      }

      while (v8 != v13);
      v10 = v19 + v8;
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)timeGroupsOfTimeSortedItemsWithTimeSortedItems:(id)a3 timeInterval:(double)a4 maximumTimeGroupExtension:(double)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__PGDejunkerDeduper_timeGroupsOfTimeSortedItemsWithTimeSortedItems_timeInterval_maximumTimeGroupExtension___block_invoke;
  aBlock[3] = &unk_27887EDC0;
  v34 = a4 * a5;
  aBlock[4] = self;
  v10 = v9;
  v33 = v10;
  v11 = _Block_copy(aBlock);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (!v13)
  {

    v16 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = *v29;
  v27 = v10;
  do
  {
    v18 = 0;
    v19 = v15;
    do
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v28 + 1) + 8 * v18);
      v21 = [v20 cls_universalDate];
      v15 = v21;
      if (!v16)
      {
        goto LABEL_9;
      }

      [v21 timeIntervalSinceDate:v19];
      if (v22 > a4)
      {
        v11[2](v11, v16);
LABEL_9:
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);

        [v23 addObject:v20];
        v16 = v23;
        goto LABEL_11;
      }

      [v16 addObject:v20];
LABEL_11:

      ++v18;
      v19 = v15;
    }

    while (v14 != v18);
    v14 = [v12 countByEnumeratingWithState:&v28 objects:v35 count:16];
  }

  while (v14);

  if (v16)
  {
    v11[2](v11, v16);
  }

  v10 = v27;
LABEL_17:
  v24 = v10;

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

void __107__PGDejunkerDeduper_timeGroupsOfTimeSortedItemsWithTimeSortedItems_timeInterval_maximumTimeGroupExtension___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastObject];
  v5 = [v4 cls_universalDate];
  v6 = [v3 firstObject];
  v7 = [v6 cls_universalDate];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = *(a1 + 48);
  if (v9 <= v10)
  {
    [*(a1 + 40) addObject:v3];
  }

  else
  {
    v11 = vcvtpd_u64_f64(v9 / v10);
    [*(*(a1 + 32) + 16) setK:v11];
    v12 = [*(*(a1 + 32) + 16) performWithDataset:v3 progressBlock:0];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(a1 + 32);
          v18 = [*(*(&v22 + 1) + 8 * v16) objects];
          v19 = [v17 timeSortedItemsWithItems:v18];

          [*(a1 + 40) addObject:v19];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    v20 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v27 = v9;
      v28 = 2048;
      v29 = v11;
      _os_log_debug_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_DEBUG, "DejunkerDeduper: cluster with duration %f, split in %lu", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (double)semanticalDedupingSimilarityForItemFeature:(id)a3 options:(id)a4
{
  v4 = a3;
  v5 = 4.0;
  if (([v4 hasPersons] & 1) == 0)
  {
    if ([v4 hasPeopleScenes])
    {
      v5 = 3.0;
    }

    else
    {
      v5 = 2.0;
    }
  }

  return v5;
}

- (double)semanticalDedupingTimeIntervalForItemFeature:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPersons])
  {
    [v6 semanticalDedupingTimeIntervalForPersons];
  }

  else if ([v5 hasPeopleScenes])
  {
    [v6 semanticalDedupingTimeIntervalForPeople];
  }

  else
  {
    [v6 semanticalDedupingTimeInterval];
  }

  v8 = v7;

  return v8;
}

- (BOOL)shouldPerformSemanticalDedupingForItemFeature:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 doNotDedupeVideos] && (objc_msgSend(v5, "isVideo") & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    if ([v5 hasPersons])
    {
      v8 = [v6 dontSemanticallyDedupePersons];
    }

    else
    {
      if (![v5 hasPeopleScenes])
      {
        v7 = 1;
        goto LABEL_10;
      }

      v8 = [v6 dontSemanticallyDedupePeople];
    }

    v7 = v8 ^ 1;
  }

LABEL_10:

  return v7;
}

- (double)identicalDedupingSimilarityForItemFeature:(id)a3 options:(id)a4
{
  v4 = a3;
  v5 = 1.0;
  if (([v4 hasPersons] & 1) == 0)
  {
    if ([v4 hasPeopleScenes])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  return v5;
}

- (double)identicalDedupingTimeIntervalForItemFeature:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 hasPersons] & 1) != 0 || objc_msgSend(v5, "hasPeopleScenes"))
  {
    [v6 identicalDedupingTimeIntervalForPeople];
  }

  else
  {
    [v6 identicalDedupingTimeInterval];
  }

  v8 = v7;

  return v8;
}

- (BOOL)shouldPerformIdenticalDedupingForItemFeature:(id)a3 options:(id)a4
{
  v5 = a3;
  if ([a4 doNotDedupeVideos])
  {
    v6 = [v5 isVideo] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)finalItemsWithItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PGDejunkerDeduper_finalItemsWithItems_options_debugInfo_progressBlock___block_invoke;
  aBlock[3] = &unk_27887ED98;
  v40 = self;
  aBlock[4] = self;
  v42 = v10;
  v49 = v42;
  v39 = v12;
  v50 = v39;
  v38 = v11;
  v51 = v38;
  v13 = _Block_copy(aBlock);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  v41 = v13;
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v45;
    v20 = self;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        v22 = v18;
        if (*v45 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v44 + 1) + 8 * i);
        v24 = [(PGDejunkerDeduper *)v20 featureWithItem:v23];
        if (v22)
        {
          v25 = [v15 containsObject:v24];
          v26 = [v24 isVideo];
          if (v25)
          {
            goto LABEL_24;
          }

          if (v26)
          {
            goto LABEL_24;
          }

          v27 = [v23 cls_universalDate];
          v28 = [v22 cls_universalDate];
          [v27 timeIntervalSinceDate:v28];
          v30 = v29;

          v20 = v40;
          [v42 finalPassTimeInterval];
          if (v30 >= v31)
          {
            goto LABEL_24;
          }

          [(CLSSimilarStacker *)v40->_similarStacker distanceBetweenItem:v23 andItem:v22];
          v33 = v32;
          [v42 finalPassDedupingThreshold];
          if (v34 < 0.0)
          {
            -[CLSSimilarStacker distanceThresholdForSimilarity:withSimilarityModelVersion:](v40->_similarStacker, "distanceThresholdForSimilarity:withSimilarityModelVersion:", 0, [v23 clsSimilarityModelVersion]);
          }

          if (v33 >= v34)
          {
LABEL_24:
            if ([v14 count])
            {
              (v41)[2](v41, v14);
              [v14 removeAllObjects];
              [v15 removeAllObjects];
            }
          }
        }

        [v14 addObject:v23];
        [v15 addObject:v24];
        v18 = v23;
      }

      v17 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  if ([v14 count])
  {
    (v41)[2](v41, v14);
  }

  v35 = v39;

  v36 = *MEMORY[0x277D85DE8];
  return v39;
}

void __73__PGDejunkerDeduper_finalItemsWithItems_options_debugInfo_progressBlock___block_invoke(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  v5 = a1[4];
  if (v4 < 2)
  {
    v9 = [a1[4] eligibleItemsInItems:v3 options:a1[5]];
    [a1[6] addObjectsFromArray:v9];
  }

  else
  {
    [a1[5] finalPassTimeInterval];
    v7 = v6;
    [a1[5] finalPassMaximumTimeGroupExtension];
    v9 = [v5 timeGroupsOfTimeSortedItemsWithTimeSortedItems:v3 timeInterval:v7 maximumTimeGroupExtension:v8];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 count];
          v16 = a1[4];
          v17 = a1[5];
          if (v15 < 2)
          {
            v18 = [v16 eligibleItemsInItems:v14 options:v17];
            [a1[6] addObjectsFromArray:v18];
          }

          else
          {
            v18 = [v16 bestItemsInItems:v14 options:v17];
            [a1[6] addObjectsFromArray:v18];
            [a1[7] dedupItems:v14 toItems:v18 withDedupingType:5];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)dejunkedItemsWithItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v11 identifiersOfRequiredItems];
  v13 = [v11 identifiersOfEligibleItems];

  v14 = MEMORY[0x277CCAC30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke;
  v26[3] = &unk_27887ED48;
  v15 = v12;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v29 = self;
  v17 = [v14 predicateWithBlock:v26];
  v18 = [v9 filteredArrayUsingPredicate:v17];

  if (v10)
  {
    v19 = MEMORY[0x277CCAC30];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke_2;
    v24[3] = &unk_27887ED70;
    v24[4] = self;
    v25 = v15;
    v20 = [v19 predicateWithBlock:v24];
    v21 = [v9 filteredArrayUsingPredicate:v20];

    v22 = [MEMORY[0x277CBEB98] setWithArray:v21];
    [v10 setState:2 ofItems:v22 withReason:@"Junk"];
  }

  return v18;
}

uint64_t __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clsIdentifier];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6 && ![v6 containsObject:v4])
    {
      v5 = 0;
    }

    else
    {
      v5 = [*(a1 + 48) isJunkForItem:v3] ^ 1;
    }
  }

  return v5;
}

uint64_t __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isJunkForItem:v3])
  {
    v4 = *(a1 + 40);
    v5 = [v3 clsIdentifier];
    v6 = [v4 containsObject:v5] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)semanticallyDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v95 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v74 = a5;
  v12 = _Block_copy(a6);
  v13 = 0.0;
  if (v12)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v87 = 0;
      v12[2](v12, &v87, 0.0);
      if (v87 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v92 = 249;
          v93 = 2080;
          v94 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        goto LABEL_68;
      }

      v13 = Current;
    }
  }

  [v74 setStage:@"Semantical"];
  v16 = [(PGDejunkerDeduper *)self itemsByFeatureWithItems:v10];
  v17 = [v16 count];
  if (v17)
  {
    v18 = v17;
    v60 = v10;
    similarStacker = self->_similarStacker;
    [v11 semanticalDedupingThreshold];
    [(CLSSimilarStacker *)similarStacker overrideDistanceThreshold:2 forSimilarity:?];
    v20 = self->_similarStacker;
    [v11 semanticalDedupingThresholdForPeople];
    [(CLSSimilarStacker *)v20 overrideDistanceThreshold:3 forSimilarity:?];
    v21 = self->_similarStacker;
    [v11 semanticalDedupingThresholdForPersons];
    [(CLSSimilarStacker *)v21 overrideDistanceThreshold:4 forSimilarity:?];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = [v11 maximumNumberOfItemsPerSemanticalCluster];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v59 = v16;
    obj = v16;
    v61 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v61)
    {
      v24 = 1.0 / v18;
      v25 = *v84;
      v26 = 0.0;
      v64 = v23;
      v65 = v12;
      v58 = *v84;
      while (2)
      {
        v27 = 0;
        do
        {
          if (*v84 != v25)
          {
            v28 = v27;
            objc_enumerationMutation(obj);
            v27 = v28;
          }

          v62 = v27;
          v68 = *(*(&v83 + 1) + 8 * v27);
          if (v12)
          {
            v29 = CFAbsoluteTimeGetCurrent();
            if (v29 - v13 >= 0.01)
            {
              v87 = 0;
              v12[2](v12, &v87, v26);
              if (v87)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v92 = 276;
                  v93 = 2080;
                  v94 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

LABEL_63:

                goto LABEL_64;
              }

              v13 = v29;
            }
          }

          v26 = v24 + v26;
          v30 = [obj objectForKeyedSubscript:{v68, v58}];
          if (-[PGDejunkerDeduper shouldPerformSemanticalDedupingForItemFeature:options:](self, "shouldPerformSemanticalDedupingForItemFeature:options:", v68, v11) && [v30 count] != 1)
          {
            [(PGDejunkerDeduper *)self semanticalDedupingTimeIntervalForItemFeature:v68 options:v11];
            v33 = v32;
            v34 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v30];
            [v11 semanticalDedupingMaximumTimeGroupExtension];
            v36 = [(PGDejunkerDeduper *)self timeGroupsOfTimeSortedItemsWithTimeSortedItems:v34 timeInterval:v33 maximumTimeGroupExtension:v35];
            v37 = [v36 count];
            if ([v11 semanticalDedupingProtectSmallClusters])
            {
              v38 = vcvtad_u64_f64(2.0 / [v36 count]) + 2;
            }

            else
            {
              v38 = 2;
            }

            v70 = v38;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v31 = v36;
            v72 = [v31 countByEnumeratingWithState:&v79 objects:v89 count:16];
            if (v72)
            {
              v39 = v24 / v37;
              v71 = *v80;
              v40 = 0.0;
              v66 = v31;
              v67 = v30;
              while (2)
              {
                v41 = 0;
                v42 = v34;
                do
                {
                  if (*v80 != v71)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v34 = *(*(&v79 + 1) + 8 * v41);

                  if (v12)
                  {
                    v43 = CFAbsoluteTimeGetCurrent();
                    if (v43 - v13 >= 0.01)
                    {
                      v87 = 0;
                      v12[2](v12, &v87, v26 + v40);
                      if (v87)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          v92 = 305;
                          v93 = 2080;
                          v94 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

                        goto LABEL_63;
                      }

                      v13 = v43;
                    }
                  }

                  v73 = v41;
                  if ([v34 count] >= v70)
                  {
                    [(PGDejunkerDeduper *)self semanticalDedupingSimilarityForItemFeature:v68 options:v11];
                    v46 = v45;
                    v47 = [(CLSSimilarStacker *)self->_similarStacker stackSimilarItems:v34 withSimilarity:v45 timestampSupport:0 progressBlock:0];
                    v69 = v34;
                    if (v23)
                    {
                      v48 = [(PGDejunkerDeduper *)self splitItemGroupsWithItemGroups:v47 maximumNumberOfItemsPerGroup:v23 debugInfo:0];

                      v47 = v48;
                    }

                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    v44 = v47;
                    v49 = [v44 countByEnumeratingWithState:&v75 objects:v88 count:16];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = *v76;
                      do
                      {
                        for (i = 0; i != v50; ++i)
                        {
                          if (*v76 != v51)
                          {
                            objc_enumerationMutation(v44);
                          }

                          v53 = *(*(&v75 + 1) + 8 * i);
                          if ([v53 count] == 1)
                          {
                            v54 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v53 options:v11];
                            [v22 addObjectsFromArray:v54];
                          }

                          else
                          {
                            v54 = [(PGDejunkerDeduper *)self bestItemGroupsBasedOnSceneprintsWithItemGroups:v53 forSimilarity:v46 options:v11];
                            [v22 addObjectsFromArray:v54];
                            [v74 dedupItems:v53 toItems:v54 withDedupingType:2];
                          }
                        }

                        v50 = [v44 countByEnumeratingWithState:&v75 objects:v88 count:16];
                      }

                      while (v50);
                    }

                    v23 = v64;
                    v12 = v65;
                    v31 = v66;
                    v30 = v67;
                    v34 = v69;
                  }

                  else
                  {
                    v44 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v34 options:v11];
                    [v22 addObjectsFromArray:v44];
                  }

                  v40 = v39 + v40;

                  v41 = v73 + 1;
                  v42 = v34;
                }

                while (v73 + 1 != v72);
                v72 = [v31 countByEnumeratingWithState:&v79 objects:v89 count:16];
                if (v72)
                {
                  continue;
                }

                break;
              }
            }

            v25 = v58;
          }

          else
          {
            v31 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v30 options:v11];
            [v22 addObjectsFromArray:v31];
          }

          v27 = v62 + 1;
        }

        while (v62 + 1 != v61);
        v55 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
        v61 = v55;
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    if (v12 && CFAbsoluteTimeGetCurrent() - v13 >= 0.01 && (v87 = 0, v12[2](v12, &v87, 1.0), v87))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v92 = 340;
        v93 = 2080;
        v94 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_64:
      v15 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v15 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v22];
    }

    v16 = v59;
    v10 = v60;
  }

  else
  {
    v15 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v10 options:v11];
  }

LABEL_68:
  v56 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)identicallyDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v133 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0.0;
  v92 = _Block_copy(v13);
  if (v92)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v123 = 0;
      v92[2](v92, &v123, 0.0);
      if (v123 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v130 = 114;
          v131 = 2080;
          v132 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v16 = MEMORY[0x277CBEBF8];
        goto LABEL_96;
      }

      v14 = Current;
    }
  }

  [v12 setStage:@"Identical"];
  v17 = [(PGDejunkerDeduper *)self itemsByFeatureWithItems:v10];
  v18 = [v17 count];
  if (v18)
  {
    v19 = v18;
    v83 = v10;
    v84 = v17;
    v82 = v13;
    similarStacker = self->_similarStacker;
    [v11 identicalDedupingThreshold];
    [(CLSSimilarStacker *)similarStacker overrideDistanceThreshold:0 forSimilarity:?];
    v21 = self->_similarStacker;
    [v11 identicalDedupingThresholdForPeople];
    [(CLSSimilarStacker *)v21 overrideDistanceThreshold:1 forSimilarity:?];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v91 = [v11 maximumNumberOfItemsPerIdenticalCluster];
    v94 = 0;
    if ([objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:v11])
    {
      v94 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v17;
    v106 = v12;
    v86 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
    if (v86)
    {
      v96 = 0;
      v23 = 1.0 / v19;
      v24 = v92;
      v85 = *v120;
      v25 = 0.0;
      while (2)
      {
        v26 = 0;
        do
        {
          if (*v120 != v85)
          {
            objc_enumerationMutation(obj);
          }

          v88 = v26;
          v27 = *(*(&v119 + 1) + 8 * v26);
          v28 = objc_autoreleasePoolPush();
          if (v24)
          {
            v29 = CFAbsoluteTimeGetCurrent();
            if (v29 - v14 >= 0.01)
            {
              v123 = 0;
              v24[2](v24, &v123, v25);
              if (v123 | v96 & 1)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v130 = 142;
                  v131 = 2080;
                  v132 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v28);
LABEL_92:

                goto LABEL_93;
              }

              v96 = 0;
              v14 = v29;
            }
          }

          v90 = v28;
          v30 = [obj objectForKeyedSubscript:v27];
          v31 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v30];
          v32 = [(PGDejunkerDeduper *)self shouldPerformIdenticalDedupingForItemFeature:v27 options:v11];
          v89 = v30;
          v98 = v32;
          if ([v30 count] < 2 || !v32)
          {
            v127 = v31;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
          }

          else
          {
            [(PGDejunkerDeduper *)self identicalDedupingTimeIntervalForItemFeature:v27 options:v11];
            v35 = v34;
            [v11 identicalDedupingMaximumTimeGroupExtension];
            [(PGDejunkerDeduper *)self timeGroupsOfTimeSortedItemsWithTimeSortedItems:v31 timeInterval:v35 maximumTimeGroupExtension:v36];
          }
          v37 = ;
          v25 = v23 + v25;
          [v12 addClusters:v37 withReason:@"Time Clustering"];
          v38 = [v37 count];
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v95 = v37;
          v100 = [v95 countByEnumeratingWithState:&v115 objects:v126 count:16];
          if (v100)
          {
            v39 = v23 / v38;
            v99 = *v116;
            v40 = 0.0;
            v41 = v14;
            v97 = v27;
            while (2)
            {
              v42 = 0;
              v43 = v31;
              do
              {
                if (*v116 != v99)
                {
                  objc_enumerationMutation(v95);
                }

                v31 = *(*(&v115 + 1) + 8 * v42);

                v103 = v42;
                context = objc_autoreleasePoolPush();
                if (v24)
                {
                  v14 = CFAbsoluteTimeGetCurrent();
                  if (v14 - v41 >= 0.01)
                  {
                    v123 = 0;
                    v24[2](v24, &v123, v25 + v40);
                    if (v123 | v96 & 1)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v130 = 169;
                        v131 = 2080;
                        v132 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      objc_autoreleasePoolPop(context);
                      v70 = 0;
                      v96 = 1;
                      goto LABEL_66;
                    }

                    v96 = 0;
                    v41 = v14;
                  }
                }

                if (v12)
                {
                  v44 = [v31 firstObject];
                  v101 = [(PGDejunkerDeduper *)self debugPersonStringForItem:v44];

                  v45 = [v31 lastObject];
                  v46 = [v45 cls_universalDate];
                  [v31 firstObject];
                  v47 = v24;
                  v48 = v12;
                  v50 = v49 = v31;
                  v51 = [v50 cls_universalDate];
                  [v46 timeIntervalSinceDate:v51];
                  v53 = v52;

                  v31 = v49;
                  v12 = v48;
                  v24 = v47;

                  v54 = MEMORY[0x277CCACA8];
                  v55 = [v31 count];
                  v56 = [v31 count];
                  v57 = &stru_2843F5C58;
                  if (v56 > 1)
                  {
                    v57 = @"s";
                  }

                  v81 = v55;
                  v27 = v97;
                  v58 = [v54 stringWithFormat:@"%.0f sec, %lu item%@: %@", v53, v81, v57, v101];
                  [v12 setState:1 ofCluster:v31 withReason:v58];
                }

                if (v98 && [v31 count] != 1)
                {
                  [(PGDejunkerDeduper *)self identicalDedupingSimilarityForItemFeature:v27 options:v11];
                  v60 = v27;
                  v62 = v61;
                  v59 = [(CLSSimilarStacker *)self->_similarStacker stackSimilarItems:v31 withSimilarity:v61 timestampSupport:0 progressBlock:0];
                  v102 = [v12 debugInfoForCluster:v31];
                  [v102 setClusters:v59 withReason:@"Similar Stacking"];
                  if (v94 && [v60 hasPersons])
                  {
                    [v94 addObjectsFromArray:v59];
                  }

                  else
                  {
                    v93 = v31;
                    if (v91)
                    {
                      v63 = [(PGDejunkerDeduper *)self splitItemGroupsWithItemGroups:v59 maximumNumberOfItemsPerGroup:v91 debugInfo:v102];

                      v59 = v63;
                    }

                    v113 = 0u;
                    v114 = 0u;
                    v111 = 0u;
                    v112 = 0u;
                    v59 = v59;
                    v64 = [v59 countByEnumeratingWithState:&v111 objects:v125 count:16];
                    if (v64)
                    {
                      v65 = v64;
                      v66 = *v112;
                      do
                      {
                        for (i = 0; i != v65; ++i)
                        {
                          if (*v112 != v66)
                          {
                            objc_enumerationMutation(v59);
                          }

                          v68 = *(*(&v111 + 1) + 8 * i);
                          if ([v68 count] == 1)
                          {
                            v69 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v68 options:v11];
                            [v22 addObjectsFromArray:v69];
                          }

                          else
                          {
                            v69 = [(PGDejunkerDeduper *)self bestItemGroupsBasedOnSceneprintsWithItemGroups:v68 forSimilarity:v62 options:v11];
                            [v22 addObjectsFromArray:v69];
                            [v106 dedupItems:v68 toItems:v69 withDedupingType:1];
                          }
                        }

                        v65 = [v59 countByEnumeratingWithState:&v111 objects:v125 count:16];
                      }

                      while (v65);
                    }

                    v12 = v106;
                    v24 = v92;
                    v31 = v93;
                  }

                  v27 = v97;
                }

                else
                {
                  v59 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v31 options:v11];
                  [v22 addObjectsFromArray:v59];
                }

                v40 = v39 + v40;

                objc_autoreleasePoolPop(context);
                v42 = v103 + 1;
                v43 = v31;
              }

              while (v103 + 1 != v100);
              v100 = [v95 countByEnumeratingWithState:&v115 objects:v126 count:16];
              if (v100)
              {
                continue;
              }

              break;
            }

            v70 = 1;
            v14 = v41;
          }

          else
          {
            v70 = 1;
          }

LABEL_66:

          objc_autoreleasePoolPop(v90);
          if (!v70)
          {
            goto LABEL_92;
          }

          v26 = v88 + 1;
        }

        while (v88 + 1 != v86);
        v86 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
        if (v86)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v96 = 0;
      v24 = v92;
    }

    if ([v94 count])
    {
      [(PGDejunkerDeduper *)self bestItemGroupsBasedOnFaceprintsWithItemGroups:v94 options:v11];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      contexta = v110 = 0u;
      v71 = [contexta countByEnumeratingWithState:&v107 objects:v124 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = 0;
        v74 = *v108;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v108 != v74)
            {
              objc_enumerationMutation(contexta);
            }

            v76 = *(*(&v107 + 1) + 8 * j);
            v77 = [v94 objectAtIndexedSubscript:v73];
            v78 = [v77 count];
            if (v78 != [v76 count])
            {
              [v106 dedupItems:v77 toItems:v76 withDedupingType:1];
            }

            [v22 addObjectsFromArray:v76];
            ++v73;
          }

          v72 = [contexta countByEnumeratingWithState:&v107 objects:v124 count:16];
        }

        while (v72);
      }

      v12 = v106;
      v24 = v92;
    }

    if (v24 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v123 = 0, v24[2](v24, &v123, 1.0), v123 | v96 & 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v130 = 241;
        v131 = 2080;
        v132 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_93:
      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v22];
    }

    v13 = v82;
    v10 = v83;
    v17 = v84;
  }

  else
  {
    v16 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v10 options:v11];
  }

LABEL_96:
  v79 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dejunkedDedupedItemsInItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v78 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v10 = a4;
  v11 = a5;
  v36 = a6;
  v12 = _Block_copy(v36);
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v37 = v11;
  if (!v12 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v61[3] < 0.01) || (v61[3] = v13, v59 = 0, (*(v12 + 2))(v12, &v59, 0.0), v14 = *(v65 + 24) | v59, *(v65 + 24) = v14, (v14 & 1) == 0))
  {
    [v11 setAgent:@"DejunkerDeduper"];
    v16 = v38;
    v17 = v16;
    if ([v10 doIdenticalDeduping])
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke;
      v54[3] = &unk_27888A188;
      v55 = v12;
      v56 = &v60;
      v57 = &v64;
      v58 = 0x3F847AE147AE147BLL;
      v17 = [(PGDejunkerDeduper *)self identicallyDedupedItemsInItems:v16 options:v10 debugInfo:v11 progressBlock:v54];

      if (*(v65 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v69 = 65;
          *&v69[4] = 2080;
          *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        v18 = v55;
        goto LABEL_45;
      }
    }

    v17 = v17;
    v18 = v17;
    if ([v10 doSemanticalDeduping])
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_184;
      v49[3] = &unk_27888A188;
      v50 = v12;
      v51 = &v60;
      v52 = &v64;
      v53 = 0x3F847AE147AE147BLL;
      v18 = [(PGDejunkerDeduper *)self semanticallyDedupedItemsInItems:v17 options:v10 debugInfo:v11 progressBlock:v49];

      if (*(v65 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v69 = 75;
          *&v69[4] = 2080;
          *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        v19 = v50;
        goto LABEL_44;
      }
    }

    v18 = v18;
    v19 = v18;
    if ([v10 doDejunk])
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_185;
      v44[3] = &unk_27888A188;
      v45 = v12;
      v46 = &v60;
      v47 = &v64;
      v48 = 0x3F847AE147AE147BLL;
      v19 = [(PGDejunkerDeduper *)self dejunkedItemsWithItems:v18 options:v10 debugInfo:v11 progressBlock:v44];

      if (*(v65 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v69 = 85;
          *&v69[4] = 2080;
          *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        v20 = v45;
        goto LABEL_43;
      }

      if (![v19 count] && objc_msgSend(v10, "returnDedupedJunkIfOnlyJunk"))
      {
        v21 = v18;

        v19 = v21;
      }
    }

    v19 = v19;
    v20 = v19;
    if ([v10 doFinalPass])
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_186;
      v39[3] = &unk_27888A188;
      v40 = v12;
      v41 = &v60;
      v42 = &v64;
      v43 = 0x3F847AE147AE147BLL;
      v20 = [(PGDejunkerDeduper *)self finalItemsWithItems:v19 options:v10 debugInfo:v11 progressBlock:v39];

      if (*(v65 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v69 = 99;
          *&v69[4] = 2080;
          *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_33;
      }
    }

    v22 = self->_loggingConnection;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x277CCA968];
      v35 = [v16 firstObject];
      v34 = [v35 cls_universalDate];
      v24 = [v23 localizedStringFromDate:v34 dateStyle:2 timeStyle:0];
      v33 = [v16 count];
      v32 = [v17 count];
      v25 = [v18 count];
      v26 = [v19 count];
      v27 = [v20 count];
      *buf = 138413570;
      *v69 = v24;
      *&v69[8] = 2048;
      *&v69[10] = v33;
      v70 = 2048;
      v71 = v32;
      v72 = 2048;
      v73 = v25;
      v74 = 2048;
      v75 = v26;
      v76 = 2048;
      v77 = v27;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "DejunkerDeduper: %@: %lu -> %lu -> %lu -> %lu -> %lu", buf, 0x3Eu);
    }

    if (!v12 || (Current = CFAbsoluteTimeGetCurrent(), Current - v61[3] < 0.01) || (v61[3] = Current, v59 = 0, (*(v12 + 2))(v12, &v59, 1.0), v29 = *(v65 + 24) | v59, *(v65 + 24) = v29, (v29 & 1) == 0))
    {
      v20 = v20;
      v15 = v20;
      goto LABEL_43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v69 = 104;
      *&v69[4] = 2080;
      *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_33:
    v15 = MEMORY[0x277CBEBF8];
LABEL_43:

LABEL_44:
LABEL_45:

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v69 = 54;
    *&v69[4] = 2080;
    *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = MEMORY[0x277CBEBF8];
LABEL_46:
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  v30 = *MEMORY[0x277D85DE8];

  return v15;
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_184(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_185(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_186(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.9);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (PGDejunkerDeduper)initWithSimilarityModelClass:(Class)a3
{
  v10.receiver = self;
  v10.super_class = PGDejunkerDeduper;
  v4 = [(PGDejunkerDeduper *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284485430];
    kMeanTimeClusterer = v4->_kMeanTimeClusterer;
    v4->_kMeanTimeClusterer = v5;

    v7 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:a3];
    similarStacker = v4->_similarStacker;
    v4->_similarStacker = v7;

    objc_storeStrong(&v4->_loggingConnection, MEMORY[0x277D86220]);
  }

  return v4;
}

+ (BOOL)useFaceprintsForIdenticalDedupingWithOptions:(id)a3
{
  v3 = a3;
  if (([v3 personDedupingType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = [v3 useFaceprintsForIdenticalDeduping];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __73__PGDejunkerDeduper_CLSCurationItem_itemsSortedByScoreWithItems_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 clsContentScore];
  v8 = v7;
  [v6 clsContentScore];
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v5 clsIdentifier];
      v12 = [v6 clsIdentifier];
      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 48) objectForKeyedSubscript:v11], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = v13;
        [v13 doubleValue];
        v16 = v15;
      }

      else
      {
        [v5 clsAestheticScore];
        v16 = v17;
      }

      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 48) objectForKeyedSubscript:v12], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v18;
        [v18 doubleValue];
        v21 = v20;
      }

      else
      {
        [v6 clsAestheticScore];
        v21 = v22;
      }

      if (v16 <= v21)
      {
        if (v16 < v21)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v11 compare:v12];
        }
      }

      else
      {
        v10 = -1;
      }
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void __95__PGDejunkerDeduper_CLSCurationItem_dejunkedDedupedItemIdentifiersWithItems_options_debugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

void __88__PGDejunkerDeduper_PHAsset_personLocalIdentifiersFromFaceInformation_faceQualityScore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 isKnownPerson])
  {
    [*(a1 + 32) addObject:v11];
    [v5 faceQuality];
    if (v6 >= 0.0)
    {
      *(*(*(a1 + 40) + 8) + 24) = v6 + *(*(*(a1 + 40) + 8) + 24);
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    [v5 faceSize];
    if (v7 > 0.0)
    {
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 24);
      if (v9 < v7 && v9 > 0.0)
      {
        v7 = *(v8 + 24);
      }

      *(v8 + 24) = v7;
    }
  }
}

void __88__PGDejunkerDeduper_PHAsset_personLocalIdentifiersFromFaceInformation_faceQualityScore___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v5 isKnownPerson] & 1) == 0)
  {
    [v5 faceSize];
    if (v6 >= *(a1 + 56))
    {
      [v5 faceQuality];
      if (v7 >= 0.0)
      {
        [*(a1 + 32) addObject:v9];
        [v5 faceQuality];
        *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24);
        ++*(*(*(a1 + 48) + 8) + 24);
      }
    }
  }
}

uint64_t __65__PGDejunkerDeduper_PHAsset_itemsSortedByScoreWithItems_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 clsContentScore];
  v8 = v7;
  [v6 clsContentScore];
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v5 uuid];
      v12 = [v6 uuid];
      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 80) objectForKeyedSubscript:v11], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = v13;
        [v13 doubleValue];
        v16 = v15;
      }

      else
      {
        [v5 overallAestheticScore];
        v16 = v17;
      }

      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 80) objectForKeyedSubscript:v12], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v18;
        [v18 doubleValue];
        v21 = v20;
      }

      else
      {
        [v6 overallAestheticScore];
        v21 = v22;
      }

      if (v16 <= v21)
      {
        if (v16 < v21)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v11 compare:v12];
        }
      }

      else
      {
        v10 = -1;
      }
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void __87__PGDejunkerDeduper_PHAsset_faceprintByPersonLocalIdentifierByItemIdentifierWithItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 personLocalIdentifier];
        if (v12)
        {
          v13 = [v11 faceClusteringProperties];
          v14 = [v13 faceprint];
          v15 = [v14 faceprintData];

          if (v15)
          {
            v16 = objc_alloc(MEMORY[0x277CE2CD8]);
            v23 = 0;
            v17 = [v16 initWithState:v15 error:&v23];
            if (v17)
            {
              [v5 setObject:v17 forKeyedSubscript:v12];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v18 = *(a1 + 32);
  v19 = [MEMORY[0x277CD97A8] uuidFromLocalIdentifier:v22];
  [v18 setObject:v5 forKeyedSubscript:v19];

  v20 = *MEMORY[0x277D85DE8];
}

@end