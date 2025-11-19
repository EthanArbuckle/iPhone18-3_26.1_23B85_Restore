@interface SKGInteractionEdge
+ (id)filter;
+ (id)filterWithDomainIdentifier:(id)a3;
- (SKGInteractionEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 properties:(id)a8;
- (SKGInteractionEdge)initWithSourceNode:(id)a3 targetNode:(id)a4 domainIdentifier:(id)a5 relationship:(id)a6 score:(id)a7;
- (id)propertyDictionary;
@end

@implementation SKGInteractionEdge

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"relationship" domain:100];

  return v2;
}

+ (id)filterWithDomainIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D22C20]);
  v9 = @"domainIdentifier";
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 initWithLabel:@"relationship" domain:100 properties:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (SKGInteractionEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 properties:(id)a8
{
  v11 = a4;
  v12 = a5;
  v13 = a8;
  v14 = [v13 objectForKeyedSubscript:@"domainIdentifier"];
  if (v14)
  {
    v15 = [v13 objectForKeyedSubscript:@"relationship"];
    if (v15)
    {
      v16 = [v13 objectForKeyedSubscript:@"score"];
      if (v16)
      {
        self = [(SKGInteractionEdge *)self initWithSourceNode:v11 targetNode:v12 domainIdentifier:v14 relationship:v15 score:v16];
        v17 = self;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (SKGInteractionEdge)initWithSourceNode:(id)a3 targetNode:(id)a4 domainIdentifier:(id)a5 relationship:(id)a6 score:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = SKGInteractionEdge;
  v16 = [(SKGEdge *)&v19 initWithSourceNode:a3 targetNode:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_domainIdentifier, a5);
    objc_storeStrong(&v17->_relationship, a6);
    objc_storeStrong(&v17->_score, a7);
  }

  return v17;
}

- (id)propertyDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"relationship";
  v3 = [(SKGInteractionEdge *)self relationship];
  v10[0] = v3;
  v9[1] = @"domainIdentifier";
  v4 = [(SKGInteractionEdge *)self domainIdentifier];
  v10[1] = v4;
  v9[2] = @"score";
  v5 = [(SKGInteractionEdge *)self score];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end