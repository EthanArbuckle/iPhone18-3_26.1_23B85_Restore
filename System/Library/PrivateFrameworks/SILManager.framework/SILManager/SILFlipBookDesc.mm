@interface SILFlipBookDesc
- (BOOL)transitionSupportedFromState:(id)state toState:(id)toState;
- (NSDictionary)statesInfo;
- (_TtC10SILManager15SILFlipBookDesc)init;
- (id)init:(id)init :(id)a4 error:(id *)error;
@end

@implementation SILFlipBookDesc

- (NSDictionary)statesInfo
{
  type metadata accessor for SILFlipBookState();

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)init:(id)init :(id)a4 error:(id *)error
{
  type metadata accessor for FrameDesc();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSaySiGGGMd);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return SILFlipBookDesc.init(_:_:)(v5, v6);
}

- (BOOL)transitionSupportedFromState:(id)state toState:(id)toState
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = SILFlipBookDesc.transitionSupported(fromState:toState:)(v12, v13);

  return v8 & 1;
}

- (_TtC10SILManager15SILFlipBookDesc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end