@interface LeagueStandingsLegendFooter
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
@end

@implementation LeagueStandingsLegendFooter

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1E40D8100();
  OUTLINED_FUNCTION_18_3();

  v3 = OUTLINED_FUNCTION_17_4();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1E38599E8();
  OUTLINED_FUNCTION_18_3();

  v4 = OUTLINED_FUNCTION_17_4();
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E40D8184(only, width, height);
  OUTLINED_FUNCTION_18_3();

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

@end