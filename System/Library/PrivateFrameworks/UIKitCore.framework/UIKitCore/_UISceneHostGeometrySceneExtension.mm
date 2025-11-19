@interface _UISceneHostGeometrySceneExtension
+ (id)hostComponents;
- (_UISceneHostGeometrySceneExtension)init;
@end

@implementation _UISceneHostGeometrySceneExtension

+ (id)hostComponents
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18A64BFB0;
  *(v2 + 32) = type metadata accessor for _UISceneHostGeometryHostComponent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9395B0);
  v3 = sub_18A4A7518();

  return v3;
}

- (_UISceneHostGeometrySceneExtension)init
{
  v3.receiver = self;
  v3.super_class = _UISceneHostGeometrySceneExtension;
  return [(_UISceneHostGeometrySceneExtension *)&v3 init];
}

@end