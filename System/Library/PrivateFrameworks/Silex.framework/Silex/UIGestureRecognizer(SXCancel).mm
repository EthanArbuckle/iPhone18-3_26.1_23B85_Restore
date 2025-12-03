@interface UIGestureRecognizer(SXCancel)
- (uint64_t)cancel;
@end

@implementation UIGestureRecognizer(SXCancel)

- (uint64_t)cancel
{
  [self setEnabled:0];

  return [self setEnabled:1];
}

@end