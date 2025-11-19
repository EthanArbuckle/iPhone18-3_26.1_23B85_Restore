@interface NSIndexSet
@end

@implementation NSIndexSet

void __31__NSIndexSet_VK__vk_rangeArray__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
  [v3 addObject:v4];
}

@end