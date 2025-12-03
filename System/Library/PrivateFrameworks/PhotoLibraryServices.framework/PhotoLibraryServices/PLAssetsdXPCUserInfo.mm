@interface PLAssetsdXPCUserInfo
- (PLAssetsdXPCUserInfo)initWithLibraryServicesManager:(id)manager;
@end

@implementation PLAssetsdXPCUserInfo

- (PLAssetsdXPCUserInfo)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = PLAssetsdXPCUserInfo;
  v6 = [(PLAssetsdXPCUserInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryServicesManager, manager);
    v8 = v7;
  }

  return v7;
}

@end