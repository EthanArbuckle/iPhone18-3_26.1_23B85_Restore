@interface CardView
- (BOOL)vuiDebugUI;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (NSArray)accessibilityLabelViews;
- (UIView)accessibilityButton;
- (UIView)accessibilityOverlayView;
- (VUIImageView)accessibilityAppImageView;
- (VUIImageView)accessibilityImageView;
- (void)mainImageLoadedNotificationHandler;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CardView

- (BOOL)vuiDebugUI
{
  selfCopy = self;
  v3 = sub_1E3AA1F6C();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1E3AA1FA0(highlighted);
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  sub_1E3AA235C();
  OUTLINED_FUNCTION_18_3();

  v5 = OUTLINED_FUNCTION_17_4();
  result.height = v6;
  result.width = v5;
  return result;
}

- (VUIImageView)accessibilityImageView
{
  selfCopy = self;
  v3 = sub_1E3AA6A68();

  return v3;
}

- (VUIImageView)accessibilityAppImageView
{
  selfCopy = self;
  v3 = sub_1E3AA6AE0();

  return v3;
}

- (UIView)accessibilityOverlayView
{
  selfCopy = self;
  v3 = sub_1E3AA6B60();

  return v3;
}

- (NSArray)accessibilityLabelViews
{
  selfCopy = self;
  v3 = sub_1E3AA6C1C();

  if (v3)
  {
    sub_1E3280A90(0, &qword_1EE23AD40);
    v4 = sub_1E42062A4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIView)accessibilityButton
{
  selfCopy = self;
  v3 = sub_1E3AA6C9C();

  return v3;
}

- (void)mainImageLoadedNotificationHandler
{
  selfCopy = self;
  sub_1E3AA6CD8();
}

@end