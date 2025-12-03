@interface ChannelLogoView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation ChannelLogoView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = sub_1E38F0F2C(only);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end