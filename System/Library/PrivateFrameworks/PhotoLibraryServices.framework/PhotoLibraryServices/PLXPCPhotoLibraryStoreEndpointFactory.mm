@interface PLXPCPhotoLibraryStoreEndpointFactory
- (PLXPCPhotoLibraryStoreEndpointFactory)initWithAssetsdClient:(id)client;
- (id)newEndpoint;
@end

@implementation PLXPCPhotoLibraryStoreEndpointFactory

- (id)newEndpoint
{
  libraryClient = [(PLAssetsdClient *)self->_assetsdClient libraryClient];
  getPhotoLibraryStoreXPCListenerEndpoint = [libraryClient getPhotoLibraryStoreXPCListenerEndpoint];

  return getPhotoLibraryStoreXPCListenerEndpoint;
}

- (PLXPCPhotoLibraryStoreEndpointFactory)initWithAssetsdClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = PLXPCPhotoLibraryStoreEndpointFactory;
  v6 = [(PLXPCPhotoLibraryStoreEndpointFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetsdClient, client);
  }

  return v7;
}

@end