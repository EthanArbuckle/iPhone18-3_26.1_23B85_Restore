@interface UIGestureRecognizer(SystemApertureAdditions)
- (uint64_t)sb_cancel;
@end

@implementation UIGestureRecognizer(SystemApertureAdditions)

- (uint64_t)sb_cancel
{
  [a1 setEnabled:0];

  return [a1 setEnabled:1];
}

@end