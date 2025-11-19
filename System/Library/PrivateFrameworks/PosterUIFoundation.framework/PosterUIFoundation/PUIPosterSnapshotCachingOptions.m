@interface PUIPosterSnapshotCachingOptions
+ (id)removeBundlesMatchingPredicates:(id)a3;
- (PUIPosterSnapshotCachingOptions)init;
- (PUIPosterSnapshotCachingOptions)initWithCleanupPredicates:(id)a3;
@end

@implementation PUIPosterSnapshotCachingOptions

+ (id)removeBundlesMatchingPredicates:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCleanupPredicates:v4];

  return v5;
}

- (PUIPosterSnapshotCachingOptions)initWithCleanupPredicates:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUIPosterSnapshotCachingOptions;
  v5 = [(PUIPosterSnapshotCachingOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cleanupPredicates = v5->_cleanupPredicates;
    v5->_cleanupPredicates = v6;
  }

  return v5;
}

- (PUIPosterSnapshotCachingOptions)init
{
  [(PUIPosterSnapshotCachingOptions *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end