@interface SportsCanonicalBannerViewWrapper
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (void)invalidateIntrinsicContentSize;
@end

@implementation SportsCanonicalBannerViewWrapper

- (void)invalidateIntrinsicContentSize
{
  selfCopy = self;
  sub_1E3F0E224();
}

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_1E3F0E4A4(width);

  v5 = OUTLINED_FUNCTION_17_4();
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E3F0E5E4(only, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

@end