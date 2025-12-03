@interface Feature
- (_TtC14iCloudSettings7Feature)init;
- (_TtC14iCloudSettings7Feature)initWithFeatureId:(id)id title:(id)title subtitle:(id)subtitle icons:(id)icons action:(id)action iTunesItemId:(id)itemId bundleIdentifier:(id)identifier;
@end

@implementation Feature

- (_TtC14iCloudSettings7Feature)initWithFeatureId:(id)id title:(id)title subtitle:(id)subtitle icons:(id)icons action:(id)action iTunesItemId:(id)itemId bundleIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  v11 = sub_2759BA298();
  v13 = v12;
  v14 = sub_2759BA298();
  v16 = v15;
  v17 = sub_2759BA298();
  v19 = v18;
  if (!itemId)
  {
    v20 = 0;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    v23 = 0;
    goto LABEL_6;
  }

  v20 = sub_2759BA298();
  itemId = v21;
  if (!identifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = sub_2759BA298();
LABEL_6:
  v24 = (self + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId);
  *v24 = v11;
  v24[1] = v13;
  v25 = (self + OBJC_IVAR____TtC14iCloudSettings7Feature_title);
  *v25 = v14;
  v25[1] = v16;
  v26 = (self + OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle);
  *v26 = v17;
  v26[1] = v19;
  *(self + OBJC_IVAR____TtC14iCloudSettings7Feature_action) = action;
  v27 = (self + OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId);
  *v27 = v20;
  v27[1] = itemId;
  v28 = (self + OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier);
  *v28 = v22;
  v28[1] = v23;
  *(self + OBJC_IVAR____TtC14iCloudSettings7Feature_icons) = icons;
  v35.receiver = self;
  v35.super_class = ObjectType;
  iconsCopy = icons;
  actionCopy = action;
  return [(Feature *)&v35 init];
}

- (_TtC14iCloudSettings7Feature)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end