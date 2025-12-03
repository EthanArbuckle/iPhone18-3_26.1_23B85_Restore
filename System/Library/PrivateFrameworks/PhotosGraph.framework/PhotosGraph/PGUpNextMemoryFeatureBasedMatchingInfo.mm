@interface PGUpNextMemoryFeatureBasedMatchingInfo
+ (id)matchingInfosWithMemoryNodes:(id)nodes;
+ (id)representativeSceneNodesForMemoryFeatureNodes:(id)nodes;
- (BOOL)isTripMemory;
- (NSString)debugInfo;
- (PGGraphFeatureNodeCollection)memoryFeatureNodes;
- (PGGraphPersonNodeCollection)personNodes;
- (PGGraphSceneNodeCollection)sceneNodes;
- (PGUpNextMemoryFeatureBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)collection;
- (unint64_t)nodeIdentifier;
@end

@implementation PGUpNextMemoryFeatureBasedMatchingInfo

- (NSString)debugInfo
{
  v2 = MEMORY[0x277CCACA8];
  uniqueMemoryIdentifiers = [(PGGraphMemoryNodeCollection *)self->_memoryNodeAsCollection uniqueMemoryIdentifiers];
  anyObject = [uniqueMemoryIdentifiers anyObject];
  v5 = [v2 stringWithFormat:@"Memory Feature Matching Info With Memory id: %@", anyObject];

  return v5;
}

- (BOOL)isTripMemory
{
  if (!self->_isTripMemoryIsResolved)
  {
    labels = [(MANodeCollection *)self->_memoryNodeAsCollection labels];
    v4 = [PGGraphBuilder memoryLabelForCategory:19];
    self->_isTripMemory = [labels containsObject:v4];

    self->_isTripMemoryIsResolved = 1;
  }

  return self->_isTripMemory;
}

- (PGGraphSceneNodeCollection)sceneNodes
{
  sceneNodes = self->_sceneNodes;
  if (!sceneNodes)
  {
    v4 = objc_opt_class();
    memoryFeatureNodes = [(PGUpNextMemoryFeatureBasedMatchingInfo *)self memoryFeatureNodes];
    v6 = [v4 representativeSceneNodesForMemoryFeatureNodes:memoryFeatureNodes];
    v7 = self->_sceneNodes;
    self->_sceneNodes = v6;

    sceneNodes = self->_sceneNodes;
  }

  return sceneNodes;
}

- (PGGraphPersonNodeCollection)personNodes
{
  memoryFeatureNodes = [(PGUpNextMemoryFeatureBasedMatchingInfo *)self memoryFeatureNodes];
  v3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:memoryFeatureNodes];

  return v3;
}

- (PGGraphFeatureNodeCollection)memoryFeatureNodes
{
  memoryFeatureNodes = self->_memoryFeatureNodes;
  if (!memoryFeatureNodes)
  {
    featureNodes = [(PGGraphMemoryNodeCollection *)self->_memoryNodeAsCollection featureNodes];
    v5 = self->_memoryFeatureNodes;
    self->_memoryFeatureNodes = featureNodes;

    memoryFeatureNodes = self->_memoryFeatureNodes;
  }

  return memoryFeatureNodes;
}

- (unint64_t)nodeIdentifier
{
  elementIdentifiers = [(MAElementCollection *)self->_memoryNodeAsCollection elementIdentifiers];
  firstElement = [elementIdentifiers firstElement];

  return firstElement;
}

- (PGUpNextMemoryFeatureBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PGUpNextMemoryFeatureBasedMatchingInfo;
  v6 = [(PGUpNextMemoryFeatureBasedMatchingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memoryNodeAsCollection, collection);
  }

  return v7;
}

+ (id)matchingInfosWithMemoryNodes:(id)nodes
{
  v3 = MEMORY[0x277CBEB18];
  nodesCopy = nodes;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__PGUpNextMemoryFeatureBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke;
  v8[3] = &unk_278889918;
  v6 = v5;
  v9 = v6;
  [nodesCopy enumerateIdentifiersAsCollectionsWithBlock:v8];

  return v6;
}

void __71__PGUpNextMemoryFeatureBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[PGUpNextMemoryFeatureBasedMatchingInfo alloc] initWithMemoryNodeAsCollection:v4];

  [*(a1 + 32) addObject:v5];
}

+ (id)representativeSceneNodesForMemoryFeatureNodes:(id)nodes
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:nodes];
  graph = [v3 graph];
  if ([v3 count])
  {
    v21 = graph;
    labels = [v3 labels];
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = +[PGTrendsMemoryGenerator trendsConfigurations];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          featureLabel = [v12 featureLabel];
          v14 = [labels containsObject:featureLabel];

          if (v14)
          {
            positiveScenes = [v12 positiveScenes];
            [v6 addObjectsFromArray:positiveScenes];

            positiveDominantScenes = [v12 positiveDominantScenes];
            [v6 addObjectsFromArray:positiveDominantScenes];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    graph = v21;
    if ([v6 count])
    {
      v17 = [PGGraphSceneNodeCollection sceneNodesForSceneNames:v6 inGraph:v21];
    }

    else
    {
      v17 = [(MAElementCollection *)[PGGraphSceneNodeCollection alloc] initWithGraph:v21];
    }

    v18 = v17;
  }

  else
  {
    v18 = [(MAElementCollection *)[PGGraphSceneNodeCollection alloc] initWithGraph:graph];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end