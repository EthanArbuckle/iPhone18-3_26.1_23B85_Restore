@interface PLCloudFeedEntryFetch
- (PLCloudFeedEntryFetch)initWithPredicate:(id)a3 entity:(id)a4;
@end

@implementation PLCloudFeedEntryFetch

- (PLCloudFeedEntryFetch)initWithPredicate:(id)a3 entity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLCloudFeedEntryFetch;
  v9 = [(PLCloudFeedEntryFetch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, a3);
    objc_storeStrong(&v10->_entity, a4);
  }

  return v10;
}

@end