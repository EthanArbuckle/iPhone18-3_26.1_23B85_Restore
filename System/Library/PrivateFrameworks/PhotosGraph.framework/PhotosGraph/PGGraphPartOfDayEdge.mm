@interface PGGraphPartOfDayEdge
+ (MAEdgeFilter)significantFilter;
+ (id)filter;
+ (id)significantFilterWithLegacyWeights:(BOOL)a3;
- (BOOL)hasProperties:(id)a3;
- (PGGraphPartOfDayEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)a3 toPartOfDayNode:(id)a4 ratio:(double)a5;
- (id)propertyDictionary;
@end

@implementation PGGraphPartOfDayEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphPartOfDayEdge;
  v4 = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", v4, *&self->_ratio];

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

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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

- (PGGraphPartOfDayEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a5;
  v11 = a4;
  v12 = [a7 objectForKeyedSubscript:@"ratio"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphPartOfDayEdge *)self initFromMomentNode:v11 toPartOfDayNode:v10 ratio:v14];
  return v15;
}

- (id)initFromMomentNode:(id)a3 toPartOfDayNode:(id)a4 ratio:(double)a5
{
  v7.receiver = self;
  v7.super_class = PGGraphPartOfDayEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 5) = a5;
  }

  return result;
}

+ (id)significantFilterWithLegacyWeights:(BOOL)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = objc_alloc(MEMORY[0x277D22C20]);
    v9 = @"__weight";
    v4 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:6 value:&unk_284487098];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 initWithLabel:@"PARTOFDAY" domain:400 properties:v5];
  }

  else
  {
    v6 = [a1 significantFilter];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
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