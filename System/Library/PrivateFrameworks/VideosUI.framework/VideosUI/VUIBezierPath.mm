@interface VUIBezierPath
- (CGPath)vuiCGPath;
@end

@implementation VUIBezierPath

- (CGPath)vuiCGPath
{
  v2 = self;

  return [(VUIBezierPath *)v2 CGPath];
}

@end