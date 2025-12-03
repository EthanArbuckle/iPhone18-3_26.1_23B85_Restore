@interface UICollectionView(PhotosUICore)
- (double)_px_currentContentSize;
@end

@implementation UICollectionView(PhotosUICore)

- (double)_px_currentContentSize
{
  collectionViewLayout = [self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v3 = v2;

  return v3;
}

@end