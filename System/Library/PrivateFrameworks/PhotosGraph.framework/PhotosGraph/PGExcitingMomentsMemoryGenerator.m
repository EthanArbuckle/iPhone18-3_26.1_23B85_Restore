@interface PGExcitingMomentsMemoryGenerator
- (PGExcitingMomentsMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGExcitingMomentsMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a7;
  v12 = [v10 memoryFeatureNodes];
  v13 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v12];
  if ([v13 count] == 1)
  {
    v14 = [PGExcitingMomentsMemoryTitleGenerator alloc];
    v15 = [v10 memoryMomentNodes];
    v16 = [v15 temporarySet];
    v17 = [(PGExcitingMomentsMemoryTitleGenerator *)v14 initWithMomentNodes:v16 type:0 titleGenerationContext:v11];

    v18 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v12];
    if ([v18 count] == 1)
    {
      [(PGTitleGenerator *)v17 setFeaturedYearNodes:v18];
    }

    [(PGExcitingMomentsMemoryTitleGenerator *)v17 setPersonNodeAsCollection:v13];
  }

  else
  {
    v19 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 67109120;
      v22[1] = [v13 count];
      _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] One person node expected, found %d", v22, 8u);
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)relevantFeederForTriggeredMemory:(id)a3 inGraph:(id)a4 allowGuestAsset:(BOOL)a5 progressReporter:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 memoryFeatureNodes];
  v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v10];
  if ([v11 count] == 1)
  {
    v12 = [v8 memoryMomentNodes];
    v13 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v12 toNodes:v11];
    if ([v13 count])
    {
      v14 = [v13 allRelevantAssetLocalIdentifiers];
      v15 = [v14 mutableCopy];

      v16 = [(PGGraphNodeCollection *)PGGraphAudioFeatureNodeCollection subsetInCollection:v10];
      if ([v16 count] == 1)
      {
        v17 = [(PGGraphEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesFromNodes:v12 toNodes:v16];
        if ([v17 count])
        {
          v51 = v16;
          v18 = [v17 allRelevantAssetLocalIdentifiers];
          [v15 intersectSet:v18];

          if ([v15 count])
          {
            v43 = v17;
            v45 = v13;
            v46 = v12;
            v47 = v11;
            v48 = v10;
            v49 = v9;
            v50 = v8;
            v19 = [(PGMemoryGenerator *)self memoryCurationSession];
            v20 = [v19 curationManager];
            v21 = [v20 defaultAssetFetchOptionsForMemories];

            v22 = MEMORY[0x277CD97A8];
            v44 = v15;
            v23 = [v15 allObjects];
            v52 = v21;
            v24 = [v22 fetchAssetsWithLocalIdentifiers:v23 options:v21];

            v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v26 = objc_alloc_init(MEMORY[0x277D3C7A0]);
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v27 = v24;
            v28 = [v27 countByEnumeratingWithState:&v53 objects:v57 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v54;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v54 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v53 + 1) + 8 * i);
                  v33 = [v26 curationModelForAsset:v32];
                  v34 = [v33 isInterestingLivePhotoWithAsset:v32];

                  if (v34)
                  {
                    v35 = [v32 objectID];
                    [v25 addObject:v35];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v53 objects:v57 count:16];
              }

              while (v29);
            }

            if ([v25 count])
            {
              v36 = [objc_alloc(MEMORY[0x277CD9888]) initWithExistingFetchResult:v27 filteredObjectIDs:v25];
              v37 = [(PGMemoryGenerator *)self memoryCurationSession];
              v9 = v49;
              v38 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v36 memoryCurationSession:v37 graph:v49];

              v8 = v50;
              v11 = v47;
              v10 = v48;
            }

            else
            {
              v36 = [(PGMemoryGenerator *)self loggingConnection];
              v9 = v49;
              v11 = v47;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[PGExcitingMomentsMemoryGenerator] No assets with good enough autoplay suggestion score found in relevant assets for exciting moments memory", buf, 2u);
              }

              v38 = 0;
              v8 = v50;
              v10 = v48;
            }

            v17 = v43;

            v13 = v45;
            v12 = v46;
            v15 = v44;
          }

          else
          {
            v40 = [(PGMemoryGenerator *)self loggingConnection];
            v52 = v40;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] No intersecting relevantAssetLocalIdentifiers found for exciting moments memory", buf, 2u);
            }

            v38 = 0;
          }

          v16 = v51;
        }

        else
        {
          v39 = [(PGMemoryGenerator *)self loggingConnection];
          v52 = v39;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] No excitementAudioMomentFeaturesEdges found", buf, 2u);
          }

          v38 = 0;
        }
      }

      else
      {
        v17 = [(PGMemoryGenerator *)self loggingConnection];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v59 = [v16 count];
          _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] One excitement audio node expected, found %d", buf, 8u);
        }

        v38 = 0;
      }
    }

    else
    {
      v15 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] No personMomentFeaturesEdges found", buf, 2u);
      }

      v38 = 0;
    }
  }

  else
  {
    v12 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v59 = [v11 count];
      _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[PGExcitingMomentsMemoryGenerator] One person node expected, found %d", buf, 8u);
    }

    v38 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v11.receiver = self;
  v11.super_class = PGExcitingMomentsMemoryGenerator;
  v5 = a3;
  v6 = [(PGMemoryGenerator *)&v11 keyAssetCurationOptionsWithTriggeredMemory:v5 inGraph:a4];
  v7 = [v5 memoryFeatureNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v7];

  v9 = [v8 localIdentifiers];
  [v6 setReferencePersonLocalIdentifiers:v9];

  [v6 setMinimumNumberOfReferencePersons:0];

  return v6;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5
{
  v7.receiver = self;
  v7.super_class = PGExcitingMomentsMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:a3 eligibleAssetUUIDs:a4 triggeredMemory:a5];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [PGGraphAudioFeatureNodeCollection audioFeatureNodesForLabel:@"ExcitementAudio" inGraph:a3];
  v7 = [v6 momentNodes];
  if ([v7 count])
  {
    v8 = MEMORY[0x277D22C90];
    v9 = +[PGGraphMomentNode featureOfMoment];
    v20[0] = v9;
    v10 = +[PGGraphPersonNode filterExcludingMe];
    v11 = [v10 relation];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v13 = [v8 chain:v12];

    v14 = [MEMORY[0x277D22BF8] adjacencyWithSources:v7 relation:v13 targetsClass:objc_opt_class()];
    v15 = [v14 transposed];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__PGExcitingMomentsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
    v17[3] = &unk_278887368;
    v18 = v6;
    v19 = v5;
    [v15 enumerateTargetsBySourceWithBlock:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __90__PGExcitingMomentsMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 featureNodeCollection];
  v9 = [v7 featureNodeCollection];

  v10 = [v8 collectionByFormingUnionWith:v9];

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 2005;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 2006;
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

- (PGExcitingMomentsMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = PGExcitingMomentsMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 1;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterUninterestingForMemories:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:15];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:15];
    v4->_intersectRelevantAssetsForFeatures = 1;
  }

  return v4;
}

@end