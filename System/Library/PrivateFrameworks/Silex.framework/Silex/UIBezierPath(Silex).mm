@interface UIBezierPath(Silex)
- (id)TSDBezierPath;
@end

@implementation UIBezierPath(Silex)

- (id)TSDBezierPath
{
  bezierPath = [MEMORY[0x1E69D5628] bezierPath];
  CGPathApply([self CGPath], bezierPath, UIBezierPathSilexPathApplier);

  return bezierPath;
}

@end