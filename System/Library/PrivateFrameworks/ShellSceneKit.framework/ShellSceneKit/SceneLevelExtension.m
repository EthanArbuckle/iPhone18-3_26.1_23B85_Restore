@interface SceneLevelExtension
+ (id)hostComponents;
+ (id)settingsExtensions;
- (_TtC13ShellSceneKit19SceneLevelExtension)init;
@end

@implementation SceneLevelExtension

+ (id)settingsExtensions
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055830, &qword_265FEFEA0);
  v0 = sub_265FEC1E0();

  return v0;
}

+ (id)hostComponents
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055800, &unk_265FF0510);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265FEE990;
  *(v2 + 32) = type metadata accessor for SceneLevelExtension.HostComponent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055830, &qword_265FEFEA0);
  v3 = sub_265FEC1E0();

  return v3;
}

- (_TtC13ShellSceneKit19SceneLevelExtension)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SceneLevelExtension *)&v3 init];
}

@end