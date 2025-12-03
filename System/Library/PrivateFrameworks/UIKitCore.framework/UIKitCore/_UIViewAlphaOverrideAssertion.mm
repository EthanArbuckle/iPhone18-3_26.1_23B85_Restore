@interface _UIViewAlphaOverrideAssertion
- (UIView)sourceView;
- (_UIAssertion)assertion;
- (_UIAssertion)backgroundSuppressionAssertion;
- (_UIViewAlphaOverrideAssertion)init;
- (double)alpha;
- (void)invalidate;
- (void)setAlpha:(double)alpha;
- (void)setModifier:(id)modifier;
- (void)updateBackgroundSuppressionIfNeeded;
@end

@implementation _UIViewAlphaOverrideAssertion

- (void)setModifier:(id)modifier
{
  v4 = *(self + OBJC_IVAR____UIViewAlphaOverrideAssertion_modifier);
  *(self + OBJC_IVAR____UIViewAlphaOverrideAssertion_modifier) = modifier;
  modifierCopy = modifier;
}

- (void)updateBackgroundSuppressionIfNeeded
{
  selfCopy = self;
  sub_188D84318();
}

- (double)alpha
{
  selfCopy = self;
  v3 = sub_188D7271C();

  return v3;
}

- (UIView)sourceView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIAssertion)backgroundSuppressionAssertion
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_UIViewAlphaOverrideAssertion)init
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____UIViewAlphaOverrideAssertion_assertion) = 0;
  *(self + OBJC_IVAR____UIViewAlphaOverrideAssertion_modifier) = 0;
  *(self + OBJC_IVAR____UIViewAlphaOverrideAssertion_backgroundSuppressionAssertion) = 0;
  v4.receiver = self;
  v4.super_class = _UIViewAlphaOverrideAssertion;
  return [(_UIViewAlphaOverrideAssertion *)&v4 init];
}

- (_UIAssertion)assertion
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setAlpha:(double)alpha
{
  selfCopy = self;
  sub_189017410();
}

- (void)invalidate
{
  selfCopy = self;
  [(_UIViewAlphaOverrideAssertion *)selfCopy setAssertion:0];
  [(_UIViewAlphaOverrideAssertion *)selfCopy setBackgroundSuppressionAssertion:0];
}

@end