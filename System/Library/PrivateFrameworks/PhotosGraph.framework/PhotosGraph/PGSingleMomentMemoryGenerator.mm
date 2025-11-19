@interface PGSingleMomentMemoryGenerator
- (id)generatePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
@end

@implementation PGSingleMomentMemoryGenerator

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v14 triggerTypes];
  v21 = [v20 containsIndex:4];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CCA970]);
    v23 = [v14 creationDate];
    v24 = [v22 initWithStartDate:v23 duration:0.0];

    v25 = [PGTitleGenerator alloc];
    v26 = [v14 memoryMomentNodes];
    v27 = [v26 set];
    v28 = [(PGTitleGenerator *)v25 initWithMomentNodes:v27 referenceDateInterval:v24 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:1 titleGenerationContext:v18];

LABEL_5:
    goto LABEL_7;
  }

  v29 = [v14 triggerTypes];
  v30 = [v29 containsIndex:11];

  if (v30)
  {
    v31 = MEMORY[0x277D27690];
    v32 = [v14 creationDate];
    v33 = [v31 yearFromDate:v32];

    v34 = [v14 memoryMomentNodes];
    v24 = [v34 anyNode];

    v35 = MEMORY[0x277D27690];
    v36 = [v24 universalStartDate];
    v37 = [v35 yearFromDate:v36];

    v28 = [[PGThrowbackThursdayMemoryTitleGenerator alloc] initWithMomentNode:v24 numberOfYearsAgo:v33 - v37 titleGenerationContext:v18];
    goto LABEL_5;
  }

  v39.receiver = self;
  v39.super_class = PGSingleMomentMemoryGenerator;
  v28 = [(PGMemoryGenerator *)&v39 titleGeneratorForTriggeredMemory:v14 withKeyAsset:v15 curatedAssets:v16 extendedCuratedAssets:v17 titleGenerationContext:v18 inGraph:v19];
LABEL_7:

  return v28;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5
{
  v35[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v11 = [(PGMemoryGenerator *)self memoryGenerationContext];
  v12 = [v11 momentNodesForProcessingWindow:v9 inGraph:v7];

  v13 = [v12 interestingForMemoriesSubset];

  v14 = [v13 momentNodesWithMinimumNumberOfExtendedCuratedAssets:13];

  if ([v14 count])
  {
    v15 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:16 inGraph:v7];
    v16 = [v15 momentNodes];
    v17 = [v14 collectionBySubtracting:v16];

    v18 = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
    v19 = [v18 momentNodesWithBlockedFeature];

    v20 = [v17 collectionBySubtracting:v19];

    v21 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v22 = [v21 momentNodesAtSensitiveLocationsInGraph:v7];

    v14 = [v20 collectionBySubtracting:v22];

    v23 = MEMORY[0x277D22C90];
    v24 = +[PGGraphMomentNode dateOfMoment];
    v35[0] = v24;
    v25 = +[PGGraphDateNode monthDayOfDate];
    v35[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v27 = [v23 chain:v26];

    v28 = [MEMORY[0x277D22BF8] adjacencyWithSources:v14 relation:v27 targetsClass:objc_opt_class()];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __98__PGSingleMomentMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
    v33[3] = &unk_2788820D8;
    v29 = v10;
    v34 = v29;
    [v28 enumerateTargetsBySourceWithBlock:v33];
    v30 = v29;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __98__PGSingleMomentMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 featureNodeCollection];
  v8 = [v5 featureNodeCollection];

  v10 = [v7 collectionByFormingUnionWith:v8];

  v9 = [[PGGraphMemory alloc] initWithMemoryCategory:1 memoryCategorySubcategory:1001 momentNodes:v6 featureNodes:v10];
  [*(a1 + 32) addObject:v9];
}

@end