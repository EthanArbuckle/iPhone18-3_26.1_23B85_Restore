@interface RERuleMLElementComparator
@end

@implementation RERuleMLElementComparator

uint64_t __96___RERuleMLElementComparator_initWithFilteringRules_rankingRules_model_elementsHiddenByDefault___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 priority];
  v6 = [v4 numberWithFloat:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 priority];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v12 = [v6 compare:v11];

  return v12;
}

uint64_t __96___RERuleMLElementComparator_initWithFilteringRules_rankingRules_model_elementsHiddenByDefault___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 priority];
  v6 = [v4 numberWithFloat:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 priority];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v12 = [v6 compare:v11];

  return v12;
}

@end