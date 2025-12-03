@interface _PUIPosterSnapshotBundleInMemoryCacheEntry
- (_PUIPosterSnapshotBundleInMemoryCacheEntry)initWithPredicate:(id)predicate bundle:(id)bundle;
@end

@implementation _PUIPosterSnapshotBundleInMemoryCacheEntry

- (_PUIPosterSnapshotBundleInMemoryCacheEntry)initWithPredicate:(id)predicate bundle:(id)bundle
{
  predicateCopy = predicate;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = _PUIPosterSnapshotBundleInMemoryCacheEntry;
  v9 = [(_PUIPosterSnapshotBundleInMemoryCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, predicate);
    objc_storeStrong(&v10->_bundle, bundle);
  }

  return v10;
}

@end