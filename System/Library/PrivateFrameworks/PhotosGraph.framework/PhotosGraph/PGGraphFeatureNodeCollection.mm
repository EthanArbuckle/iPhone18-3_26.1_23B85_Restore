@interface PGGraphFeatureNodeCollection
+ (MARelation)memoryOfFeature;
+ (MARelation)momentOfFeature;
+ (PGGraphFeatureNodeCollection)featureNodeCollectionWithCollection:(id)collection;
+ (PGGraphFeatureNodeCollection)featureNodeCollectionWithFeatures:(id)features inGraph:(id)graph;
- (NSSet)featureIdentifiers;
- (PGGraphMemoryNodeCollection)memoryNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (id)allFeatures;
@end

@implementation PGGraphFeatureNodeCollection

- (NSSet)featureIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[MAElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGGraphFeatureNodeCollection_featureIdentifiers__block_invoke;
  v6[3] = &unk_278889D08;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __50__PGGraphFeatureNodeCollection_featureIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 featureIdentifier];
  [*(a1 + 32) addObject:v3];
}

- (id)allFeatures
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PGGraphFeatureNodeCollection_allFeatures__block_invoke;
  v6[3] = &unk_278889CE0;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __43__PGGraphFeatureNodeCollection_allFeatures__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_284490578])
  {
    v4 = +[PGFeature featureWithType:node:](PGFeature, "featureWithType:node:", [v3 featureType], v3);
    if (v4)
    {
      v5 = v4;
      [*(a1 + 32) addObject:v4];
    }

    else
    {
      v10 = +[PGLogging sharedLogging];
      v11 = [v10 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [v3 label];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v15;
        _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "No feature found for feature node with label %@ of class %@", &v16, 0x16u);
      }

      v5 = 0;
    }
  }

  else
  {
    v6 = +[PGLogging sharedLogging];
    v5 = [v6 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 label];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Node with label %@ of class %@ in PGGraphFeatureNodeCollection does not conform to PGAssetCollectionFeature protocol", &v16, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphFeatureNodeCollection momentOfFeature];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMemoryNodeCollection)memoryNodes
{
  v3 = +[PGGraphMemoryFeaturesEdge filter];
  inRelation = [v3 inRelation];
  v5 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesRelatedToNodes:self withRelation:inRelation];

  return v5;
}

+ (PGGraphFeatureNodeCollection)featureNodeCollectionWithFeatures:(id)features inGraph:(id)graph
{
  v31 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  graphCopy = graph;
  v23 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = featuresCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    *&v9 = 138412290;
    v22 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 nodeInGraph:{graphCopy, v22}];
        v15 = v14;
        if (v14)
        {
          if ([v14 conformsToProtocol:&unk_284490578])
          {
            [v23 addIdentifier:{objc_msgSend(v15, "identifier")}];
            goto LABEL_14;
          }

          v18 = +[PGLogging sharedLogging];
          loggingConnection = [v18 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v29 = v13;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Feature node found for feature (%@) does not conform PGAssetCollectionFeature protocol", buf, 0xCu);
          }
        }

        else
        {
          v16 = +[PGLogging sharedLogging];
          loggingConnection = [v16 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            *buf = v22;
            v29 = v13;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Feature node for feature (%@) not found in graph", buf, 0xCu);
          }
        }

LABEL_14:
      }

      v10 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  v19 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:graphCopy elementIdentifiers:v23];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (PGGraphFeatureNodeCollection)featureNodeCollectionWithCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [PGGraphFeatureNodeCollection alloc];
  graph = [collectionCopy graph];
  elementIdentifiers = [collectionCopy elementIdentifiers];

  v7 = [(MAElementCollection *)v4 initWithGraph:graph elementIdentifiers:elementIdentifiers];

  return v7;
}

+ (MARelation)memoryOfFeature
{
  v2 = +[PGGraphMemoryFeaturesEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)momentOfFeature
{
  v2 = +[PGGraphMomentFeaturesEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

@end