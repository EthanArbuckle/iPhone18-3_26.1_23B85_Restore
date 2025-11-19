@interface PLAssetsdBaseClient
- (PLAssetsdBaseClient)initWithQueue:(id)a3 proxyCreating:(id)a4 proxyGetter:(SEL)a5 clientState:(id)a6;
@end

@implementation PLAssetsdBaseClient

- (PLAssetsdBaseClient)initWithQueue:(id)a3 proxyCreating:(id)a4 proxyGetter:(SEL)a5 clientState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = PLAssetsdBaseClient;
  v13 = [(PLAssetsdBaseClient *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_clientState, a6);
    v15 = [[PLAssetsdServiceProxyFactory alloc] initWithQueue:v10 proxyCreating:v11 proxyGetter:a5];
    proxyFactory = v14->_proxyFactory;
    v14->_proxyFactory = v15;
  }

  return v14;
}

@end