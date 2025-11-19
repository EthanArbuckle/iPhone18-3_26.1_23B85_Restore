@interface NSIndexSet
@end

@implementation NSIndexSet

void __61__NSIndexSet_PKUIUtilities__pkui_indexPathsForRowsInSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

@end