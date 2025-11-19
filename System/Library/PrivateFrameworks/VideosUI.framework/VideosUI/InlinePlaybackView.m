@interface InlinePlaybackView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIView)accessibilityImageView;
- (UIView)accessibilityPlaybackView;
@end

@implementation InlinePlaybackView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v5 = self;
  v6 = sub_1E3B78BF4(a4);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIView)accessibilityImageView
{
  v2 = self;
  v3 = sub_1E3B790C0();

  return v3;
}

- (UIView)accessibilityPlaybackView
{
  v2 = self;
  v3 = sub_1E3B79138();

  return v3;
}

@end