@interface SettingsFooterItem
- (_TtC14iCloudSettings18SettingsFooterItem)init;
- (_TtC14iCloudSettings18SettingsFooterItem)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 action:(id)a6;
@end

@implementation SettingsFooterItem

- (_TtC14iCloudSettings18SettingsFooterItem)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 action:(id)a6
{
  if (a3)
  {
    v8 = sub_2759BA298();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_2759BA298();
  v13 = v12;
  v14 = sub_2759BA298();
  v15 = (self + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier);
  *v15 = v8;
  v15[1] = v10;
  v16 = (self + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title);
  *v16 = v11;
  v16[1] = v13;
  v17 = (self + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_subtitle);
  *v17 = v14;
  v17[1] = v18;
  *(self + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action) = a6;
  v21.receiver = self;
  v21.super_class = type metadata accessor for SettingsFooterItem();
  v19 = a6;
  return [(SettingsFooterItem *)&v21 init];
}

- (_TtC14iCloudSettings18SettingsFooterItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end