@interface _PUIPosterSnapshotSQLiteCacheAsyncImplementation
- (BOOL)prepareCacheWithError:(id *)error;
- (id)cacheSnapshotBundle:(id)bundle options:(id)options;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)predicate;
- (id)snapshotBundlesMatchingSQLPredicate:(id)predicate orderedBy:(id)by limit:(id)limit;
- (void)invalidate;
@end

@implementation _PUIPosterSnapshotSQLiteCacheAsyncImplementation

- (void)invalidate
{
  cacheQueue = [(_PUIPosterSnapshotSQLiteCacheImplementation *)self cacheQueue];
  BSDispatchQueueAssert();

  v4.receiver = self;
  v4.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v4 invalidate];
}

- (BOOL)prepareCacheWithError:(id *)error
{
  cacheQueue = [(_PUIPosterSnapshotSQLiteCacheImplementation *)self cacheQueue];
  BSDispatchQueueAssert();

  v7.receiver = self;
  v7.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  return [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v7 prepareCacheWithError:error];
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)predicate
{
  v5.receiver = self;
  v5.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  v3 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v5 discardSnapshotBundlesMatchingSQLPredicate:predicate];

  return v3;
}

- (id)cacheSnapshotBundle:(id)bundle options:(id)options
{
  v6.receiver = self;
  v6.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  v4 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v6 cacheSnapshotBundle:bundle options:options];

  return v4;
}

- (id)snapshotBundlesMatchingSQLPredicate:(id)predicate orderedBy:(id)by limit:(id)limit
{
  v7.receiver = self;
  v7.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  v5 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v7 snapshotBundlesMatchingSQLPredicate:predicate orderedBy:by limit:limit];

  return v5;
}

@end