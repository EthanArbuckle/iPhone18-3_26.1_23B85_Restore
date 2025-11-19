@interface UIPanGestureRecognizer(TSDAdditions)
- (double)direction;
@end

@implementation UIPanGestureRecognizer(TSDAdditions)

- (double)direction
{
  [a1 velocityInView:{objc_msgSend(a1, "view")}];

  return TSDNormalizePoint(v1, v2);
}

@end