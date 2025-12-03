@interface PGMemoryGenerator
+ (int64_t)titleDateMatchingTypeForMemoryCategory:(unint64_t)category;
- (PGGraphLocationHelper)locationHelper;
- (PGMemoryController)controller;
- (PGMemoryCurationSession)memoryCurationSession;
- (PGMemoryGenerator)initWithMemoryCurationSession:(id)session loggingConnection:(id)connection;
- (PGMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (PGMemoryMomentNodesWithBlockedFeatureCache)momentNodesWithBlockedFeatureCache;
- (PGMemoryProcessedScenesAndFacesCache)processedScenesAndFacesCache;
- (id)baseCurationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs;
- (id)defaultTitleGeneratorWithMomentNodes:(id)nodes keyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets category:(unint64_t)category creationDate:(id)date titleGenerationContext:(id)context;
- (id)extendedCurationOptionsWithRequiredAssetUUIDs:(id)ds triggeredMemory:(id)memory;
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph;
- (id)localIdentifiersFromAssets:(id)assets;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
- (id)uuidsOfRequiredAssetsWithKeyAsset:(id)asset triggeredMemory:(id)memory inGraph:(id)graph progressReporter:(id)reporter;
- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block usingBlock:(id)usingBlock;
- (void)addLocalIdentifiersFromAssets:(id)assets to:(id)to;
- (void)generateMoodForEnrichedMemory:(id)memory extendedCuratedAssets:(id)assets configuration:(id)configuration inGraph:(id)graph;
@end

@implementation PGMemoryGenerator

- (PGMemoryController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)generateMoodForEnrichedMemory:(id)memory extendedCuratedAssets:(id)assets configuration:(id)configuration inGraph:(id)graph
{
  graphCopy = graph;
  configurationCopy = configuration;
  assetsCopy = assets;
  memoryCopy = memory;
  v24 = objc_alloc_init(PGMoodGeneratorOptions);
  [(PGMoodGeneratorOptions *)v24 setPrefetchedAssets:assetsCopy];

  moodHistory = [configurationCopy moodHistory];
  [(PGMoodGeneratorOptions *)v24 setMoodHistory:moodHistory];

  v15 = MEMORY[0x277D27690];
  localDate = [configurationCopy localDate];
  timeZone = [configurationCopy timeZone];

  v18 = [v15 universalDateFromLocalDate:localDate inTimeZone:timeZone];

  [(PGMoodGeneratorOptions *)v24 setReferenceDate:v18];
  v19 = [[PGMoodGenerationContext alloc] initWithReferenceDate:v18];
  [(PGMoodGeneratorOptions *)v24 setMoodGenerationContext:v19];

  v20 = [PGMoodGenerator alloc];
  photoLibrary = [(PGMemoryCurationSession *)self->_memoryCurationSession photoLibrary];
  v22 = [(PGMoodGenerator *)v20 initWithEnrichedMemory:memoryCopy photoLibrary:photoLibrary options:v24];

  [memoryCopy setSuggestedMood:{-[PGMoodGenerator suggestedMoodWithGraph:](v22, "suggestedMoodWithGraph:", graphCopy)}];
  [memoryCopy setForbiddenMoods:{-[PGMoodGenerator forbiddenMoodsWithGraph:](v22, "forbiddenMoodsWithGraph:", graphCopy)}];
  [memoryCopy setRecommendedMoods:{-[PGMoodGenerator recommendedMoodsWithGraph:](v22, "recommendedMoodsWithGraph:", graphCopy)}];
  v23 = [(PGMoodGenerator *)v22 positiveMoodVectorWithGraph:graphCopy];

  [memoryCopy setPositiveMoodVector:v23];
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  contextCopy = context;
  curatedAssetsCopy = curatedAssets;
  assetsCopy = assets;
  assetCopy = asset;
  memoryCopy = memory;
  memoryMomentNodes = [memoryCopy memoryMomentNodes];
  v19 = [memoryMomentNodes set];
  memoryCategory = [memoryCopy memoryCategory];
  creationDate = [memoryCopy creationDate];

  v22 = [(PGMemoryGenerator *)self defaultTitleGeneratorWithMomentNodes:v19 keyAsset:assetCopy curatedAssets:assetsCopy extendedCuratedAssets:curatedAssetsCopy category:memoryCategory creationDate:creationDate titleGenerationContext:contextCopy];

  return v22;
}

- (id)extendedCurationOptionsWithRequiredAssetUUIDs:(id)ds triggeredMemory:(id)memory
{
  dsCopy = ds;
  initForMemories = [[PGDejunkerDeduperOptions alloc] initForMemories];
  [initForMemories setDoSemanticalDeduping:{-[PGMemoryGenerator semanticalDedupingEnabledForExtendedCuration](self, "semanticalDedupingEnabledForExtendedCuration")}];
  [initForMemories setIdentifiersOfRequiredItems:dsCopy];

  [initForMemories setDuration:{-[PGMemoryGenerator durationForExtendedCuration](self, "durationForExtendedCuration")}];

  return initForMemories;
}

- (id)baseCurationOptionsWithRequiredAssetUUIDs:(id)ds eligibleAssetUUIDs:(id)iDs
{
  iDsCopy = iDs;
  dsCopy = ds;
  v8 = [[PGCurationOptions alloc] initWithDuration:[(PGMemoryGenerator *)self durationForCuration]];
  [(PGCurationOptions *)v8 setSemanticalDedupingEnabled:[(PGMemoryGenerator *)self semanticalDedupingEnabledForCuration]];
  [(PGCurationOptions *)v8 setUseDurationBasedCuration:1];
  [(PGCurationOptions *)v8 setFailIfMinimumDurationNotReached:1];
  [(PGCurationOptions *)v8 setSkipCurationIfEligibleItemsFitTargetDuration:1];
  [(PGCurationOptions *)v8 setUuidsOfRequiredAssets:dsCopy];

  [(PGCurationOptions *)v8 setUuidsOfEligibleAssets:iDsCopy];
  v9 = iDsCopy == 0;
  [(PGCurationOptions *)v8 setIdenticalDedupingEnabled:v9];
  [(PGCurationOptions *)v8 setSemanticalDedupingEnabled:v9];
  [(PGCurationOptions *)v8 setMovieDedupingEnabled:v9];

  return v8;
}

- (id)keyAssetCurationOptionsWithTriggeredMemory:(id)memory inGraph:(id)graph
{
  v4 = objc_alloc_init(PGKeyAssetCurationOptions);
  [(PGKeyAssetCurationOptions *)v4 setIsForMemories:1];
  [(PGKeyAssetCurationOptions *)v4 setWantsGoodSquareCropScore:1];

  return v4;
}

- (id)uuidsOfRequiredAssetsWithKeyAsset:(id)asset triggeredMemory:(id)memory inGraph:(id)graph progressReporter:(id)reporter
{
  v6 = MEMORY[0x277CBEB98];
  uuid = [asset uuid];
  v8 = [v6 setWithObject:uuid];

  return v8;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v8 = MEMORY[0x277CBEB18];
  blockCopy = block;
  graphCopy = graph;
  windowCopy = window;
  array = [v8 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__PGMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
  v15[3] = &unk_278884870;
  v13 = array;
  v16 = v13;
  [(PGMemoryGenerator *)self _enumeratePotentialMemoriesForProcessingWindow:windowCopy graph:graphCopy progressBlock:blockCopy usingBlock:v15];

  return v13;
}

- (id)defaultTitleGeneratorWithMomentNodes:(id)nodes keyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets category:(unint64_t)category creationDate:(id)date titleGenerationContext:(id)context
{
  nodesCopy = nodes;
  assetCopy = asset;
  assetsCopy = assets;
  curatedAssetsCopy = curatedAssets;
  contextCopy = context;
  dateCopy = date;
  v20 = [objc_opt_class() titleDateMatchingTypeForMemoryCategory:category];
  v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy duration:0.0];

  photoLibrary = [assetCopy photoLibrary];
  v23 = photoLibrary;
  if (assetCopy && photoLibrary && [assetsCopy count] && objc_msgSend(curatedAssetsCopy, "count"))
  {
    v24 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:assetsCopy title:0 identifier:0 photoLibrary:v23];
    v25 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:curatedAssetsCopy title:0 identifier:0 photoLibrary:v23];
    v26 = [[PGTitleGenerator alloc] initWithMomentNodes:nodesCopy referenceDateInterval:v21 keyAsset:assetCopy curatedAssetCollection:v24 assetCollection:v25 type:v20 titleGenerationContext:contextCopy];
  }

  else
  {
    v26 = [[PGTitleGenerator alloc] initWithMomentNodes:nodesCopy referenceDateInterval:v21 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:v20 titleGenerationContext:contextCopy];
  }

  return v26;
}

- (void)addLocalIdentifiersFromAssets:(id)assets to:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [assetsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(assetsCopy);
        }

        localIdentifier = [*(*(&v13 + 1) + 8 * v10) localIdentifier];
        [toCopy addObject:localIdentifier];

        ++v10;
      }

      while (v8 != v10);
      v8 = [assetsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)localIdentifiersFromAssets:(id)assets
{
  v18 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assetsCopy;
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

        localIdentifier = [*(*(&v13 + 1) + 8 * i) localIdentifier];
        [v4 addObject:localIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_enumeratePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block usingBlock:(id)usingBlock
{
  windowCopy = window;
  graphCopy = graph;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  v15 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v15);
}

- (PGGraphLocationHelper)locationHelper
{
  locationHelper = self->_locationHelper;
  if (locationHelper)
  {
    locationHelper = locationHelper;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    memoryGenerationContext = [WeakRetained memoryGenerationContext];
    locationHelper = [memoryGenerationContext locationHelper];
  }

  return locationHelper;
}

- (PGMemoryMomentNodesWithBlockedFeatureCache)momentNodesWithBlockedFeatureCache
{
  momentNodesWithBlockedFeatureCache = self->_momentNodesWithBlockedFeatureCache;
  if (momentNodesWithBlockedFeatureCache)
  {
    momentNodesWithBlockedFeatureCache = momentNodesWithBlockedFeatureCache;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    memoryGenerationContext = [WeakRetained memoryGenerationContext];
    momentNodesWithBlockedFeatureCache = [memoryGenerationContext momentNodesWithBlockedFeatureCache];
  }

  return momentNodesWithBlockedFeatureCache;
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
      memoryGenerationContext = [WeakRetained memoryGenerationContext];
      processedScenesAndFacesCache = [memoryGenerationContext processedScenesAndFacesCache];
    }

    else
    {
      memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
      memoryGenerationContext = [memoryCurationSession photoLibrary];

      processedScenesAndFacesCache = [[PGMemoryProcessedScenesAndFacesCache alloc] initWithPhotoLibrary:memoryGenerationContext];
    }

    v9 = self->_processedScenesAndFacesCache;
    self->_processedScenesAndFacesCache = processedScenesAndFacesCache;

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
    photoLibrary = [WeakRetained photoLibrary];
    v6 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
    v7 = +[PGGraphLocationHelper inefficientLocationHelper];
    v8 = [PGMemoryCurationSession alloc];
    curationManager = [WeakRetained curationManager];
    v10 = [(PGMemoryCurationSession *)v8 initWithCurationManager:curationManager photoLibrary:photoLibrary curationContext:v6 locationHelper:v7];
    v11 = self->_memoryCurationSession;
    self->_memoryCurationSession = v10;

    memoryCurationSession = self->_memoryCurationSession;
  }

  return memoryCurationSession;
}

- (PGMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = PGMemoryGenerator;
  v6 = [(PGMemoryGenerator *)&v16 init];
  if (v6)
  {
    processedScenesAndFacesCache = [contextCopy processedScenesAndFacesCache];
    processedScenesAndFacesCache = v6->_processedScenesAndFacesCache;
    v6->_processedScenesAndFacesCache = processedScenesAndFacesCache;

    momentNodesWithBlockedFeatureCache = [contextCopy momentNodesWithBlockedFeatureCache];
    momentNodesWithBlockedFeatureCache = v6->_momentNodesWithBlockedFeatureCache;
    v6->_momentNodesWithBlockedFeatureCache = momentNodesWithBlockedFeatureCache;

    loggingConnection = [contextCopy loggingConnection];
    loggingConnection = v6->_loggingConnection;
    v6->_loggingConnection = loggingConnection;

    locationHelper = [contextCopy locationHelper];
    locationHelper = v6->_locationHelper;
    v6->_locationHelper = locationHelper;

    objc_storeStrong(&v6->_memoryGenerationContext, context);
  }

  return v6;
}

- (PGMemoryGenerator)initWithMemoryCurationSession:(id)session loggingConnection:(id)connection
{
  sessionCopy = session;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PGMemoryGenerator;
  v9 = [(PGMemoryGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggingConnection, connection);
    objc_storeStrong(&v10->_memoryCurationSession, session);
  }

  return v10;
}

+ (int64_t)titleDateMatchingTypeForMemoryCategory:(unint64_t)category
{
  if (category - 202 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_22F78C730[category - 202];
  }
}

@end