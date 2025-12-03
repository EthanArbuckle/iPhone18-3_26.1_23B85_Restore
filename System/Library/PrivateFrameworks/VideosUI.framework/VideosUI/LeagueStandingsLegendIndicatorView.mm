@interface LeagueStandingsLegendIndicatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation LeagueStandingsLegendIndicatorView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1E3D20F18();
  OUTLINED_FUNCTION_18_3();

  v3 = OUTLINED_FUNCTION_17_4();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  OUTLINED_FUNCTION_6_12();
  sub_1E3D20F30(only);
  OUTLINED_FUNCTION_18_3();

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  OUTLINED_FUNCTION_5_16();
  v4 = v3;
  OUTLINED_FUNCTION_6_12();
  sub_1E3D211F0();
  OUTLINED_FUNCTION_18_3();

  v5 = OUTLINED_FUNCTION_17_4();
  result.height = v6;
  result.width = v5;
  return result;
}

@end