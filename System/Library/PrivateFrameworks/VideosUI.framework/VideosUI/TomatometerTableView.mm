@interface TomatometerTableView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (NSArray)accessibilityItemViews;
- (double)bottomMarginWithBaselineMargin:(double)a3;
- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4;
- (double)vuiBaselineHeight;
- (double)vui_baselineOffsetFromBottom;
- (void)vui_prepareForReuse;
@end

@implementation TomatometerTableView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  sub_1E39990F0(a4, width);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E3999B64();
}

- (NSArray)accessibilityItemViews
{
  v2 = self;
  v3 = sub_1E3999D94();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50);
    sub_1E42062A4();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (double)vuiBaselineHeight
{
  v2 = self;
  sub_1E399A204();
  v4 = v3;

  return v4;
}

- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4
{
  v6 = a3;
  v7 = self;
  v8 = OUTLINED_FUNCTION_50();
  sub_1E399A300(v8, a4);
  v10 = v9;

  return v10;
}

- (double)vui_baselineOffsetFromBottom
{
  v2 = self;
  sub_1E399A4BC();
  v4 = v3;

  return v4;
}

- (double)bottomMarginWithBaselineMargin:(double)a3
{
  v4 = self;
  sub_1E399A5BC(a3);
  v6 = v5;

  return v6;
}

@end