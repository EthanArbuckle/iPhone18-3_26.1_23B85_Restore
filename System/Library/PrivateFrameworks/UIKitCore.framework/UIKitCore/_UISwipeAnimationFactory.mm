@interface _UISwipeAnimationFactory
+ (id)_animatorForDuration:(double)duration initialVelocity:(CGVector)velocity shouldLayoutSubviews:(BOOL)subviews;
+ (id)_animatorForStiffnessFactor:(double)factor initialVelocity:(CGVector)velocity;
+ (id)animatorForCollapseWithAdditivelyAnimatedViews:(id)views;
+ (id)animatorForGenericUpdates;
+ (id)animatorForMoveWithOccurrence:(id)occurrence;
+ (id)animatorForTentativeWithOccurrence:(id)occurrence additivelyAnimatedViews:(id)views;
@end

@implementation _UISwipeAnimationFactory

+ (id)animatorForMoveWithOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if ([occurrenceCopy state] == 2 || (objc_msgSend(occurrenceCopy, "offset"), fabs(v5) <= 0.00000011920929))
  {
    [occurrenceCopy velocity];
    v7 = v8;
    v6 = 1.0;
  }

  else
  {
    v6 = 2.0;
    v7 = 0.0;
  }

  v9 = [self _animatorForStiffnessFactor:v6 initialVelocity:{v7, 0.0}];

  return v9;
}

+ (id)animatorForTentativeWithOccurrence:(id)occurrence additivelyAnimatedViews:(id)views
{
  viewsCopy = views;
  [occurrence velocity];
  v8 = [self _animatorForDuration:0 initialVelocity:0.4 shouldLayoutSubviews:{v7, 0.0}];
  [v8 addViewsToAnimateAdditively:viewsCopy];

  return v8;
}

+ (id)animatorForCollapseWithAdditivelyAnimatedViews:(id)views
{
  viewsCopy = views;
  v5 = [self _animatorForDuration:0 initialVelocity:0.4 shouldLayoutSubviews:{0.0, 0.0}];
  [v5 addViewsToAnimateAdditively:viewsCopy];

  return v5;
}

+ (id)animatorForGenericUpdates
{
  v2 = [[UICubicTimingParameters alloc] initWithAnimationCurve:0];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.3];

  return v3;
}

+ (id)_animatorForStiffnessFactor:(double)factor initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v7 = [UISpringTimingParameters alloc];
  +[_UISwipeActionSpringAnimationParameters defaultStiffness];
  v9 = v8 * factor;
  +[_UISwipeActionSpringAnimationParameters defaultDamping];
  v11 = [(UISpringTimingParameters *)v7 initWithMass:2.0 stiffness:v9 damping:v10 initialVelocity:dx, dy];
  v12 = [UIViewPropertyAnimator alloc];
  [(UISpringTimingParameters *)v11 settlingDuration];
  v13 = [(UIViewPropertyAnimator *)v12 initWithDuration:v11 timingParameters:?];

  return v13;
}

+ (id)_animatorForDuration:(double)duration initialVelocity:(CGVector)velocity shouldLayoutSubviews:(BOOL)subviews
{
  subviewsCopy = subviews;
  v7 = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 initialVelocity:velocity.dx, velocity.dy];
  v8 = [(UIViewPropertyAnimator *)[_UISwipePropertyAnimator alloc] initWithDuration:v7 timingParameters:duration];
  [(UIViewPropertyAnimator *)v8 _setShouldLayoutSubviews:subviewsCopy];

  return v8;
}

@end