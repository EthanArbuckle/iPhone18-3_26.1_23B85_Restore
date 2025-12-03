@interface PGMeaningfulEventMemoryGenerator
+ (id)_invalidMeaningLabelsForMemories;
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
@end

@implementation PGMeaningfulEventMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  v30 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  if ([memoryMomentNodes count] == 1)
  {
    memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
    loggingConnection2 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];

    if ([loggingConnection2 count]== 1)
    {
      v27 = [(PGGraphEdgeCollection *)PGGraphMeaningEdgeCollection edgesFromNodes:memoryMomentNodes toNodes:loggingConnection2];
      anyEdge = [v27 anyEdge];
      v16 = [PGMeaningfulEventTitleGenerator alloc];
      anyNode = [memoryMomentNodes anyNode];
      meaningLabel = [anyEdge meaningLabel];
      v19 = contextCopy;
      isReliable = [anyEdge isReliable];
      memoryFeatureNodes2 = [memoryCopy memoryFeatureNodes];
      v22 = isReliable;
      contextCopy = v19;
      v23 = [(PGMeaningfulEventTitleGenerator *)v16 initWithCollection:anyNode meaningLabel:meaningLabel meaningIsReliable:v22 titleGenerationContext:v19 featureNodes:memoryFeatureNodes2];

      goto LABEL_10;
    }

    loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v29 = [loggingConnection2 count];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGMeaningfulEventMemoryGenerator] One meaning node expected, found %d", buf, 8u);
    }
  }

  else
  {
    loggingConnection2 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v29 = [memoryMomentNodes count];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGMeaningfulEventMemoryGenerator] One moment node expected, found %d", buf, 8u);
    }
  }

  v23 = 0;
LABEL_10:

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  memoryCopy = memory;
  graphCopy = graph;
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v10 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:memoryFeatureNodes];
  childMeaningNodes = [v10 childMeaningNodes];
  v12 = [childMeaningNodes count];

  if (v12)
  {
    childMeaningNodes2 = [v10 childMeaningNodes];

    v10 = childMeaningNodes2;
  }

  labels = [v10 labels];
  anyObject = [labels anyObject];

  v16 = [anyObject isEqualToString:@"HolidayEvent"];
  selfCopy = self;
  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationManager = [memoryCurationSession curationManager];
  curationCriteriaFactory = [curationManager curationCriteriaFactory];
  v20 = curationCriteriaFactory;
  if (v16)
  {
    v21 = [curationCriteriaFactory curationCriteriaWithMeaningLabel:anyObject featureNodes:memoryFeatureNodes inGraph:graphCopy client:1];
  }

  else
  {
    [memoryMomentNodes anyNode];
    v26 = memoryFeatureNodes;
    v23 = v22 = memoryMomentNodes;
    v21 = [v20 curationCriteriaWithCollection:v23 meaningLabel:anyObject inGraph:graphCopy client:1];

    memoryMomentNodes = v22;
    memoryFeatureNodes = v26;
  }

  v28.receiver = selfCopy;
  v28.super_class = PGMeaningfulEventMemoryGenerator;
  v24 = [(PGMemoryGenerator *)&v28 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graphCopy];

  [v24 setCurationCriteria:v21];

  return v24;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v92[2] = *MEMORY[0x277D85DE8];
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  v10 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:blockCopy];
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection nodesInGraph:graphCopy];
  if ([v11 count])
  {
    _invalidMeaningLabelsForMemories = [objc_opt_class() _invalidMeaningLabelsForMemories];
    allObjects = [_invalidMeaningLabelsForMemories allObjects];
    v13 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:allObjects inGraph:graphCopy];

    v14 = [v11 collectionBySubtracting:v13];

    if (![v14 count])
    {
      if (v79[3])
      {
        *(v79 + 24) = 1;
      }

      else
      {
        v39 = [v10 isCancelledWithProgress:1.0];
        *(v79 + 24) = v39;
        if ((v39 & 1) == 0)
        {
          v38 = v64;
LABEL_51:

          v11 = v14;
          goto LABEL_52;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 58;
        LOWORD(v88) = 2080;
        *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningfulEventMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v38 = MEMORY[0x277CBEBF8];
      goto LABEL_51;
    }

    reliableMeaningEdges = [v14 reliableMeaningEdges];
    momentNodes = [reliableMeaningEdges momentNodes];
    v17 = [momentNodes momentNodesWithContentScoreAbove:0.5];

    if (![v17 count])
    {
      if (v79[3])
      {
        *(v79 + 24) = 1;
      }

      else
      {
        v40 = [v10 isCancelledWithProgress:1.0];
        *(v79 + 24) = v40;
        if ((v40 & 1) == 0)
        {
          v38 = v64;
LABEL_50:

          goto LABEL_51;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 65;
        LOWORD(v88) = 2080;
        *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningfulEventMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v38 = MEMORY[0x277CBEBF8];
      goto LABEL_50;
    }

    v18 = [v17 momentNodesWithMinimumNumberOfExtendedCuratedAssets:13];

    if ([v18 count])
    {
      momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
      momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

      v17 = [v18 collectionBySubtracting:momentNodesWithBlockedFeature];

      if (![v17 count])
      {
        if (v79[3])
        {
          *(v79 + 24) = 1;
        }

        else
        {
          v43 = [v10 isCancelledWithProgress:1.0];
          *(v79 + 24) = v43;
          if ((v43 & 1) == 0)
          {
            v38 = v64;
            goto LABEL_47;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 77;
          LOWORD(v88) = 2080;
          *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningfulEventMemoryGenerator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v38 = MEMORY[0x277CBEBF8];
        goto LABEL_47;
      }

      memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
      v59 = [memoryGenerationContext momentNodesAtSensitiveLocationsInGraph:graphCopy];

      v60 = [v17 collectionBySubtracting:v59];

      v54 = [PGGraphMeaningNodeCollection meaningNodesWithMeaning:12 inGraph:graphCopy];
      v52 = [PGGraphMeaningNodeCollection meaningNodesWithMeaning:13 inGraph:graphCopy];
      v92[0] = @"Concert";
      v92[1] = @"Performance";
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
      v51 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v21 inGraph:graphCopy];

      v22 = MEMORY[0x277CBEB98];
      musicConcerts = [MEMORY[0x277D27780] musicConcerts];
      v91[0] = musicConcerts;
      festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
      v91[1] = festivalsAndFairs;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
      v58 = [v22 setWithArray:v25];

      v50 = [PGGraphPublicEventNodeCollection publicEventNodesWithCategories:v58 inGraph:graphCopy];
      v90[0] = @"Lunch";
      v90[1] = @"Dinner";
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
      v27 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v26 inGraph:graphCopy];
      v48 = [PGGraphBusinessNodeCollection restaurantBusinessNodesInGraph:graphCopy];
      v46 = v26;
      *buf = 0;
      *&v88 = buf;
      *(&v88 + 1) = 0x2020000000;
      v89 = 0;
      v47 = [v60 count];
      v28 = MEMORY[0x277D22C90];
      v29 = +[PGGraphMomentNode dateOfMoment];
      v86[0] = v29;
      v30 = +[PGGraphDateNode monthDayOfDate];
      v86[1] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
      v57 = [v28 chain:v31];

      v56 = [MEMORY[0x277D22BF8] adjacencyWithSources:v60 relation:v57 targetsClass:objc_opt_class()];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __101__PGMeaningfulEventMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
      v65[3] = &unk_2788888D0;
      v66 = v14;
      v75 = &v78;
      v32 = v10;
      v67 = v32;
      v76 = buf;
      v33 = v27;
      v68 = v33;
      v34 = v48;
      v69 = v34;
      v49 = v54;
      v70 = v49;
      v53 = v52;
      v71 = v53;
      v55 = v51;
      v72 = v55;
      v35 = v50;
      v73 = v35;
      v36 = v64;
      v74 = v36;
      v77 = 1.0 / v47;
      [v56 enumerateTargetsBySourceWithBlock:v65];
      if (v79[3])
      {
        *(v79 + 24) = 1;
      }

      else
      {
        v41 = [v32 isCancelledWithProgress:1.0];
        *(v79 + 24) = v41;
        if ((v41 & 1) == 0)
        {
          v38 = v36;
LABEL_46:

          _Block_object_dispose(buf, 8);
          v17 = v60;
LABEL_47:

          goto LABEL_50;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v82 = 67109378;
        v83 = 143;
        v84 = 2080;
        v85 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningfulEventMemoryGenerator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v82, 0x12u);
      }

      v38 = MEMORY[0x277CBEBF8];
      goto LABEL_46;
    }

    if (v79[3])
    {
      *(v79 + 24) = 1;
    }

    else
    {
      v42 = [v10 isCancelledWithProgress:1.0];
      *(v79 + 24) = v42;
      if ((v42 & 1) == 0)
      {
        v38 = v64;
LABEL_49:
        v17 = v18;
        goto LABEL_50;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 71;
      LOWORD(v88) = 2080;
      *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningfulEventMemoryGenerator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v38 = MEMORY[0x277CBEBF8];
    goto LABEL_49;
  }

  if (v79[3])
  {
    *(v79 + 24) = 1;
  }

  else
  {
    v37 = [v10 isCancelledWithProgress:1.0];
    *(v79 + 24) = v37;
    if ((v37 & 1) == 0)
    {
      v38 = v64;
      goto LABEL_52;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 50;
    LOWORD(v88) = 2080;
    *(&v88 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/CurrentMemoryGenerators/MeaningMemoryGenerators/PGMeaningfulEventMemoryGenerator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v38 = MEMORY[0x277CBEBF8];
LABEL_52:

  _Block_object_dispose(&v78, 8);
  v44 = *MEMORY[0x277D85DE8];

  return v38;
}

void __101__PGMeaningfulEventMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 reliableMeaningNodes];
  v10 = [v9 collectionByIntersecting:*(a1 + 32)];

  v11 = [v10 distinctMeaningNodesSubset];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__PGMeaningfulEventMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_2;
  v22[3] = &unk_2788888A8;
  v31 = *(a1 + 104);
  v12 = *(a1 + 40);
  v13 = *(a1 + 112);
  v23 = v12;
  v32 = v13;
  v24 = *(a1 + 48);
  v14 = v7;
  v25 = v14;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v26 = v20;
  v27 = v19;
  v28 = *(a1 + 88);
  v21 = v8;
  v29 = v21;
  v30 = *(a1 + 96);
  [v11 enumerateIdentifiersAsCollectionsWithBlock:v22];
  if (*(*(*(a1 + 104) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 112) + 8) + 24) = *(a1 + 120) + *(*(*(a1 + 112) + 8) + 24);
  }
}

void __101__PGMeaningfulEventMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(*(a1 + 112) + 8);
  v24 = v6;
  if (*(v7 + 24))
  {
    v8 = v6;
    v9 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 120) + 8) + 24)];
    v8 = v24;
    v7 = *(*(a1 + 112) + 8);
  }

  *(v7 + 24) = v9;
  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    *a4 = 1;
    goto LABEL_15;
  }

  v10 = [v8 intersectsCollection:*(a1 + 40)];
  v8 = v24;
  if (!v10 || ([*(a1 + 48) businessNodes], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "intersectsCollection:", *(a1 + 56)), v11, v8 = v24, v12))
  {
    v13 = [v8 featureNodeCollection];
    v14 = [*(a1 + 48) featureNodeCollection];
    v15 = [v13 collectionByFormingUnionWith:v14];

    if ([v24 isEqual:*(a1 + 64)])
    {
      v16 = [*(a1 + 48) birthdayPersonNodes];
    }

    else
    {
      if (![v24 isEqual:*(a1 + 72)])
      {
        if (![*(a1 + 80) containsCollection:v24])
        {
          goto LABEL_14;
        }

        v22 = [*(a1 + 48) publicEventNodes];
        v17 = [v22 collectionByIntersecting:*(a1 + 88)];

        v23 = [v17 performerNodes];
        v18 = [v15 collectionByFormingUnionWith:v23];

        v15 = v23;
LABEL_13:

        v15 = v18;
LABEL_14:
        v19 = [*(a1 + 96) featureNodeCollection];
        v20 = [v15 collectionByFormingUnionWith:v19];

        v21 = [[PGGraphMemory alloc] initWithMemoryCategory:16 memoryCategorySubcategory:11001 momentNodes:*(a1 + 48) featureNodes:v20];
        [*(a1 + 104) addObject:v21];

        v8 = v24;
        goto LABEL_15;
      }

      v16 = [*(a1 + 48) celebratedHolidayNodes];
    }

    v17 = v16;
    v18 = [v15 collectionByFormingUnionWith:v16];
    goto LABEL_13;
  }

LABEL_15:
}

+ (id)_invalidMeaningLabelsForMemories
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v2 addObject:@"Gathering"];
  [v2 addObject:@"Restaurant"];
  [v2 addObject:@"Breakfast"];

  return v2;
}

@end