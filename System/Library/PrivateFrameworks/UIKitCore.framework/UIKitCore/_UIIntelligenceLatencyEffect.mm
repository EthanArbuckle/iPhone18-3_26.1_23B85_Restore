@interface _UIIntelligenceLatencyEffect
- (BOOL)isEqual:(id)equal;
- (_UIIntelligenceLatencyEffect)init;
- (_UIIntelligenceLatencyEffect)initWithCoder:(id)coder;
- (_UIIntelligenceLatencyEffect)initWithMode:(unint64_t)mode;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation _UIIntelligenceLatencyEffect

- (_UIIntelligenceLatencyEffect)initWithMode:(unint64_t)mode
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceLatencyEffect_mode) = mode;
  v4.receiver = self;
  v4.super_class = _UIIntelligenceLatencyEffect;
  return [(_UIIntelligenceLatencyEffect *)&v4 init];
}

- (_UIIntelligenceLatencyEffect)initWithCoder:(id)coder
{
  type metadata accessor for _UIIntelligenceLatencyEffect();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  if (usage == 1)
  {
    if (descriptor)
    {
      v6 = objc_allocWithZone(type metadata accessor for _UILatencyEmitterViewEntry());
      descriptorCopy = descriptor;
      v7 = [v6 init];
      [descriptorCopy addOverlay_];
    }

    else
    {
      __break(1u);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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