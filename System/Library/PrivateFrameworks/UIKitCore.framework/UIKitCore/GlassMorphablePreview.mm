@interface GlassMorphablePreview
- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview)initWithView:(id)a3 parameters:(id)a4 target:(id)a5;
- (id)_resolvedBackgroundMaterial;
- (id)retargetedPreviewWithTarget:(id)a3;
@end

@implementation GlassMorphablePreview

- (id)retargetedPreviewWithTarget:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-v7];
  v16.receiver = self;
  v16.super_class = ObjectType;
  v9 = self;
  v10 = [(UITargetedPreview *)&v16 retargetedPreviewWithTarget:a3];
  v11 = swift_dynamicCastClassUnconditional();
  v12 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview_glass;
  swift_beginAccess();
  sub_188A3F29C(v9 + v12, v8, &unk_1EA93BA10);

  v13 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview_glass;
  swift_beginAccess();
  sub_188A4B4F4(v8, v11 + v13, &unk_1EA93BA10);
  swift_endAccess();

  return v11;
}

- (id)_resolvedBackgroundMaterial
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for _Glass(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview_glass;
  swift_beginAccess();
  if ((*(v5 + 48))(self + v8, 1, v4))
  {
    v14.receiver = self;
    v14.super_class = ObjectType;
    v9 = [(UITargetedPreview *)&v14 _resolvedBackgroundMaterial];
  }

  else
  {
    sub_1890A43A8(self + v8, v7, type metadata accessor for _Glass);
    v10 = self;
    v11 = sub_1890A2744();
    sub_188B7533C(v7);

    v9 = v11;
  }

  return v9;
}

- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview)initWithView:(id)a3 parameters:(id)a4 target:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7421GlassMorphablePreview_glass;
  v11 = type metadata accessor for _Glass(0);
  (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(UITargetedPreview *)&v13 initWithView:a3 parameters:a4 target:a5];
}

@end