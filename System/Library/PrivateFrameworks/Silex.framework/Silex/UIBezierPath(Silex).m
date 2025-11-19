@interface UIBezierPath(Silex)
- (id)TSDBezierPath;
@end

@implementation UIBezierPath(Silex)

- (id)TSDBezierPath
{
  v2 = [MEMORY[0x1E69D5628] bezierPath];
  CGPathApply([a1 CGPath], v2, UIBezierPathSilexPathApplier);

  return v2;
}

@end