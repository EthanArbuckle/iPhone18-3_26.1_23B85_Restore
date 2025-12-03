@interface PGGraphBasePresentEdge
+ (MAEdgeFilter)consolidatedFilter;
+ (MAEdgeFilter)consolidatedPresentInAssetsFilter;
+ (id)filter;
+ (void)setImportance:(double)importance onPresentEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
+ (void)setNumberOfAssets:(unint64_t)assets onPresentEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)hasProperties:(id)properties;
- (PGGraphBasePresentEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromPersonNode:(id)node toMomentNode:(id)momentNode importance:(double)importance numberOfAssets:(unint64_t)assets;
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
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (importance = %f, %u assets)", edgeDescription, *&self->_importance, *(self + 10)];

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

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
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

- (PGGraphBasePresentEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v16 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v16);
}

- (id)initFromPersonNode:(id)node toMomentNode:(id)momentNode importance:(double)importance numberOfAssets:(unint64_t)assets
{
  assetsCopy = assets;
  v9.receiver = self;
  v9.super_class = PGGraphBasePresentEdge;
  result = [(PGGraphEdge *)&v9 initWithSourceNode:node targetNode:momentNode];
  if (result)
  {
    *(result + 6) = importance;
    *(result + 10) = assetsCopy;
  }

  return result;
}

+ (void)setNumberOfAssets:(unint64_t)assets onPresentEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  v7 = MEMORY[0x277CCABB0];
  graphCopy = graph;
  v9 = [v7 numberWithUnsignedInteger:assets];
  [graphCopy persistModelProperty:v9 forKey:@"numberOfAssets" forEdgeWithIdentifier:identifier];
}

+ (void)setImportance:(double)importance onPresentEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  v7 = MEMORY[0x277CCABB0];
  graphCopy = graph;
  v9 = [v7 numberWithDouble:importance];
  [graphCopy persistModelProperty:v9 forKey:@"importance" forEdgeWithIdentifier:identifier];
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