@interface PGGraphROIEdge
+ (id)filter;
+ (id)filterAboveConfidence:(double)confidence;
+ (id)filterAboveConfidence:(double)confidence hasLegacyWeights:(BOOL)weights;
- (BOOL)hasProperties:(id)properties;
- (PGGraphROIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toROINode:(id)iNode confidence:(double)confidence;
- (id)propertyDictionary;
@end

@implementation PGGraphROIEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphROIEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", edgeDescription, *&self->_confidence];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"confidence";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    v9 = 1;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_confidence)
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphROIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [properties objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphROIEdge *)self initFromMomentNode:nodeCopy toROINode:targetNodeCopy confidence:v14];
  return v15;
}

- (id)initFromMomentNode:(id)node toROINode:(id)iNode confidence:(double)confidence
{
  v7.receiver = self;
  v7.super_class = PGGraphROIEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:iNode];
  if (result)
  {
    *(result + 5) = confidence;
  }

  return result;
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

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"ROI" domain:502];

  return v2;
}

@end