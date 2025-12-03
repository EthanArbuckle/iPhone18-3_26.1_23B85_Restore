@interface UIGestureRecognizer(PhotosUI)
- (uint64_t)pu_cancel;
@end

@implementation UIGestureRecognizer(PhotosUI)

- (uint64_t)pu_cancel
{
  result = [self isEnabled];
  if (result)
  {
    [self setEnabled:0];

    return [self setEnabled:1];
  }

  return result;
}

@end