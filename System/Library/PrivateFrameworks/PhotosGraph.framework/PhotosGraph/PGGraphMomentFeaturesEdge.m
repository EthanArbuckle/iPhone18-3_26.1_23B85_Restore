@interface PGGraphMomentFeaturesEdge
+ (id)filter;
- (BOOL)hasProperties:(id)a3;
- (PGGraphMomentFeaturesEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)initFromMomentNode:(id)a3 toFeatureNode:(id)a4 numberOfRelevantAssets:(unint64_t)a5 allAssetUUIDs:(id)a6;
- (id)initFromMomentNode:(id)a3 toFeatureNode:(id)a4 numberOfRelevantAssets:(unint64_t)a5 relevantAssetUUIDs:(id)a6;
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

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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

- (PGGraphMomentFeaturesEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = [v10 objectForKeyedSubscript:@"rlvacnt"];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v10 objectForKeyedSubscript:@"rlvaids"];

  v16 = [(PGGraphMomentFeaturesEdge *)self initFromMomentNode:v12 toFeatureNode:v11 numberOfRelevantAssets:v14 allAssetUUIDs:v15];
  return v16;
}

- (id)initFromMomentNode:(id)a3 toFeatureNode:(id)a4 numberOfRelevantAssets:(unint64_t)a5 relevantAssetUUIDs:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a6 componentsJoinedByString:{@", "}];
  v13 = [(PGGraphMomentFeaturesEdge *)self initFromMomentNode:v11 toFeatureNode:v10 numberOfRelevantAssets:a5 allAssetUUIDs:v12];

  return v13;
}

- (id)initFromMomentNode:(id)a3 toFeatureNode:(id)a4 numberOfRelevantAssets:(unint64_t)a5 allAssetUUIDs:(id)a6
{
  v7 = a5;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PGGraphMomentFeaturesEdge;
  v12 = [(PGGraphEdge *)&v15 initWithSourceNode:a3 targetNode:a4];
  v13 = v12;
  if (v12)
  {
    *(v12 + 12) = v7;
    objc_storeStrong(&v12->_allAssetUUIDs, a6);
  }

  return v13;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"MOMENT_FEATURES" domain:1200];

  return v2;
}

@end