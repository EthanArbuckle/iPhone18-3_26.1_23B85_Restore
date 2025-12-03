@interface PGGraphRelationshipTagEdge
+ (id)filter;
+ (id)filterWithConfidence:(double)confidence;
- (BOOL)hasProperties:(id)properties;
- (PGGraphRelationshipTagEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromPersonNode:(id)node toRelationshipTagNode:(id)tagNode withConfidence:(double)confidence;
- (id)propertyDictionary;
@end

@implementation PGGraphRelationshipTagEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphRelationshipTagEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", edgeDescription, *&self->_confidence];

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

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
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

- (PGGraphRelationshipTagEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  nodeCopy = node;
  targetNodeCopy = targetNode;
  v12 = [properties objectForKeyedSubscript:@"confidence"];
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
  }

  else
  {
    v14 = 0.1;
  }

  v15 = [(PGGraphRelationshipTagEdge *)self initFromPersonNode:nodeCopy toRelationshipTagNode:targetNodeCopy withConfidence:v14];

  return v15;
}

- (id)initFromPersonNode:(id)node toRelationshipTagNode:(id)tagNode withConfidence:(double)confidence
{
  v7.receiver = self;
  v7.super_class = PGGraphRelationshipTagEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:tagNode];
  if (result)
  {
    *(result + 5) = confidence;
  }

  return result;
}

+ (id)filterWithConfidence:(double)confidence
{
  v13[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v12 = @"confidence";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
  v7 = [v5 initWithComparator:6 value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [filter filterBySettingProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"RELATIONSHIP_TAG" domain:305];

  return v2;
}

@end