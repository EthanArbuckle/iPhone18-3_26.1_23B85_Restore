@interface PUIPosterSnapshotCachingOptions
+ (id)removeBundlesMatchingPredicates:(id)predicates;
- (PUIPosterSnapshotCachingOptions)init;
- (PUIPosterSnapshotCachingOptions)initWithCleanupPredicates:(id)predicates;
@end

@implementation PUIPosterSnapshotCachingOptions

+ (id)removeBundlesMatchingPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v5 = [[self alloc] initWithCleanupPredicates:predicatesCopy];

  return v5;
}

- (PUIPosterSnapshotCachingOptions)initWithCleanupPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v9.receiver = self;
  v9.super_class = PUIPosterSnapshotCachingOptions;
  v5 = [(PUIPosterSnapshotCachingOptions *)&v9 init];
  if (v5)
  {
    v6 = [predicatesCopy copy];
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