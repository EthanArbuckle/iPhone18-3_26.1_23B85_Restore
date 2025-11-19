@interface _UISwipeAnimationFactory
+ (id)_animatorForDuration:(double)a3 initialVelocity:(CGVector)a4 shouldLayoutSubviews:(BOOL)a5;
+ (id)_animatorForStiffnessFactor:(double)a3 initialVelocity:(CGVector)a4;
+ (id)animatorForCollapseWithAdditivelyAnimatedViews:(id)a3;
+ (id)animatorForGenericUpdates;
+ (id)animatorForMoveWithOccurrence:(id)a3;
+ (id)animatorForTentativeWithOccurrence:(id)a3 additivelyAnimatedViews:(id)a4;
@end

@implementation _UISwipeAnimationFactory

+ (id)animatorForMoveWithOccurrence:(id)a3
{
  v4 = a3;
  if ([v4 state] == 2 || (objc_msgSend(v4, "offset"), fabs(v5) <= 0.00000011920929))
  {
    [v4 velocity];
    v7 = v8;
    v6 = 1.0;
  }

  else
  {
    v6 = 2.0;
    v7 = 0.0;
  }

  v9 = [a1 _animatorForStiffnessFactor:v6 initialVelocity:{v7, 0.0}];

  return v9;
}

+ (id)animatorForTentativeWithOccurrence:(id)a3 additivelyAnimatedViews:(id)a4
{
  v6 = a4;
  [a3 velocity];
  v8 = [a1 _animatorForDuration:0 initialVelocity:0.4 shouldLayoutSubviews:{v7, 0.0}];
  [v8 addViewsToAnimateAdditively:v6];

  return v8;
}

+ (id)animatorForCollapseWithAdditivelyAnimatedViews:(id)a3
{
  v4 = a3;
  v5 = [a1 _animatorForDuration:0 initialVelocity:0.4 shouldLayoutSubviews:{0.0, 0.0}];
  [v5 addViewsToAnimateAdditively:v4];

  return v5;
}

+ (id)animatorForGenericUpdates
{
  v2 = [[UICubicTimingParameters alloc] initWithAnimationCurve:0];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.3];

  return v3;
}

+ (id)_animatorForStiffnessFactor:(double)a3 initialVelocity:(CGVector)a4
{
  dy = a4.dy;
  dx = a4.dx;
  v7 = [UISpringTimingParameters alloc];
  +[_UISwipeActionSpringAnimationParameters defaultStiffness];
  v9 = v8 * a3;
  +[_UISwipeActionSpringAnimationParameters defaultDamping];
  v11 = [(UISpringTimingParameters *)v7 initWithMass:2.0 stiffness:v9 damping:v10 initialVelocity:dx, dy];
  v12 = [UIViewPropertyAnimator alloc];
  [(UISpringTimingParameters *)v11 settlingDuration];
  v13 = [(UIViewPropertyAnimator *)v12 initWithDuration:v11 timingParameters:?];

  return v13;
}

+ (id)_animatorForDuration:(double)a3 initialVelocity:(CGVector)a4 shouldLayoutSubviews:(BOOL)a5
{
  v5 = a5;
  v7 = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 initialVelocity:a4.dx, a4.dy];
  v8 = [(UIViewPropertyAnimator *)[_UISwipePropertyAnimator alloc] initWithDuration:v7 timingParameters:a3];
  [(UIViewPropertyAnimator *)v8 _setShouldLayoutSubviews:v5];

  return v8;
}

@end