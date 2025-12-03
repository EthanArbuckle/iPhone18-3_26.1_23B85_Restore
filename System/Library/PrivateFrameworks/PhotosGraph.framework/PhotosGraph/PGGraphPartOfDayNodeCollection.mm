@interface PGGraphPartOfDayNodeCollection
+ (id)partOfDayNodeForPartOfDay:(unint64_t)day inGraph:(id)graph;
- (NSArray)partsOfDay;
- (void)enumerateNamesUsingBlock:(id)block;
@end

@implementation PGGraphPartOfDayNodeCollection

- (void)enumerateNamesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PGGraphPartOfDayNodeCollection_enumerateNamesUsingBlock___block_invoke;
  v6[3] = &unk_278887978;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];
}

- (NSArray)partsOfDay
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGGraphPartOfDayNodeCollection_partsOfDay__block_invoke;
  v6[3] = &unk_27888B480;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateStringPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __44__PGGraphPartOfDayNodeCollection_partsOfDay__block_invoke(uint64_t a1)
{
  v2 = [PGGraphPartOfDayNode partOfDayForPartOfDayName:?];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  [v3 addObject:v4];
}

+ (id)partOfDayNodeForPartOfDay:(unint64_t)day inGraph:(id)graph
{
  graphCopy = graph;
  v6 = [PGGraphPartOfDayNode filterWithPartOfDay:day];
  v7 = [(MANodeCollection *)PGGraphPartOfDayNodeCollection nodesMatchingFilter:v6 inGraph:graphCopy];

  return v7;
}

@end