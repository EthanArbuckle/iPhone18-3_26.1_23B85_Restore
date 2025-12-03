@interface _UICollectionViewDiffableDataSource
- (UICollectionView)collectionView;
- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider;
- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler;
- (id)supplementaryConfigurationHandler;
- (id)supplementaryReuseIdentifierProvider;
- (id)supplementaryViewProvider;
- (void)setSupplementaryConfigurationHandler:(id)handler;
- (void)setSupplementaryReuseIdentifierProvider:(id)provider;
- (void)setSupplementaryViewProvider:(id)provider;
@end

@implementation _UICollectionViewDiffableDataSource

- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = _UICollectionViewDiffableDataSource;
  return [(_UIDiffableDataSource *)&v5 initWithCollectionView:view cellProvider:provider];
}

- (void)setSupplementaryViewProvider:(id)provider
{
  providerCopy = provider;
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  [dsImpl setSupplementaryViewProvider:providerCopy];
}

- (id)supplementaryViewProvider
{
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  supplementaryViewProvider = [dsImpl supplementaryViewProvider];

  return supplementaryViewProvider;
}

- (UICollectionView)collectionView
{
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  collectionView = [dsImpl collectionView];

  return collectionView;
}

- (_UICollectionViewDiffableDataSource)initWithCollectionView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewDiffableDataSource;
  return [(_UIDiffableDataSource *)&v6 initWithCollectionView:view reuseIdentifierProvider:provider cellConfigurationHandler:handler];
}

- (id)supplementaryConfigurationHandler
{
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  supplementaryViewConfigurationHandler = [dsImpl supplementaryViewConfigurationHandler];

  return supplementaryViewConfigurationHandler;
}

- (void)setSupplementaryConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  [dsImpl setSupplementaryViewConfigurationHandler:handlerCopy];
}

- (id)supplementaryReuseIdentifierProvider
{
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  supplementaryReuseIdentifierProvider = [dsImpl supplementaryReuseIdentifierProvider];

  return supplementaryReuseIdentifierProvider;
}

- (void)setSupplementaryReuseIdentifierProvider:(id)provider
{
  providerCopy = provider;
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  [dsImpl setSupplementaryReuseIdentifierProvider:providerCopy];
}

@end