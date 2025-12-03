@interface TSCHPresetImagerPie
- (CGPath)newMutablePathWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle endAngle:(double)endAngle;
@end

@implementation TSCHPresetImagerPie

- (CGPath)newMutablePathWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle endAngle:(double)endAngle
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddArcSafe();
  CGPathAddLineToPointSafe();
  return Mutable;
}

@end