@interface PGGraphBasePresentEdge
+ (MAEdgeFilter)consolidatedFilter;
+ (MAEdgeFilter)consolidatedPresentInAssetsFilter;
+ (id)filter;
+ (void)setImportance:(double)a3 onPresentEdgeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
+ (void)setNumberOfAssets:(unint64_t)a3 onPresentEdgeForIdentifier:(unint64_t)a4 inGraph:(id)a5;
- (BOOL)hasProperties:(id)a3;
- (PGGraphBasePresentEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
- (id)edgeDescription;
- (id)initFromPersonNode:(id)a3 toMomentNode:(id)a4 importance:(double)a5 numberOfAssets:(unint64_t)a6;
- (id)label;
- (id)propertyDictionary;
@end

@implementation PGGraphBasePresentEdge

- (id)label
{
  v2 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphBasePresentEdge;
  v4 = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (importance = %f, %u assets)", v4, *&self->_importance, *(self + 10)];

  return v5;
}

- (id)propertyDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"importance";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_importance];
  v8[1] = @"numberOfAssets";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 10)];
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
    v6 = [v5 objectForKeyedSubscript:@"importance"];
    v7 = v6;
    v10 = 0;
    if (!v6 || ([v6 doubleValue], v8 == self->_importance))
    {

      v9 = [v5 objectForKeyedSubscript:@"numberOfAssets"];
      v7 = v9;
      if (!v9 || [v9 unsignedIntegerValue] == *(self + 10))
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

- (PGGraphBasePresentEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v16);
}

- (id)initFromPersonNode:(id)a3 toMomentNode:(id)a4 importance:(double)a5 numberOfAssets:(unint64_t)a6
{
  v6 = a6;
  v9.receiver = self;
  v9.super_class = PGGraphBasePresentEdge;
  result = [(PGGraphEdge *)&v9 initWithSourceNode:a3 targetNode:a4];
  if (result)
  {
    *(result + 6) = a5;
    *(result + 10) = v6;
  }

  return result;
}

+ (void)setNumberOfAssets:(unint64_t)a3 onPresentEdgeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = [v7 numberWithUnsignedInteger:a3];
  [v8 persistModelProperty:v9 forKey:@"numberOfAssets" forEdgeWithIdentifier:a4];
}

+ (void)setImportance:(double)a3 onPresentEdgeForIdentifier:(unint64_t)a4 inGraph:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = [v7 numberWithDouble:a3];
  [v8 persistModelProperty:v9 forKey:@"importance" forEdgeWithIdentifier:a4];
}

+ (MAEdgeFilter)consolidatedPresentInAssetsFilter
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D22C20]);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"PRESENT", @"CPRESENT", 0}];
  v9 = @"numberOfAssets";
  v4 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:5 value:&unk_2844845F0];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v2 initWithLabels:v3 domain:300 properties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MAEdgeFilter)consolidatedFilter
{
  v2 = objc_alloc(MEMORY[0x277D22C20]);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"PRESENT", @"CPRESENT", 0}];
  v4 = [v2 initWithLabels:v3 domain:300 properties:MEMORY[0x277CBEC10]];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:0 domain:300];

  return v2;
}

@end