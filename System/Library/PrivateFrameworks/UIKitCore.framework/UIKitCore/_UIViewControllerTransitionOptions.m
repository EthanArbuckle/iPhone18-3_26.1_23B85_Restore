@interface _UIViewControllerTransitionOptions
- (CGRect)frameOfSourceInDestination;
- (NSArray)dimmingVisualEffects;
- (void)setDimmingColor:(id)a3;
- (void)setDimmingVisualEffects:(id)a3;
@end

@implementation _UIViewControllerTransitionOptions

- (void)setDimmingColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIViewControllerTransitionOptions_dimmingColor);
  *(self + OBJC_IVAR____UIViewControllerTransitionOptions_dimmingColor) = a3;
  v3 = a3;
}

- (NSArray)dimmingVisualEffects
{
  if (*(self + OBJC_IVAR____UIViewControllerTransitionOptions_dimmingVisualEffects))
  {
    sub_188A34624(0, &unk_1EA931120);

    v2 = sub_18A4A7518();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDimmingVisualEffects:(id)a3
{
  if (a3)
  {
    sub_188A34624(0, &unk_1EA931120);
    v4 = sub_18A4A7548();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____UIViewControllerTransitionOptions_dimmingVisualEffects) = v4;
}

- (CGRect)frameOfSourceInDestination
{
  v2 = *(self + OBJC_IVAR____UIViewControllerTransitionOptions_frameOfSourceInDestination);
  v3 = *(self + OBJC_IVAR____UIViewControllerTransitionOptions_frameOfSourceInDestination + 8);
  v4 = *(self + OBJC_IVAR____UIViewControllerTransitionOptions_frameOfSourceInDestination + 16);
  v5 = *(self + OBJC_IVAR____UIViewControllerTransitionOptions_frameOfSourceInDestination + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end