@interface SMMGeometry
+ (CGPoint)getCenter:(CGRect)a3;
+ (double)ceilValue:(double)a3 toScaleOfScreen:(id)a4;
+ (double)floorValue:(double)a3 toScaleOfScreen:(id)a4;
@end

@implementation SMMGeometry

+ (double)floorValue:(double)a3 toScaleOfScreen:(id)a4
{
  v5 = [a4 scale];

  MEMORY[0x2821DE4E8](v5, v6, a3, v7);
  return result;
}

+ (double)ceilValue:(double)a3 toScaleOfScreen:(id)a4
{
  v5 = [a4 scale];

  MEMORY[0x2821DE450](v5, v6, a3, v7);
  return result;
}

+ (CGPoint)getCenter:(CGRect)a3
{
  MEMORY[0x2821DE7B8](a1, a2, a3.origin, *&a3.origin.y, a3.size, *&a3.size.height);
  result.y = v4;
  result.x = v3;
  return result;
}

@end