@interface _UICollectionViewSourcePrivateLocalObject
- (UICollectionView)collectionView;
- (_UICollectionViewSourcePrivateLocalObject)initWithIndexPath:(id)path collectionView:(id)view;
@end

@implementation _UICollectionViewSourcePrivateLocalObject

- (_UICollectionViewSourcePrivateLocalObject)initWithIndexPath:(id)path collectionView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = _UICollectionViewSourcePrivateLocalObject;
  v9 = [(_UICollectionViewSourcePrivateLocalObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_indexPath, path);
    objc_storeWeak(&v10->_collectionView, viewCopy);
  }

  return v10;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end