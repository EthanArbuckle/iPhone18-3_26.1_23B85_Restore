@interface PXPhotosDetailsPurger
@end

@implementation PXPhotosDetailsPurger

void __38___PXPhotosDetailsPurger_sharedPurger__block_invoke()
{
  v0 = objc_alloc_init(_PXPhotosDetailsPurger);
  v1 = sharedPurger_sharedPurger;
  sharedPurger_sharedPurger = v0;
}

@end