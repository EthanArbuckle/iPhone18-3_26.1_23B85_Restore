@interface _PUIPosterSnapshotSQLiteCacheSyncImplementation
- (_PUIPosterSnapshotSQLiteCacheSyncImplementation)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 error:(id *)a6;
- (id)cacheSnapshotBundle:(id)a3 options:(id)a4 outError:(id *)a5;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3 outError:(id *)a4;
- (id)snapshotBundlesMatchingSQLPredicate:(id)a3 orderedBy:(id)a4 limit:(id)a5 outError:(id *)a6;
@end

@implementation _PUIPosterSnapshotSQLiteCacheSyncImplementation

- (_PUIPosterSnapshotSQLiteCacheSyncImplementation)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  v10 = MEMORY[0x1E69C5268];
  v11 = a4;
  v12 = a3;
  v13 = [v10 immediateScheduler];
  v16.receiver = self;
  v16.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v14 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v16 initWithURL:v12 fileManager:v11 options:a5 cacheQueue:0 scheduler:v13 error:a6];

  return v14;
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3 outError:(id *)a4
{
  v8.receiver = self;
  v8.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v5 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v8 discardSnapshotBundlesMatchingSQLPredicate:a3];
  v6 = [v5 result:a4];

  return v6;
}

- (id)cacheSnapshotBundle:(id)a3 options:(id)a4 outError:(id *)a5
{
  v9.receiver = self;
  v9.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v6 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v9 cacheSnapshotBundle:a3 options:a4];
  v7 = [v6 result:a5];

  return v7;
}

- (id)snapshotBundlesMatchingSQLPredicate:(id)a3 orderedBy:(id)a4 limit:(id)a5 outError:(id *)a6
{
  v10.receiver = self;
  v10.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v7 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v10 snapshotBundlesMatchingSQLPredicate:a3 orderedBy:a4 limit:a5];
  v8 = [v7 result:a6];

  return v8;
}

@end