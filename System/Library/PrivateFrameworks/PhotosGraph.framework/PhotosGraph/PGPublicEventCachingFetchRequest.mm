@interface PGPublicEventCachingFetchRequest
- (PGPublicEventCachingFetchRequest)initWithGraph:(id)a3 momentNodeCollection:(id)a4 cachingOptions:(id)a5;
@end

@implementation PGPublicEventCachingFetchRequest

- (PGPublicEventCachingFetchRequest)initWithGraph:(id)a3 momentNodeCollection:(id)a4 cachingOptions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGPublicEventCachingFetchRequest;
  v12 = [(PGPublicEventCachingFetchRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, a3);
    objc_storeStrong(&v13->_momentNodes, a4);
    objc_storeStrong(&v13->_cachingOptions, a5);
  }

  return v13;
}

@end