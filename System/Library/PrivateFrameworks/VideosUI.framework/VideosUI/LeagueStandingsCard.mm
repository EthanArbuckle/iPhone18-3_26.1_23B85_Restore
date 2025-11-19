@interface LeagueStandingsCard
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)contentSizeCategoryDidChange;
@end

@implementation LeagueStandingsCard

- (void)contentSizeCategoryDidChange
{
  v2 = self;
  sub_1E37BA748();
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_6_12();
  v9 = sub_1E37BADAC(a4, v7, v8);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end