@interface PGGraphAreaEdge
+ (id)filter;
- (BOOL)hasProperties:(id)properties;
- (MAEdgeFilter)uniquelyIdentifyingFilter;
- (PGGraphAreaEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromAddressNode:(id)node toAreaNode:(id)areaNode relevance:(double)relevance;
- (id)propertyDictionary;
@end

@implementation PGGraphAreaEdge

- (MAEdgeFilter)uniquelyIdentifyingFilter
{
  v2 = objc_opt_class();

  return [v2 filter];
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphAreaEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", edgeDescription, *&self->_relevance];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"relevance";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_relevance];
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
    v6 = [v5 objectForKeyedSubscript:@"relevance"];
    v7 = v6;
    v9 = 1;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_relevance)
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

- (PGGraphAreaEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [properties objectForKeyedSubscript:@"relevance"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphAreaEdge *)self initFromAddressNode:nodeCopy toAreaNode:targetNodeCopy relevance:v14];
  return v15;
}

- (id)initFromAddressNode:(id)node toAreaNode:(id)areaNode relevance:(double)relevance
{
  v7.receiver = self;
  v7.super_class = PGGraphAreaEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:areaNode];
  if (result)
  {
    *(result + 5) = relevance;
  }

  return result;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"AREA" domain:201];

  return v2;
}

@end