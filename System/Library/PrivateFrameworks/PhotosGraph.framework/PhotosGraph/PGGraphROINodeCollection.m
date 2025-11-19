@interface PGGraphROINodeCollection
+ (id)roiNodesForLabels:(id)a3 inGraph:(id)a4;
+ (id)roiNodesOfType:(unint64_t)a3 inGraph:(id)a4;
+ (id)roiNodesOfTypes:(id)a3 inGraph:(id)a4;
- (PGGraphMomentNodeCollection)momentNodes;
@end

@implementation PGGraphROINodeCollection

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphROINode momentOfROI];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)roiNodesForLabels:(id)a3 inGraph:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithArray:a3];
  v9 = [PGGraphROINode filterWithLabels:v8];
  v10 = [a1 nodesMatchingFilter:v9 inGraph:v7];

  return v10;
}

+ (id)roiNodesOfTypes:(id)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = [PGGraphROINode filterForTypes:a3];
  v7 = [(MANodeCollection *)PGGraphROINodeCollection nodesMatchingFilter:v6 inGraph:v5];

  return v7;
}

+ (id)roiNodesOfType:(unint64_t)a3 inGraph:(id)a4
{
  v6 = MEMORY[0x277CCAA78];
  v7 = a4;
  v8 = [v6 indexSetWithIndex:a3];
  v9 = [a1 roiNodesOfTypes:v8 inGraph:v7];

  return v9;
}

@end