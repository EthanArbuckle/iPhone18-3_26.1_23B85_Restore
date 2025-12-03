@interface _UIDiffableDataSourceSnapshotter
- (id)emptySnapshot;
- (id)snapshot;
- (void)applyDifferencesFromSnapshot:(id)snapshot;
- (void)applyDifferencesFromSnapshot:(id)snapshot completion:(id)completion;
- (void)applySnapshot:(id)snapshot;
- (void)reloadFromSnapshot:(id)snapshot;
- (void)reloadFromSnapshot:(id)snapshot completion:(id)completion;
@end

@implementation _UIDiffableDataSourceSnapshotter

- (id)snapshot
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  snapshot = [(_UIDiffableDataSource *)&v4 snapshot];

  return snapshot;
}

- (id)emptySnapshot
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  emptySnapshot = [(_UIDiffableDataSource *)&v4 emptySnapshot];

  return emptySnapshot;
}

- (void)applyDifferencesFromSnapshot:(id)snapshot
{
  v3.receiver = self;
  v3.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v3 applyDifferencesFromSnapshot:snapshot];
}

- (void)applyDifferencesFromSnapshot:(id)snapshot completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v4 applyDifferencesFromSnapshot:snapshot completion:completion];
}

- (void)reloadFromSnapshot:(id)snapshot
{
  v3.receiver = self;
  v3.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v3 reloadFromSnapshot:snapshot];
}

- (void)reloadFromSnapshot:(id)snapshot completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v4 reloadFromSnapshot:snapshot completion:completion];
}

- (void)applySnapshot:(id)snapshot
{
  v3.receiver = self;
  v3.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v3 applySnapshot:snapshot];
}

@end