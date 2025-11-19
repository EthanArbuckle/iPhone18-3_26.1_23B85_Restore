@interface PGGraphPOINodeCollection
+ (id)poiNodesForLabel:(id)a3 inGraph:(id)a4;
+ (id)poiNodesForLabels:(id)a3 inGraph:(id)a4;
- (NSSet)localizedNames;
- (PGGraphMomentNodeCollection)momentNodes;
- (id)nodesMatchingPOILabels:(id)a3;
@end

@implementation PGGraphPOINodeCollection

- (id)nodesMatchingPOILabels:(id)a3
{
  v4 = MEMORY[0x277D22C78];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithLabels:v5 domain:501 properties:MEMORY[0x277CBEC10]];

  v8 = [(MANodeCollection *)self nodesMatchingFilter:v7];

  return v8;
}

- (NSSet)localizedNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PGGraphPOINodeCollection_localizedNames__block_invoke;
  v6[3] = &unk_2788875D0;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __42__PGGraphPOINodeCollection_localizedNames__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedName];
  [*(a1 + 32) addObject:v3];
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphPOINode momentOfPOI];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)poiNodesForLabels:(id)a3 inGraph:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithArray:a3];
  v9 = [PGGraphPOINode filterWithLabels:v8];
  v10 = [a1 nodesMatchingFilter:v9 inGraph:v7];

  return v10;
}

+ (id)poiNodesForLabel:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphPOINode filterWithLabel:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

@end