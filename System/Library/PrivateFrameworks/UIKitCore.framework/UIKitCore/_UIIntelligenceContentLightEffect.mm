@interface _UIIntelligenceContentLightEffect
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIIntelligenceContentLightEffect)init;
- (_UIIntelligenceContentLightEffect)initWithCoder:(id)a3;
- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)a3;
- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)a3 blurStyle:(int64_t)a4;
- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)a3 lightMaterial:(id)a4 darkMaterial:(id)a5 bundle:(id)a6;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
@end

@implementation _UIIntelligenceContentLightEffect

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  _UIIntelligenceContentLightEffect._update(_:for:usage:)(v8, v9, a5);
}

- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource) = a3;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_deactivationTransitionDirection) = 0;
  v3 = self + OBJC_IVAR____UIIntelligenceContentLightEffect_material;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v3[40] = 2;
  v6.receiver = self;
  v6.super_class = _UIIntelligenceContentLightEffect;
  v4 = a3;
  return [(_UIIntelligenceContentLightEffect *)&v6 init];
}

- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)a3 blurStyle:(int64_t)a4
{
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource) = a3;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_deactivationTransitionDirection) = 0;
  v4 = self + OBJC_IVAR____UIIntelligenceContentLightEffect_material;
  *v4 = a4;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 0;
  v7.receiver = self;
  v7.super_class = _UIIntelligenceContentLightEffect;
  v5 = a3;
  return [(_UIIntelligenceContentLightEffect *)&v7 init];
}

- (_UIIntelligenceContentLightEffect)initWithLightSource:(id)a3 lightMaterial:(id)a4 darkMaterial:(id)a5 bundle:(id)a6
{
  v9 = sub_18A4A7288();
  v11 = v10;
  v12 = sub_18A4A7288();
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource) = a3;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_activationTransitionDirection) = 0;
  *(&self->super.super.isa + OBJC_IVAR____UIIntelligenceContentLightEffect_deactivationTransitionDirection) = 0;
  v13 = self + OBJC_IVAR____UIIntelligenceContentLightEffect_material;
  *v13 = v9;
  *(v13 + 1) = v11;
  *(v13 + 2) = v12;
  *(v13 + 3) = v14;
  *(v13 + 4) = a6;
  v13[40] = 1;
  v18.receiver = self;
  v18.super_class = _UIIntelligenceContentLightEffect;
  v15 = a3;
  v16 = a6;
  return [(_UIIntelligenceContentLightEffect *)&v18 init];
}

- (_UIIntelligenceContentLightEffect)initWithCoder:(id)a3
{
  type metadata accessor for _UIIntelligenceContentLightEffect(self);
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  LOBYTE(a5) = _UIIntelligenceContentLightEffect._needsUpdateForTransition(from:to:usage:)(a3, a4, a5);

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