@interface ManageStorageApp
- (NSArray)bundleIds;
- (_TtC14iCloudSettings16ManageStorageApp)init;
- (void)setBundleIds:(id)ids;
@end

@implementation ManageStorageApp

- (NSArray)bundleIds
{
  v2 = *(self + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);

  v3 = sub_2759BA3D8();

  return v3;
}

- (void)setBundleIds:(id)ids
{
  v4 = sub_2759BA3E8();
  v5 = *(self + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
  *(self + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds) = v4;
}

- (_TtC14iCloudSettings16ManageStorageApp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end