@interface NSArray
@end

@implementation NSArray

uint64_t __64__NSArray_TVMLKitAdditions__tv_arrayByMappingObjectsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

@end