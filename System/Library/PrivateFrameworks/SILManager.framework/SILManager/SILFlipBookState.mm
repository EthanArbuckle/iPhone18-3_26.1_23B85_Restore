@interface SILFlipBookState
- (NSDictionary)transitions;
- (_TtC10SILManager16SILFlipBookState)init;
- (id)init:(id)init name:(id)name transitions:(id)transitions error:(id *)error;
@end

@implementation SILFlipBookState

- (NSDictionary)transitions
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SILManager26SILFlipBookTransitionPointCGMd);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)init:(id)init name:(id)name transitions:(id)transitions error:(id *)error
{
  type metadata accessor for FrameDesc();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySiGGMd);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return SILFlipBookState.init(_:name:transitions:)(v6, v7, v9, v10);
}

- (_TtC10SILManager16SILFlipBookState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end