@interface CountdownRingView
- (_TtC12SeymourMedia17CountdownRingView)initWithFrame:(CGRect)a3;
- (void)countdownAnimator:(id)a3 performingAnimation:(id)a4 withDuration:(double)a5;
- (void)countdownAnimatorDidFinishAnimating:(id)a3;
@end

@implementation CountdownRingView

- (_TtC12SeymourMedia17CountdownRingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)countdownAnimatorDidFinishAnimating:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC12SeymourMedia17CountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = self;
    v7 = sub_20C487984(v5);
    v5(v7);

    sub_20C47E6BC(v5);
  }
}

- (void)countdownAnimator:(id)a3 performingAnimation:(id)a4 withDuration:(double)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  sub_20C5710E8(a4);

  swift_unknownObjectRelease();
}

@end