@interface TSCHPresetImagerDonut
- (CGPath)newMutablePathWithRadius:(double)a3 center:(CGPoint)a4 startAngle:(double)a5 endAngle:(double)a6;
@end

@implementation TSCHPresetImagerDonut

- (CGPath)newMutablePathWithRadius:(double)a3 center:(CGPoint)a4 startAngle:(double)a5 endAngle:(double)a6
{
  objc_msgSend_defaultInnerRadiusPercentageForIconRendering(TSCHStyleUtilities, a2, a3, a4.x, a4.y);
  __sincos_stret(a5);
  __sincos_stret(a6);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddArcSafe();
  CGPathAddLineToPointSafe();
  CGPathAddArcSafe();
  return Mutable;
}

@end