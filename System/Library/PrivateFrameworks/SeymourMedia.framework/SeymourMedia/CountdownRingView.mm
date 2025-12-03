@interface CountdownRingView
- (_TtC12SeymourMedia17CountdownRingView)initWithFrame:(CGRect)frame;
- (void)countdownAnimator:(id)animator performingAnimation:(id)animation withDuration:(double)duration;
- (void)countdownAnimatorDidFinishAnimating:(id)animating;
@end

@implementation CountdownRingView

- (_TtC12SeymourMedia17CountdownRingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)countdownAnimatorDidFinishAnimating:(id)animating
{
  v4 = (self + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    selfCopy = self;
    v7 = sub_20C487984(v5);
    v5(v7);

    sub_20C47E6BC(v5);
  }
}

- (void)countdownAnimator:(id)animator performingAnimation:(id)animation withDuration:(double)duration
{
  animatorCopy = animator;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20C5710E8(animation);

  swift_unknownObjectRelease();
}

@end