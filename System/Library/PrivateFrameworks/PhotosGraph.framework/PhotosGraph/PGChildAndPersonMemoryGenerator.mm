@interface PGChildAndPersonMemoryGenerator
- (PGChildAndPersonMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (id)_twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph:(id)graph;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGChildAndPersonMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  memoryCopy = memory;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  memoryMomentNodes = [memoryCopy memoryMomentNodes];

  temporarySet = [memoryMomentNodes temporarySet];

  v14 = [PGPeopleMemoryTitleGenerator peopleOverTimeTimeTitleOptionsWithMomentNodes:temporarySet];
  v15 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:memoryFeatureNodes];
  if ([v15 count] == 1)
  {
    [v14 setFeaturedYearNodes:v15];
  }

  v16 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];
  v17 = [PGPeopleMemoryTitleGenerator alloc];
  temporarySet2 = [v16 temporarySet];
  v19 = [(PGPeopleMemoryTitleGenerator *)v17 initWithMomentNodes:temporarySet personNodes:temporarySet2 timeTitleOptions:v14 type:5 titleGenerationContext:contextCopy];

  return v19;
}

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  v89 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  reporterCopy = reporter;
  v57 = memoryCopy;
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];
  v60 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  if ([v60 count] == 2)
  {
    localIdentifiers = [v60 localIdentifiers];
    oslog = [localIdentifiers allObjects];

    if ([oslog count]== 2)
    {
      memoryMomentNodes = [memoryCopy memoryMomentNodes];
      *buf = 0;
      v84 = buf;
      v85 = 0x3032000000;
      v86 = __Block_byref_object_copy__51458;
      v87 = __Block_byref_object_dispose__51459;
      v88 = 0;
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __109__PGChildAndPersonMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke;
      v77[3] = &unk_278885760;
      log = memoryMomentNodes;
      v78 = log;
      selfCopy = self;
      v80 = buf;
      [v60 enumerateIdentifiersAsCollectionsWithBlock:v77];
      if ([*(v84 + 5) count])
      {
        firstObject = [oslog firstObject];
        lastObject = [oslog lastObject];
        memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
        curationManager = [memoryCurationSession curationManager];
        defaultAssetFetchOptionsForMemories = [curationManager defaultAssetFetchOptionsForMemories];

        v16 = MEMORY[0x277CD97A8];
        allObjects = [*(v84 + 5) allObjects];
        v53 = [v16 fetchAssetsWithLocalIdentifiers:allObjects options:defaultAssetFetchOptionsForMemories];

        v18 = MEMORY[0x277CD97A8];
        memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
        curationContext = [memoryCurationSession2 curationContext];
        v21 = [v18 clsAllAssetsFromFetchResult:v53 prefetchOptions:8 curationContext:curationContext];

        v51 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
        localIdentifiers2 = [v51 localIdentifiers];
        anyObject = [localIdentifiers2 anyObject];

        v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        obj = v21;
        v64 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v64)
        {
          v63 = *v73;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v73 != v63)
              {
                objc_enumerationMutation(obj);
              }

              v65 = *(*(&v72 + 1) + 8 * i);
              clsFaceInformationSummary = [v65 clsFaceInformationSummary];
              faceInformationByPersonLocalIdentifier = [clsFaceInformationSummary faceInformationByPersonLocalIdentifier];

              v25 = [faceInformationByPersonLocalIdentifier objectForKeyedSubscript:firstObject];
              [v25 faceSize];
              v27 = v26;

              v28 = [faceInformationByPersonLocalIdentifier objectForKeyedSubscript:lastObject];
              [v28 faceSize];
              v30 = v29;

              if (v27 >= v30)
              {
                v31 = v27;
              }

              else
              {
                v31 = v30;
              }

              if (anyObject)
              {
                v32 = [faceInformationByPersonLocalIdentifier objectForKeyedSubscript:anyObject];
                [v32 faceSize];
                v34 = v33;
              }

              else
              {
                v34 = 0.0;
              }

              if (v34 < v31 + v31)
              {
                if (v27 >= v30)
                {
                  v27 = v30;
                }

                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v35 = faceInformationByPersonLocalIdentifier;
                v36 = [v35 countByEnumeratingWithState:&v68 objects:v81 count:16];
                if (v36)
                {
                  v37 = *v69;
                  v38 = 0.0;
                  while (1)
                  {
                    for (j = 0; j != v36; ++j)
                    {
                      if (*v69 != v37)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v40 = *(*(&v68 + 1) + 8 * j);
                      v41 = [v35 objectForKeyedSubscript:v40];
                      if ([v40 isEqualToString:firstObject])
                      {
                        v42 = 1;
                        if (!anyObject)
                        {
                          goto LABEL_27;
                        }
                      }

                      else
                      {
                        v42 = [v40 isEqualToString:lastObject];
                        if (!anyObject)
                        {
LABEL_27:
                          v43 = 0;
                          goto LABEL_28;
                        }
                      }

                      v43 = [v40 isEqualToString:anyObject];
LABEL_28:
                      if (((v42 | v43) & 1) == 0)
                      {
                        [v41 faceSize];
                        if (v38 < v44)
                        {
                          v38 = v44;
                        }
                      }
                    }

                    v36 = [v35 countByEnumeratingWithState:&v68 objects:v81 count:16];
                    if (!v36)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                v38 = 0.0;
LABEL_35:

                if (v38 < v27 * 0.5)
                {
                  objectID = [v65 objectID];
                  [v61 addObject:objectID];
                }
              }
            }

            v64 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
          }

          while (v64);
        }

        if ([v61 count])
        {
          loggingConnection = [objc_alloc(MEMORY[0x277CD9888]) initWithExistingFetchResult:v53 filteredObjectIDs:v61];
          memoryCurationSession3 = [(PGMemoryGenerator *)self memoryCurationSession];
          v48 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:loggingConnection memoryCurationSession:memoryCurationSession3 graph:graphCopy];
        }

        else
        {
          loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *v76 = 0;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGChildAndPersonMemoryGenerator] Filtered out all relevant assets due to face sizes for memory", v76, 2u);
          }

          v48 = 0;
        }
      }

      else
      {
        firstObject = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          *v76 = 0;
          _os_log_error_impl(&dword_22F0FC000, firstObject, OS_LOG_TYPE_ERROR, "[PGChildAndPersonMemoryGenerator] No relevantAssetLocalIdentifiers found", v76, 2u);
        }

        v48 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      log = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = [oslog count];
        _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGChildAndPersonMemoryGenerator] Two person node local identifiers expected, found %d", buf, 8u);
      }

      v48 = 0;
    }
  }

  else
  {
    oslog = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = [v60 count];
      _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGChildAndPersonMemoryGenerator] Two person nodes expected, found %d", buf, 8u);
    }

    v48 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

void __109__PGChildAndPersonMemoryGenerator_relevantFeederForTriggeredMemory_inGraph_allowGuestAsset_progressReporter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v12 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:*(a1 + 32) toNodes:a3];
  if ([v12 count])
  {
    v6 = [v12 allRelevantAssetLocalIdentifiers];
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (v7)
    {
      [v7 intersectSet:v6];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v6];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    v8 = [*(a1 + 40) loggingConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "[PGChildAndPersonMemoryGenerator] No personMomentFeatureEdges found for person", buf, 2u);
    }

    *a4 = 1;
  }
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v11.receiver = self;
  v11.super_class = PGChildAndPersonMemoryGenerator;
  memoryCopy = memory;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:memoryCopy inGraph:graph];
  memoryFeatureNodes = [memoryCopy memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  localIdentifiers = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:localIdentifiers];

  [v6 setMinimumNumberOfReferencePersons:0];

  return v6;
}

- (id)_twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph:(id)graph
{
  v3 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:6 inGraph:graph];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__PGChildAndPersonMemoryGenerator__twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph___block_invoke;
  v7[3] = &unk_278889918;
  v5 = v4;
  v8 = v5;
  [v3 enumerateIdentifiersAsCollectionsWithBlock:v7];

  return v5;
}

void __94__PGChildAndPersonMemoryGenerator__twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 featureNodes];
  v5 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v4];

  if ([v5 count] == 2)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  v8 = [PGMemoryGeneratorUtils babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:graphCopy];
  if ([v8 count])
  {
    v9 = [(PGChildAndPersonMemoryGenerator *)self _twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph:graphCopy];
    v10 = MEMORY[0x277D22BF8];
    v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection nodesInGraph:graphCopy];
    v12 = +[PGGraphFeatureNodeCollection momentOfFeature];
    v13 = [v10 adjacencyWithSources:v11 relation:v12 targetsClass:objc_opt_class()];

    v14 = [v13 intersectingSourcesWith:v8];
    v15 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __89__PGChildAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v19[3] = &unk_278885738;
    v20 = v15;
    v21 = v13;
    v22 = v9;
    v23 = graphCopy;
    v24 = blockCopy;
    v16 = v9;
    v17 = v13;
    v18 = v15;
    [v14 enumerateTargetsBySourceWithBlock:v19];
  }
}

void __89__PGChildAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  context = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = [v6 elementIdentifiers];
  [v8 addIdentifier:{objc_msgSend(v9, "firstElement")}];

  v10 = [*(a1 + 40) intersectingTargetsWith:v7];
  v11 = [v10 subtractingSourcesWith:v6];

  v12 = [*(a1 + 32) mutableCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = *(a1 + 48);
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        if ([v6 isSubsetOfCollection:v18])
        {
          v19 = [v18 elementIdentifiers];
          [v12 unionWithIdentifierSet:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v20 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:*(a1 + 56) elementIdentifiers:v12];
  v21 = [v11 subtractingSourcesWith:v20];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__PGChildAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v26[3] = &unk_278889A78;
  v28 = *(a1 + 64);
  v22 = v6;
  v27 = v22;
  v29 = a4;
  [v21 enumerateTargetsBySourceWithBlock:v26];

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];
}

void __89__PGChildAndPersonMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a3;
  v10 = [v8 collectionByFormingUnionWith:a2];
  v11 = [v10 featureNodeCollection];
  (*(v7 + 16))(v7, v9, v11, a4);

  **(a1 + 48) = *a4;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 15003;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 15004;
    }

    else
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
      }

      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGChildAndPersonMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v16.receiver = self;
  v16.super_class = PGChildAndPersonMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v16 initWithMemoryGenerationContext:context];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration defaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:13];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumMomentSpreadicityTimeInterval:604800.0];
    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:13];
    v4->_intersectRelevantAssetsForFeatures = 1;
    v4->_minimumNumberOfDefaultMemories = 3;
    v11 = +[PGOverTheYearsMemoryConfiguration defaultFallbackOverTheYearsMemoryConfiguration];
    fallbackOverTheYearsConfiguration = v4->_fallbackOverTheYearsConfiguration;
    v4->_fallbackOverTheYearsConfiguration = v11;

    v13 = +[PGFeaturedTimePeriodMemoryConfiguration defaultFallbackFeaturedYearMemoryConfiguration];
    fallbackFeaturedYearConfiguration = v4->_fallbackFeaturedYearConfiguration;
    v4->_fallbackFeaturedYearConfiguration = v13;
  }

  return v4;
}

@end