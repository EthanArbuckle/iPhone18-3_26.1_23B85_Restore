@interface UIPathLazyImageAsset
@end

@implementation UIPathLazyImageAsset

uint64_t __47___UIPathLazyImageAsset__containsImagesInPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasPrefix:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

@end