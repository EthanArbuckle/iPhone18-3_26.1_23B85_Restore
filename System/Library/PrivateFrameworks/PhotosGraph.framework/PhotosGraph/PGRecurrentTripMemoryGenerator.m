@interface PGRecurrentTripMemoryGenerator
- (id)chapterTitleGeneratorForTriggeredMemory:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 titleGenerationContext:(id)a6 inGraph:(id)a7;
- (id)generatePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5;
- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
@end

@implementation PGRecurrentTripMemoryGenerator

- (id)chapterTitleGeneratorForTriggeredMemory:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 titleGenerationContext:(id)a6 inGraph:(id)a7
{
  v7 = a3;
  v8 = [v7 memoryMomentNodes];
  v9 = [v8 dateNodes];
  v10 = [v9 yearNodes];
  v11 = [v10 count];

  if (v11 < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [[PGYearChapterTitleGenerator alloc] initWithTriggeredMemory:v7];
  }

  return v12;
}

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = a7;
  v10 = [a3 memoryFeatureNodes];
  v11 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:v10];

  v12 = [PGRecurrentTripMemoryTitleGenerator alloc];
  v13 = [v11 temporarySet];
  v14 = [(PGRecurrentTripMemoryTitleGenerator *)v12 initWithLocationNodes:v13 titleGenerationContext:v9];

  return v14;
}

- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphLocationNodeCollection subsetInCollection:v12];

  if ([v13 count] == 1)
  {
    v14 = [v9 memoryMomentNodes];
    v15 = [v13 anyNode];
    v16 = [(PGMemoryGenerator *)self memoryCurationSession];
    v17 = [v16 curationManager];
    v18 = [PGMemoryGenerationHelper assetFetchResultForMomentNodes:v14 inLocationOrAreaNode:v15 requireInteresting:0 curationManager:v17 progressReporter:v11];

    v19 = [(PGMemoryGenerator *)self memoryCurationSession];
    v20 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v18 memoryCurationSession:v19 graph:v10];
  }

  else
  {
    v21 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24[0] = 67109120;
      v24[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "[PGRecurrentTripMemoryGenerator] One location node expected, found %d", v24, 8u);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5
{
  v82 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v43 = a4;
  v40 = a5;
  v8 = _Block_copy(v40);
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if (!v8 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v70[3] < 0.01) || (v70[3] = v9, LOBYTE(v65) = 0, (*(v8 + 2))(v8, &v65, 0.0), v10 = *(v74 + 24) | v65, *(v74 + 24) = v10, (v10 & 1) == 0))
  {
    buf = 0;
    *&v80 = &buf;
    *(&v80 + 1) = 0x2020000000;
    v81 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:v43];
    v14 = [v13 highlightGroupNodes];
    v15 = MEMORY[0x277D22BF8];
    v16 = +[PGGraphHighlightGroupNode momentInHighlight];
    v17 = objc_opt_self();
    v18 = [v15 adjacencyWithSources:v14 relation:v16 targetsClass:v17];
    v38 = v14;

    v19 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v41 = [v19 momentNodesAtSensitiveLocationsInGraph:v43];

    v42 = [v18 subtractingTargetsWith:v41];

    v20 = [(PGMemoryGenerator *)self locationHelper];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
    v58[3] = &unk_278884DD0;
    v21 = v20;
    v59 = v21;
    v22 = v12;
    v60 = v22;
    v23 = v8;
    v61 = v23;
    v62 = &v69;
    v63 = &v73;
    v64 = 0x3F847AE147AE147BLL;
    [v42 enumerateTargetsBySourceWithBlock:v58];
    if (*(v74 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v77 = 67109378;
        LODWORD(v78[0]) = 72;
        WORD2(v78[0]) = 2080;
        *(v78 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v77, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_25;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
    v26 = [v25 momentNodesWithBlockedFeature];

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_257;
    v45[3] = &unk_278884E20;
    v27 = v23;
    v52 = v27;
    v53 = &v69;
    v57 = 0x3F847AE147AE147BLL;
    v54 = &v73;
    v46 = v21;
    v47 = v42;
    v28 = v26;
    v48 = v28;
    v49 = self;
    p_buf = &buf;
    v50 = v43;
    v56 = &v65;
    v29 = v24;
    v51 = v29;
    [v22 enumerateKeysAndObjectsUsingBlock:v45];
    if (*(v74 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v77 = 67109378;
        LODWORD(v78[0]) = 129;
        WORD2(v78[0]) = 2080;
        *(v78 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
        v30 = MEMORY[0x277D86220];
LABEL_14:
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v77, 0x12u);
      }
    }

    else
    {
      v31 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(v80 + 24);
        v33 = v66[3];
        v77 = 134218240;
        v78[0] = v32;
        LOWORD(v78[1]) = 2048;
        *(&v78[1] + 2) = v33;
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "Memory Creation Request: %lu not interesting, %lu no scenes processed", &v77, 0x16u);
      }

      if (!v8 || (Current = CFAbsoluteTimeGetCurrent(), Current - v70[3] < 0.01) || (v70[3] = Current, v44 = 0, (*(v27 + 2))(v27, &v44, 1.0), v35 = *(v74 + 24) | v44, *(v74 + 24) = v35, (v35 & 1) == 0))
      {
        v11 = v29;
        goto LABEL_24;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v77 = 67109378;
        LODWORD(v78[0]) = 133;
        WORD2(v78[0]) = 2080;
        *(v78 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
        v30 = MEMORY[0x277D86220];
        goto LABEL_14;
      }
    }

    v11 = MEMORY[0x277CBEBF8];
LABEL_24:

LABEL_25:
    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&buf, 8);
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x2204000202;
    LOWORD(v80) = 2080;
    *(&v80 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGRecurrentTripMemoryGenerator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_26:
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

void __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 temporaryArray];
  v9 = [v7 relevantLocationNodesForMomentNodes:v8 applyDensestCloseLocationNode:0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    v31 = v6;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = *(a1 + 32);
        v16 = [v14 locationNodeCollection];
        v17 = [v15 addressNodesFromLocationNodes:v16];

        v18 = [*(a1 + 32) momentNodesByAddressNode];
        v19 = [v18 targetsForSources:v17];

        v20 = [v19 collectionByIntersecting:v6];
        v21 = [v20 count];
        if ([v6 count] <= (2 * v21))
        {
          v22 = [*(a1 + 40) objectForKeyedSubscript:v14];
          v23 = v22;
          if (v22)
          {
            [v22 collectionByFormingUnionWith:v32];
            v24 = v11;
            v26 = v25 = v12;
            [*(a1 + 40) setObject:v26 forKeyedSubscript:v14];

            v12 = v25;
            v11 = v24;
            v6 = v31;
          }

          else
          {
            [*(a1 + 40) setObject:v32 forKeyedSubscript:v14];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  if (*(a1 + 48))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v28 = *(*(a1 + 56) + 8);
    if (Current - *(v28 + 24) >= *(a1 + 72))
    {
      *(v28 + 24) = Current;
      (*(*(a1 + 48) + 16))(0.25);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_257(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v11 = *(*(a1 + 88) + 8), Current - *(v11 + 24) >= *(a1 + 120)) && (*(v11 + 24) = Current, v41 = 0, (*(*(a1 + 80) + 16))(0.5), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else if ([v8 count] >= 3)
  {
    v12 = *(a1 + 32);
    v13 = [v7 locationNodeCollection];
    v14 = [v12 addressNodesFromLocationNodes:v13];

    v15 = [*(a1 + 32) momentNodesByAddressNode];
    v16 = [v15 targetsForSources:v14];

    v17 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_2;
    v35[3] = &unk_278884DF8;
    v36 = *(a1 + 40);
    v18 = v16;
    v37 = v18;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v38 = v19;
    v39 = v20;
    v21 = v17;
    v40 = v21;
    v22 = [v8 filteredCollectionUsingBlock:v35];
    if ([v22 count] > 2)
    {
      v23 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithGraph:*(a1 + 64) elementIdentifiers:v21];
      v24 = [(PGGraphMomentNodeCollection *)v23 universalDateInterval];
      [v24 duration];
      v26 = v25;

      if (v26 >= 31557600.0)
      {
        v34 = v14;
        v27 = [*(a1 + 56) processedScenesAndFacesCache];
        v28 = [v27 allMomentNodesInCollectionHaveScenesProcessed:v23];

        if (v28)
        {
          v29 = [v22 featureNodeCollection];
          v32 = [v7 locationNodeCollection];
          v30 = [v32 featureNodeCollection];
          v33 = [v29 collectionByFormingUnionWith:v30];

          v31 = [[PGGraphMemory alloc] initWithMemoryCategory:18 memoryCategorySubcategory:12002 momentNodes:v23 featureNodes:v33];
          [*(a1 + 72) addObject:v31];
        }

        else
        {
          ++*(*(*(a1 + 112) + 8) + 24);
        }

        v14 = v34;
      }
    }

    else
    {
      ++*(*(*(a1 + 104) + 8) + 24);
    }
  }

  objc_autoreleasePoolPop(v9);
}

BOOL __99__PGRecurrentTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) targetsForSources:a2];
  v4 = [*(a1 + 40) collectionByIntersecting:v3];
  v5 = [v4 collectionBySubtracting:*(a1 + 48)];

  v6 = [*(a1 + 56) memoryGenerationContext];
  v7 = [v6 interestingForMemoriesSubsetFromMomentNodes:v5];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *(a1 + 64);
    v10 = [v5 elementIdentifiers];
    [v9 unionWithIdentifierSet:v10];
  }

  return v8 != 0;
}

@end