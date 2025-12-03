@interface AmbientPhotoFramePlayergroundViewController.PlaygroundPosterMutablePreferences
- (CGRect)px_preferredSalientContentRectangle;
- (CGRect)px_preferredTitleBounds;
- (UIColor)statusBarTintColor;
- (UIColor)timeColor;
- (UIFont)timeFont;
- (void)setStatusBarTintColor:(id)color;
- (void)setTimeColor:(id)color;
- (void)setTimeFont:(id)font;
@end

@implementation AmbientPhotoFramePlayergroundViewController.PlaygroundPosterMutablePreferences

- (CGRect)px_preferredTitleBounds
{
  v2 = sub_1B3896C2C();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIFont)timeFont
{
  v2 = sub_1B3896D94();

  return v2;
}

- (void)setTimeFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_1B3896E20(font);
}

- (UIColor)timeColor
{
  v2 = sub_1B3896E68();

  return v2;
}

- (void)setTimeColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1B3896EF4(color);
}

- (UIColor)statusBarTintColor
{
  v2 = sub_1B3896F3C();

  return v2;
}

- (void)setStatusBarTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1B3896FC8(color);
}

- (CGRect)px_preferredSalientContentRectangle
{
  v2 = sub_1B3897218();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end