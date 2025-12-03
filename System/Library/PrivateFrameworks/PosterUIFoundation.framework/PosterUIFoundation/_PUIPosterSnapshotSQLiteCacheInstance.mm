@interface _PUIPosterSnapshotSQLiteCacheInstance
- (_PUIPosterSnapshotSQLiteCacheInstance)initWithCacheImplementation:(id)implementation assertion:(id)assertion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PUIPosterSnapshotSQLiteCacheInstance

- (_PUIPosterSnapshotSQLiteCacheInstance)initWithCacheImplementation:(id)implementation assertion:(id)assertion
{
  implementationCopy = implementation;
  assertionCopy = assertion;
  v12.receiver = self;
  v12.super_class = _PUIPosterSnapshotSQLiteCacheInstance;
  v9 = [(_PUIPosterSnapshotSQLiteCacheInstance *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_impl, implementation);
    objc_storeStrong(&v10->_assertion, assertion);
  }

  return v10;
}

- (void)dealloc
{
  [(_PUIPosterSnapshotSQLiteCacheInstance *)self invalidate];
  v3.receiver = self;
  v3.super_class = _PUIPosterSnapshotSQLiteCacheInstance;
  [(_PUIPosterSnapshotSQLiteCacheInstance *)&v3 dealloc];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  assertion = obj->_assertion;
  if (assertion)
  {
    [(BSInvalidatable *)assertion invalidate];
    v4 = obj->_assertion;
    obj->_assertion = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

@end