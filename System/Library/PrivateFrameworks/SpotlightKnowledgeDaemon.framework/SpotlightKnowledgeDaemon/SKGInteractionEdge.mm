@interface SKGInteractionEdge
+ (id)filter;
+ (id)filterWithDomainIdentifier:(id)identifier;
- (SKGInteractionEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (SKGInteractionEdge)initWithSourceNode:(id)node targetNode:(id)targetNode domainIdentifier:(id)identifier relationship:(id)relationship score:(id)score;
- (id)propertyDictionary;
@end

@implementation SKGInteractionEdge

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"relationship" domain:100];

  return v2;
}

+ (id)filterWithDomainIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = objc_alloc(MEMORY[0x277D22C20]);
  v9 = @"domainIdentifier";
  v10[0] = identifierCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 initWithLabel:@"relationship" domain:100 properties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (SKGInteractionEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v14 = [propertiesCopy objectForKeyedSubscript:@"domainIdentifier"];
  if (v14)
  {
    v15 = [propertiesCopy objectForKeyedSubscript:@"relationship"];
    if (v15)
    {
      v16 = [propertiesCopy objectForKeyedSubscript:@"score"];
      if (v16)
      {
        self = [(SKGInteractionEdge *)self initWithSourceNode:nodeCopy targetNode:targetNodeCopy domainIdentifier:v14 relationship:v15 score:v16];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SKGInteractionEdge)initWithSourceNode:(id)node targetNode:(id)targetNode domainIdentifier:(id)identifier relationship:(id)relationship score:(id)score
{
  identifierCopy = identifier;
  relationshipCopy = relationship;
  scoreCopy = score;
  v19.receiver = self;
  v19.super_class = SKGInteractionEdge;
  v16 = [(SKGEdge *)&v19 initWithSourceNode:node targetNode:targetNode];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_domainIdentifier, identifier);
    objc_storeStrong(&v17->_relationship, relationship);
    objc_storeStrong(&v17->_score, score);
  }

  return v17;
}

- (id)propertyDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"relationship";
  relationship = [(SKGInteractionEdge *)self relationship];
  v10[0] = relationship;
  v9[1] = @"domainIdentifier";
  domainIdentifier = [(SKGInteractionEdge *)self domainIdentifier];
  v10[1] = domainIdentifier;
  v9[2] = @"score";
  score = [(SKGInteractionEdge *)self score];
  v10[2] = score;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end