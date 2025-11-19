@interface PGEarlyMomentsWithPeopleMemoryGenerator
+ (id)earlyMomentNodesByPersonNodeWithPersonNodes:(id)a3;
+ (unint64_t)numberOfPotentialMemoriesForGraph:(id)a3;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (void)_enumerateEarlyMomentsWithPeopleForLocalDate:(id)a3 withGraph:(id)a4 usingBlock:(id)a5;
- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6;
@end

@implementation PGEarlyMomentsWithPeopleMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = a7;
  v10 = a3;
  v11 = [v10 memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v11];

  v13 = [v10 memoryMomentNodes];

  v14 = [PGPeopleMemoryTitleGenerator alloc];
  v15 = [v13 temporarySet];
  v16 = [v12 temporarySet];
  v17 = [(PGPeopleMemoryTitleGenerator *)v14 initWithMomentNodes:v15 personNodes:v16 timeTitleOptions:0 type:3 titleGenerationContext:v9];

  return v17;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v8];

  v13.receiver = self;
  v13.super_class = PGEarlyMomentsWithPeopleMemoryGenerator;
  v10 = [(PGMemoryGenerator *)&v13 keyAssetCurationOptionsWithTriggeredMemory:v7 inGraph:v6];

  v11 = [v9 localIdentifiers];
  [v10 setReferencePersonLocalIdentifiers:v11];

  [v10 setMinimumNumberOfReferencePersons:0];

  return v10;
}

uint64_t __117__PGEarlyMomentsWithPeopleMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.75 + 0.25];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PGMemoryGenerator *)self memoryGenerationContext];
  v15 = [v14 processedScenesAndFacesCache];
  v16 = [v15 libraryHasEnoughScenesProcessed:1 andProcessedFaces:1];

  if (v16)
  {
    v17 = [(PGEarlyMomentsWithPeopleMemoryGenerator *)self localDate];
    if (v17)
    {
      [(PGEarlyMomentsWithPeopleMemoryGenerator *)self localDate];
    }

    else
    {
      [MEMORY[0x277CBEAA8] date];
    }
    v18 = ;

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __121__PGEarlyMomentsWithPeopleMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke;
    v25[3] = &unk_27887F350;
    v29 = &v45;
    v30 = &v41;
    v31 = &v37;
    v26 = v11;
    v27 = self;
    v32 = &v33;
    v28 = v13;
    [(PGEarlyMomentsWithPeopleMemoryGenerator *)self _enumerateEarlyMomentsWithPeopleForLocalDate:v18 withGraph:v26 usingBlock:v25];
    v19 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v46[3];
      v21 = v42[3];
      v22 = v38[3];
      v23 = v34[3];
      *buf = 134219008;
      v50 = v20;
      v51 = 2048;
      v52 = v21;
      v53 = 2048;
      v54 = v22;
      v55 = 2048;
      v56 = 0;
      v57 = 2048;
      v58 = v23;
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, "Memory Creation Request: Found %lu, rejected %lu uninteresting, %lu too short, %lu insufficiently faced, %lu blocklisting", buf, 0x34u);
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __121__PGEarlyMomentsWithPeopleMemoryGenerator__enumeratePotentialMemoriesForProcessingWindow_graph_progressBlock_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ++*(*(*(a1 + 56) + 8) + 24);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (([*(*(&v49 + 1) + 8 * i) isInterestingForMemories] & 1) == 0)
        {
          ++*(*(*(a1 + 64) + 8) + 24);

          goto LABEL_36;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (!v13)
  {

LABEL_21:
    ++*(*(*(a1 + 72) + 8) + 24);
    goto LABEL_36;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v46;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v46 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v15 += [*(*(&v45 + 1) + 8 * j) numberOfAssets];
    }

    v14 = [v12 countByEnumeratingWithState:&v45 objects:v54 count:16];
  }

  while (v14);

  if (v15 <= 0xC)
  {
    goto LABEL_21;
  }

  v18 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v12 graph:*(a1 + 32)];
  v19 = [v6 collection];
  v20 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v18 toNodes:v19];
  if ([v20 numberOfRelevantAssets] > 8)
  {
    v39 = v19;
    v40 = v18;
    v21 = [*(a1 + 40) memoryGenerationContext];
    v22 = [v21 momentNodesWithBlockedFeatureCache];
    v23 = [v22 momentNodesWithBlockedFeature];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = v12;
    v25 = [(PGPotentialEarlyMomentsWithPeopleMemory *)v24 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      while (2)
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([v23 containsNode:*(*(&v41 + 1) + 8 * k)])
          {
            ++*(*(*(a1 + 80) + 8) + 24);
            goto LABEL_34;
          }
        }

        v26 = [(PGPotentialEarlyMomentsWithPeopleMemory *)v24 countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v29 = [PGPotentialEarlyMomentsWithPeopleMemory alloc];
    v30 = [MEMORY[0x277CBEB98] setWithArray:v24];
    v31 = [MEMORY[0x277CBEB98] setWithObject:v6];
    v24 = [(PGPotentialEarlyMomentsWithPeopleMemory *)v29 initWithMomentNodes:v30 personNodes:v31];

    [v6 personScore];
    -[PGPotentialMemory setScore:](v24, "setScore:", v32 + [v6 numberOfMomentNodes] * 0.01);
    v33 = MEMORY[0x277CBEB98];
    v34 = [PGFeature featureWithType:3 node:v6];
    v35 = [v33 setWithObject:v34];
    [(PGPotentialMemory *)v24 setFeatures:v35];

    [(PGPotentialMemory *)v24 computeContentScore];
    v36 = [v6 localIdentifier];
    if ([v36 length])
    {
      v37 = [MEMORY[0x277CBEB98] setWithObject:v36];
      [(PGPotentialMemory *)v24 setPeopleUUIDs:v37];
    }

    (*(*(a1 + 48) + 16))();

LABEL_34:
    v19 = v39;
    v18 = v40;
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
  }

LABEL_36:
  v38 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateEarlyMomentsWithPeopleForLocalDate:(id)a3 withGraph:(id)a4 usingBlock:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v45 = a5;
  v44 = v8;
  if ([(PGEarlyMomentsWithPeopleMemoryGenerator *)self shouldGenerateAllMemories])
  {
    v10 = [v9 momentNodes];
  }

  else
  {
    v11 = [MEMORY[0x277D27690] monthFromDate:v8];
    v12 = [MEMORY[0x277D27690] weekOfMonthFromDate:v8];
    v13 = [v9 dateNodesForMonth:v11];
    v14 = [v9 dateNodesForWeekOfMonth:v12];
    v15 = [MEMORY[0x277CBEB58] setWithSet:v14];
    [v15 intersectSet:v13];
    v16 = [(MAElementCollection *)[PGGraphDateNodeCollection alloc] initWithSet:v15 graph:v9];
    v10 = [(PGGraphDateNodeCollection *)v16 momentNodes];
  }

  v17 = [v10 personNodes];
  v18 = [v9 meNodeCollection];
  v19 = [v17 collectionBySubtracting:v18];

  v20 = [(PGMemoryGenerator *)self memoryGenerationContext];
  v43 = v9;
  v21 = [v20 momentNodesAtSensitiveLocationsInGraph:v9];

  v61 = 0;
  v42 = v19;
  [objc_opt_class() earlyMomentNodesByPersonNodeWithPersonNodes:v19];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v22 = v60 = 0u;
  v48 = [v22 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v48)
  {
    v46 = v22;
    v47 = *v58;
    while (2)
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(v22);
        }

        v24 = *(*(&v57 + 1) + 8 * i);
        v25 = [v22 objectForKey:v24];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = 0;
          v30 = *v54;
          while (2)
          {
            v31 = 0;
            v32 = v29;
            v29 += v28;
            do
            {
              if (*v54 != v30)
              {
                objc_enumerationMutation(v26);
              }

              if (![v10 containsNode:*(*(&v53 + 1) + 8 * v31)])
              {
                v29 = v32;
                goto LABEL_19;
              }

              ++v32;
              ++v31;
            }

            while (v28 != v31);
            v28 = [v26 countByEnumeratingWithState:&v53 objects:v63 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }

LABEL_19:

          if (v29)
          {
            if (v29 != [v26 count])
            {
              v33 = [v26 subarrayWithRange:{0, v29}];

              v26 = v33;
            }

            v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v26 = v26;
            v35 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v50;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v50 != v37)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v39 = *(*(&v49 + 1) + 8 * j);
                  if (([v21 containsNode:v39] & 1) == 0)
                  {
                    [v34 addObject:v39];
                  }
                }

                v36 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
              }

              while (v36);
            }

            v45[2](v45, v34, v24, &v61);
            v40 = v61;

            if (v40 == 1)
            {

              v22 = v46;
              goto LABEL_38;
            }
          }

          v22 = v46;
        }

        else
        {
        }
      }

      v48 = [v22 countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:

  v41 = *MEMORY[0x277D85DE8];
}

+ (id)earlyMomentNodesByPersonNodeWithPersonNodes:(id)a3
{
  v3 = a3;
  v4 = [v3 socialGroupNodes];
  v5 = [v4 personNodes];
  v6 = [v5 collectionByIntersecting:v3];

  v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__PGEarlyMomentsWithPeopleMemoryGenerator_earlyMomentNodesByPersonNodeWithPersonNodes___block_invoke;
  v10[3] = &unk_27887F328;
  v8 = v7;
  v11 = v8;
  [v6 enumerateIdentifiersAsCollectionsWithBlock:v10];

  return v8;
}

void __87__PGEarlyMomentsWithPeopleMemoryGenerator_earlyMomentNodesByPersonNodeWithPersonNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 featureNodeCollection];
  v6 = [v5 momentNodes];

  v7 = [v6 interestingSubset];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v32[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  v32[1] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v32[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];

  v12 = [v7 sortedArrayUsingDescriptors:v11];

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    v18 = 0.0;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v27 + 1) + 8 * v19);
      if ([v20 totalNumberOfPersons] <= 0x13)
      {
        [v20 timestampUTCStart];
        v22 = v21;
        if (v18 != 0.0)
        {
          v21 = v21 - v18;
          v23 = v22 - v18 <= 15552000.0;
          v22 = v18;
          if (!v23)
          {
            break;
          }
        }

        [v13 addObject:{v20, v21}];
        v18 = v22;
        if ([v13 count] > 4)
        {
          break;
        }
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([v13 count])
  {
    v24 = *(a1 + 32);
    v25 = [v4 anyNode];
    [v24 setObject:v13 forKey:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)numberOfPotentialMemoriesForGraph:(id)a3
{
  v4 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:a3];
  v5 = [a1 earlyMomentNodesByPersonNodeWithPersonNodes:v4];
  v6 = [v5 count];

  return v6;
}

@end