@interface NSIndexSet(ExtendedIndexSet)
- (id)allNumbers;
@end

@implementation NSIndexSet(ExtendedIndexSet)

- (id)allNumbers
{
  v2 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__NSIndexSet_ExtendedIndexSet__allNumbers__block_invoke;
  v6[3] = &unk_278523118;
  v7 = v2;
  v3 = v2;
  [a1 enumerateIndexesUsingBlock:v6];
  [v3 sortUsingSelector:sel_compare_];
  v4 = [v3 copy];

  return v4;
}

@end