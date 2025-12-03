@interface InlinePlaybackView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIView)accessibilityImageView;
- (UIView)accessibilityPlaybackView;
@end

@implementation InlinePlaybackView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = sub_1E3B78BF4(only);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIView)accessibilityImageView
{
  selfCopy = self;
  v3 = sub_1E3B790C0();

  return v3;
}

- (UIView)accessibilityPlaybackView
{
  selfCopy = self;
  v3 = sub_1E3B79138();

  return v3;
}

@end