@interface PLXPCPhotoLibraryStoreEndpointFactory
- (PLXPCPhotoLibraryStoreEndpointFactory)initWithAssetsdClient:(id)a3;
- (id)newEndpoint;
@end

@implementation PLXPCPhotoLibraryStoreEndpointFactory

- (id)newEndpoint
{
  v2 = [(PLAssetsdClient *)self->_assetsdClient libraryClient];
  v3 = [v2 getPhotoLibraryStoreXPCListenerEndpoint];

  return v3;
}

- (PLXPCPhotoLibraryStoreEndpointFactory)initWithAssetsdClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLXPCPhotoLibraryStoreEndpointFactory;
  v6 = [(PLXPCPhotoLibraryStoreEndpointFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetsdClient, a3);
  }

  return v7;
}

@end