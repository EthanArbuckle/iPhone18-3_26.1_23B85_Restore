@interface SpatialSceneDebugRepresentationWrapper
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
- (_TtC22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapper)init;
@end

@implementation SpatialSceneDebugRepresentationWrapper

- (_TtC22libViewDebuggerSupport38SpatialSceneDebugRepresentationWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  if (specialized static SpatialSceneDebugRepresentationWrapper.fallback_debugHierarchyPropertyDescriptions()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  static SpatialSceneDebugRepresentationWrapper.fallback_debugHierarchyValueForProperty(withName:on:outOptions:)(v6, v8, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v11);

  __swift_project_boxed_opaque_existential_0(v12, v12[3]);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v12);

  return v9;
}

@end