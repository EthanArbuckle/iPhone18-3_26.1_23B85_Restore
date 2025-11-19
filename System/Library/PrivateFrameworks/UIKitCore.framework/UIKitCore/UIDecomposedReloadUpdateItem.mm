@interface UIDecomposedReloadUpdateItem
- (id)pairedItem;
@end

@implementation UIDecomposedReloadUpdateItem

- (id)pairedItem
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 5);
    v1 = vars8;
  }

  return WeakRetained;
}

@end