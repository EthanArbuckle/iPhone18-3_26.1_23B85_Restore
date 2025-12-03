@interface SKGPersons
+ (id)labels;
+ (id)personWithPersonIdentifier:(id)identifier inGraph:(id)graph;
- (SKGPersons)initWithPersonNode:(id)node inGraph:(id)graph;
- (void)enumeratePersonsInGraph:(id)graph usingBlock:(id)block;
@end

@implementation SKGPersons

+ (id)labels
{
  v8[1] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v6 = MEMORY[0x277CBEB98];
    v8[0] = SKGPeoplePersonIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    +[SKGPersons labels]::sPersonLabels = [v6 setWithArray:v7];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[417];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)personWithPersonIdentifier:(id)identifier inGraph:(id)graph
{
  identifierCopy = identifier;
  graphCopy = graph;
  v7 = [[SKGPersonNode alloc] initWithIdentifier:identifierCopy];
  v8 = [[SKGPersons alloc] initWithPersonNode:v7 inGraph:graphCopy];

  return v8;
}

- (SKGPersons)initWithPersonNode:(id)node inGraph:(id)graph
{
  nodeCopy = node;
  graphCopy = graph;
  graph = [graphCopy graph];
  graph2 = [graphCopy graph];
  filter = [nodeCopy filter];
  v11 = [graph2 nodeIdentifiersMatchingFilter:filter];
  v14.receiver = self;
  v14.super_class = SKGPersons;
  v12 = [(MAElementCollection *)&v14 initWithGraph:graph elementIdentifiers:v11];

  return v12;
}

- (void)enumeratePersonsInGraph:(id)graph usingBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SKGPersons_enumeratePersonsInGraph_usingBlock___block_invoke;
  v11[3] = &unk_27893DB98;
  v9 = graphCopy;
  v12 = v9;
  v10 = blockCopy;
  v13 = v10;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v11];

  objc_autoreleasePoolPop(v8);
}

void __49__SKGPersons_enumeratePersonsInGraph_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [[SKGPersons alloc] initWithPersonNode:v4 inGraph:*(a1 + 32)];
  -[SKGNodes setNodeIdentifier:](v3, "setNodeIdentifier:", [v4 identifier]);
  (*(*(a1 + 40) + 16))();
}

@end