@interface PGGraphSceneEdge
+ (MAEdgeFilter)dominantSceneAssetsFilter;
+ (MAEdgeFilter)highConfidenceAssetsFilter;
+ (MAEdgeFilter)isReliableFilter;
+ (MAEdgeFilter)searchConfidenceAssetsFilter;
+ (id)filter;
+ (id)filterWithMinimumConfidence:(double)a3;
+ (id)filterWithMinimumNumberOfHighConfidenceAssets:(unint64_t)a3;
+ (void)setConfidence:(double)a3 onEdgeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
- (BOOL)hasProperties:(id)a3;
- (BOOL)isSearchableForEvent;
- (PGGraphSceneEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)debugDescription;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)a3 toSceneNode:(id)a4 confidence:(double)a5 isReliable:(BOOL)a6 numberOfAssets:(unint64_t)a7 numberOfHighConfidenceAssets:(unint64_t)a8 numberOfSearchConfidenceAssets:(unint64_t)a9 numberOfDominantSceneAssets:(unint64_t)a10;
- (id)propertyDictionary;
- (unsigned)domain;
@end

@implementation PGGraphSceneEdge

- (unsigned)domain
{
  v2 = objc_opt_class();

  return [v2 domain];
}

- (id)debugDescription
{
  v3 = [(MAEdge *)self targetNode];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 label];
  [(PGGraphSceneEdge *)self confidence];
  v9 = v8;
  if ([(PGGraphSceneEdge *)self isReliable])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v4 stringWithFormat:@"<%p:%@> %@ %.2f isReliable: %@, numberOfAssets %lu, numberOfHighConfidenceAssets %lu, numberOfSearchConfidenceAssets %lu, numberOfDominantSceneAssets %lu", self, v6, v7, v9, v10, -[PGGraphSceneEdge numberOfAssets](self, "numberOfAssets"), -[PGGraphSceneEdge numberOfHighConfidenceAssets](self, "numberOfHighConfidenceAssets"), -[PGGraphSceneEdge numberOfSearchConfidenceAssets](self, "numberOfSearchConfidenceAssets"), -[PGGraphSceneEdge numberOfDominantSceneAssets](self, "numberOfDominantSceneAssets")];

  return v11;
}

- (BOOL)isSearchableForEvent
{
  v3 = [(PGGraphSceneEdge *)self isReliable];
  if (v3)
  {
    v4 = [(PGGraphSceneEdge *)self numberOfSearchConfidenceAssets];
    v5 = [(PGGraphSceneEdge *)self numberOfAssets];
    v6 = 2;
    if (v5 < 2)
    {
      v6 = v5;
    }

    LOBYTE(v3) = v4 >= v6;
  }

  return v3;
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGGraphSceneEdge;
  v4 = [(PGGraphOptimizedEdge *)&v9 edgeDescription];
  v5 = v4;
  if (*(self + 56))
  {
    v6 = @"Reliable";
  }

  else
  {
    v6 = @"Unreliable";
  }

  v7 = [v3 stringWithFormat:@"%@ (confidence = %f, %@)", v4, *&self->_confidence, v6];

  return v7;
}

- (id)propertyDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v13[0] = v3;
  v12[1] = @"isReliable";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 56) & 1];
  v13[1] = v4;
  v12[2] = @"numberOfAssets";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 10)];
  v13[2] = v5;
  v12[3] = @"numberOfHighConfidenceAssets";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 11)];
  v13[3] = v6;
  v12[4] = @"numberOfSearchConfidenceAssets";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 12)];
  v13[4] = v7;
  v12[5] = @"numberOfDominantSceneAssets";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 13)];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
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
        goto LABEL_17;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"isReliable"];
    v7 = v9;
    if (v9)
    {
      if ([v9 BOOLValue] != (*(self + 56) & 1))
      {
        goto LABEL_17;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"numberOfAssets"];
    v7 = v10;
    if (v10)
    {
      if ([v10 unsignedIntegerValue] != *(self + 10))
      {
        goto LABEL_17;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"numberOfHighConfidenceAssets"];
    v7 = v11;
    if (v11)
    {
      if ([v11 unsignedIntegerValue] != *(self + 11))
      {
        goto LABEL_17;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"numberOfSearchConfidenceAssets"];
    v7 = v12;
    if (v12)
    {
      if ([v12 unsignedIntegerValue] != *(self + 12))
      {
        goto LABEL_17;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"numberOfDominantSceneAssets"];
    v7 = v13;
    if (v13 && [v13 unsignedIntegerValue] != *(self + 13))
    {
LABEL_17:
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (PGGraphSceneEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = [v10 objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v10 objectForKeyedSubscript:@"isReliable"];
  v17 = [v16 BOOLValue];

  v18 = [v10 objectForKeyedSubscript:@"numberOfAssets"];
  v19 = [v18 unsignedIntegerValue];

  v20 = [v10 objectForKeyedSubscript:@"numberOfHighConfidenceAssets"];
  v21 = [v20 unsignedIntegerValue];

  v22 = [v10 objectForKeyedSubscript:@"numberOfSearchConfidenceAssets"];
  v23 = [v22 unsignedIntegerValue];

  v24 = [v10 objectForKeyedSubscript:@"numberOfDominantSceneAssets"];

  v25 = [v24 unsignedIntegerValue];
  v26 = [(PGGraphSceneEdge *)self initFromMomentNode:v12 toSceneNode:v11 confidence:v17 isReliable:v19 numberOfAssets:v21 numberOfHighConfidenceAssets:v23 numberOfSearchConfidenceAssets:v15 numberOfDominantSceneAssets:v25];

  return v26;
}

- (id)initFromMomentNode:(id)a3 toSceneNode:(id)a4 confidence:(double)a5 isReliable:(BOOL)a6 numberOfAssets:(unint64_t)a7 numberOfHighConfidenceAssets:(unint64_t)a8 numberOfSearchConfidenceAssets:(unint64_t)a9 numberOfDominantSceneAssets:(unint64_t)a10
{
  v10 = a9;
  v11 = a8;
  v12 = a7;
  v16.receiver = self;
  v16.super_class = PGGraphSceneEdge;
  result = [(PGGraphEdge *)&v16 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 8) = a5;
    *(result + 56) = *(result + 56) & 0xFE | a6;
    *(result + 10) = v12;
    *(result + 11) = v11;
    *(result + 12) = v10;
    *(result + 13) = a10;
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

+ (id)filterWithMinimumConfidence:(double)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 filter];
  v12 = @"confidence";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7 = [v5 initWithComparator:6 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filterWithMinimumNumberOfHighConfidenceAssets:(unint64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 filter];
  v12 = @"numberOfHighConfidenceAssets";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 initWithComparator:6 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (MAEdgeFilter)dominantSceneAssetsFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v8 = @"numberOfDominantSceneAssets";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:5 value:&unk_284482A30];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MAEdgeFilter)searchConfidenceAssetsFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v8 = @"numberOfSearchConfidenceAssets";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:5 value:&unk_284482A30];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MAEdgeFilter)highConfidenceAssetsFilter
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v8 = @"numberOfHighConfidenceAssets";
  v3 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:5 value:&unk_284482A30];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 filterBySettingProperties:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (MAEdgeFilter)isReliableFilter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 filter];
  v7 = @"isReliable";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 filterBySettingProperties:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"SCENE" domain:{objc_msgSend(a1, "domain")}];

  return v2;
}

@end