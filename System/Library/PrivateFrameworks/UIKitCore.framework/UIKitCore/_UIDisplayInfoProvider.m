@interface _UIDisplayInfoProvider
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)safeAreaInsetsLandscapeLeft;
- (UIEdgeInsets)safeAreaInsetsLandscapeRight;
- (UIEdgeInsets)safeAreaInsetsPortrait;
- (UIEdgeInsets)safeAreaInsetsPortraitUpsideDown;
@end

@implementation _UIDisplayInfoProvider

- (UIEdgeInsets)safeAreaInsetsPortrait
{
  top = self->safeAreaInsetsPortrait.top;
  left = self->safeAreaInsetsPortrait.left;
  bottom = self->safeAreaInsetsPortrait.bottom;
  right = self->safeAreaInsetsPortrait.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)peripheryInsets
{
  top = self->peripheryInsets.top;
  left = self->peripheryInsets.left;
  bottom = self->peripheryInsets.bottom;
  right = self->peripheryInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsLandscapeLeft
{
  top = self->safeAreaInsetsLandscapeLeft.top;
  left = self->safeAreaInsetsLandscapeLeft.left;
  bottom = self->safeAreaInsetsLandscapeLeft.bottom;
  right = self->safeAreaInsetsLandscapeLeft.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsLandscapeRight
{
  top = self->safeAreaInsetsLandscapeRight.top;
  left = self->safeAreaInsetsLandscapeRight.left;
  bottom = self->safeAreaInsetsLandscapeRight.bottom;
  right = self->safeAreaInsetsLandscapeRight.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsPortraitUpsideDown
{
  top = self->safeAreaInsetsPortraitUpsideDown.top;
  left = self->safeAreaInsetsPortraitUpsideDown.left;
  bottom = self->safeAreaInsetsPortraitUpsideDown.bottom;
  right = self->safeAreaInsetsPortraitUpsideDown.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end