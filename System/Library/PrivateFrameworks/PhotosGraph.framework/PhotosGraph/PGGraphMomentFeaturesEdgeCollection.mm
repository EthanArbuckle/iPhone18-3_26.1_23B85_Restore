@interface PGGraphMomentFeaturesEdgeCollection
+ (id)momentFeaturesEdgesFromMomentNodes:(id)nodes toFeatureNodes:(id)featureNodes;
- (NSSet)allRelevantAssetLocalIdentifiers;
- (NSSet)allRelevantAssetUUIDs;
- (unint64_t)numberOfRelevantAssets;
@end

@implementation PGGraphMomentFeaturesEdgeCollection

- (NSSet)allRelevantAssetLocalIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  allRelevantAssetUUIDs = [(PGGraphMomentFeaturesEdgeCollection *)self allRelevantAssetUUIDs];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(allRelevantAssetUUIDs, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = allRelevantAssetUUIDs;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:{*(*(&v12 + 1) + 8 * i), v12}];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSSet)allRelevantAssetUUIDs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__PGGraphMomentFeaturesEdgeCollection_allRelevantAssetUUIDs__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MAEdgeCollection *)self enumerateStringPropertyValuesForKey:@"rlvaids" withBlock:v6];

  return v4;
}

void __60__PGGraphMomentFeaturesEdgeCollection_allRelevantAssetUUIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [PGGraphMomentFeaturesEdge relevantAssetUUIDsFromAllAssetUUIDs:?];
  [v1 addObjectsFromArray:v2];
}

- (unint64_t)numberOfRelevantAssets
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__PGGraphMomentFeaturesEdgeCollection_numberOfRelevantAssets__block_invoke;
  v4[3] = &unk_278889820;
  v4[4] = &v5;
  [(MAEdgeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"rlvacnt" withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (id)momentFeaturesEdgesFromMomentNodes:(id)nodes toFeatureNodes:(id)featureNodes
{
  featureNodesCopy = featureNodes;
  nodesCopy = nodes;
  v7 = +[PGGraphMomentFeaturesEdge filter];
  v8 = [(MAEdgeCollection *)PGGraphMomentFeaturesEdgeCollection edgesOfType:2 betweenNodes:nodesCopy andNodes:featureNodesCopy matchingFilter:v7];

  return v8;
}

@end