@interface PLAssetsdBaseClient
- (PLAssetsdBaseClient)initWithQueue:(id)queue proxyCreating:(id)creating proxyGetter:(SEL)getter clientState:(id)state;
@end

@implementation PLAssetsdBaseClient

- (PLAssetsdBaseClient)initWithQueue:(id)queue proxyCreating:(id)creating proxyGetter:(SEL)getter clientState:(id)state
{
  queueCopy = queue;
  creatingCopy = creating;
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = PLAssetsdBaseClient;
  v13 = [(PLAssetsdBaseClient *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_clientState, state);
    v15 = [[PLAssetsdServiceProxyFactory alloc] initWithQueue:queueCopy proxyCreating:creatingCopy proxyGetter:getter];
    proxyFactory = v14->_proxyFactory;
    v14->_proxyFactory = v15;
  }

  return v14;
}

@end