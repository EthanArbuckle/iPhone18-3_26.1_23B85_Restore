@interface UICollectionViewTypeSelectController
@end

@implementation UICollectionViewTypeSelectController

uint64_t __85___UICollectionViewTypeSelectController_configureTypeSelectDisplayForCell_indexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) runAnimations];
  v2 = *(a1 + 32);

  return [v2 runCompletions];
}

@end