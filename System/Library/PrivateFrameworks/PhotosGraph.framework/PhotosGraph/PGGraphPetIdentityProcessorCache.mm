@interface PGGraphPetIdentityProcessorCache
- (NSSet)relevantAssetUUIDsForPetFaces;
- (PGGraphPetIdentityProcessorCache)initWithGraph:(id)graph;
@end

@implementation PGGraphPetIdentityProcessorCache

- (NSSet)relevantAssetUUIDsForPetFaces
{
  relevantAssetUUIDsForPetFaces = self->_relevantAssetUUIDsForPetFaces;
  if (relevantAssetUUIDsForPetFaces)
  {
    goto LABEL_4;
  }

  meNodeCollection = [(PGGraph *)self->_graph meNodeCollection];
  homeNodes = [meNodeCollection homeNodes];
  preciseAddressNodes = [homeNodes preciseAddressNodes];
  momentNodes = [preciseAddressNodes momentNodes];

  v8 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self->_graph];
  preciseAddressNodes2 = [v8 preciseAddressNodes];
  momentNodes2 = [preciseAddressNodes2 momentNodes];

  v11 = [momentNodes collectionByFormingUnionWith:momentNodes2];
  if ([v11 count])
  {
    v12 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Pet" inGraph:self->_graph];
    featureNodeCollection = [v12 featureNodeCollection];
    v14 = [PGGraphMomentFeaturesEdgeCollection momentFeaturesEdgesFromMomentNodes:v11 toFeatureNodes:featureNodeCollection];

    allRelevantAssetUUIDs = [v14 allRelevantAssetUUIDs];
    v16 = self->_relevantAssetUUIDsForPetFaces;
    self->_relevantAssetUUIDsForPetFaces = allRelevantAssetUUIDs;

    relevantAssetUUIDsForPetFaces = self->_relevantAssetUUIDsForPetFaces;
LABEL_4:
    v17 = relevantAssetUUIDsForPetFaces;
    goto LABEL_5;
  }

  v17 = [MEMORY[0x277CBEB98] set];

LABEL_5:

  return v17;
}

- (PGGraphPetIdentityProcessorCache)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = PGGraphPetIdentityProcessorCache;
  v6 = [(PGGraphPetIdentityProcessorCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
  }

  return v7;
}

@end