@interface PGGraphPOIEdge
+ (MAEdgeFilter)filterImproved;
+ (MAEdgeFilter)filterSpecial;
+ (id)filter;
+ (id)filterAboveConfidence:(double)confidence;
+ (id)filterAboveConfidence:(double)confidence hasLegacyWeights:(BOOL)weights;
+ (void)setConfidence:(double)confidence onEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)hasProperties:(id)properties;
- (PGGraphPOIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toPOINode:(id)iNode confidence:(double)confidence poiIsImproved:(BOOL)improved poiIsSpecial:(BOOL)special;
- (id)propertyDictionary;
@end

@implementation PGGraphPOIEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGGraphPOIEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v11 edgeDescription];
  v5 = edgeDescription;
  if ((*(self + 40) & 2) != 0)
  {
    v6 = @", ";
  }

  else
  {
    v6 = &stru_2843F5C58;
  }

  v7 = @"Special";
  if ((*(self + 40) & 2) == 0)
  {
    v7 = &stru_2843F5C58;
  }

  if (*(self + 40))
  {
    v8 = @"Improved";
  }

  else
  {
    v8 = &stru_2843F5C58;
  }

  if ((*(self + 40) & 1) == 0)
  {
    v6 = &stru_2843F5C58;
  }

  v9 = [v3 stringWithFormat:@"%@ (%.2f, %@%@%@)", edgeDescription, *&self->_confidence, v8, v6, v7];

  return v9;
}

- (id)propertyDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v10[0] = v3;
  v9[1] = @"isImproved";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 40) & 1];
  v10[1] = v4;
  v9[2] = @"isSpecial";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:(*(self + 40) >> 1) & 1];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
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
        goto LABEL_11;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"isImproved"];
    v7 = v9;
    if (v9)
    {
      if ([v9 BOOLValue] != (*(self + 40) & 1))
      {
        goto LABEL_11;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"isSpecial"];
    v7 = v10;
    if (v10 && [v10 BOOLValue] == ((*(self + 40) & 2) == 0))
    {
LABEL_11:
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (PGGraphPOIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v13 = [propertiesCopy objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [propertiesCopy objectForKeyedSubscript:@"isImproved"];
  bOOLValue = [v16 BOOLValue];

  v18 = [propertiesCopy objectForKeyedSubscript:@"isSpecial"];

  bOOLValue2 = [v18 BOOLValue];
  v20 = [(PGGraphPOIEdge *)self initFromMomentNode:nodeCopy toPOINode:targetNodeCopy confidence:bOOLValue poiIsImproved:bOOLValue2 poiIsSpecial:v15];

  return v20;
}

- (id)initFromMomentNode:(id)node toPOINode:(id)iNode confidence:(double)confidence poiIsImproved:(BOOL)improved poiIsSpecial:(BOOL)special
{
  specialCopy = special;
  v12.receiver = self;
  v12.super_class = PGGraphPOIEdge;
  result = [(PGGraphEdge *)&v12 initWithSourceNode:node targetNode:iNode];
  if (result)
  {
    *(result + 6) = confidence;
    *(result + 40) = *(result + 40) & 0xFE | improved;
    if (specialCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *(result + 40) = *(result + 40) & 0xFD | v11;
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

+ (id)filterAboveConfidence:(double)confidence hasLegacyWeights:(BOOL)weights
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (weights)
  {
    filter = [self filter];
    v13 = @"__weight";
    v6 = objc_alloc(MEMORY[0x277D22B98]);
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
    v8 = [v6 initWithComparator:5 value:v7];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [filter filterBySettingProperties:v9];
  }

  else
  {
    v10 = [self filterAboveConfidence:confidence];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)filterAboveConfidence:(double)confidence
{
  v13[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v12 = @"confidence";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
  v7 = [v5 initWithComparator:5 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [filter filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (MAEdgeFilter)filterSpecial
{
  v8[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v7 = @"isSpecial";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [filter filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MAEdgeFilter)filterImproved
{
  v8[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v7 = @"isImproved";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [filter filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"POI" domain:501];

  return v2;
}

@end