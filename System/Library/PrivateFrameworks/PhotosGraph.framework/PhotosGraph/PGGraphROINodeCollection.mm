@interface PGGraphROINodeCollection
+ (id)roiNodesForLabels:(id)labels inGraph:(id)graph;
+ (id)roiNodesOfType:(unint64_t)type inGraph:(id)graph;
+ (id)roiNodesOfTypes:(id)types inGraph:(id)graph;
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphROINodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphROINode momentOfROI];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)roiNodesForLabels:(id)labels inGraph:(id)graph
{
  v6 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v8 = [v6 setWithArray:labels];
  v9 = [PGGraphROINode filterWithLabels:v8];
  v10 = [self nodesMatchingFilter:v9 inGraph:graphCopy];

  return v10;
}

+ (id)roiNodesOfTypes:(id)types inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphROINode filterForTypes:types];
  v7 = [(MANodeCollection *)PGGraphROINodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

+ (id)roiNodesOfType:(unint64_t)type inGraph:(id)graph
{
  v6 = MEMORY[0x277CCAA78];
  graphCopy = graph;
  v8 = [v6 indexSetWithIndex:type];
  v9 = [self roiNodesOfTypes:v8 inGraph:graphCopy];

  return v9;
}

@end