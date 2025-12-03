@interface PGGraphMemoryNodeCollection
+ (id)memoryNodeAsCollectionWithUniqueIdentifier:(id)identifier inGraph:(id)graph;
+ (id)memoryNodesOfCategories:(id)categories inGraph:(id)graph;
+ (id)memoryNodesOfCategory:(unint64_t)category inGraph:(id)graph;
+ (id)memoryNodesWithUniqueIdentifierArray:(id)array inGraph:(id)graph;
+ (id)memoryNodesWithUniqueIdentifiers:(id)identifiers inGraph:(id)graph;
- (NSArray)memoryCategorySubcategories;
- (NSSet)uniqueMemoryIdentifiers;
- (PGGraphFeatureNodeCollection)featureNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (id)subsetWithMemoryCategories:(id)categories;
- (id)subsetWithMemoryCategory:(unint64_t)category;
- (void)enumerateMemoryUniqueIdentifierUsingBlock:(id)block;
@end

@implementation PGGraphMemoryNodeCollection

- (void)enumerateMemoryUniqueIdentifierUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__PGGraphMemoryNodeCollection_enumerateMemoryUniqueIdentifierUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"memid" withBlock:v6];
}

- (id)subsetWithMemoryCategories:(id)categories
{
  v4 = [PGGraphMemoryNode filterWithMemoryCategories:categories];
  relation = [v4 relation];
  v6 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesRelatedToNodes:self withRelation:relation];

  return v6;
}

- (id)subsetWithMemoryCategory:(unint64_t)category
{
  v4 = [PGGraphMemoryNode filterWithMemoryCategory:category];
  v5 = objc_opt_class();
  relation = [v4 relation];
  v7 = [v5 nodesRelatedToNodes:self withRelation:relation];

  return v7;
}

- (NSArray)memoryCategorySubcategories
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__PGGraphMemoryNodeCollection_memoryCategorySubcategories__block_invoke;
  v6[3] = &unk_2788849E0;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateUnsignedIntegerPropertyValuesForKey:@"subcategory" withBlock:v6];

  return v4;
}

void __58__PGGraphMemoryNodeCollection_memoryCategorySubcategories__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [v1 addObject:v2];
}

- (NSSet)uniqueMemoryIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PGGraphMemoryNodeCollection_uniqueMemoryIdentifiers__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"memid" withBlock:v6];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphMemoryNode momentOfMemory];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphFeatureNodeCollection)featureNodes
{
  v3 = +[PGGraphMemoryNode featureOfMemory];
  v4 = [(MANodeCollection *)PGGraphFeatureNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)memoryNodesWithUniqueIdentifierArray:(id)array inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphMemoryNode filterWithUniqueMemoryIdentifierArray:array];
  v7 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

+ (id)memoryNodesWithUniqueIdentifiers:(id)identifiers inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphMemoryNode filterWithUniqueMemoryIdentifiers:identifiers];
  v7 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

+ (id)memoryNodeAsCollectionWithUniqueIdentifier:(id)identifier inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphMemoryNode filterWithUniqueMemoryIdentifier:identifier];
  v7 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

+ (id)memoryNodesOfCategories:(id)categories inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphMemoryNode filterWithMemoryCategories:categories];
  v7 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

+ (id)memoryNodesOfCategory:(unint64_t)category inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphMemoryNode filterWithMemoryCategory:category];
  v7 = [(MANodeCollection *)PGGraphMemoryNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

@end