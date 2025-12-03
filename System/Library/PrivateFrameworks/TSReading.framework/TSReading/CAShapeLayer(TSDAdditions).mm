@interface CAShapeLayer(TSDAdditions)
- (uint64_t)setCGLineCap:()TSDAdditions;
- (uint64_t)setCGLineJoin:()TSDAdditions;
@end

@implementation CAShapeLayer(TSDAdditions)

- (uint64_t)setCGLineCap:()TSDAdditions
{
  v3 = @"butt";
  if (a3 == 1)
  {
    v3 = @"round";
  }

  if (a3 == 2)
  {
    v4 = @"square";
  }

  else
  {
    v4 = v3;
  }

  return [self setLineCap:v4];
}

- (uint64_t)setCGLineJoin:()TSDAdditions
{
  v3 = @"miter";
  if (a3 == 1)
  {
    v3 = @"round";
  }

  if (a3 == 2)
  {
    v4 = @"bevel";
  }

  else
  {
    v4 = v3;
  }

  return [self setLineJoin:v4];
}

@end