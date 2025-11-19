@interface SBTreeNodeIndexPathFromReverseOfNSArray
@end

@implementation SBTreeNodeIndexPathFromReverseOfNSArray

uint64_t ___SBTreeNodeIndexPathFromReverseOfNSArray_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 unsignedIntegerValue];
  *(*(a1 + 32) + 8 * *(a1 + 40) + 8 * ~a3) = result;
  return result;
}

@end