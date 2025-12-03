@interface PGGraphPartOfDayEdge
+ (MAEdgeFilter)significantFilter;
+ (id)filter;
+ (id)significantFilterWithLegacyWeights:(BOOL)weights;
- (BOOL)hasProperties:(id)properties;
- (PGGraphPartOfDayEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toPartOfDayNode:(id)dayNode ratio:(double)ratio;
- (id)propertyDictionary;
@end

@implementation PGGraphPartOfDayEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphPartOfDayEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", edgeDescription, *&self->_ratio];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"ratio";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratio];
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
    v6 = [v5 objectForKeyedSubscript:@"ratio"];
    v7 = v6;
    v9 = 1;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_ratio)
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

- (PGGraphPartOfDayEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [properties objectForKeyedSubscript:@"ratio"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphPartOfDayEdge *)self initFromMomentNode:nodeCopy toPartOfDayNode:targetNodeCopy ratio:v14];
  return v15;
}

- (id)initFromMomentNode:(id)node toPartOfDayNode:(id)dayNode ratio:(double)ratio
{
  v7.receiver = self;
  v7.super_class = PGGraphPartOfDayEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:dayNode];
  if (result)
  {
    *(result + 5) = ratio;
  }

  return result;
}

+ (id)significantFilterWithLegacyWeights:(BOOL)weights
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (weights)
  {
    v3 = objc_alloc(MEMORY[0x277D22C20]);
    v9 = @"__weight";
    v4 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:6 value:&unk_284487098];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    significantFilter = [v3 initWithLabel:@"PARTOFDAY" domain:400 properties:v5];
  }

  else
  {
    significantFilter = [self significantFilter];
  }

  v7 = *MEMORY[0x277D85DE8];

  return significantFilter;
}

+ (MAEdgeFilter)significantFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D22C20]);
  v8 = @"ratio";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:6 value:&unk_284487098];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 initWithLabel:@"PARTOFDAY" domain:400 properties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PARTOFDAY" domain:400];

  return v2;
}

@end