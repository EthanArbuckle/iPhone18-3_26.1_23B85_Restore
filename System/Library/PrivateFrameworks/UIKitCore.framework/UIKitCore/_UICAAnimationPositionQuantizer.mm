@interface _UICAAnimationPositionQuantizer
+ (id)animationWithQuantizedPositionsGivenAnimation:(id)a3 appliedToView:(id)a4;
@end

@implementation _UICAAnimationPositionQuantizer

+ (id)animationWithQuantizedPositionsGivenAnimation:(id)a3 appliedToView:(id)a4
{
  v6 = 0;
  _quantizePositionsInAnimation(a3, a4, &v6);
  v4 = v6;

  return v4;
}

@end