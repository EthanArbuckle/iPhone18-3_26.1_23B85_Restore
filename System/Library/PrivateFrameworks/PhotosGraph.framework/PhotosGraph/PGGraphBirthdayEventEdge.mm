@interface PGGraphBirthdayEventEdge
+ (id)filter;
+ (id)propertyDictionaryWithConfidence:(double)confidence;
- (BOOL)hasProperties:(id)properties;
- (PGGraphBirthdayEventEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence;
- (id)propertyDictionary;
@end

@implementation PGGraphBirthdayEventEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphBirthdayEventEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", edgeDescription, *&self->_confidence];

  return v5;
}

- (id)propertyDictionary
{
  v3 = objc_opt_class();
  confidence = self->_confidence;

  return [v3 propertyDictionaryWithConfidence:confidence];
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

- (PGGraphBirthdayEventEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [properties objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphBirthdayEventEdge *)self initFromMomentNode:nodeCopy toPersonNode:targetNodeCopy confidence:v14];
  return v15;
}

- (id)initFromMomentNode:(id)node toPersonNode:(id)personNode confidence:(double)confidence
{
  v7.receiver = self;
  v7.super_class = PGGraphBirthdayEventEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:personNode];
  if (result)
  {
    *(result + 5) = confidence;
  }

  return result;
}

+ (id)propertyDictionaryWithConfidence:(double)confidence
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"BIRTHDAY" domain:301];

  return v2;
}

@end