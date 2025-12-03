@interface SBHPageManagementIcon
- (SBHPageManagementIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d;
- (SBHPageManagementIcon)initWithListModel:(id)model;
@end

@implementation SBHPageManagementIcon

- (SBHPageManagementIcon)initWithListModel:(id)model
{
  v5 = sub_1BEE468CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHPageManagementIcon_listModel) = model;
  modelCopy = model;
  sub_1BEE468BC();
  sub_1BEE468AC();
  (*(v6 + 8))(v8, v5);
  v10 = sub_1BEE4705C();

  v13.receiver = self;
  v13.super_class = SBHPageManagementIcon;
  v11 = [(SBLeafIcon *)&v13 initWithLeafIdentifier:v10 applicationBundleID:0];

  return v11;
}

- (SBHPageManagementIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end