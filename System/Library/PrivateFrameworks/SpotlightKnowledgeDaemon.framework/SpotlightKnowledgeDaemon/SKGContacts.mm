@interface SKGContacts
+ (id)contactWithContactIdentifier:(id)identifier inGraph:(id)graph;
+ (id)labels;
- (SKGContacts)initWithContactNode:(id)node inGraph:(id)graph;
- (void)enumerateContactsInGraph:(id)graph usingBlock:(id)block;
@end

@implementation SKGContacts

+ (id)labels
{
  v8[1] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v6 = MEMORY[0x277CBEB98];
    v8[0] = SKGPeopleContactIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    +[SKGContacts labels]::sContactLabels = [v6 setWithArray:v7];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[419];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)contactWithContactIdentifier:(id)identifier inGraph:(id)graph
{
  identifierCopy = identifier;
  graphCopy = graph;
  v7 = [[SKGContactNode alloc] initWithIdentifier:identifierCopy];
  v8 = [[SKGContacts alloc] initWithContactNode:v7 inGraph:graphCopy];

  return v8;
}

- (SKGContacts)initWithContactNode:(id)node inGraph:(id)graph
{
  nodeCopy = node;
  graphCopy = graph;
  graph = [graphCopy graph];
  graph2 = [graphCopy graph];
  filter = [nodeCopy filter];
  v11 = [graph2 nodeIdentifiersMatchingFilter:filter];
  v14.receiver = self;
  v14.super_class = SKGContacts;
  v12 = [(MAElementCollection *)&v14 initWithGraph:graph elementIdentifiers:v11];

  return v12;
}

- (void)enumerateContactsInGraph:(id)graph usingBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SKGContacts_enumerateContactsInGraph_usingBlock___block_invoke;
  v11[3] = &unk_27893DB98;
  v9 = graphCopy;
  v12 = v9;
  v10 = blockCopy;
  v13 = v10;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v11];

  objc_autoreleasePoolPop(v8);
}

void __51__SKGContacts_enumerateContactsInGraph_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [[SKGContacts alloc] initWithContactNode:v4 inGraph:*(a1 + 32)];
  -[SKGNodes setNodeIdentifier:](v3, "setNodeIdentifier:", [v4 identifier]);
  (*(*(a1 + 40) + 16))();
}

@end