@interface _PUIPosterSnapshotBundleInMemoryCacheEntry
- (_PUIPosterSnapshotBundleInMemoryCacheEntry)initWithPredicate:(id)a3 bundle:(id)a4;
@end

@implementation _PUIPosterSnapshotBundleInMemoryCacheEntry

- (_PUIPosterSnapshotBundleInMemoryCacheEntry)initWithPredicate:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PUIPosterSnapshotBundleInMemoryCacheEntry;
  v9 = [(_PUIPosterSnapshotBundleInMemoryCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, a3);
    objc_storeStrong(&v10->_bundle, a4);
  }

  return v10;
}

@end