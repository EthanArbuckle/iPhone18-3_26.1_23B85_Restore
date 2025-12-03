@interface _UIInterfaceActionBlendingBorderView
+ (id)newWithRoundedCornerPosition:(unint64_t)position continuousCornerRadius:(double)radius;
@end

@implementation _UIInterfaceActionBlendingBorderView

+ (id)newWithRoundedCornerPosition:(unint64_t)position continuousCornerRadius:(double)radius
{
  v6 = objc_alloc(objc_opt_class());
  v7 = +[UIColor _vibrantLightDividerBurnColor];
  v8 = +[UIColor _vibrantLightDividerDarkeningColor];
  v9 = [v6 initWithCompositingBurnColor:v7 plusDColor:v8];

  if (position)
  {
    [v9 setRoundedCornerPosition:position];
    [v9 _setContinuousCornerRadius:radius];
  }

  return v9;
}

@end