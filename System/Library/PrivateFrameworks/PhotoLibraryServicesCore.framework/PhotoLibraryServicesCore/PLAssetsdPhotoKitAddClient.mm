@interface PLAssetsdPhotoKitAddClient
- (BOOL)sendChangesRequest:(id)request error:(id *)error;
- (void)sendChangesRequest:(id)request reply:(id)reply;
@end

@implementation PLAssetsdPhotoKitAddClient

- (BOOL)sendChangesRequest:(id)request error:(id *)error
{
  requestCopy = request;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  LOBYTE(error) = [PLAssetsdPhotoKitClient sendChangesRequest:requestCopy usingProxyFactory:proxyFactory error:error];

  return error;
}

- (void)sendChangesRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  [PLAssetsdPhotoKitClient sendChangesRequest:requestCopy usingProxyFactory:proxyFactory reply:replyCopy];
}

@end