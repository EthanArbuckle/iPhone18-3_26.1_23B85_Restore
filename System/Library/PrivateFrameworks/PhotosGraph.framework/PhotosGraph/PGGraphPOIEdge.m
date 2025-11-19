@interface PGGraphPOIEdge
+ (MAEdgeFilter)filterImproved;
+ (MAEdgeFilter)filterSpecial;
+ (id)filter;
+ (id)filterAboveConfidence:(double)a3;
+ (id)filterAboveConfidence:(double)a3 hasLegacyWeights:(BOOL)a4;
+ (void)setConfidence:(double)a3 onEdgeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
- (BOOL)hasProperties:(id)a3;
- (PGGraphPOIEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)a3 toPOINode:(id)a4 confidence:(double)a5 poiIsImproved:(BOOL)a6 poiIsSpecial:(BOOL)a7;
- (id)propertyDictionary;
@end

@implementation PGGraphPOIEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGGraphPOIEdge;
  v4 = [(PGGraphOptimizedEdge *)&v11 edgeDescription];
  v5 = v4;
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

  v9 = [v3 stringWithFormat:@"%@ (%.2f, %@%@%@)", v4, *&self->_confidence, v8, v6, v7];

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

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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

- (PGGraphPOIEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = [v10 objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v10 objectForKeyedSubscript:@"isImproved"];
  v17 = [v16 BOOLValue];

  v18 = [v10 objectForKeyedSubscript:@"isSpecial"];

  v19 = [v18 BOOLValue];
  v20 = [(PGGraphPOIEdge *)self initFromMomentNode:v12 toPOINode:v11 confidence:v17 poiIsImproved:v19 poiIsSpecial:v15];

  return v20;
}

- (id)initFromMomentNode:(id)a3 toPOINode:(id)a4 confidence:(double)a5 poiIsImproved:(BOOL)a6 poiIsSpecial:(BOOL)a7
{
  v7 = a7;
  v12.receiver = self;
  v12.super_class = PGGraphPOIEdge;
  result = [(PGGraphEdge *)&v12 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 6) = a5;
    *(result + 40) = *(result + 40) & 0xFE | a6;
    if (v7)
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

+ (void)setConfidence:(double)a3 onEdgeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = [v7 numberWithDouble:a3];
  [v8 persistModelProperty:v9 forKey:@"confidence" forEdgeWithIdentifier:a4];
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

+ (MAEdgeFilter)filterSpecial
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v7 = @"isSpecial";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (MAEdgeFilter)filterImproved
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v7 = @"isImproved";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"POI" domain:501];

  return v2;
}

@end