@interface PGChildAndPersonMemoryGenerator
- (PGChildAndPersonMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)_twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph:(id)a3;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGChildAndPersonMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v9 = a7;
  v10 = a3;
  v11 = [v10 memoryFeatureNodes];
  v12 = [v10 memoryMomentNodes];

  v13 = [v12 temporarySet];

  v14 = [PGPeopleMemoryTitleGenerator peopleOverTimeTimeTitleOptionsWithMomentNodes:v13];
  v15 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v11];
  if ([v15 count] == 1)
  {
    [v14 setFeaturedYearNodes:v15];
  }

  v16 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v11];
  v17 = [PGPeopleMemoryTitleGenerator alloc];
  v18 = [v16 temporarySet];
  v19 = [(PGPeopleMemoryTitleGenerator *)v17 initWithMomentNodes:v13 personNodes:v18 timeTitleOptions:v14 type:5 titleGenerationContext:v9];

  return v19;
}

- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v56 = a4;
  v55 = a6;
  v57 = v8;
  v9 = [v8 memoryFeatureNodes];
  v60 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v9];

  if ([v60 count] == 2)
  {
    v10 = [v60 localIdentifiers];
    oslog = [v10 allObjects];

    if ([oslog count]== 2)
    {
      v11 = [v8 memoryMomentNodes];
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
      log = v11;
      v78 = log;
      v79 = self;
      v80 = buf;
      [v60 enumerateIdentifiersAsCollectionsWithBlock:v77];
      if ([*(v84 + 5) count])
      {
        v12 = [oslog firstObject];
        v13 = [oslog lastObject];
        v14 = [(PGMemoryGenerator *)self memoryCurationSession];
        v15 = [v14 curationManager];
        v52 = [v15 defaultAssetFetchOptionsForMemories];

        v16 = MEMORY[0x277CD97A8];
        v17 = [*(v84 + 5) allObjects];
        v53 = [v16 fetchAssetsWithLocalIdentifiers:v17 options:v52];

        v18 = MEMORY[0x277CD97A8];
        v19 = [(PGMemoryGenerator *)self memoryCurationSession];
        v20 = [v19 curationContext];
        v21 = [v18 clsAllAssetsFromFetchResult:v53 prefetchOptions:8 curationContext:v20];

        v51 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v56];
        v22 = [v51 localIdentifiers];
        v23 = [v22 anyObject];

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
              v24 = [v65 clsFaceInformationSummary];
              v67 = [v24 faceInformationByPersonLocalIdentifier];

              v25 = [v67 objectForKeyedSubscript:v12];
              [v25 faceSize];
              v27 = v26;

              v28 = [v67 objectForKeyedSubscript:v13];
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

              if (v23)
              {
                v32 = [v67 objectForKeyedSubscript:v23];
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
                v35 = v67;
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
                      if ([v40 isEqualToString:v12])
                      {
                        v42 = 1;
                        if (!v23)
                        {
                          goto LABEL_27;
                        }
                      }

                      else
                      {
                        v42 = [v40 isEqualToString:v13];
                        if (!v23)
                        {
LABEL_27:
                          v43 = 0;
                          goto LABEL_28;
                        }
                      }

                      v43 = [v40 isEqualToString:v23];
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
                  v45 = [v65 objectID];
                  [v61 addObject:v45];
                }
              }
            }

            v64 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
          }

          while (v64);
        }

        if ([v61 count])
        {
          v46 = [objc_alloc(MEMORY[0x277CD9888]) initWithExistingFetchResult:v53 filteredObjectIDs:v61];
          v47 = [(PGMemoryGenerator *)self memoryCurationSession];
          v48 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v46 memoryCurationSession:v47 graph:v56];
        }

        else
        {
          v46 = [(PGMemoryGenerator *)self loggingConnection];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *v76 = 0;
            _os_log_error_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_ERROR, "[PGChildAndPersonMemoryGenerator] Filtered out all relevant assets due to face sizes for memory", v76, 2u);
          }

          v48 = 0;
        }
      }

      else
      {
        v12 = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v76 = 0;
          _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[PGChildAndPersonMemoryGenerator] No relevantAssetLocalIdentifiers found", v76, 2u);
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

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v11.receiver = self;
  v11.super_class = PGChildAndPersonMemoryGenerator;
  v5 = a3;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:v5 inGraph:a4];
  v7 = [v5 memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v7];

  v9 = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:v9];

  [v6 setMinimumNumberOfReferencePersons:0];

  return v6;
}

- (id)_twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph:(id)a3
{
  v3 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:6 inGraph:a3];
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

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [PGMemoryGeneratorUtils babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:v6];
  if ([v8 count])
  {
    v9 = [(PGChildAndPersonMemoryGenerator *)self _twoPersonNodeCollectionsFromSocialGroupMemoryNodesInGraph:v6];
    v10 = MEMORY[0x277D22BF8];
    v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection nodesInGraph:v6];
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
    v23 = v6;
    v24 = v7;
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

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 15003;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 15004;
    }

    else
    {
      v5 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = v3;
        _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
      }

      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (PGChildAndPersonMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v16.receiver = self;
  v16.super_class = PGChildAndPersonMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v16 initWithMemoryGenerationContext:a3];
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