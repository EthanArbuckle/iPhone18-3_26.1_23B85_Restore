@interface UIKBFocusVCView
- (BOOL)_isEligibleForFocusGivenAlpha;
- (id)preferredFocusedView;
@end

@implementation UIKBFocusVCView

- (BOOL)_isEligibleForFocusGivenAlpha
{
  if ([(UIKBFocusVCView *)self isEligibleForFocusWithZeroAlpha])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UIKBFocusVCView;
  return [(UIView *)&v4 _isEligibleForFocusGivenAlpha];
}

- (id)preferredFocusedView
{
  nextResponder = [(UIView *)self nextResponder];
  v3 = __UIFocusEnvironmentPreferredFocusedView(nextResponder, 0);

  return v3;
}

@end