@interface TSCHPresetImagerPie
- (CGPath)newMutablePathWithRadius:(double)a3 center:(CGPoint)a4 startAngle:(double)a5 endAngle:(double)a6;
@end

@implementation TSCHPresetImagerPie

- (CGPath)newMutablePathWithRadius:(double)a3 center:(CGPoint)a4 startAngle:(double)a5 endAngle:(double)a6
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddArcSafe();
  CGPathAddLineToPointSafe();
  return Mutable;
}

@end