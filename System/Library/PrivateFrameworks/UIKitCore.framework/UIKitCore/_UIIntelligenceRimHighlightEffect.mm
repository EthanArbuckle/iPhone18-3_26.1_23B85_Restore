@interface _UIIntelligenceRimHighlightEffect
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIIntelligenceRimHighlightEffect)init;
- (_UIIntelligenceRimHighlightEffect)initWithCoder:(id)a3;
- (_UIIntelligenceRimHighlightEffect)initWithThickness:(double)a3 activationDirection:(unint64_t)a4;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
@end

@implementation _UIIntelligenceRimHighlightEffect

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  _UIIntelligenceRimHighlightEffect._update(_:for:usage:)(a3, a4, a5);
}

- (_UIIntelligenceRimHighlightEffect)initWithThickness:(double)a3 activationDirection:(unint64_t)a4
{
  v7 = [objc_opt_self() whiteColor];
  v8 = [(_UIIntelligenceRimHighlightEffect *)self initWithThickness:v7 color:0 softRadius:a4 region:a3 activationDirection:0.0];

  return v8;
}

- (_UIIntelligenceRimHighlightEffect)initWithCoder:(id)a3
{
  type metadata accessor for _UIIntelligenceRimHighlightEffect();
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  LOBYTE(a5) = _UIIntelligenceRimHighlightEffect._needsUpdateForTransition(from:to:usage:)(a3, a4, a5);

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

  v6 = _UIIntelligenceRimHighlightEffect.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (_UIIntelligenceRimHighlightEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end