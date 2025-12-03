@interface _UIDiffableDataSource
- (_UIDiffableDataSource)init;
- (_UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider;
- (_UIDiffableDataSource)initWithCollectionView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler;
- (_UIDiffableDataSource)initWithDiffableDataSource:(id)source;
- (_UIDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider;
- (_UIDiffableDataSource)initWithTableView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler;
- (_UIDiffableDataSource)initWithViewUpdatesSink:(id)sink;
- (id)emptySnapshot;
- (id)snapshot;
- (void)applyDifferencesFromSnapshot:(id)snapshot;
- (void)applyDifferencesFromSnapshot:(id)snapshot completion:(id)completion;
- (void)reloadFromSnapshot:(id)snapshot;
- (void)reloadFromSnapshot:(id)snapshot completion:(id)completion;
@end

@implementation _UIDiffableDataSource

- (_UIDiffableDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSource_OldSPI.m" lineNumber:31 description:@"This class cannot be constructed directly. Please use the concrete subclasses."];

  return 0;
}

- (_UIDiffableDataSource)initWithViewUpdatesSink:(id)sink
{
  sinkCopy = sink;
  v9.receiver = self;
  v9.super_class = _UIDiffableDataSource;
  v5 = [(_UIDiffableDataSource *)&v9 init];
  if (v5)
  {
    v6 = [[__UIDiffableDataSource alloc] initWithViewUpdatesSink:sinkCopy];
    dsImpl = v5->_dsImpl;
    v5->_dsImpl = v6;
  }

  return v5;
}

- (_UIDiffableDataSource)initWithCollectionView:(id)view cellProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = _UIDiffableDataSource;
  v8 = [(_UIDiffableDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[__UIDiffableDataSource alloc] initWithCollectionView:viewCopy cellProvider:providerCopy];
    dsImpl = v8->_dsImpl;
    v8->_dsImpl = v9;
  }

  return v8;
}

- (_UIDiffableDataSource)initWithCollectionView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler
{
  viewCopy = view;
  providerCopy = provider;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = _UIDiffableDataSource;
  v11 = [(_UIDiffableDataSource *)&v15 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithCollectionView:viewCopy reuseIdentifierProvider:providerCopy cellConfigurationHandler:handlerCopy];
    dsImpl = v11->_dsImpl;
    v11->_dsImpl = v12;
  }

  return v11;
}

- (_UIDiffableDataSource)initWithDiffableDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = _UIDiffableDataSource;
  v6 = [(_UIDiffableDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dsImpl, source);
  }

  return v7;
}

- (_UIDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = _UIDiffableDataSource;
  v8 = [(_UIDiffableDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[__UIDiffableDataSource alloc] initWithTableView:viewCopy cellProvider:providerCopy];
    dsImpl = v8->_dsImpl;
    v8->_dsImpl = v9;
  }

  return v8;
}

- (_UIDiffableDataSource)initWithTableView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler
{
  viewCopy = view;
  providerCopy = provider;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = _UIDiffableDataSource;
  v11 = [(_UIDiffableDataSource *)&v15 init];
  if (v11)
  {
    v12 = [[__UIDiffableDataSource alloc] initWithTableView:viewCopy reuseIdentifierProvider:providerCopy cellConfigurationHandler:handlerCopy];
    dsImpl = v11->_dsImpl;
    v11->_dsImpl = v12;
  }

  return v11;
}

- (id)snapshot
{
  snapshot = [(__UIDiffableDataSource *)self->_dsImpl snapshot];
  v3 = [[_UIDiffableDataSourceSnapshot alloc] initWithDiffableDataSource:snapshot];

  return v3;
}

- (id)emptySnapshot
{
  emptySnapshot = [(__UIDiffableDataSource *)self->_dsImpl emptySnapshot];
  v3 = [[_UIDiffableDataSourceSnapshot alloc] initWithDiffableDataSource:emptySnapshot];

  return v3;
}

- (void)applyDifferencesFromSnapshot:(id)snapshot
{
  dsImpl = self->_dsImpl;
  dsImpl = [snapshot dsImpl];
  [(__UIDiffableDataSource *)dsImpl applyDifferencesFromSnapshot:dsImpl];
}

- (void)applyDifferencesFromSnapshot:(id)snapshot completion:(id)completion
{
  dsImpl = self->_dsImpl;
  completionCopy = completion;
  dsImpl = [snapshot dsImpl];
  [(__UIDiffableDataSource *)dsImpl applyDifferencesFromSnapshot:dsImpl animatingDifferences:1 completion:completionCopy];
}

- (void)reloadFromSnapshot:(id)snapshot
{
  dsImpl = self->_dsImpl;
  dsImpl = [snapshot dsImpl];
  [(__UIDiffableDataSource *)dsImpl reloadFromSnapshot:dsImpl];
}

- (void)reloadFromSnapshot:(id)snapshot completion:(id)completion
{
  dsImpl = self->_dsImpl;
  completionCopy = completion;
  dsImpl = [snapshot dsImpl];
  [(__UIDiffableDataSource *)dsImpl applyDifferencesFromSnapshot:dsImpl animatingDifferences:0 completion:completionCopy];
}

@end