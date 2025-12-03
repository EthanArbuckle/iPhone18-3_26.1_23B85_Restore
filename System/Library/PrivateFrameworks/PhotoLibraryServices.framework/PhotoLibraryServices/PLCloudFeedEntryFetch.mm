@interface PLCloudFeedEntryFetch
- (PLCloudFeedEntryFetch)initWithPredicate:(id)predicate entity:(id)entity;
@end

@implementation PLCloudFeedEntryFetch

- (PLCloudFeedEntryFetch)initWithPredicate:(id)predicate entity:(id)entity
{
  predicateCopy = predicate;
  entityCopy = entity;
  v12.receiver = self;
  v12.super_class = PLCloudFeedEntryFetch;
  v9 = [(PLCloudFeedEntryFetch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, predicate);
    objc_storeStrong(&v10->_entity, entity);
  }

  return v10;
}

@end