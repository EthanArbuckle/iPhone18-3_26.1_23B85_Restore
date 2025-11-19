@interface ManageStorageAction
- (_TtC14iCloudSettings19ManageStorageAction)init;
- (_TtC14iCloudSettings6Action)homeAction;
- (void)setActionURL:(id)a3;
@end

@implementation ManageStorageAction

- (void)setActionURL:(id)a3
{
  v4 = sub_2759BA298();
  v5 = (self + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
  v6 = *(self + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (_TtC14iCloudSettings6Action)homeAction
{
  v2 = self;
  v3 = sub_2758A1CD0();

  return v3;
}

- (_TtC14iCloudSettings19ManageStorageAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end