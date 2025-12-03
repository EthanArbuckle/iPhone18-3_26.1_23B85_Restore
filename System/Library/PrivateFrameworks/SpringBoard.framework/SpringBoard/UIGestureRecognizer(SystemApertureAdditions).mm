@interface UIGestureRecognizer(SystemApertureAdditions)
- (uint64_t)sb_cancel;
@end

@implementation UIGestureRecognizer(SystemApertureAdditions)

- (uint64_t)sb_cancel
{
  [self setEnabled:0];

  return [self setEnabled:1];
}

@end