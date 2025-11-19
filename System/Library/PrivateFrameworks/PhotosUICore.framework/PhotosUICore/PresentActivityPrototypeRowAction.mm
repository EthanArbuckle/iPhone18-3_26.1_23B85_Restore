@interface PresentActivityPrototypeRowAction
@end

@implementation PresentActivityPrototypeRowAction

uint64_t ___PresentActivityPrototypeRowAction_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc_init(PXSharedAlbumsActivityEntryViewController);
  v5 = [v3 navigationController];

  [v5 pushViewController:v4 animated:1];
  return 1;
}

@end