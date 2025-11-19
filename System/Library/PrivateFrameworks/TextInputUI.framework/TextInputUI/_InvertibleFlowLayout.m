@interface _InvertibleFlowLayout
- (id)invalidationContextForBoundsChange:(CGRect)a3;
@end

@implementation _InvertibleFlowLayout

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _InvertibleFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v5 invalidationContextForBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [v3 setInvalidateFlowLayoutDelegateMetrics:1];

  return v3;
}

@end