@interface PGUpNextMemoryFeatureBasedMatchingInfo
+ (id)matchingInfosWithMemoryNodes:(id)a3;
+ (id)representativeSceneNodesForMemoryFeatureNodes:(id)a3;
- (BOOL)isTripMemory;
- (NSString)debugInfo;
- (PGGraphFeatureNodeCollection)memoryFeatureNodes;
- (PGGraphPersonNodeCollection)personNodes;
- (PGGraphSceneNodeCollection)sceneNodes;
- (PGUpNextMemoryFeatureBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)a3;
- (unint64_t)nodeIdentifier;
@end

@implementation PGUpNextMemoryFeatureBasedMatchingInfo

- (NSString)debugInfo
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PGGraphMemoryNodeCollection *)self->_memoryNodeAsCollection uniqueMemoryIdentifiers];
  v4 = [v3 anyObject];
  v5 = [v2 stringWithFormat:@"Memory Feature Matching Info With Memory id: %@", v4];

  return v5;
}

- (BOOL)isTripMemory
{
  if (!self->_isTripMemoryIsResolved)
  {
    v3 = [(MANodeCollection *)self->_memoryNodeAsCollection labels];
    v4 = [PGGraphBuilder memoryLabelForCategory:19];
    self->_isTripMemory = [v3 containsObject:v4];

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
    v5 = [(PGUpNextMemoryFeatureBasedMatchingInfo *)self memoryFeatureNodes];
    v6 = [v4 representativeSceneNodesForMemoryFeatureNodes:v5];
    v7 = self->_sceneNodes;
    self->_sceneNodes = v6;

    sceneNodes = self->_sceneNodes;
  }

  return sceneNodes;
}

- (PGGraphPersonNodeCollection)personNodes
{
  v2 = [(PGUpNextMemoryFeatureBasedMatchingInfo *)self memoryFeatureNodes];
  v3 = [(PGGraphNodeCollection *)PGGraphPersonNodeCollection subsetInCollection:v2];

  return v3;
}

- (PGGraphFeatureNodeCollection)memoryFeatureNodes
{
  memoryFeatureNodes = self->_memoryFeatureNodes;
  if (!memoryFeatureNodes)
  {
    v4 = [(PGGraphMemoryNodeCollection *)self->_memoryNodeAsCollection featureNodes];
    v5 = self->_memoryFeatureNodes;
    self->_memoryFeatureNodes = v4;

    memoryFeatureNodes = self->_memoryFeatureNodes;
  }

  return memoryFeatureNodes;
}

- (unint64_t)nodeIdentifier
{
  v2 = [(MAElementCollection *)self->_memoryNodeAsCollection elementIdentifiers];
  v3 = [v2 firstElement];

  return v3;
}

- (PGUpNextMemoryFeatureBasedMatchingInfo)initWithMemoryNodeAsCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGUpNextMemoryFeatureBasedMatchingInfo;
  v6 = [(PGUpNextMemoryFeatureBasedMatchingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memoryNodeAsCollection, a3);
  }

  return v7;
}

+ (id)matchingInfosWithMemoryNodes:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__PGUpNextMemoryFeatureBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke;
  v8[3] = &unk_278889918;
  v6 = v5;
  v9 = v6;
  [v4 enumerateIdentifiersAsCollectionsWithBlock:v8];

  return v6;
}

void __71__PGUpNextMemoryFeatureBasedMatchingInfo_matchingInfosWithMemoryNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[PGUpNextMemoryFeatureBasedMatchingInfo alloc] initWithMemoryNodeAsCollection:v4];

  [*(a1 + 32) addObject:v5];
}

+ (id)representativeSceneNodesForMemoryFeatureNodes:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:a3];
  v4 = [v3 graph];
  if ([v3 count])
  {
    v21 = v4;
    v5 = [v3 labels];
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
          v13 = [v12 featureLabel];
          v14 = [v5 containsObject:v13];

          if (v14)
          {
            v15 = [v12 positiveScenes];
            [v6 addObjectsFromArray:v15];

            v16 = [v12 positiveDominantScenes];
            [v6 addObjectsFromArray:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v4 = v21;
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
    v18 = [(MAElementCollection *)[PGGraphSceneNodeCollection alloc] initWithGraph:v4];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end