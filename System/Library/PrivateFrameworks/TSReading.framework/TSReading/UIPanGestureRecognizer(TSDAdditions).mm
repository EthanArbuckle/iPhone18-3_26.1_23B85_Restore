@interface UIPanGestureRecognizer(TSDAdditions)
- (double)direction;
@end

@implementation UIPanGestureRecognizer(TSDAdditions)

- (double)direction
{
  [self velocityInView:{objc_msgSend(self, "view")}];

  return TSDNormalizePoint(v1, v2);
}

@end