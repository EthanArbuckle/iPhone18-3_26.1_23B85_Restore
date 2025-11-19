@interface PGAssetCollectionFeatureInstance
- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)a3 momentNode:(id)a4;
- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)a3 momentNode:(id)a4 featureNodes:(id)a5;
@end

@implementation PGAssetCollectionFeatureInstance

- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)a3 momentNode:(id)a4 featureNodes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGAssetCollectionFeatureInstance;
  v12 = [(PGAssetCollectionFeatureInstance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_specification, a3);
    objc_storeStrong(&v13->_momentNode, a4);
    objc_storeStrong(&v13->_featureNodes, a5);
  }

  return v13;
}

- (PGAssetCollectionFeatureInstance)initWithSpecification:(id)a3 momentNode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGAssetCollectionFeatureInstance;
  v9 = [(PGAssetCollectionFeatureInstance *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_specification, a3);
    objc_storeStrong(&v10->_momentNode, a4);
  }

  return v10;
}

@end