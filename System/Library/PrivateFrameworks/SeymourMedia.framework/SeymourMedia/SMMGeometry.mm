@interface SMMGeometry
+ (CGPoint)getCenter:(CGRect)center;
+ (double)ceilValue:(double)value toScaleOfScreen:(id)screen;
+ (double)floorValue:(double)value toScaleOfScreen:(id)screen;
@end

@implementation SMMGeometry

+ (double)floorValue:(double)value toScaleOfScreen:(id)screen
{
  scale = [screen scale];

  MEMORY[0x2821DE4E8](scale, v6, value, v7);
  return result;
}

+ (double)ceilValue:(double)value toScaleOfScreen:(id)screen
{
  scale = [screen scale];

  MEMORY[0x2821DE450](scale, v6, value, v7);
  return result;
}

+ (CGPoint)getCenter:(CGRect)center
{
  MEMORY[0x2821DE7B8](self, a2, center.origin, *&center.origin.y, center.size, *&center.size.height);
  result.y = v4;
  result.x = v3;
  return result;
}

@end