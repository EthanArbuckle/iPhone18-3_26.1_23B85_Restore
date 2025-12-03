@interface TVSlideTransitionAnimator
- (_TtC9SeymourUI25TVSlideTransitionAnimator)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
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

- (double)transitionDuration:(id)duration
{
  if (!duration)
  {
    return 0.0;
  }

  isAnimated = [duration isAnimated];
  result = 0.666666667;
  if (!isAnimated)
  {
    return 0.0;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20BC1C34C(transition);
  swift_unknownObjectRelease();
}

@end