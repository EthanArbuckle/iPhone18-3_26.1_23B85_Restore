@interface PGTripFoodieMemoryGenerator
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
@end

@implementation PGTripFoodieMemoryGenerator

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  v43 = _Block_copy(blockCopy);
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v10 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:graphCopy];
  momentNodes = [v10 momentNodes];
  [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:graphCopy];
  v41 = v39 = windowCopy;
  highlightGroupNodes = [v41 highlightGroupNodes];
  v12 = MEMORY[0x277D22BF8];
  v13 = +[PGGraphHighlightGroupNode momentInHighlight];
  v14 = objc_opt_self();
  v15 = [v12 adjacencyWithSources:highlightGroupNodes relation:v13 targetsClass:v14];

  v16 = [v15 intersectingTargetsWith:momentNodes];

  v17 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:graphCopy];
  v18 = [v16 subtractingTargetsWith:v17];

  momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
  momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

  v21 = [v18 subtractingTargetsWith:momentNodesWithBlockedFeature];

  targets = [v21 targets];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
  v54[3] = &unk_278888AE0;
  v23 = v10;
  v55 = v23;
  v24 = [targets filteredCollectionUsingBlock:v54];

  v25 = [v21 intersectingTargetsWith:v24];

  sources = [v25 sources];
  v27 = [sources count];

  if (v27)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v68 = 0;
    *&v69 = &v68;
    *(&v69 + 1) = 0x2020000000;
    v70 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_232;
    v45[3] = &unk_278882DD8;
    v49 = &v68;
    v52 = 1.0 / v27;
    v29 = v43;
    v53 = 0x3F847AE147AE147BLL;
    v50 = &v56;
    v51 = &v60;
    v48 = v29;
    v45[4] = self;
    v46 = v23;
    v30 = v28;
    v47 = v30;
    [v25 enumerateTargetsBySourceWithBlock:v45];
    if (*(v61 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v65 = 78;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/FoodieMemoryGenerators/PGTripFoodieMemoryGenerator.m";
        v31 = MEMORY[0x277D86220];
LABEL_5:
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      if (!v29 || (Current = CFAbsoluteTimeGetCurrent(), Current - v57[3] < 0.01) || (v57[3] = Current, v44 = 0, (*(v29 + 2))(v29, &v44, 1.0), v36 = *(v61 + 24) | v44, *(v61 + 24) = v36, (v36 & 1) == 0))
      {
        v32 = v30;
        goto LABEL_19;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v65 = 79;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/FoodieMemoryGenerators/PGTripFoodieMemoryGenerator.m";
        v31 = MEMORY[0x277D86220];
        goto LABEL_5;
      }
    }

    v32 = MEMORY[0x277CBEBF8];
LABEL_19:

    _Block_object_dispose(&v68, 8);
    goto LABEL_20;
  }

  if (v43)
  {
    v33 = CFAbsoluteTimeGetCurrent();
    if (v33 - v57[3] >= 0.01)
    {
      v57[3] = v33;
      LOBYTE(buf) = 0;
      (*(v43 + 2))(v43, &buf, 1.0);
      v34 = *(v61 + 24) | buf;
      *(v61 + 24) = v34;
      if ((v34 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v68 = 0x2B04000202;
        LOWORD(v69) = 2080;
        *(&v69 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/FoodieMemoryGenerators/PGTripFoodieMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v68, 0x12u);
      }
    }
  }

  v32 = MEMORY[0x277CBEBF8];
LABEL_20:

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v32;
}

BOOL __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:a2 toNodes:*(a1 + 32)];
  v3 = [v2 numberOfRelevantAssets] > 1;

  return v3;
}

void __96__PGTripFoodieMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_232(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 64) + 8) + 24) = *(a1 + 88) + *(*(*(a1 + 64) + 8) + 24);
  if (*(a1 + 56) && (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 72) + 8), Current - *(v10 + 24) >= *(a1 + 96)) && (*(v10 + 24) = Current, LOBYTE(v33) = 0, (*(*(a1 + 56) + 16))(*(*(*(a1 + 64) + 8) + 24)), *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 80) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v11 = [v7 uuids];
    v12 = [v11 anyObject];

    v13 = [*(a1 + 32) processedScenesAndFacesCache];
    v14 = [v13 allMomentNodesInCollectionHaveScenesProcessed:v8];

    if (v14)
    {
      v15 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v8 toNodes:*(a1 + 40)];
      if ([v15 numberOfRelevantAssets]>= 0xD)
      {
        v16 = [PGLocationTripTitleUtility alloc];
        v17 = [v8 temporarySet];
        v18 = [*(a1 + 32) locationHelper];
        v19 = [(PGLocationTripTitleUtility *)v16 initWithMomentNodes:v17 filterMomentsAndCities:1 locationHelper:v18];

        if ([(PGLocationTripTitleUtility *)v19 tripTitleType]- 3 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v20 = [(PGLocationTripTitleUtility *)v19 usedLocationNodes];
          v21 = [v20 anyObject];
          v22 = [v21 locationOrAreaNodeCollection];

          v23 = [v22 addressNodes];
          v24 = [v23 momentNodes];
          v25 = [v8 collectionByIntersecting:v24];

          if ([v25 count])
          {
            v26 = [*(a1 + 40) featureNodeCollection];
            v27 = [v22 featureNodeCollection];
            v28 = [v26 collectionByFormingUnionWith:v27];

            v29 = [v7 featureNodeCollection];
            v30 = [v28 collectionByFormingUnionWith:v29];

            v31 = [[PGGraphMemory alloc] initWithMemoryCategory:9 memoryCategorySubcategory:6011 momentNodes:v25 featureNodes:v30];
            [*(a1 + 48) addObject:v31];
          }

          else
          {
            v30 = [*(a1 + 32) loggingConnection];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v33 = 138412290;
              v34 = v12;
              _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[PGTripFoodieMemoryGenerator] No moment nodes at trip's used location nodes address for trip with uuid %@", &v33, 0xCu);
            }
          }

          v8 = v25;
        }
      }
    }

    else
    {
      v15 = [*(a1 + 32) loggingConnection];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v33 = 138412290;
        v34 = v12;
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[PGTripFoodieMemoryGenerator] Not creating foodie memory for trip with uuid %@, not all moments in trip have scenes processed", &v33, 0xCu);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

@end