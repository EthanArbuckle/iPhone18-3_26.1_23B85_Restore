@interface SBHPageManagementIcon
- (SBHPageManagementIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
- (SBHPageManagementIcon)initWithListModel:(id)a3;
@end

@implementation SBHPageManagementIcon

- (SBHPageManagementIcon)initWithListModel:(id)a3
{
  v5 = sub_1BEE468CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHPageManagementIcon_listModel) = a3;
  v9 = a3;
  sub_1BEE468BC();
  sub_1BEE468AC();
  (*(v6 + 8))(v8, v5);
  v10 = sub_1BEE4705C();

  v13.receiver = self;
  v13.super_class = SBHPageManagementIcon;
  v11 = [(SBLeafIcon *)&v13 initWithLeafIdentifier:v10 applicationBundleID:0];

  return v11;
}

- (SBHPageManagementIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end