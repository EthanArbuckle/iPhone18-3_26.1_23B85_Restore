@interface _UIViewAlphaOverrideAssertion
- (UIView)sourceView;
- (_UIAssertion)assertion;
- (_UIAssertion)backgroundSuppressionAssertion;
- (_UIViewAlphaOverrideAssertion)init;
- (double)alpha;
- (void)invalidate;
- (void)setAlpha:(double)a3;
- (void)setModifier:(id)a3;
- (void)updateBackgroundSuppressionIfNeeded;
@end

@implementation _UIViewAlphaOverrideAssertion

- (void)setModifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIViewAlphaOverrideAssertion_modifier);
  *(self + OBJC_IVAR____UIViewAlphaOverrideAssertion_modifier) = a3;
  v3 = a3;
}

- (void)updateBackgroundSuppressionIfNeeded
{
  v2 = self;
  sub_188D84318();
}

- (double)alpha
{
  v2 = self;
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

- (void)setAlpha:(double)a3
{
  v3 = self;
  sub_189017410();
}

- (void)invalidate
{
  v2 = self;
  [(_UIViewAlphaOverrideAssertion *)v2 setAssertion:0];
  [(_UIViewAlphaOverrideAssertion *)v2 setBackgroundSuppressionAssertion:0];
}

@end