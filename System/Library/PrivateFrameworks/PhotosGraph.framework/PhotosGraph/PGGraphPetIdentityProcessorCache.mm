@interface PGGraphPetIdentityProcessorCache
- (NSSet)relevantAssetUUIDsForPetFaces;
- (PGGraphPetIdentityProcessorCache)initWithGraph:(id)a3;
@end

@implementation PGGraphPetIdentityProcessorCache

- (NSSet)relevantAssetUUIDsForPetFaces
{
  relevantAssetUUIDsForPetFaces = self->_relevantAssetUUIDsForPetFaces;
  if (relevantAssetUUIDsForPetFaces)
  {
    goto LABEL_4;
  }

  v4 = [(PGGraph *)self->_graph meNodeCollection];
  v5 = [v4 homeNodes];
  v6 = [v5 preciseAddressNodes];
  v7 = [v6 momentNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self->_graph];
  v9 = [v8 preciseAddressNodes];
  v10 = [v9 momentNodes];

  v11 = [v7 collectionByFormingUnionWith:v10];
  if ([v11 count])
  {
    v12 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Pet" inGraph:self->_graph];
    v13 = [v12 featureNodeCollection];
    v14 = [PGGraphMomentFeaturesEdgeCollection momentFeaturesEdgesFromMomentNodes:v11 toFeatureNodes:v13];

    v15 = [v14 allRelevantAssetUUIDs];
    v16 = self->_relevantAssetUUIDsForPetFaces;
    self->_relevantAssetUUIDsForPetFaces = v15;

    relevantAssetUUIDsForPetFaces = self->_relevantAssetUUIDsForPetFaces;
LABEL_4:
    v17 = relevantAssetUUIDsForPetFaces;
    goto LABEL_5;
  }

  v17 = [MEMORY[0x277CBEB98] set];

LABEL_5:

  return v17;
}

- (PGGraphPetIdentityProcessorCache)initWithGraph:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphPetIdentityProcessorCache;
  v6 = [(PGGraphPetIdentityProcessorCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, a3);
  }

  return v7;
}

@end