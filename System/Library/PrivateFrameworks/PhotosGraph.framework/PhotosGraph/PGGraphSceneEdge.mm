@interface PGGraphSceneEdge
+ (MAEdgeFilter)dominantSceneAssetsFilter;
+ (MAEdgeFilter)highConfidenceAssetsFilter;
+ (MAEdgeFilter)isReliableFilter;
+ (MAEdgeFilter)searchConfidenceAssetsFilter;
+ (id)filter;
+ (id)filterWithMinimumConfidence:(double)confidence;
+ (id)filterWithMinimumNumberOfHighConfidenceAssets:(unint64_t)assets;
+ (void)setConfidence:(double)confidence onEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isSearchableForEvent;
- (PGGraphSceneEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)debugDescription;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toSceneNode:(id)sceneNode confidence:(double)confidence isReliable:(BOOL)reliable numberOfAssets:(unint64_t)assets numberOfHighConfidenceAssets:(unint64_t)confidenceAssets numberOfSearchConfidenceAssets:(unint64_t)searchConfidenceAssets numberOfDominantSceneAssets:(unint64_t)self0;
- (id)propertyDictionary;
- (unsigned)domain;
@end

@implementation PGGraphSceneEdge

- (unsigned)domain
{
  v2 = objc_opt_class();

  return [v2 domain];
}

- (id)debugDescription
{
  targetNode = [(MAEdge *)self targetNode];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  label = [targetNode label];
  [(PGGraphSceneEdge *)self confidence];
  v9 = v8;
  if ([(PGGraphSceneEdge *)self isReliable])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v4 stringWithFormat:@"<%p:%@> %@ %.2f isReliable: %@, numberOfAssets %lu, numberOfHighConfidenceAssets %lu, numberOfSearchConfidenceAssets %lu, numberOfDominantSceneAssets %lu", self, v6, label, v9, v10, -[PGGraphSceneEdge numberOfAssets](self, "numberOfAssets"), -[PGGraphSceneEdge numberOfHighConfidenceAssets](self, "numberOfHighConfidenceAssets"), -[PGGraphSceneEdge numberOfSearchConfidenceAssets](self, "numberOfSearchConfidenceAssets"), -[PGGraphSceneEdge numberOfDominantSceneAssets](self, "numberOfDominantSceneAssets")];

  return v11;
}

- (BOOL)isSearchableForEvent
{
  isReliable = [(PGGraphSceneEdge *)self isReliable];
  if (isReliable)
  {
    numberOfSearchConfidenceAssets = [(PGGraphSceneEdge *)self numberOfSearchConfidenceAssets];
    numberOfAssets = [(PGGraphSceneEdge *)self numberOfAssets];
    v6 = 2;
    if (numberOfAssets < 2)
    {
      v6 = numberOfAssets;
    }

    LOBYTE(isReliable) = numberOfSearchConfidenceAssets >= v6;
  }

  return isReliable;
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGGraphSceneEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v9 edgeDescription];
  v5 = edgeDescription;
  if (*(self + 56))
  {
    v6 = @"Reliable";
  }

  else
  {
    v6 = @"Unreliable";
  }

  v7 = [v3 stringWithFormat:@"%@ (confidence = %f, %@)", edgeDescription, *&self->_confidence, v6];

  return v7;
}

- (id)propertyDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v13[0] = v3;
  v12[1] = @"isReliable";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 56) & 1];
  v13[1] = v4;
  v12[2] = @"numberOfAssets";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 10)];
  v13[2] = v5;
  v12[3] = @"numberOfHighConfidenceAssets";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 11)];
  v13[3] = v6;
  v12[4] = @"numberOfSearchConfidenceAssets";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 12)];
  v13[4] = v7;
  v12[5] = @"numberOfDominantSceneAssets";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 13)];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_confidence)
      {
        goto LABEL_17;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"isReliable"];
    v7 = v9;
    if (v9)
    {
      if ([v9 BOOLValue] != (*(self + 56) & 1))
      {
        goto LABEL_17;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"numberOfAssets"];
    v7 = v10;
    if (v10)
    {
      if ([v10 unsignedIntegerValue] != *(self + 10))
      {
        goto LABEL_17;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"numberOfHighConfidenceAssets"];
    v7 = v11;
    if (v11)
    {
      if ([v11 unsignedIntegerValue] != *(self + 11))
      {
        goto LABEL_17;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"numberOfSearchConfidenceAssets"];
    v7 = v12;
    if (v12)
    {
      if ([v12 unsignedIntegerValue] != *(self + 12))
      {
        goto LABEL_17;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"numberOfDominantSceneAssets"];
    v7 = v13;
    if (v13 && [v13 unsignedIntegerValue] != *(self + 13))
    {
LABEL_17:
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (PGGraphSceneEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v13 = [propertiesCopy objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [propertiesCopy objectForKeyedSubscript:@"isReliable"];
  bOOLValue = [v16 BOOLValue];

  v18 = [propertiesCopy objectForKeyedSubscript:@"numberOfAssets"];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  v20 = [propertiesCopy objectForKeyedSubscript:@"numberOfHighConfidenceAssets"];
  unsignedIntegerValue2 = [v20 unsignedIntegerValue];

  v22 = [propertiesCopy objectForKeyedSubscript:@"numberOfSearchConfidenceAssets"];
  unsignedIntegerValue3 = [v22 unsignedIntegerValue];

  v24 = [propertiesCopy objectForKeyedSubscript:@"numberOfDominantSceneAssets"];

  unsignedIntegerValue4 = [v24 unsignedIntegerValue];
  v26 = [(PGGraphSceneEdge *)self initFromMomentNode:nodeCopy toSceneNode:targetNodeCopy confidence:bOOLValue isReliable:unsignedIntegerValue numberOfAssets:unsignedIntegerValue2 numberOfHighConfidenceAssets:unsignedIntegerValue3 numberOfSearchConfidenceAssets:v15 numberOfDominantSceneAssets:unsignedIntegerValue4];

  return v26;
}

- (id)initFromMomentNode:(id)node toSceneNode:(id)sceneNode confidence:(double)confidence isReliable:(BOOL)reliable numberOfAssets:(unint64_t)assets numberOfHighConfidenceAssets:(unint64_t)confidenceAssets numberOfSearchConfidenceAssets:(unint64_t)searchConfidenceAssets numberOfDominantSceneAssets:(unint64_t)self0
{
  searchConfidenceAssetsCopy = searchConfidenceAssets;
  confidenceAssetsCopy = confidenceAssets;
  assetsCopy = assets;
  v16.receiver = self;
  v16.super_class = PGGraphSceneEdge;
  result = [(PGGraphEdge *)&v16 initWithSourceNode:node targetNode:sceneNode];
  if (result)
  {
    *(result + 8) = confidence;
    *(result + 56) = *(result + 56) & 0xFE | reliable;
    *(result + 10) = assetsCopy;
    *(result + 11) = confidenceAssetsCopy;
    *(result + 12) = searchConfidenceAssetsCopy;
    *(result + 13) = sceneAssets;
  }

  return result;
}

+ (void)setConfidence:(double)confidence onEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  v7 = MEMORY[0x277CCABB0];
  graphCopy = graph;
  v9 = [v7 numberWithDouble:confidence];
  [graphCopy persistModelProperty:v9 forKey:@"confidence" forEdgeWithIdentifier:identifier];
}

+ (id)filterWithMinimumConfidence:(double)confidence
{
  v13[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v12 = @"confidence";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
  v7 = [v5 initWithComparator:6 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [filter filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filterWithMinimumNumberOfHighConfidenceAssets:(unint64_t)assets
{
  v13[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v12 = @"numberOfHighConfidenceAssets";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:assets];
  v7 = [v5 initWithComparator:6 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [filter filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (MAEdgeFilter)dominantSceneAssetsFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v8 = @"numberOfDominantSceneAssets";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:5 value:&unk_284482A30];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [filter filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MAEdgeFilter)searchConfidenceAssetsFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v8 = @"numberOfSearchConfidenceAssets";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:5 value:&unk_284482A30];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [filter filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MAEdgeFilter)highConfidenceAssetsFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v8 = @"numberOfHighConfidenceAssets";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:5 value:&unk_284482A30];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [filter filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MAEdgeFilter)isReliableFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v7 = @"isReliable";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [filter filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SCENE" domain:{objc_msgSend(self, "domain")}];

  return v2;
}

@end