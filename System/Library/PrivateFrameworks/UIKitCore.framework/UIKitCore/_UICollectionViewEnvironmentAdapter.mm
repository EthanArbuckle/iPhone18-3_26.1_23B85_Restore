@interface _UICollectionViewEnvironmentAdapter
- (CGSize)contentSize;
- (NSDirectionalEdgeInsets)contentInsets;
- (UICollectionView)_collectionView;
- (_UICollectionViewEnvironmentAdapter)initWithCollectionView:(id)a3;
- (id)createEnvironment;
@end

@implementation _UICollectionViewEnvironmentAdapter

- (_UICollectionViewEnvironmentAdapter)initWithCollectionView:(id)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"collectionView"}];
  }

  v10.receiver = self;
  v10.super_class = _UICollectionViewEnvironmentAdapter;
  v5 = [(_UICollectionViewEnvironmentAdapter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, a3);
  }

  return v6;
}

- (CGSize)contentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [WeakRetained bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [WeakRetained contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_UICollectionViewEnvironmentAdapter *)self _collectionView];
  v13 = [v12 traitCollection];
  v14 = [v13 layoutDirection];

  if (v14 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = v7;
  }

  if (v14 == 1)
  {
    v16 = v7;
  }

  else
  {
    v16 = v11;
  }

  v17 = v5;
  v18 = v9;
  result.trailing = v16;
  result.bottom = v18;
  result.leading = v15;
  result.top = v17;
  return result;
}

- (id)createEnvironment
{
  v3 = [_UICollectionLayoutContainer alloc];
  [(_UICollectionViewEnvironmentAdapter *)self contentSize];
  v5 = v4;
  v7 = v6;
  [(_UICollectionViewEnvironmentAdapter *)self contentInsets];
  v12 = [(_UICollectionLayoutContainer *)v3 initWithContentSize:v5 contentInsets:v7, v8, v9, v10, v11];
  v13 = [(_UICollectionViewEnvironmentAdapter *)self _collectionView];
  v14 = [off_1E70ECC48 snapshotterForDataSourceBackedView:v13];

  v15 = [_UICollectionLayoutEnvironment alloc];
  v16 = [(_UICollectionViewEnvironmentAdapter *)self _collectionView];
  v17 = [v16 traitCollection];
  v18 = [v14 snapshot];
  v19 = [(_UICollectionLayoutEnvironment *)v15 initWithContainer:v12 traitCollection:v17 dataSourceSnapshot:v18];

  return v19;
}

- (UICollectionView)_collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end