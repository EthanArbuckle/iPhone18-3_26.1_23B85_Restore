@interface UIGestureRecognizer(PhotosUI)
- (uint64_t)pu_cancel;
@end

@implementation UIGestureRecognizer(PhotosUI)

- (uint64_t)pu_cancel
{
  result = [a1 isEnabled];
  if (result)
  {
    [a1 setEnabled:0];

    return [a1 setEnabled:1];
  }

  return result;
}

@end