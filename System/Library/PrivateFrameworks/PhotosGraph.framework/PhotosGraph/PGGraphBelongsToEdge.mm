@interface PGGraphBelongsToEdge
+ (id)filter;
+ (void)setImportance:(double)importance onBelongsToEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)hasProperties:(id)properties;
- (PGGraphBelongsToEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMemberNode:(id)node toSocialGroupNode:(id)groupNode importance:(double)importance;
- (id)propertyDictionary;
@end

@implementation PGGraphBelongsToEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphBelongsToEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", edgeDescription, *&self->_importance];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"importance";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_importance];
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
    v6 = [v5 objectForKeyedSubscript:@"importance"];
    v7 = v6;
    v9 = 1;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_importance)
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

- (PGGraphBelongsToEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [properties objectForKeyedSubscript:@"importance"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphBelongsToEdge *)self initFromMemberNode:nodeCopy toSocialGroupNode:targetNodeCopy importance:v14];
  return v15;
}

- (id)initFromMemberNode:(id)node toSocialGroupNode:(id)groupNode importance:(double)importance
{
  v7.receiver = self;
  v7.super_class = PGGraphBelongsToEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:groupNode];
  if (result)
  {
    *(result + 5) = importance;
  }

  return result;
}

+ (void)setImportance:(double)importance onBelongsToEdgeForIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  v7 = MEMORY[0x277CCABB0];
  graphCopy = graph;
  v9 = [v7 numberWithDouble:importance];
  [graphCopy persistModelProperty:v9 forKey:@"importance" forEdgeWithIdentifier:identifier];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"BELONGSTO" domain:302];

  return v2;
}

@end