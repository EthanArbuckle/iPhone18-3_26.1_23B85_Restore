@interface PGGraphMeaningEdge
+ (MAEdgeFilter)highPrecisionFilter;
+ (id)filter;
- (BOOL)hasProperties:(id)a3;
- (NSString)meaningLabel;
- (PGGraphMeaningEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)a3 toMeaningNode:(id)a4 confidence:(double)a5 isHighPrecision:(BOOL)a6;
- (id)label;
- (id)propertyDictionary;
- (unsigned)domain;
@end

@implementation PGGraphMeaningEdge

- (id)propertyDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v8[1] = @"isHighPrecision";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 40) & 1];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    v10 = 0;
    if (!v6 || ([v6 doubleValue], v8 == self->_confidence))
    {

      v9 = [v5 objectForKeyedSubscript:@"isHighPrecision"];
      v7 = v9;
      if (!v9 || [v9 BOOLValue] == (*(self + 40) & 1))
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (NSString)meaningLabel
{
  v2 = [(MAEdge *)self targetNode];
  v3 = [v2 label];

  return v3;
}

- (unsigned)domain
{
  v2 = objc_opt_class();

  return [v2 domain];
}

- (id)label
{
  v2 = objc_opt_class();

  return [v2 label];
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGGraphMeaningEdge;
  v4 = [(PGGraphOptimizedEdge *)&v11 edgeDescription];
  v5 = [(PGGraphMeaningEdge *)self meaningLabel];
  if ([(PGGraphMeaningEdge *)self isReliable])
  {
    v6 = @"Reliable";
  }

  else
  {
    v6 = @"Unreliable";
  }

  if ([(PGGraphMeaningEdge *)self isHighPrecision])
  {
    v7 = @"High Precision";
  }

  else
  {
    v7 = @"Not High Precision";
  }

  [(PGGraphMeaningEdge *)self confidence];
  v9 = [v3 stringWithFormat:@"%@ (%@, %@, %@, %f)", v4, v5, v6, v7, v8];

  return v9;
}

- (PGGraphMeaningEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = [v10 objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v10 objectForKeyedSubscript:@"isHighPrecision"];

  v17 = [v16 BOOLValue];
  v18 = [(PGGraphMeaningEdge *)self initFromMomentNode:v12 toMeaningNode:v11 confidence:v17 isHighPrecision:v15];

  return v18;
}

- (id)initFromMomentNode:(id)a3 toMeaningNode:(id)a4 confidence:(double)a5 isHighPrecision:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = PGGraphMeaningEdge;
  result = [(PGGraphEdge *)&v9 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 6) = a5;
    *(result + 40) = *(result + 40) & 0xFE | a6;
  }

  return result;
}

+ (MAEdgeFilter)highPrecisionFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v7 = @"isHighPrecision";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_opt_class() label];
  v3 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:v2 domain:{objc_msgSend(objc_opt_class(), "domain")}];

  return v3;
}

@end