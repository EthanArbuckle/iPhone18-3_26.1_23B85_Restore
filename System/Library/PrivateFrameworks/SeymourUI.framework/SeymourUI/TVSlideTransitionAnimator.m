@interface TVSlideTransitionAnimator
- (_TtC9SeymourUI25TVSlideTransitionAnimator)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation TVSlideTransitionAnimator

- (_TtC9SeymourUI25TVSlideTransitionAnimator)init
{
  v2 = self + OBJC_IVAR____TtC9SeymourUI25TVSlideTransitionAnimator_configuration;
  *v2 = xmmword_20C172FB0;
  *(v2 + 1) = xmmword_20C172FC0;
  *(v2 + 4) = 0x4056800000000000;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TVSlideTransitionAnimator();
  return [(TVSlideTransitionAnimator *)&v4 init];
}

- (double)transitionDuration:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [a3 isAnimated];
  result = 0.666666667;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_20BC1C34C(a3);
  swift_unknownObjectRelease();
}

@end