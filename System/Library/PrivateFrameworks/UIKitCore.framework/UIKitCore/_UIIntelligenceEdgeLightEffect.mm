@interface _UIIntelligenceEdgeLightEffect
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIIntelligenceEdgeLightEffect)init;
- (_UIIntelligenceEdgeLightEffect)initWithCoder:(id)coder;
- (_UIIntelligenceEdgeLightEffect)initWithLightSource:(id)source radius:(double)radius region:(unint64_t)region;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation _UIIntelligenceEdgeLightEffect

- (_UIIntelligenceEdgeLightEffect)initWithLightSource:(id)source radius:(double)radius region:(unint64_t)region
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_lightSource) = source;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_region) = region;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_radius) = radius;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_deactivationTransitionDirection) = 0;
  v7.receiver = self;
  v7.super_class = _UIIntelligenceEdgeLightEffect;
  sourceCopy = source;
  return [(_UIIntelligenceEdgeLightEffect *)&v7 init];
}

- (_UIIntelligenceEdgeLightEffect)initWithCoder:(id)coder
{
  type metadata accessor for _UIIntelligenceEdgeLightEffect(self);
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  environmentCopy = environment;
  selfCopy = self;
  _UIIntelligenceEdgeLightEffect._update(_:for:usage:)(descriptorCopy, environmentCopy, usage);
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  selfCopy = self;
  LOBYTE(usage) = _UIIntelligenceEdgeLightEffect._needsUpdateForTransition(from:to:usage:)(environment, toEnvironment, usage);

  return usage & 1;
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

  v6 = _UIIntelligenceEdgeLightEffect.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (_UIIntelligenceEdgeLightEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end