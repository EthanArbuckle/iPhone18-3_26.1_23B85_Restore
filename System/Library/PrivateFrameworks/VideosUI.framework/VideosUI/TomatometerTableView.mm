@interface TomatometerTableView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (NSArray)accessibilityItemViews;
- (double)bottomMarginWithBaselineMargin:(double)margin;
- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin;
- (double)vuiBaselineHeight;
- (double)vui_baselineOffsetFromBottom;
- (void)vui_prepareForReuse;
@end

@implementation TomatometerTableView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  sub_1E39990F0(only, width);
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
  selfCopy = self;
  sub_1E3999B64();
}

- (NSArray)accessibilityItemViews
{
  selfCopy = self;
  v3 = sub_1E3999D94();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50);
    sub_1E42062A4();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (double)vuiBaselineHeight
{
  selfCopy = self;
  sub_1E399A204();
  v4 = v3;

  return v4;
}

- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin
{
  labelCopy = label;
  selfCopy = self;
  v8 = OUTLINED_FUNCTION_50();
  sub_1E399A300(v8, margin);
  v10 = v9;

  return v10;
}

- (double)vui_baselineOffsetFromBottom
{
  selfCopy = self;
  sub_1E399A4BC();
  v4 = v3;

  return v4;
}

- (double)bottomMarginWithBaselineMargin:(double)margin
{
  selfCopy = self;
  sub_1E399A5BC(margin);
  v6 = v5;

  return v6;
}

@end