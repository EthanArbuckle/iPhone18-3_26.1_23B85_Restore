@interface PGGraphBusinessNodeCollection
+ (id)businessNodeForBusinessMuid:(unint64_t)muid inGraph:(id)graph;
+ (id)businessNodesWithCIDINames:(id)names inGraph:(id)graph;
+ (id)restaurantBusinessNodesInGraph:(id)graph;
- (NSSet)businessNames;
- (PGGraphBusinessCategoryNodeCollection)categoryNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphPublicEventNodeCollection)publicEventNodes;
@end

@implementation PGGraphBusinessNodeCollection

- (NSSet)businessNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PGGraphBusinessNodeCollection_businessNames__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __46__PGGraphBusinessNodeCollection_businessNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphBusinessNode momentOfBusiness];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphBusinessCategoryNodeCollection)categoryNodes
{
  v3 = +[PGGraphBusinessNode categoryOfBusiness];
  v4 = [(MANodeCollection *)PGGraphBusinessCategoryNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPublicEventNodeCollection)publicEventNodes
{
  v3 = +[PGGraphBusinessNode publicEventOfBusiness];
  v4 = [(MANodeCollection *)PGGraphPublicEventNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)restaurantBusinessNodesInGraph:(id)graph
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v12[0] = @"Restaurant";
  v12[1] = @"Nightlife";
  v4 = MEMORY[0x277CBEA60];
  graphCopy = graph;
  v6 = [v4 arrayWithObjects:v12 count:2];
  v7 = [v3 setWithArray:v6];

  v8 = [PGGraphBusinessCategoryNodeCollection businessCategoryNodesForCategories:v7 inGraph:graphCopy];

  businessNodes = [v8 businessNodes];

  v10 = *MEMORY[0x277D85DE8];

  return businessNodes;
}

+ (id)businessNodesWithCIDINames:(id)names inGraph:(id)graph
{
  v16[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  namesCopy = names;
  v8 = +[PGGraphBusinessNode filter];
  v15 = @"name";
  v9 = [objc_alloc(MEMORY[0x277D22B98]) initWithComparator:8 value:namesCopy];

  v16[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v11 = [v8 filterBySettingProperties:v10];

  v12 = [self nodesMatchingFilter:v11 inGraph:graphCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)businessNodeForBusinessMuid:(unint64_t)muid inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphBusinessNode filterWithMuid:muid];
  v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];

  return v8;
}

@end