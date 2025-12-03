@interface PhotoKitFetchResultFirstAssetModel.Proxy
- (_TtCC12PhotosUICore34PhotoKitFetchResultFirstAssetModelP33_7A638B2861AEEAE35A983DCD609E6EC05Proxy)init;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
@end

@implementation PhotoKitFetchResultFirstAssetModel.Proxy

- (id)prepareForPhotoLibraryChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v6 = sub_1A3FEEF4C();

  if (v6)
  {
    v7 = sub_1A524C3D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  if (info)
  {
    v6 = sub_1A524C3E4();
  }

  else
  {
    v6 = 0;
  }

  queueCopy = queue;
  selfCopy = self;
  sub_1A3FEF728(v6);
}

- (_TtCC12PhotosUICore34PhotoKitFetchResultFirstAssetModelP33_7A638B2861AEEAE35A983DCD609E6EC05Proxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end