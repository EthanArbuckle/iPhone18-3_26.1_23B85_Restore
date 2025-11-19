@interface UICollectionView(PhotosUICore)
- (double)_px_currentContentSize;
@end

@implementation UICollectionView(PhotosUICore)

- (double)_px_currentContentSize
{
  v1 = [a1 collectionViewLayout];
  [v1 collectionViewContentSize];
  v3 = v2;

  return v3;
}

@end