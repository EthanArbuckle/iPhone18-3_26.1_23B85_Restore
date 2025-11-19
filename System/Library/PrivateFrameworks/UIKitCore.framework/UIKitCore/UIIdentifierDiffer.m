@interface UIIdentifierDiffer
@end

@implementation UIIdentifierDiffer

void __43___UIIdentifierDiffer_collectionDifference__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a2];
  v3 = [MEMORY[0x1E696ADD0] changeWithObject:? type:? index:?];
  [*(a1 + 40) addObject:v3];
}

void __43___UIIdentifierDiffer_collectionDifference__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:a2];
  v3 = [MEMORY[0x1E696ADD0] changeWithObject:? type:? index:?];
  [*(a1 + 40) addObject:v3];
}

@end