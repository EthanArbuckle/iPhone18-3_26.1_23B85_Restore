@interface PGGraphMomentFeaturesEdge
+ (id)filter;
- (BOOL)hasProperties:(id)properties;
- (PGGraphMomentFeaturesEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)initFromMomentNode:(id)node toFeatureNode:(id)featureNode numberOfRelevantAssets:(unint64_t)assets allAssetUUIDs:(id)ds;
- (id)initFromMomentNode:(id)node toFeatureNode:(id)featureNode numberOfRelevantAssets:(unint64_t)assets relevantAssetUUIDs:(id)ds;
- (id)propertyDictionary;
@end

@implementation PGGraphMomentFeaturesEdge

- (id)propertyDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"rlvacnt";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 12)];
  v7[1] = @"rlvaids";
  v8[0] = v3;
  v8[1] = self->_allAssetUUIDs;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"rlvacnt"];
    v7 = v6;
    v9 = 0;
    if (!v6 || [v6 unsignedIntegerValue] == *(self + 12))
    {

      v8 = [v5 objectForKeyedSubscript:@"rlvaids"];
      v7 = v8;
      if (!v8 || [v8 isEqual:self->_allAssetUUIDs])
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphMomentFeaturesEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v13 = [propertiesCopy objectForKeyedSubscript:@"rlvacnt"];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"rlvaids"];

  v16 = [(PGGraphMomentFeaturesEdge *)self initFromMomentNode:nodeCopy toFeatureNode:targetNodeCopy numberOfRelevantAssets:unsignedIntegerValue allAssetUUIDs:v15];
  return v16;
}

- (id)initFromMomentNode:(id)node toFeatureNode:(id)featureNode numberOfRelevantAssets:(unint64_t)assets relevantAssetUUIDs:(id)ds
{
  featureNodeCopy = featureNode;
  nodeCopy = node;
  v12 = [ds componentsJoinedByString:{@", "}];
  v13 = [(PGGraphMomentFeaturesEdge *)self initFromMomentNode:nodeCopy toFeatureNode:featureNodeCopy numberOfRelevantAssets:assets allAssetUUIDs:v12];

  return v13;
}

- (id)initFromMomentNode:(id)node toFeatureNode:(id)featureNode numberOfRelevantAssets:(unint64_t)assets allAssetUUIDs:(id)ds
{
  assetsCopy = assets;
  dsCopy = ds;
  v15.receiver = self;
  v15.super_class = PGGraphMomentFeaturesEdge;
  v12 = [(PGGraphEdge *)&v15 initWithSourceNode:node targetNode:featureNode];
  v13 = v12;
  if (v12)
  {
    *(v12 + 12) = assetsCopy;
    objc_storeStrong(&v12->_allAssetUUIDs, ds);
  }

  return v13;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"MOMENT_FEATURES" domain:1200];

  return v2;
}

@end