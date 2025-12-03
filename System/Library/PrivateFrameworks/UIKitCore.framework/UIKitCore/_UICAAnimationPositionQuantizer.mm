@interface _UICAAnimationPositionQuantizer
+ (id)animationWithQuantizedPositionsGivenAnimation:(id)animation appliedToView:(id)view;
@end

@implementation _UICAAnimationPositionQuantizer

+ (id)animationWithQuantizedPositionsGivenAnimation:(id)animation appliedToView:(id)view
{
  v6 = 0;
  _quantizePositionsInAnimation(animation, view, &v6);
  v4 = v6;

  return v4;
}

@end