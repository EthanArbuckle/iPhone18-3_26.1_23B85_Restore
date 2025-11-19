@interface PGFoodieMemoryGenerator
+ (id)incompatibleMomentNodesInGraph:(id)a3;
- (PGFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (id)_foodieTitleGeneratorWithMomentNodes:(id)a3 featureNodes:(id)a4 titleGenerationContext:(id)a5;
- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation PGFoodieMemoryGenerator

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 memoryFeatureNodes];
  v9 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v8];

  v10 = [(PGMemoryGenerator *)self memoryCurationSession];
  v11 = [v10 curationManager];

  if ([v9 count])
  {
    v12 = [v9 anyNode];
    v13 = [v12 localIdentifier];
    if (v13)
    {
      v14 = [v11 curationCriteriaFactory];
      v15 = [v14 foodieCurationCriteriaWithPersonLocalIdentifier:v13 client:1];
    }

    else
    {
      v17 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "[PGFoodieMemoryGenerator] Nil local identifier found for featured person, falling back to default key asset curation criteria", buf, 2u);
      }

      v14 = [v11 curationCriteriaFactory];
      v15 = [v14 foodieCurationCriteriaWithClient:1];
    }

    v16 = v15;
  }

  else
  {
    v12 = [v11 curationCriteriaFactory];
    v16 = [v12 foodieCurationCriteriaWithClient:1];
  }

  v20.receiver = self;
  v20.super_class = PGFoodieMemoryGenerator;
  v18 = [(PGMemoryGenerator *)&v20 keyAssetCurationOptionsWithTriggeredMemory:v7 inGraph:v6];

  [v18 setComplete:1];
  [v18 setCurationCriteria:v16];

  return v18;
}

- (id)_foodieTitleGeneratorWithMomentNodes:(id)a3 featureNodes:(id)a4 titleGenerationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v9];
  if (![v11 count])
  {
    v12 = [(PGGraphNodeCollection *)PGGraphHighlightGroupNodeCollection subsetInCollection:v9];
    if ([v12 count])
    {
      v16 = [(PGGraphNodeCollection *)PGGraphNamedLocationNodeCollection subsetInCollection:v9];
      v17 = [v16 anyNode];

      v18 = [v17 label];
      if ([v18 isEqual:@"City"])
      {
        v19 = 1;
      }

      else if ([v18 isEqual:@"State"])
      {
        v19 = 2;
      }

      else if ([v18 isEqual:@"Country"])
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      v26 = [PGFoodieMemoryTitleGenerator alloc];
      v24 = [v8 temporarySet];
      v25 = [(PGFoodieMemoryTitleGenerator *)v26 initWithMomentNodes:v24 tripLocationNode:v17 tripTitleLocationType:v19 titleGenerationContext:v10];
      goto LABEL_19;
    }

    v17 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection subsetInCollection:v9];
    if ([v17 count])
    {
      v23 = [PGFoodieMemoryTitleGenerator alloc];
      v18 = [v8 temporarySet];
      v24 = [v17 anyNode];
      v25 = [(PGFoodieMemoryTitleGenerator *)v23 initWithMomentNodes:v18 cityNode:v24 titleGenerationContext:v10];
LABEL_19:
      v22 = v25;
LABEL_20:

      goto LABEL_21;
    }

    v18 = [(PGGraphNodeCollection *)PGGraphAddressNodeCollection subsetInCollection:v9];
    if ([v18 count])
    {
      v28 = [PGFoodieMemoryTitleGenerator alloc];
      v24 = [v8 temporarySet];
      v29 = [v18 anyNode];
      v30 = [(PGFoodieMemoryTitleGenerator *)v28 initWithMomentNodes:v24 addressNode:v29 titleGenerationContext:v10];
    }

    else
    {
      v24 = [(PGGraphNodeCollection *)PGGraphBusinessNodeCollection subsetInCollection:v9];
      v31 = [v24 count];
      v33 = [PGFoodieMemoryTitleGenerator alloc];
      v29 = [v8 temporarySet];
      if (v31)
      {
        v32 = [v24 anyNode];
        v22 = [(PGFoodieMemoryTitleGenerator *)v33 initWithMomentNodes:v29 businessNode:v32 titleGenerationContext:v10];

        goto LABEL_29;
      }

      v30 = [(PGTitleGenerator *)v33 initWithMomentNodes:v29 type:0 titleGenerationContext:v10];
    }

    v22 = v30;
LABEL_29:

    goto LABEL_20;
  }

  v12 = [v11 anyNode];
  if (v12)
  {
    v13 = [PGFoodieMemoryTitleGenerator alloc];
    v14 = [v8 temporarySet];
    v15 = [(PGFoodieMemoryTitleGenerator *)v13 initWithMomentNodes:v14 personNode:v12 titleGenerationContext:v10];
  }

  else
  {
    v20 = [(PGMemoryGenerator *)self loggingConnection];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "person node is unexpectedly nil when our collection wasn't empty", buf, 2u);
    }

    v21 = [PGFoodieMemoryTitleGenerator alloc];
    v14 = [v8 temporarySet];
    v15 = [(PGTitleGenerator *)v21 initWithMomentNodes:v14 type:0 titleGenerationContext:v10];
  }

  v22 = v15;

LABEL_21:

  return v22;
}

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v10 = a7;
  v11 = a3;
  v12 = [v11 memoryFeatureNodes];
  v13 = [v11 memoryMomentNodes];

  v14 = [(PGFoodieMemoryGenerator *)self _foodieTitleGeneratorWithMomentNodes:v13 featureNodes:v12 titleGenerationContext:v10];

  v15 = [(PGGraphNodeCollection *)PGGraphYearNodeCollection subsetInCollection:v12];
  if ([v15 count] == 1)
  {
    [v14 setFeaturedYearNodes:v15];
  }

  return v14;
}

- (id)curationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4 triggeredMemory:(id)a5
{
  v7.receiver = self;
  v7.super_class = PGFoodieMemoryGenerator;
  v5 = [(PGMemoryGenerator *)&v7 curationOptionsWithRequiredAssetUUIDs:a3 eligibleAssetUUIDs:a4 triggeredMemory:a5];
  [v5 setMinimumNumberOfItems:15];
  [v5 setFailIfMinimumDurationNotReached:1];

  return v5;
}

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:v6];
  v8 = [v7 momentNodes];
  v9 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:v6];

  v10 = [v8 collectionBySubtracting:v9];

  if ([v10 count])
  {
    v12 = 0;
    v11 = [v7 featureNodeCollection];
    v5[2](v5, v10, v11, &v12);
  }
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 6001;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 6002;
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

- (PGFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = PGFoodieMemoryGenerator;
  v3 = [(PGMemoryGenerator *)&v12 initWithMemoryGenerationContext:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requireSceneProcessingMeetsThresholdOverTime = 1;
    v3->_requireFaceProcessingMeetsThresholdOverTime = 0;
    v5 = objc_alloc_init(PGMemoryMomentRequirements);
    momentRequirements = v4->_momentRequirements;
    v4->_momentRequirements = v5;

    [(PGMemoryMomentRequirements *)v4->_momentRequirements setFilterMomentsWithNotEnoughScenesProcessed:1];
    [(PGMemoryMomentRequirements *)v4->_momentRequirements setMinimumNumberOfRelevantAssets:2];
    v7 = +[PGOverTheYearsMemoryConfiguration strictDefaultOverTheYearsMemoryConfiguration];
    overTheYearsConfiguration = v4->_overTheYearsConfiguration;
    v4->_overTheYearsConfiguration = v7;

    [(PGOverTimeMemoryConfiguration *)v4->_overTheYearsConfiguration setMinimumNumberOfRelevantAssets:15];
    v9 = +[PGFeaturedTimePeriodMemoryConfiguration strictDefaultFeaturedYearMemoryConfiguration];
    featuredYearConfiguration = v4->_featuredYearConfiguration;
    v4->_featuredYearConfiguration = v9;

    [(PGOverTimeMemoryConfiguration *)v4->_featuredYearConfiguration setMinimumNumberOfRelevantAssets:15];
  }

  return v4;
}

+ (id)incompatibleMomentNodesInGraph:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [PGGraphPOINodeCollection poiNodesForLabel:@"Hospital" inGraph:v3];
  v12[0] = @"Wedding";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v5 inGraph:v3];

  v7 = [v4 momentNodes];
  v8 = [v6 momentNodes];
  v9 = [v7 collectionByFormingUnionWith:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end