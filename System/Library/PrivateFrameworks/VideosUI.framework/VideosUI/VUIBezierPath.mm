@interface VUIBezierPath
- (CGPath)vuiCGPath;
@end

@implementation VUIBezierPath

- (CGPath)vuiCGPath
{
  selfCopy = self;

  return [(VUIBezierPath *)selfCopy CGPath];
}

@end