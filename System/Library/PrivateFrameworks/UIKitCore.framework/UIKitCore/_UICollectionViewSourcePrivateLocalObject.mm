@interface _UICollectionViewSourcePrivateLocalObject
- (UICollectionView)collectionView;
- (_UICollectionViewSourcePrivateLocalObject)initWithIndexPath:(id)a3 collectionView:(id)a4;
@end

@implementation _UICollectionViewSourcePrivateLocalObject

- (_UICollectionViewSourcePrivateLocalObject)initWithIndexPath:(id)a3 collectionView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UICollectionViewSourcePrivateLocalObject;
  v9 = [(_UICollectionViewSourcePrivateLocalObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_indexPath, a3);
    objc_storeWeak(&v10->_collectionView, v8);
  }

  return v10;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end