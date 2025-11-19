@interface PGGraphPublicEventNodeCollection
+ (id)publicEventNodesWithCategories:(id)a3 inGraph:(id)a4;
- (NSSet)eventNames;
- (PGGraphBusinessNodeCollection)businessNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (PGGraphPerformerNodeCollection)performerNodes;
- (PGGraphPublicEventCategoryNodeCollection)categoryNodes;
@end

@implementation PGGraphPublicEventNodeCollection

- (NSSet)eventNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PGGraphPublicEventNodeCollection_eventNames__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __46__PGGraphPublicEventNodeCollection_eventNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (PGGraphBusinessNodeCollection)businessNodes
{
  v3 = +[PGGraphPublicEventNode businessOfPublicEvent];
  v4 = [(MANodeCollection *)PGGraphBusinessNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPerformerNodeCollection)performerNodes
{
  v3 = +[PGGraphPublicEventNode performerOfPublicEvent];
  v4 = [(MANodeCollection *)PGGraphPerformerNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphPublicEventCategoryNodeCollection)categoryNodes
{
  v3 = +[PGGraphPublicEventNode categoryOfPublicEvent];
  v4 = [(MANodeCollection *)PGGraphPublicEventCategoryNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphPublicEventNode momentOfPublicEvent];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)publicEventNodesWithCategories:(id)a3 inGraph:(id)a4
{
  v4 = [PGGraphPublicEventCategoryNodeCollection publicEventCategoryNodesForCategories:a3 inGraph:a4];
  v5 = [v4 publicEventNodes];

  return v5;
}

@end