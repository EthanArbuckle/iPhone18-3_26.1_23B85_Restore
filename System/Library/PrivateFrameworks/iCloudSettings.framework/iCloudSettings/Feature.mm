@interface Feature
- (_TtC14iCloudSettings7Feature)init;
- (_TtC14iCloudSettings7Feature)initWithFeatureId:(id)a3 title:(id)a4 subtitle:(id)a5 icons:(id)a6 action:(id)a7 iTunesItemId:(id)a8 bundleIdentifier:(id)a9;
@end

@implementation Feature

- (_TtC14iCloudSettings7Feature)initWithFeatureId:(id)a3 title:(id)a4 subtitle:(id)a5 icons:(id)a6 action:(id)a7 iTunesItemId:(id)a8 bundleIdentifier:(id)a9
{
  ObjectType = swift_getObjectType();
  v11 = sub_2759BA298();
  v13 = v12;
  v14 = sub_2759BA298();
  v16 = v15;
  v17 = sub_2759BA298();
  v19 = v18;
  if (!a8)
  {
    v20 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    v23 = 0;
    goto LABEL_6;
  }

  v20 = sub_2759BA298();
  a8 = v21;
  if (!a9)
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
  *(self + OBJC_IVAR____TtC14iCloudSettings7Feature_action) = a7;
  v27 = (self + OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId);
  *v27 = v20;
  v27[1] = a8;
  v28 = (self + OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier);
  *v28 = v22;
  v28[1] = v23;
  *(self + OBJC_IVAR____TtC14iCloudSettings7Feature_icons) = a6;
  v35.receiver = self;
  v35.super_class = ObjectType;
  v29 = a6;
  v30 = a7;
  return [(Feature *)&v35 init];
}

- (_TtC14iCloudSettings7Feature)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end