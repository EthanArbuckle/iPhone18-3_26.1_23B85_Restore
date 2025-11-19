@interface NSSet
@end

@implementation NSSet

void __27__NSSet_VK__vk_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) vk_addNonNilObject:v2];
}

void __20__NSSet_VK__vk_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

@end