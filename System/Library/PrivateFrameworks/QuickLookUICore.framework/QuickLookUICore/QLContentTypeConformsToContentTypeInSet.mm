@interface QLContentTypeConformsToContentTypeInSet
@end

@implementation QLContentTypeConformsToContentTypeInSet

uint64_t ___QLContentTypeConformsToContentTypeInSet_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) conformsToType:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end