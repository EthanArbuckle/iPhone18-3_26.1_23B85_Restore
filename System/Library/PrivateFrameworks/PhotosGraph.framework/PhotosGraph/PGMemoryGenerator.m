@interface PGMemoryGenerator
+ (int64_t)titleDateMatchingTypeForMemoryCategory:(unint64_t)a3;
- (PGGraphLocationHelper)locationHelper;
- (PGMemoryController)controller;
- (PGMemoryCurationSession)memoryCurationSession;
- (PGMemoryGenerator)initWithMemoryCurationSession:(id)a3 loggingConnection:(id)a4;
- (PGMemoryGenerator)initWithMemoryGenerationContext:(id)a3;
- (PGMemoryMomentNodesWithBlockedFeatureCache)momentNodesWithBlockedFeatureCache;
- (PGMemoryProcessedScenesAndFacesCache)processedScenesAndFacesCache;
- (id)baseCurationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4;
- (id)defaultTitleGeneratorWithMomentNodes:(id)a3 keyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 category:(unint64_t)a7 creationDate:(id)a8 titleGenerationContext:(id)a9;
- (id)extendedCurationOptionsWithRequiredAssetUUIDs:(id)a3 triggeredMemory:(id)a4;
- (id)generatePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4;
- (id)localIdentifiersFromAssets:(id)a3;
- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8;
- (id)uuidsOfRequiredAssetsWithKeyAsset:(id)a3 triggeredMemory:(id)a4 inGraph:(id)a5 progressReporter:(id)a6;
- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6;
- (void)addLocalIdentifiersFromAssets:(id)a3 to:(id)a4;
- (void)generateMoodForEnrichedMemory:(id)a3 extendedCuratedAssets:(id)a4 configuration:(id)a5 inGraph:(id)a6;
@end

@implementation PGMemoryGenerator

- (PGMemoryController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)generateMoodForEnrichedMemory:(id)a3 extendedCuratedAssets:(id)a4 configuration:(id)a5 inGraph:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v24 = objc_alloc_init(PGMoodGeneratorOptions);
  [(PGMoodGeneratorOptions *)v24 setPrefetchedAssets:v12];

  v14 = [v11 moodHistory];
  [(PGMoodGeneratorOptions *)v24 setMoodHistory:v14];

  v15 = MEMORY[0x277D27690];
  v16 = [v11 localDate];
  v17 = [v11 timeZone];

  v18 = [v15 universalDateFromLocalDate:v16 inTimeZone:v17];

  [(PGMoodGeneratorOptions *)v24 setReferenceDate:v18];
  v19 = [[PGMoodGenerationContext alloc] initWithReferenceDate:v18];
  [(PGMoodGeneratorOptions *)v24 setMoodGenerationContext:v19];

  v20 = [PGMoodGenerator alloc];
  v21 = [(PGMemoryCurationSession *)self->_memoryCurationSession photoLibrary];
  v22 = [(PGMoodGenerator *)v20 initWithEnrichedMemory:v13 photoLibrary:v21 options:v24];

  [v13 setSuggestedMood:{-[PGMoodGenerator suggestedMoodWithGraph:](v22, "suggestedMoodWithGraph:", v10)}];
  [v13 setForbiddenMoods:{-[PGMoodGenerator forbiddenMoodsWithGraph:](v22, "forbiddenMoodsWithGraph:", v10)}];
  [v13 setRecommendedMoods:{-[PGMoodGenerator recommendedMoodsWithGraph:](v22, "recommendedMoodsWithGraph:", v10)}];
  v23 = [(PGMoodGenerator *)v22 positiveMoodVectorWithGraph:v10];

  [v13 setPositiveMoodVector:v23];
}

- (id)titleGeneratorForTriggeredMemory:(id)a3 withKeyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 titleGenerationContext:(id)a7 inGraph:(id)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v17 memoryMomentNodes];
  v19 = [v18 set];
  v20 = [v17 memoryCategory];
  v21 = [v17 creationDate];

  v22 = [(PGMemoryGenerator *)self defaultTitleGeneratorWithMomentNodes:v19 keyAsset:v16 curatedAssets:v15 extendedCuratedAssets:v14 category:v20 creationDate:v21 titleGenerationContext:v13];

  return v22;
}

- (id)extendedCurationOptionsWithRequiredAssetUUIDs:(id)a3 triggeredMemory:(id)a4
{
  v5 = a3;
  v6 = [[PGDejunkerDeduperOptions alloc] initForMemories];
  [v6 setDoSemanticalDeduping:{-[PGMemoryGenerator semanticalDedupingEnabledForExtendedCuration](self, "semanticalDedupingEnabledForExtendedCuration")}];
  [v6 setIdentifiersOfRequiredItems:v5];

  [v6 setDuration:{-[PGMemoryGenerator durationForExtendedCuration](self, "durationForExtendedCuration")}];

  return v6;
}

- (id)baseCurationOptionsWithRequiredAssetUUIDs:(id)a3 eligibleAssetUUIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PGCurationOptions alloc] initWithDuration:[(PGMemoryGenerator *)self durationForCuration]];
  [(PGCurationOptions *)v8 setSemanticalDedupingEnabled:[(PGMemoryGenerator *)self semanticalDedupingEnabledForCuration]];
  [(PGCurationOptions *)v8 setUseDurationBasedCuration:1];
  [(PGCurationOptions *)v8 setFailIfMinimumDurationNotReached:1];
  [(PGCurationOptions *)v8 setSkipCurationIfEligibleItemsFitTargetDuration:1];
  [(PGCurationOptions *)v8 setUuidsOfRequiredAssets:v7];

  [(PGCurationOptions *)v8 setUuidsOfEligibleAssets:v6];
  v9 = v6 == 0;
  [(PGCurationOptions *)v8 setIdenticalDedupingEnabled:v9];
  [(PGCurationOptions *)v8 setSemanticalDedupingEnabled:v9];
  [(PGCurationOptions *)v8 setMovieDedupingEnabled:v9];

  return v8;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)a3 inGraph:(id)a4
{
  v4 = objc_alloc_init(PGKeyAssetCurationOptions);
  [(PGKeyAssetCurationOptions *)v4 setIsForMemories:1];
  [(PGKeyAssetCurationOptions *)v4 setWantsGoodSquareCropScore:1];

  return v4;
}

- (id)uuidsOfRequiredAssetsWithKeyAsset:(id)a3 triggeredMemory:(id)a4 inGraph:(id)a5 progressReporter:(id)a6
{
  v6 = MEMORY[0x277CBEB98];
  v7 = [a3 uuid];
  v8 = [v6 setWithObject:v7];

  return v8;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__PGMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
  v15[3] = &unk_278884870;
  v13 = v12;
  v16 = v13;
  [(PGMemoryGenerator *)self _enumeratePotentialMemoriesForProcessingWindow:v11 graph:v10 progressBlock:v9 usingBlock:v15];

  return v13;
}

- (id)defaultTitleGeneratorWithMomentNodes:(id)a3 keyAsset:(id)a4 curatedAssets:(id)a5 extendedCuratedAssets:(id)a6 category:(unint64_t)a7 creationDate:(id)a8 titleGenerationContext:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = a8;
  v20 = [objc_opt_class() titleDateMatchingTypeForMemoryCategory:a7];
  v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 duration:0.0];

  v22 = [v15 photoLibrary];
  v23 = v22;
  if (v15 && v22 && [v16 count] && objc_msgSend(v17, "count"))
  {
    v24 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:v16 title:0 identifier:0 photoLibrary:v23];
    v25 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:v17 title:0 identifier:0 photoLibrary:v23];
    v26 = [[PGTitleGenerator alloc] initWithMomentNodes:v14 referenceDateInterval:v21 keyAsset:v15 curatedAssetCollection:v24 assetCollection:v25 type:v20 titleGenerationContext:v18];
  }

  else
  {
    v26 = [[PGTitleGenerator alloc] initWithMomentNodes:v14 referenceDateInterval:v21 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:v20 titleGenerationContext:v18];
  }

  return v26;
}

- (void)addLocalIdentifiersFromAssets:(id)a3 to:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) localIdentifier];
        [v6 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)localIdentifiersFromAssets:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) localIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)a3 graph:(id)a4 progressBlock:(id)a5 usingBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v15);
}

- (PGGraphLocationHelper)locationHelper
{
  locationHelper = self->_locationHelper;
  if (locationHelper)
  {
    v3 = locationHelper;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v5 = [WeakRetained memoryGenerationContext];
    v3 = [v5 locationHelper];
  }

  return v3;
}

- (PGMemoryMomentNodesWithBlockedFeatureCache)momentNodesWithBlockedFeatureCache
{
  momentNodesWithBlockedFeatureCache = self->_momentNodesWithBlockedFeatureCache;
  if (momentNodesWithBlockedFeatureCache)
  {
    v3 = momentNodesWithBlockedFeatureCache;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v5 = [WeakRetained memoryGenerationContext];
    v3 = [v5 momentNodesWithBlockedFeatureCache];
  }

  return v3;
}

- (PGMemoryProcessedScenesAndFacesCache)processedScenesAndFacesCache
{
  processedScenesAndFacesCache = self->_processedScenesAndFacesCache;
  if (!processedScenesAndFacesCache)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained memoryGenerationContext];
      v7 = [v6 processedScenesAndFacesCache];
    }

    else
    {
      v8 = [(PGMemoryGenerator *)self memoryCurationSession];
      v6 = [v8 photoLibrary];

      v7 = [[PGMemoryProcessedScenesAndFacesCache alloc] initWithPhotoLibrary:v6];
    }

    v9 = self->_processedScenesAndFacesCache;
    self->_processedScenesAndFacesCache = v7;

    processedScenesAndFacesCache = self->_processedScenesAndFacesCache;
  }

  return processedScenesAndFacesCache;
}

- (PGMemoryCurationSession)memoryCurationSession
{
  memoryCurationSession = self->_memoryCurationSession;
  if (!memoryCurationSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v5 = [WeakRetained photoLibrary];
    v6 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v5];
    v7 = +[PGGraphLocationHelper inefficientLocationHelper];
    v8 = [PGMemoryCurationSession alloc];
    v9 = [WeakRetained curationManager];
    v10 = [(PGMemoryCurationSession *)v8 initWithCurationManager:v9 photoLibrary:v5 curationContext:v6 locationHelper:v7];
    v11 = self->_memoryCurationSession;
    self->_memoryCurationSession = v10;

    memoryCurationSession = self->_memoryCurationSession;
  }

  return memoryCurationSession;
}

- (PGMemoryGenerator)initWithMemoryGenerationContext:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PGMemoryGenerator;
  v6 = [(PGMemoryGenerator *)&v16 init];
  if (v6)
  {
    v7 = [v5 processedScenesAndFacesCache];
    processedScenesAndFacesCache = v6->_processedScenesAndFacesCache;
    v6->_processedScenesAndFacesCache = v7;

    v9 = [v5 momentNodesWithBlockedFeatureCache];
    momentNodesWithBlockedFeatureCache = v6->_momentNodesWithBlockedFeatureCache;
    v6->_momentNodesWithBlockedFeatureCache = v9;

    v11 = [v5 loggingConnection];
    loggingConnection = v6->_loggingConnection;
    v6->_loggingConnection = v11;

    v13 = [v5 locationHelper];
    locationHelper = v6->_locationHelper;
    v6->_locationHelper = v13;

    objc_storeStrong(&v6->_memoryGenerationContext, a3);
  }

  return v6;
}

- (PGMemoryGenerator)initWithMemoryCurationSession:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGMemoryGenerator;
  v9 = [(PGMemoryGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggingConnection, a4);
    objc_storeStrong(&v10->_memoryCurationSession, a3);
  }

  return v10;
}

+ (int64_t)titleDateMatchingTypeForMemoryCategory:(unint64_t)a3
{
  if (a3 - 202 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_22F78C730[a3 - 202];
  }
}

@end