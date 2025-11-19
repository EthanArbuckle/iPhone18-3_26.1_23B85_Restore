@interface NSArray(BlockFilter)
- (id)filteredArrayWithBlock:()BlockFilter;
@end

@implementation NSArray(BlockFilter)

- (id)filteredArrayWithBlock:()BlockFilter
{
  v4 = a3;
  v5 = MEMORY[0x277CCAC30];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__NSArray_BlockFilter__filteredArrayWithBlock___block_invoke;
  v10[3] = &unk_279A487A8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v10];
  v8 = [a1 filteredArrayUsingPredicate:v7];

  return v8;
}

@end