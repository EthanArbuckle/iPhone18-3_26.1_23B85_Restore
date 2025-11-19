@interface LeagueStandingsLegendFooter
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
@end

@implementation LeagueStandingsLegendFooter

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1E40D8100();
  OUTLINED_FUNCTION_18_3();

  v3 = OUTLINED_FUNCTION_17_4();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_1E38599E8();
  OUTLINED_FUNCTION_18_3();

  v4 = OUTLINED_FUNCTION_17_4();
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E40D8184(a4, width, height);
  OUTLINED_FUNCTION_18_3();

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

@end