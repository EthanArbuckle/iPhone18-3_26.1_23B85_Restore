@interface NSArray
@end

@implementation NSArray

void __29__NSArray_VK__vk_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) vk_addNonNilObject:v2];
}

void __22__NSArray_VK__vk_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void __26__NSArray_VK__vk_flatMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObjectsFromArray:v2];
}

@end