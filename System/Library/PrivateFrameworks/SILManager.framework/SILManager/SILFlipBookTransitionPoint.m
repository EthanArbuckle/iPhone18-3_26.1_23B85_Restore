@interface SILFlipBookTransitionPoint
+ (id)parseTransitionPoints:(id)a3 :(id)a4 error:(id *)a5;
- (_TtC10SILManager26SILFlipBookTransitionPoint)init;
- (id)init:(id)a3 :(unsigned __int16)a4 :(id)a5 error:(id *)a6;
@end

@implementation SILFlipBookTransitionPoint

+ (id)parseTransitionPoints:(id)a3 :(id)a4 error:(id *)a5
{
  type metadata accessor for FrameDesc();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  specialized static SILFlipBookTransitionPoint.parseTransitionPoints(_:_:)(v5, v6);

  type metadata accessor for SILFlipBookTransitionPoint();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)init:(id)a3 :(unsigned __int16)a4 :(id)a5 error:(id *)a6
{
  v6 = a4;
  type metadata accessor for FrameDesc();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  SILFlipBookTransitionPoint.init(_:_:_:)(v7, v6, v8);
  return result;
}

- (_TtC10SILManager26SILFlipBookTransitionPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end