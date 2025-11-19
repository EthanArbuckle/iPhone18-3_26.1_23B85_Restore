@interface PLAssetsdPhotoKitAddClient
- (BOOL)sendChangesRequest:(id)a3 error:(id *)a4;
- (void)sendChangesRequest:(id)a3 reply:(id)a4;
@end

@implementation PLAssetsdPhotoKitAddClient

- (BOOL)sendChangesRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLAssetsdBaseClient *)self proxyFactory];
  LOBYTE(a4) = [PLAssetsdPhotoKitClient sendChangesRequest:v6 usingProxyFactory:v7 error:a4];

  return a4;
}

- (void)sendChangesRequest:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  [PLAssetsdPhotoKitClient sendChangesRequest:v7 usingProxyFactory:v8 reply:v6];
}

@end