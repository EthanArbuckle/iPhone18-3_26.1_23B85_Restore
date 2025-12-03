@interface SKGInteractionEdges
+ (id)edgesFromNodes:(id)nodes toNodes:(id)toNodes;
+ (id)edgesInGraph:(id)graph withRelationship:(id)relationship;
@end

@implementation SKGInteractionEdges

+ (id)edgesInGraph:(id)graph withRelationship:(id)relationship
{
  graphCopy = graph;
  relationshipCopy = relationship;
  v7 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:relationshipCopy domain:100];
  graph = [graphCopy graph];
  v9 = [(MAEdgeCollection *)SKGInteractionEdges edgesMatchingFilter:v7 inGraph:graph];

  return v9;
}

+ (id)edgesFromNodes:(id)nodes toNodes:(id)toNodes
{
  nodesCopy = nodes;
  toNodesCopy = toNodes;
  v7 = +[SKGInteractionEdge filter];
  v8 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:nodesCopy toNodes:toNodesCopy matchingFilter:v7];

  return v8;
}

@end