@interface _UIDiffableDataSourceSnapshotter
- (id)emptySnapshot;
- (id)snapshot;
- (void)applyDifferencesFromSnapshot:(id)a3;
- (void)applyDifferencesFromSnapshot:(id)a3 completion:(id)a4;
- (void)applySnapshot:(id)a3;
- (void)reloadFromSnapshot:(id)a3;
- (void)reloadFromSnapshot:(id)a3 completion:(id)a4;
@end

@implementation _UIDiffableDataSourceSnapshotter

- (id)snapshot
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  v2 = [(_UIDiffableDataSource *)&v4 snapshot];

  return v2;
}

- (id)emptySnapshot
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  v2 = [(_UIDiffableDataSource *)&v4 emptySnapshot];

  return v2;
}

- (void)applyDifferencesFromSnapshot:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v3 applyDifferencesFromSnapshot:a3];
}

- (void)applyDifferencesFromSnapshot:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v4 applyDifferencesFromSnapshot:a3 completion:a4];
}

- (void)reloadFromSnapshot:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v3 reloadFromSnapshot:a3];
}

- (void)reloadFromSnapshot:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v4 reloadFromSnapshot:a3 completion:a4];
}

- (void)applySnapshot:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIDiffableDataSourceSnapshotter;
  [(_UIDiffableDataSource *)&v3 applySnapshot:a3];
}

@end