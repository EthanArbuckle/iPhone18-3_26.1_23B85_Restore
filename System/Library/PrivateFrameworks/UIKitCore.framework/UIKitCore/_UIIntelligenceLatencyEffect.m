@interface _UIIntelligenceLatencyEffect
- (BOOL)isEqual:(id)a3;
- (_UIIntelligenceLatencyEffect)init;
- (_UIIntelligenceLatencyEffect)initWithCoder:(id)a3;
- (_UIIntelligenceLatencyEffect)initWithMode:(unint64_t)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
@end

@implementation _UIIntelligenceLatencyEffect

- (_UIIntelligenceLatencyEffect)initWithMode:(unint64_t)a3
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceLatencyEffect_mode) = a3;
  v4.receiver = self;
  v4.super_class = _UIIntelligenceLatencyEffect;
  return [(_UIIntelligenceLatencyEffect *)&v4 init];
}

- (_UIIntelligenceLatencyEffect)initWithCoder:(id)a3
{
  type metadata accessor for _UIIntelligenceLatencyEffect();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  if (a5 == 1)
  {
    if (a3)
    {
      v6 = objc_allocWithZone(type metadata accessor for _UILatencyEmitterViewEntry());
      v8 = a3;
      v7 = [v6 init];
      [v8 addOverlay_];
    }

    else
    {
      __break(1u);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = _UIIntelligenceLatencyEffect.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (_UIIntelligenceLatencyEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end