@interface _UIActivityCollectionViewCompositionalLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
@end

@implementation _UIActivityCollectionViewCompositionalLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  collectionView = [(_UIActivityCollectionViewCompositionalLayout *)self collectionView];
  [collectionView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v16 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  return vabdd_f64(v16, CGRectGetWidth(v19)) >= 0.00000011920929;
}

@end