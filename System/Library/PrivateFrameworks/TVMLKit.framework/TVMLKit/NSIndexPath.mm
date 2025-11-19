@interface NSIndexPath
@end

@implementation NSIndexPath

void __65__NSIndexPath_TVMLKitAdditions__flattenedIndexForItemInSections___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) section] == a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += [v8 numberOfItems];
  }
}

@end