@interface _UIIntelligenceEdgeLightEffect
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIIntelligenceEdgeLightEffect)init;
- (_UIIntelligenceEdgeLightEffect)initWithCoder:(id)a3;
- (_UIIntelligenceEdgeLightEffect)initWithLightSource:(id)a3 radius:(double)a4 region:(unint64_t)a5;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
@end

@implementation _UIIntelligenceEdgeLightEffect

- (_UIIntelligenceEdgeLightEffect)initWithLightSource:(id)a3 radius:(double)a4 region:(unint64_t)a5
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_lightSource) = a3;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_region) = a5;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_radius) = a4;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceEdgeLightEffect_deactivationTransitionDirection) = 0;
  v7.receiver = self;
  v7.super_class = _UIIntelligenceEdgeLightEffect;
  v5 = a3;
  return [(_UIIntelligenceEdgeLightEffect *)&v7 init];
}

- (_UIIntelligenceEdgeLightEffect)initWithCoder:(id)a3
{
  type metadata accessor for _UIIntelligenceEdgeLightEffect(self);
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  _UIIntelligenceEdgeLightEffect._update(_:for:usage:)(v8, v9, a5);
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  LOBYTE(a5) = _UIIntelligenceEdgeLightEffect._needsUpdateForTransition(from:to:usage:)(a3, a4, a5);

  return a5 & 1;
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