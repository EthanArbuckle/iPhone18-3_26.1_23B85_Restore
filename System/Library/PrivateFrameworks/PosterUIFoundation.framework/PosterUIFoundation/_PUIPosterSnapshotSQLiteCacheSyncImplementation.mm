@interface _PUIPosterSnapshotSQLiteCacheSyncImplementation
- (_PUIPosterSnapshotSQLiteCacheSyncImplementation)initWithURL:(id)l fileManager:(id)manager options:(int64_t)options error:(id *)error;
- (id)cacheSnapshotBundle:(id)bundle options:(id)options outError:(id *)error;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)predicate outError:(id *)error;
- (id)snapshotBundlesMatchingSQLPredicate:(id)predicate orderedBy:(id)by limit:(id)limit outError:(id *)error;
@end

@implementation _PUIPosterSnapshotSQLiteCacheSyncImplementation

- (_PUIPosterSnapshotSQLiteCacheSyncImplementation)initWithURL:(id)l fileManager:(id)manager options:(int64_t)options error:(id *)error
{
  v10 = MEMORY[0x1E69C5268];
  managerCopy = manager;
  lCopy = l;
  immediateScheduler = [v10 immediateScheduler];
  v16.receiver = self;
  v16.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v14 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v16 initWithURL:lCopy fileManager:managerCopy options:options cacheQueue:0 scheduler:immediateScheduler error:error];

  return v14;
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)predicate outError:(id *)error
{
  v8.receiver = self;
  v8.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v5 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v8 discardSnapshotBundlesMatchingSQLPredicate:predicate];
  v6 = [v5 result:error];

  return v6;
}

- (id)cacheSnapshotBundle:(id)bundle options:(id)options outError:(id *)error
{
  v9.receiver = self;
  v9.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v6 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v9 cacheSnapshotBundle:bundle options:options];
  v7 = [v6 result:error];

  return v7;
}

- (id)snapshotBundlesMatchingSQLPredicate:(id)predicate orderedBy:(id)by limit:(id)limit outError:(id *)error
{
  v10.receiver = self;
  v10.super_class = _PUIPosterSnapshotSQLiteCacheSyncImplementation;
  v7 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v10 snapshotBundlesMatchingSQLPredicate:predicate orderedBy:by limit:limit];
  v8 = [v7 result:error];

  return v8;
}

@end