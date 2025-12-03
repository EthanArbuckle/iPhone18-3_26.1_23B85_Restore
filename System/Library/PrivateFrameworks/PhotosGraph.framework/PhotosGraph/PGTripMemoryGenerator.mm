@interface PGTripMemoryGenerator
- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory;
- (id)featuredLocationOrAreaNodesByTripNodeForTripNodes:(id)nodes;
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
@end

@implementation PGTripMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  memoryFeatureNodes = [memory memoryFeatureNodes];
  v12 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v12 count] == 1)
  {
    loggingConnection3 = [(PGGraphNodeCollection *)PGGraphLocationNodeCollection subsetInCollection:memoryFeatureNodes];
    v14 = [(PGGraphNodeCollection *)PGGraphAreaNodeCollection subsetInCollection:memoryFeatureNodes];
    v15 = [loggingConnection3 count];
    if (v15 + [v14 count])
    {
      loggingConnection2 = [(PGGraphNodeCollection *)PGGraphHighlightTypeNodeCollection subsetInCollection:memoryFeatureNodes];
      if ([loggingConnection2 count])
      {
        labels = [loggingConnection2 labels];
        v19 = [labels containsObject:@"ShortTrip"];

        v17 = [[PGTripMemoryTitleGenerator alloc] initWithHighlightGroupNodeAsCollection:v12 type:v19 titleGenerationContext:contextCopy];
LABEL_14:

        goto LABEL_15;
      }

      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23[0]) = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] No trip type nodes found", v23, 2u);
      }
    }

    else
    {
      loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23[0]) = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] No location or area nodes found", v23, 2u);
      }
    }

    v17 = 0;
    goto LABEL_14;
  }

  loggingConnection3 = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
  {
    v23[0] = 67109120;
    v23[1] = [v12 count];
    _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGTripMemoryGenerator] One trip highlight group expected, found %d", v23, 8u);
  }

  v17 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs triggeredMemory:(id)memory
{
  v7.receiver = self;
  v7.super_class = PGTripMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:ds eligibleAssetUUIDs:iDs triggeredMemory:memory];
  [v5 setLastPassMovieAdditionEnabled:1];

  return v5;
}

- (id)featuredLocationOrAreaNodesByTripNodeForTripNodes:(id)nodes
{
  v17[2] = *MEMORY[0x277D85DE8];
  featuredLocationOrAreaNodesByTripNode = self->_featuredLocationOrAreaNodesByTripNode;
  if (!featuredLocationOrAreaNodesByTripNode)
  {
    v5 = MEMORY[0x277D22C90];
    nodesCopy = nodes;
    v7 = +[PGGraphHighlightGroupNodeCollection locationFeatureOfHighlightGroup];
    v17[0] = v7;
    v8 = +[PGGraphHighlightGroupNodeCollection areaFeatureOfHighlightGroup];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v10 = [v5 union:v9];

    v11 = MEMORY[0x277D22BF8];
    v12 = objc_opt_self();
    v13 = [v11 adjacencyWithSources:nodesCopy relation:v10 targetsClass:v12];

    v14 = self->_featuredLocationOrAreaNodesByTripNode;
    self->_featuredLocationOrAreaNodesByTripNode = v13;

    featuredLocationOrAreaNodesByTripNode = self->_featuredLocationOrAreaNodesByTripNode;
  }

  v15 = *MEMORY[0x277D85DE8];

  return featuredLocationOrAreaNodesByTripNode;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v90 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  v56 = _Block_copy(blockCopy);
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v55 = [objc_opt_class() tripTypeNodesInGraph:graphCopy];
  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphHighlightTypeNode highlightGroupOfType];
  v11 = objc_opt_self();
  v12 = [v9 adjacencyWithSources:v55 relation:v10 targetsClass:v11];
  transposed = [v12 transposed];

  sources = [transposed sources];
  if (windowCopy)
  {
    memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
    v15 = [memoryGenerationContext momentNodesForProcessingWindow:windowCopy inGraph:graphCopy];

    highlightNodes = [v15 highlightNodes];
    highlightGroupNodes = [highlightNodes highlightGroupNodes];
    v18 = [sources collectionByIntersecting:highlightGroupNodes];

    sources = v18;
  }

  v19 = [sources count];
  if (v19)
  {
    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v87 = 0;
    *&v88 = &v87;
    *(&v88 + 1) = 0x2020000000;
    v89 = 0;
    v20 = MEMORY[0x277D22C90];
    v21 = +[PGGraphHighlightGroupNode highlightOfHighlightGroup];
    v86[0] = v21;
    v22 = +[PGGraphHighlightNode momentInHighlight];
    v86[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    v53 = [v20 chain:v23];

    v24 = MEMORY[0x277D22BF8];
    v25 = objc_opt_self();
    v26 = [v24 adjacencyWithSources:sources relation:v53 targetsClass:v25];

    momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
    momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

    memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v29 = [memoryGenerationContext2 momentNodesAtSensitiveLocationsInGraph:graphCopy];

    v30 = [v26 subtractingTargetsWith:momentNodesWithBlockedFeature];

    v31 = [v30 subtractingTargetsWith:v29];

    v32 = [(PGTripMemoryGenerator *)self featuredLocationOrAreaNodesByTripNodeForTripNodes:sources];
    sources2 = [v32 sources];

    v34 = [v31 intersectingSourcesWith:sources2];

    memoryGenerationContext3 = [(PGMemoryGenerator *)self memoryGenerationContext];
    targets = [v34 targets];
    v37 = [memoryGenerationContext3 interestingWithAlternateJunkingSubsetFromMomentNodes:targets];

    sources3 = [v34 sources];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __90__PGTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
    v60[3] = &unk_2788802F8;
    v69 = &v87;
    v72 = 1.0 / v19;
    v39 = v56;
    v68 = v39;
    v70 = &v74;
    v73 = 0x3F847AE147AE147BLL;
    v71 = &v78;
    v40 = v34;
    v61 = v40;
    selfCopy = self;
    v41 = v37;
    v63 = v41;
    v64 = transposed;
    v65 = graphCopy;
    v66 = sources;
    v42 = v51;
    v67 = v42;
    [sources3 enumerateUUIDs:v60];

    if (*(v79 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v83 = 124;
        v84 = 2080;
        v85 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGTripMemoryGenerator.m";
        v43 = MEMORY[0x277D86220];
LABEL_7:
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      if (!v39 || (Current = CFAbsoluteTimeGetCurrent(), Current - v75[3] < 0.01) || (v75[3] = Current, v59 = 0, (*(v39 + 2))(v39, &v59, 1.0), v48 = *(v79 + 24) | v59, *(v79 + 24) = v48, (v48 & 1) == 0))
      {
        v44 = v42;
        goto LABEL_21;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        v83 = 125;
        v84 = 2080;
        v85 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGTripMemoryGenerator.m";
        v43 = MEMORY[0x277D86220];
        goto LABEL_7;
      }
    }

    v44 = MEMORY[0x277CBEBF8];
LABEL_21:

    _Block_object_dispose(&v87, 8);
    goto LABEL_22;
  }

  if (v56)
  {
    v45 = CFAbsoluteTimeGetCurrent();
    if (v45 - v75[3] >= 0.01)
    {
      v75[3] = v45;
      LOBYTE(buf) = 0;
      (*(v56 + 2))(v56, &buf, 1.0);
      v46 = *(v79 + 24) | buf;
      *(v79 + 24) = v46;
      if ((v46 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v87 = 0x4404000202;
        LOWORD(v88) = 2080;
        *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/TripMemoryGenerators/PGTripMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v87, 0x12u);
      }
    }
  }

  v44 = MEMORY[0x277CBEBF8];
LABEL_22:

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  v49 = *MEMORY[0x277D85DE8];

  return v44;
}

void __90__PGTripMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *(*(*(a1 + 96) + 8) + 24) = *(a1 + 120) + *(*(*(a1 + 96) + 8) + 24);
  if (!*(a1 + 88) || (Current = CFAbsoluteTimeGetCurrent(), v9 = *(*(a1 + 104) + 8), Current - *(v9 + 24) < *(a1 + 128)) || (*(v9 + 24) = Current, LOBYTE(v41) = 0, (*(*(a1 + 88) + 16))(*(*(*(a1 + 96) + 8) + 24)), *(*(*(a1 + 112) + 8) + 24) = *(*(*(a1 + 112) + 8) + 24), *(*(*(a1 + 112) + 8) + 24) != 1))
  {
    v10 = [*(a1 + 32) targetsForSourceIdentifier:a2];
    v11 = [*(a1 + 40) processedScenesAndFacesCache];
    v12 = [v11 allMomentNodesInCollectionHaveScenesProcessed:v10];

    if (v12)
    {
      v13 = [*(a1 + 48) intersectsCollection:v10];
      v14 = *(a1 + 40);
      if (v13)
      {
        v15 = [v14 memoryGenerationContext];
        v16 = [v15 numberOfAssetsInExtendedCurationForMomentNodes:v10];

        v17 = *(a1 + 40);
        if (v16 > 0xC)
        {
          v23 = [v17 memoryGenerationContext];
          [v23 averageContentScoreForMomentNodes:v10];
          v25 = v24;

          if (v25 > 0.5)
          {
            v18 = [*(a1 + 56) targetsForSourceIdentifier:a2];
            v26 = [PGGraphHighlightGroupNodeCollection alloc];
            v27 = *(a1 + 64);
            v28 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
            v29 = [(MAElementCollection *)v26 initWithGraph:v27 elementIdentifiers:v28];

            v30 = [(PGGraphHighlightNodeCollection *)v29 featureNodeCollection];
            v31 = [v18 featureNodeCollection];
            v32 = [v30 collectionByFormingUnionWith:v31];

            v33 = [*(a1 + 40) featuredLocationOrAreaNodesByTripNodeForTripNodes:*(a1 + 72)];
            v34 = [v33 targetsForSourceIdentifier:a2];

            v35 = [v32 collectionByFormingUnionWith:v34];

            v36 = [PGGraphMemory alloc];
            v37 = *(a1 + 40);
            v38 = [objc_opt_class() memoryCategory];
            v39 = *(a1 + 40);
            v40 = -[PGGraphMemory initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:](v36, "initWithMemoryCategory:memoryCategorySubcategory:momentNodes:featureNodes:", v38, [objc_opt_class() memoryCategorySubcategory], v10, v35);
            [*(a1 + 80) addObject:v40];

            goto LABEL_16;
          }

          v18 = [*(a1 + 40) loggingConnection];
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            goto LABEL_16;
          }

          v41 = 138412546;
          v42 = v7;
          v43 = 2048;
          v44 = v25;
          v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, average moment content score not high enough (%f)";
          v20 = v18;
          v21 = 22;
          goto LABEL_15;
        }

        v18 = [v17 loggingConnection];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v41 = 138412546;
          v42 = v7;
          v43 = 1024;
          LODWORD(v44) = v16;
          v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, not enough assets in extended curation (%d)";
          v20 = v18;
          v21 = 18;
LABEL_15:
          _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, v19, &v41, v21);
        }

LABEL_16:

        goto LABEL_17;
      }

      v18 = [v14 loggingConnection];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v41 = 138412290;
      v42 = v7;
      v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, no interesting moment nodes found";
    }

    else
    {
      v18 = [*(a1 + 40) loggingConnection];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v41 = 138412290;
      v42 = v7;
      v19 = "[PGTripMemoryGenerator] Not creating memory for trip with uuid %@, not all moments in trip have scenes processed";
    }

    v20 = v18;
    v21 = 12;
    goto LABEL_15;
  }

  *a4 = 1;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

@end