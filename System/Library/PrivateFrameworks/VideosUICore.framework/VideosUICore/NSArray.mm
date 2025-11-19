@interface NSArray
@end

@implementation NSArray

uint64_t __61__NSArray_VideosUICore__vui_arrayByMappingObjectsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

@end