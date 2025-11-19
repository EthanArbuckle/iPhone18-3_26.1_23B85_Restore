@interface _UICustomContentView
- (BOOL)supportsConfiguration:(id)a3;
- (NSString)description;
- (UIContentConfiguration)configuration;
- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithCoder:(id)a3;
- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithFrame:(CGRect)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation _UICustomContentView

- (UIContentConfiguration)configuration
{
  v3 = type metadata accessor for _UICustomContentConfiguration();
  v4 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v7 = self;
  v6(v18, ObjectType, v4);
  v8 = v19;
  v9 = v20;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = sub_188C7D408(v13, v3, v8, v9);

  __swift_destroy_boxed_opaque_existential_0Tm(v18);

  return v15;
}

- (BOOL)supportsConfiguration:(id)a3
{
  type metadata accessor for _UICustomContentConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView);
    ObjectType = swift_getObjectType();
    v8 = OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration;
    v9 = *(v6 + 32);
    swift_unknownObjectRetain();
    v10 = self;
    v11 = v9(v5 + v8, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)setConfiguration:(id)a3
{
  type metadata accessor for _UICustomContentConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView);
    ObjectType = swift_getObjectType();
    sub_188A53994(v5 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, v10);
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = self;
    v8(v10, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (NSString)description
{
  swift_getObjectType();
  swift_getWitnessTable();
  sub_188E43C18();
  v2 = sub_18A4A7258();

  return v2;
}

- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end