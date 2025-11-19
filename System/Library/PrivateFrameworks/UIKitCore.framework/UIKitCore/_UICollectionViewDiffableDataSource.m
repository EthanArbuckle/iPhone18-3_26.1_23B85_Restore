@interface _UICollectionViewDiffableDataSource
- (UICollectionView)collectionView;
- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4;
- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5;
- (id)supplementaryConfigurationHandler;
- (id)supplementaryReuseIdentifierProvider;
- (id)supplementaryViewProvider;
- (void)setSupplementaryConfigurationHandler:(id)a3;
- (void)setSupplementaryReuseIdentifierProvider:(id)a3;
- (void)setSupplementaryViewProvider:(id)a3;
@end

@implementation _UICollectionViewDiffableDataSource

- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UICollectionViewDiffableDataSource;
  return [(_UIDiffableDataSource *)&v5 initWithCollectionView:a3 cellProvider:a4];
}

- (void)setSupplementaryViewProvider:(id)a3
{
  v4 = a3;
  v5 = [(_UIDiffableDataSource *)self dsImpl];
  [v5 setSupplementaryViewProvider:v4];
}

- (id)supplementaryViewProvider
{
  v2 = [(_UIDiffableDataSource *)self dsImpl];
  v3 = [v2 supplementaryViewProvider];

  return v3;
}

- (UICollectionView)collectionView
{
  v2 = [(_UIDiffableDataSource *)self dsImpl];
  v3 = [v2 collectionView];

  return v3;
}

- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewDiffableDataSource;
  return [(_UIDiffableDataSource *)&v6 initWithCollectionView:a3 reuseIdentifierProvider:a4 cellConfigurationHandler:a5];
}

- (id)supplementaryConfigurationHandler
{
  v2 = [(_UIDiffableDataSource *)self dsImpl];
  v3 = [v2 supplementaryViewConfigurationHandler];

  return v3;
}

- (void)setSupplementaryConfigurationHandler:(id)a3
{
  v4 = a3;
  v5 = [(_UIDiffableDataSource *)self dsImpl];
  [v5 setSupplementaryViewConfigurationHandler:v4];
}

- (id)supplementaryReuseIdentifierProvider
{
  v2 = [(_UIDiffableDataSource *)self dsImpl];
  v3 = [v2 supplementaryReuseIdentifierProvider];

  return v3;
}

- (void)setSupplementaryReuseIdentifierProvider:(id)a3
{
  v4 = a3;
  v5 = [(_UIDiffableDataSource *)self dsImpl];
  [v5 setSupplementaryReuseIdentifierProvider:v4];
}

@end