@interface PGAssetCollectionFeatureInstance
- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)specification momentNode:(id)node;
- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)specification momentNode:(id)node featureNodes:(id)nodes;
@end

@implementation PGAssetCollectionFeatureInstance

- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)specification momentNode:(id)node featureNodes:(id)nodes
{
  specificationCopy = specification;
  nodeCopy = node;
  nodesCopy = nodes;
  v15.receiver = self;
  v15.super_class = PGAssetCollectionFeatureInstance;
  v12 = [(PGAssetCollectionFeatureInstance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_specification, specification);
    objc_storeStrong(&v13->_momentNode, node);
    objc_storeStrong(&v13->_featureNodes, nodes);
  }

  return v13;
}

- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)specification momentNode:(id)node
{
  specificationCopy = specification;
  nodeCopy = node;
  v12.receiver = self;
  v12.super_class = PGAssetCollectionFeatureInstance;
  v9 = [(PGAssetCollectionFeatureInstance *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_specification, specification);
    objc_storeStrong(&v10->_momentNode, node);
  }

  return v10;
}

@end