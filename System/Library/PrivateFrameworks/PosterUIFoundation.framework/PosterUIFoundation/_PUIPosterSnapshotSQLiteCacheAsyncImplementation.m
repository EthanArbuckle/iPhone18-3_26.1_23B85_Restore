@interface _PUIPosterSnapshotSQLiteCacheAsyncImplementation
- (BOOL)prepareCacheWithError:(id *)a3;
- (id)cacheSnapshotBundle:(id)a3 options:(id)a4;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3;
- (id)snapshotBundlesMatchingSQLPredicate:(id)a3 orderedBy:(id)a4 limit:(id)a5;
- (void)invalidate;
@end

@implementation _PUIPosterSnapshotSQLiteCacheAsyncImplementation

- (void)invalidate
{
  v3 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)self cacheQueue];
  BSDispatchQueueAssert();

  v4.receiver = self;
  v4.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v4 invalidate];
}

- (BOOL)prepareCacheWithError:(id *)a3
{
  v5 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)self cacheQueue];
  BSDispatchQueueAssert();

  v7.receiver = self;
  v7.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  return [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v7 prepareCacheWithError:a3];
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3
{
  v5.receiver = self;
  v5.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  v3 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v5 discardSnapshotBundlesMatchingSQLPredicate:a3];

  return v3;
}

- (id)cacheSnapshotBundle:(id)a3 options:(id)a4
{
  v6.receiver = self;
  v6.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  v4 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v6 cacheSnapshotBundle:a3 options:a4];

  return v4;
}

- (id)snapshotBundlesMatchingSQLPredicate:(id)a3 orderedBy:(id)a4 limit:(id)a5
{
  v7.receiver = self;
  v7.super_class = _PUIPosterSnapshotSQLiteCacheAsyncImplementation;
  v5 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v7 snapshotBundlesMatchingSQLPredicate:a3 orderedBy:a4 limit:a5];

  return v5;
}

@end