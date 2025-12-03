@interface PGPublicEventCachingFetchRequest
- (PGPublicEventCachingFetchRequest)initWithGraph:(id)graph momentNodeCollection:(id)collection cachingOptions:(id)options;
@end

@implementation PGPublicEventCachingFetchRequest

- (PGPublicEventCachingFetchRequest)initWithGraph:(id)graph momentNodeCollection:(id)collection cachingOptions:(id)options
{
  graphCopy = graph;
  collectionCopy = collection;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = PGPublicEventCachingFetchRequest;
  v12 = [(PGPublicEventCachingFetchRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, graph);
    objc_storeStrong(&v13->_momentNodes, collection);
    objc_storeStrong(&v13->_cachingOptions, options);
  }

  return v13;
}

@end