@interface _UIDiffableDataSource
- (_UIDiffableDataSource)init;
- (_UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4;
- (_UIDiffableDataSource)initWithCollectionView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5;
- (_UIDiffableDataSource)initWithDiffableDataSource:(id)a3;
- (_UIDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4;
- (_UIDiffableDataSource)initWithTableView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5;
- (_UIDiffableDataSource)initWithViewUpdatesSink:(id)a3;
- (id)emptySnapshot;
- (id)snapshot;
- (void)applyDifferencesFromSnapshot:(id)a3;
- (void)applyDifferencesFromSnapshot:(id)a3 completion:(id)a4;
- (void)reloadFromSnapshot:(id)a3;
- (void)reloadFromSnapshot:(id)a3 completion:(id)a4;
@end

@implementation _UIDiffableDataSource

- (_UIDiffableDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSource_OldSPI.m" lineNumber:31 description:@"This class cannot be constructed directly. Please use the concrete subclasses."];

  return 0;
}

- (_UIDiffableDataSource)initWithViewUpdatesSink:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIDiffableDataSource;
  v5 = [(_UIDiffableDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[__UIDiffableDataSource alloc] initWithViewUpdatesSink:v4];
    dsImpl = v5->_dsImpl;
    v5->_dsImpl = v6;
  }

  return v5;
}

- (_UIDiffableDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _UIDiffableDataSource;
  v8 = [(_UIDiffableDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[__UIDiffableDataSource alloc] initWithCollectionView:v6 cellProvider:v7];
    dsImpl = v8->_dsImpl;
    v8->_dsImpl = v9;
  }

  return v8;
}

- (_UIDiffableDataSource)initWithCollectionView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _UIDiffableDataSource;
  v11 = [(_UIDiffableDataSource *)&v15 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithCollectionView:v8 reuseIdentifierProvider:v9 cellConfigurationHandler:v10];
    dsImpl = v11->_dsImpl;
    v11->_dsImpl = v12;
  }

  return v11;
}

- (_UIDiffableDataSource)initWithDiffableDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIDiffableDataSource;
  v6 = [(_UIDiffableDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dsImpl, a3);
  }

  return v7;
}

- (_UIDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _UIDiffableDataSource;
  v8 = [(_UIDiffableDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[__UIDiffableDataSource alloc] initWithTableView:v6 cellProvider:v7];
    dsImpl = v8->_dsImpl;
    v8->_dsImpl = v9;
  }

  return v8;
}

- (_UIDiffableDataSource)initWithTableView:(id)a3 reuseIdentifierProvider:(id)a4 cellConfigurationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _UIDiffableDataSource;
  v11 = [(_UIDiffableDataSource *)&v15 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithTableView:v8 reuseIdentifierProvider:v9 cellConfigurationHandler:v10];
    dsImpl = v11->_dsImpl;
    v11->_dsImpl = v12;
  }

  return v11;
}

- (id)snapshot
{
  v2 = [(__UIDiffableDataSource *)self->_dsImpl snapshot];
  v3 = [[_UIDiffableDataSourceSnapshot alloc] initWithDiffableDataSource:v2];

  return v3;
}

- (id)emptySnapshot
{
  v2 = [(__UIDiffableDataSource *)self->_dsImpl emptySnapshot];
  v3 = [[_UIDiffableDataSourceSnapshot alloc] initWithDiffableDataSource:v2];

  return v3;
}

- (void)applyDifferencesFromSnapshot:(id)a3
{
  dsImpl = self->_dsImpl;
  v4 = [a3 dsImpl];
  [(__UIDiffableDataSource *)dsImpl applyDifferencesFromSnapshot:v4];
}

- (void)applyDifferencesFromSnapshot:(id)a3 completion:(id)a4
{
  dsImpl = self->_dsImpl;
  v6 = a4;
  v7 = [a3 dsImpl];
  [(__UIDiffableDataSource *)dsImpl applyDifferencesFromSnapshot:v7 animatingDifferences:1 completion:v6];
}

- (void)reloadFromSnapshot:(id)a3
{
  dsImpl = self->_dsImpl;
  v4 = [a3 dsImpl];
  [(__UIDiffableDataSource *)dsImpl reloadFromSnapshot:v4];
}

- (void)reloadFromSnapshot:(id)a3 completion:(id)a4
{
  dsImpl = self->_dsImpl;
  v6 = a4;
  v7 = [a3 dsImpl];
  [(__UIDiffableDataSource *)dsImpl applyDifferencesFromSnapshot:v7 animatingDifferences:0 completion:v6];
}

@end