@interface SSNewCFArrayFromXPCArray
@end

@implementation SSNewCFArrayFromXPCArray

BOOL ___SSNewCFArrayFromXPCArray_block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  if (v2)
  {
    v3 = a1[6];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    *(v3 + 8 * v5) = v2;
  }

  return v2 != 0;
}

@end