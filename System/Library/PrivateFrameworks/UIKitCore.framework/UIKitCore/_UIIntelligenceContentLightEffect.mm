@interface _UIIntelligenceContentLightEffect
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIIntelligenceContentLightEffect)init;
- (_UIIntelligenceContentLightEffect)initWithCoder:(id)coder;
- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)source;
- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)source blurStyle:(int64_t)style;
- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)source lightMaterial:(id)material darkMaterial:(id)darkMaterial bundle:(id)bundle;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation _UIIntelligenceContentLightEffect

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  environmentCopy = environment;
  selfCopy = self;
  _UIIntelligenceContentLightEffect._update(_:for:usage:)(descriptorCopy, environmentCopy, usage);
}

- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)source
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource) = source;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_deactivationTransitionDirection) = 0;
  v3 = self + OBJC_IVAR____UIIntelligenceContentLightEffect_material;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v3[40] = 2;
  v6.receiver = self;
  v6.super_class = _UIIntelligenceContentLightEffect;
  sourceCopy = source;
  return [(_UIIntelligenceContentLightEffect *)&v6 init];
}

- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)source blurStyle:(int64_t)style
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource) = source;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_deactivationTransitionDirection) = 0;
  v4 = self + OBJC_IVAR____UIIntelligenceContentLightEffect_material;
  *v4 = style;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 0;
  v7.receiver = self;
  v7.super_class = _UIIntelligenceContentLightEffect;
  sourceCopy = source;
  return [(_UIIntelligenceContentLightEffect *)&v7 init];
}

- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)source lightMaterial:(id)material darkMaterial:(id)darkMaterial bundle:(id)bundle
{
  v9 = sub_18A4A7288();
  v11 = v10;
  v12 = sub_18A4A7288();
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource) = source;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_deactivationTransitionDirection) = 0;
  v13 = self + OBJC_IVAR____UIIntelligenceContentLightEffect_material;
  *v13 = v9;
  *(v13 + 1) = v11;
  *(v13 + 2) = v12;
  *(v13 + 3) = v14;
  *(v13 + 4) = bundle;
  v13[40] = 1;
  v18.receiver = self;
  v18.super_class = _UIIntelligenceContentLightEffect;
  sourceCopy = source;
  bundleCopy = bundle;
  return [(_UIIntelligenceContentLightEffect *)&v18 init];
}

- (_UIIntelligenceContentLightEffect)initWithCoder:(id)coder
{
  type metadata accessor for _UIIntelligenceContentLightEffect(self);
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  selfCopy = self;
  LOBYTE(usage) = _UIIntelligenceContentLightEffect._needsUpdateForTransition(from:to:usage:)(environment, toEnvironment, usage);

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

  v6 = _UIIntelligenceContentLightEffect.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (_UIIntelligenceContentLightEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end