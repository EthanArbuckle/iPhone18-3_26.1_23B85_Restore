@interface SKGEdges
+ (MAEdgeFilter)filter;
+ (id)edgesInGraph:(id)graph;
+ (id)edgesWithEdge:(id)edge inGraph:(id)graph;
+ (id)labels;
- (void)enumerateEdgesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation SKGEdges

+ (id)labels
{
  v8[13] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v6 = MEMORY[0x277CBEB98];
    v8[0] = SKGPeoplePersonUser;
    v8[1] = SKGPeoplePersonIdentifier;
    v8[2] = SKGPeopleContactIdentifier;
    v8[3] = SKGPeoplePhotoPersonIdentifier;
    v8[4] = SKGPeopleEntityIdentifier;
    v8[5] = SKGPeopleDisplayName;
    v8[6] = SKGPeopleName;
    v8[7] = SKGPeopleNameKey;
    v8[8] = SKGPeopleEmailAddress;
    v8[9] = SKGPeoplePhoneNumber;
    v8[10] = SKGContentReferenceIdentifier;
    v8[11] = SKGContentPersonaIdentifier;
    v8[12] = SKGContentDomainIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:13];
    +[SKGEdges labels]::sEdgeLabels = [v6 setWithArray:v7];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[441];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (MAEdgeFilter)filter
{
  edgeClass = [self edgeClass];

  return [edgeClass filter];
}

+ (id)edgesWithEdge:(id)edge inGraph:(id)graph
{
  edgeCopy = edge;
  graphCopy = graph;
  sourceNode = [edgeCopy sourceNode];
  v8 = [SKGNodes nodesWithNode:sourceNode inGraph:graphCopy];

  targetNode = [edgeCopy targetNode];
  v10 = [SKGNodes nodesWithNode:targetNode inGraph:graphCopy];

  v11 = objc_alloc(MEMORY[0x277D22C20]);
  label = [edgeCopy label];
  domain = [edgeCopy domain];
  propertyDictionary = [edgeCopy propertyDictionary];
  v15 = [v11 initWithLabel:label domain:domain properties:propertyDictionary];

  v16 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:v8 toNodes:v10 matchingFilter:v15];

  return v16;
}

+ (id)edgesInGraph:(id)graph
{
  graphCopy = graph;
  filter = [self filter];
  graph = [graphCopy graph];
  v7 = [self edgesMatchingFilter:filter inGraph:graph];

  return v7;
}

- (void)enumerateEdgesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SKGEdges_enumerateEdgesInGraph_usingBlock___block_invoke;
  v8[3] = &unk_27893DB70;
  v7 = blockCopy;
  v9 = v7;
  [(MAElementCollection *)self enumerateIdentifiersAsCollectionsWithBlock:v8];

  objc_autoreleasePoolPop(v6);
}

void __45__SKGEdges_enumerateEdgesInGraph_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 setEdgeIdentifier:a2];
  (*(*(a1 + 32) + 16))();
}

@end