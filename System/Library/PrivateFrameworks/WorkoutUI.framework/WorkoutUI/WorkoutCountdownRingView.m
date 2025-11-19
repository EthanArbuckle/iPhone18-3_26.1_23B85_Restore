@interface WorkoutCountdownRingView
- (_TtC9WorkoutUI24WorkoutCountdownRingView)initWithFrame:(CGRect)a3;
- (void)countdownAnimator:(id)a3 performingAnimation:(id)a4 withDuration:(double)a5;
- (void)countdownAnimatorDidFinishAnimating:(id)a3;
@end

@implementation WorkoutCountdownRingView

- (_TtC9WorkoutUI24WorkoutCountdownRingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)countdownAnimatorDidFinishAnimating:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = self;
    v7 = sub_20C69A264(v5);
    v5(v7);

    sub_20C69A274(v5);
  }
}

- (void)countdownAnimator:(id)a3 performingAnimation:(id)a4 withDuration:(double)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  specialized WorkoutCountdownRingView.countdownAnimator(_:performing:withDuration:)(a4);

  swift_unknownObjectRelease();
}

@end