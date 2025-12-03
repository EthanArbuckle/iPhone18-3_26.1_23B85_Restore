@interface PGGraphYearNodeCollection
+ (id)yearNodesLargerThanYear:(int64_t)year inGraph:(id)graph;
- (NSArray)years;
- (void)enumerateYearsUsingBlock:(id)block;
@end

@implementation PGGraphYearNodeCollection

- (void)enumerateYearsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PGGraphYearNodeCollection_enumerateYearsUsingBlock___block_invoke;
  v6[3] = &unk_2788872A8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MANodeCollection *)self enumerateIntegerPropertyValuesForKey:@"name" withBlock:v6];
}

- (NSArray)years
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PGGraphYearNodeCollection_years__block_invoke;
  v6[3] = &unk_278887280;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateIntegerPropertyValuesForKey:@"name" withBlock:v6];

  return v4;
}

void __34__PGGraphYearNodeCollection_years__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [v1 addObject:v2];
}

+ (id)yearNodesLargerThanYear:(int64_t)year inGraph:(id)graph
{
  v17[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  filter = [self filter];
  v16 = @"name";
  v8 = objc_alloc(MEMORY[0x277D22B98]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:year];
  v10 = [v8 initWithComparator:5 value:v9];
  v17[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [filter filterBySettingProperties:v11];

  v13 = [self nodesMatchingFilter:v12 inGraph:graphCopy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end