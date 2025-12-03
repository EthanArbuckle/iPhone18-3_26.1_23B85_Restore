@interface TSCHPresetImagerDonut
- (CGPath)newMutablePathWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle endAngle:(double)endAngle;
@end

@implementation TSCHPresetImagerDonut

- (CGPath)newMutablePathWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle endAngle:(double)endAngle
{
  objc_msgSend_defaultInnerRadiusPercentageForIconRendering(TSCHStyleUtilities, a2, radius, center.x, center.y);
  __sincos_stret(angle);
  __sincos_stret(endAngle);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddArcSafe();
  CGPathAddLineToPointSafe();
  CGPathAddArcSafe();
  return Mutable;
}

@end