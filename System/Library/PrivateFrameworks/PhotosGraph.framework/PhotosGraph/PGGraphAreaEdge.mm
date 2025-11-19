@interface PGGraphAreaEdge
+ (id)filter;
- (BOOL)hasProperties:(id)a3;
- (MAEdgeFilter)uniquelyIdentifyingFilter;
- (PGGraphAreaEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)edgeDescription;
- (id)initFromAddressNode:(id)a3 toAreaNode:(id)a4 relevance:(double)a5;
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
  v4 = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", v4, *&self->_relevance];

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

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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

- (PGGraphAreaEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a5;
  v11 = a4;
  v12 = [a7 objectForKeyedSubscript:@"relevance"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphAreaEdge *)self initFromAddressNode:v11 toAreaNode:v10 relevance:v14];
  return v15;
}

- (id)initFromAddressNode:(id)a3 toAreaNode:(id)a4 relevance:(double)a5
{
  v7.receiver = self;
  v7.super_class = PGGraphAreaEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 5) = a5;
  }

  return result;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"AREA" domain:201];

  return v2;
}

@end