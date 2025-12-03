@interface _UIIntelligenceRimHighlightEffect
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIIntelligenceRimHighlightEffect)init;
- (_UIIntelligenceRimHighlightEffect)initWithCoder:(id)coder;
- (_UIIntelligenceRimHighlightEffect)initWithThickness:(double)thickness activationDirection:(unint64_t)direction;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation _UIIntelligenceRimHighlightEffect

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  environmentCopy = environment;
  selfCopy = self;
  _UIIntelligenceRimHighlightEffect._update(_:for:usage:)(descriptor, environment, usage);
}

- (_UIIntelligenceRimHighlightEffect)initWithThickness:(double)thickness activationDirection:(unint64_t)direction
{
  whiteColor = [objc_opt_self() whiteColor];
  v8 = [(_UIIntelligenceRimHighlightEffect *)self initWithThickness:whiteColor color:0 softRadius:direction region:thickness activationDirection:0.0];

  return v8;
}

- (_UIIntelligenceRimHighlightEffect)initWithCoder:(id)coder
{
  type metadata accessor for _UIIntelligenceRimHighlightEffect();
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  selfCopy = self;
  LOBYTE(usage) = _UIIntelligenceRimHighlightEffect._needsUpdateForTransition(from:to:usage:)(environment, toEnvironment, usage);

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