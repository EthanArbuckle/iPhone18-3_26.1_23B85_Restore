@interface PGGraphMobilityEdge
+ (id)filter;
- (BOOL)hasProperties:(id)properties;
- (MAEdgeFilter)uniquelyIdentifyingFilter;
- (PGGraphMobilityEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toMobilityNode:(id)mobilityNode confidence:(double)confidence;
- (id)propertyDictionary;
@end

@implementation PGGraphMobilityEdge

- (MAEdgeFilter)uniquelyIdentifyingFilter
{
  v2 = objc_opt_class();

  return [v2 filter];
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphMobilityEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (weight = %.2f)", edgeDescription, *&self->_confidence];

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

- (PGGraphMobilityEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [properties objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphMobilityEdge *)self initFromMomentNode:nodeCopy toMobilityNode:targetNodeCopy confidence:v14];
  return v15;
}

- (id)initFromMomentNode:(id)node toMobilityNode:(id)mobilityNode confidence:(double)confidence
{
  v7.receiver = self;
  v7.super_class = PGGraphMobilityEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:mobilityNode];
  if (result)
  {
    *(result + 5) = confidence;
  }

  return result;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"MOBILITY" domain:203];

  return v2;
}

@end