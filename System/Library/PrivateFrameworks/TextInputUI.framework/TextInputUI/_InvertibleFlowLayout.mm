@interface _InvertibleFlowLayout
- (id)invalidationContextForBoundsChange:(CGRect)change;
@end

@implementation _InvertibleFlowLayout

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v5.receiver = self;
  v5.super_class = _InvertibleFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v5 invalidationContextForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  [v3 setInvalidateFlowLayoutDelegateMetrics:1];

  return v3;
}

@end