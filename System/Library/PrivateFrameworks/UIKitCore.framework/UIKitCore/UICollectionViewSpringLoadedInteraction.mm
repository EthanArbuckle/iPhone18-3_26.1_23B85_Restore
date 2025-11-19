@interface UICollectionViewSpringLoadedInteraction
@end

@implementation UICollectionViewSpringLoadedInteraction

void __81___UICollectionViewSpringLoadedInteraction_collectionViewSpringLoadedInteraction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6 = [a2 view];
  v5 = [v4 overrideTargetItem];

  [v6 _unhighlightSpringLoadedItem];
  [v6 _springLoadedInteractionSelectItemAtIndexPath:v5];
}

@end