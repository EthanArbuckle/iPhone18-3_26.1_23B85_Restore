@interface _UICustomContentConfiguration
- (NSString)description;
- (_TtC5UIKit29_UICustomContentConfiguration)init;
- (id)_wrappedConfigurationIdentifier;
- (id)makeContentView;
- (id)updatedConfigurationForState:(id)a3;
@end

@implementation _UICustomContentConfiguration

- (id)makeContentView
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = *(v5 + 8);
  v7 = self;
  v8 = v6(v4, v5);
  v10 = v9;
  v11 = type metadata accessor for _UICustomContentView();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView];
  *v13 = v8;
  *(v13 + 1) = v10;
  v17.receiver = v12;
  v17.super_class = v11;
  v14 = v8;
  v15 = [(_UICustomContentConfiguration *)&v17 initWithFrame:0.0, 0.0, 0.0, 0.0];

  return v15;
}

- (id)updatedConfigurationForState:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_188C7CFE4();
  swift_unknownObjectRelease();

  return v5;
}

- (id)_wrappedConfigurationIdentifier
{
  v2 = self;
  sub_188F473C0();

  v3 = sub_18A4A7258();

  return v3;
}

- (NSString)description
{
  sub_188A53994(self + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  sub_18A4A72F8();
  v2 = sub_18A4A7258();

  return v2;
}

- (_TtC5UIKit29_UICustomContentConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end