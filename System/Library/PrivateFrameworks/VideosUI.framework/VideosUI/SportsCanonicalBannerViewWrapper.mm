@interface SportsCanonicalBannerViewWrapper
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (void)invalidateIntrinsicContentSize;
@end

@implementation SportsCanonicalBannerViewWrapper

- (void)invalidateIntrinsicContentSize
{
  v2 = self;
  sub_1E3F0E224();
}

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_1E3F0E4A4(width);

  v5 = OUTLINED_FUNCTION_17_4();
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E3F0E5E4(a4, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

@end