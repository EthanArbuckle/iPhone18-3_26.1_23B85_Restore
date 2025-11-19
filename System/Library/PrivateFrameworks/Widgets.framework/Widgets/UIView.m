@interface UIView
@end

@implementation UIView

uint64_t __75__UIView_WGCAPackageViewAdditions___wg_innerWalkSubviewTreeWithBlock_stop___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _wg_innerWalkSubviewTreeWithBlock:*(a1 + 32) stop:*(a1 + 40)];
  *a4 = **(a1 + 40);
  return result;
}

@end