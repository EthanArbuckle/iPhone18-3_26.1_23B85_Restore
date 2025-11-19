@interface PGGraphROIEdge
+ (id)filter;
+ (id)filterAboveConfidence:(double)a3;
+ (id)filterAboveConfidence:(double)a3 hasLegacyWeights:(BOOL)a4;
- (BOOL)hasProperties:(id)a3;
- (PGGraphROIEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)a3 toROINode:(id)a4 confidence:(double)a5;
- (id)propertyDictionary;
@end

@implementation PGGraphROIEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphROIEdge;
  v4 = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", v4, *&self->_confidence];

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

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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

- (PGGraphROIEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a5;
  v11 = a4;
  v12 = [a7 objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphROIEdge *)self initFromMomentNode:v11 toROINode:v10 confidence:v14];
  return v15;
}

- (id)initFromMomentNode:(id)a3 toROINode:(id)a4 confidence:(double)a5
{
  v7.receiver = self;
  v7.super_class = PGGraphROIEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 5) = a5;
  }

  return result;
}

+ (id)filterAboveConfidence:(double)a3 hasLegacyWeights:(BOOL)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = [a1 filter];
    v13 = @"__weight";
    v6 = objc_alloc(MEMORY[0x277D22B98]);
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v8 = [v6 initWithComparator:5 value:v7];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v5 filterBySettingProperties:v9];
  }

  else
  {
    v10 = [a1 filterAboveConfidence:a3];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)filterAboveConfidence:(double)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 filter];
  v12 = @"confidence";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7 = [v5 initWithComparator:5 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"ROI" domain:502];

  return v2;
}

@end