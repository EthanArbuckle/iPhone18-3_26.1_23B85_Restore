@interface PGGraphSeasonNodeCollection
+ (id)seasonNodesForSeasonName:(id)name inGraph:(id)graph;
- (NSSet)names;
- (PGGraphDateNodeCollection)dateNodes;
- (void)enumerateNamesUsingBlock:(id)block;
@end

@implementation PGGraphSeasonNodeCollection

- (void)enumerateNamesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PGGraphSeasonNodeCollection_enumerateNamesUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];
}

- (NSSet)names
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PGGraphSeasonNodeCollection_names__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

- (PGGraphDateNodeCollection)dateNodes
{
  v3 = +[PGGraphSeasonNode dateOfSeason];
  v4 = [(MANodeCollection *)PGGraphDateNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)seasonNodesForSeasonName:(id)name inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphSeasonNode filterForSeasonName:name];
  v7 = [(MANodeCollection *)PGGraphSeasonNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

@end