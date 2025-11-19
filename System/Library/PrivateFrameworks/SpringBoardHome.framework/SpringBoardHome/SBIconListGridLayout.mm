@interface SBIconListGridLayout
- (BOOL)isEqual:(id)a3;
- (SBIconListGridLayout)init;
- (SBIconListGridLayout)initWithLayoutConfiguration:(id)a3;
- (UIEdgeInsets)additionalWidgetLayoutInsetsForOrientation:(int64_t)a3;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3;
- (UIEdgeInsets)widgetContentMargins;
- (id)accessoryBoldFont;
- (id)accessoryFont;
- (id)accessoryFontForContentSizeCategory:(id)a3 options:(unint64_t)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)iconGridSizeClassSizesForOrientation:(int64_t)a3;
- (id)labelFontForContentSizeCategory:(id)a3 options:(unint64_t)a4;
- (id)succinctDescription;
- (unint64_t)numberOfColumnsForOrientation:(int64_t)a3;
- (unint64_t)numberOfRowsForOrientation:(int64_t)a3;
@end

@implementation SBIconListGridLayout

- (id)accessoryFont
{
  v3 = [MEMORY[0x1E696AF00] isMainThread];
  if (!v3 || (v4 = self->_accessoryFont) == 0)
  {
    v5 = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconAccessoryVisualConfiguration];
    [v5 fontSize];
    v7 = v6;

    v8 = 16.0;
    if (v7 > 0.0)
    {
      v8 = v7;
    }

    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:v8];
    if (v3)
    {
      objc_storeStrong(&self->_accessoryFont, v4);
    }
  }

  return v4;
}

- (UIEdgeInsets)widgetContentMargins
{
  [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration widgetContentMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (SBIconListGridLayout)initWithLayoutConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBIconListGridLayout;
  v5 = [(SBIconListGridLayout *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    layoutConfiguration = v5->_layoutConfiguration;
    v5->_layoutConfiguration = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    labelFonts = v5->_labelFonts;
    v5->_labelFonts = v8;
  }

  return v5;
}

- (SBIconListGridLayout)init
{
  v3 = objc_alloc_init(SBIconListGridLayoutConfiguration);
  [(SBIconListGridLayoutConfiguration *)v3 setIconImageInfo:70.0, 70.0, 2.0, 20.0];
  v4 = [(SBIconListGridLayout *)self initWithLayoutConfiguration:v3];

  return v4;
}

- (unint64_t)numberOfColumnsForOrientation:(int64_t)a3
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((a3 - 3) > 1)
  {

    return [(SBIconListGridLayoutConfiguration *)layoutConfiguration numberOfPortraitColumns];
  }

  else
  {
    result = [(SBIconListGridLayoutConfiguration *)layoutConfiguration numberOfLandscapeColumns];
    if (!result)
    {
      v6 = self->_layoutConfiguration;

      return [(SBIconListGridLayoutConfiguration *)v6 numberOfPortraitRows];
    }
  }

  return result;
}

- (unint64_t)numberOfRowsForOrientation:(int64_t)a3
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((a3 - 3) > 1)
  {

    return [(SBIconListGridLayoutConfiguration *)layoutConfiguration numberOfPortraitRows];
  }

  else
  {
    result = [(SBIconListGridLayoutConfiguration *)layoutConfiguration numberOfLandscapeRows];
    if (!result)
    {
      v6 = self->_layoutConfiguration;

      return [(SBIconListGridLayoutConfiguration *)v6 numberOfPortraitColumns];
    }
  }

  return result;
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((a3 - 3) > 1)
  {
    [(SBIconListGridLayoutConfiguration *)layoutConfiguration portraitLayoutInsets];
  }

  else
  {
    [(SBIconListGridLayoutConfiguration *)layoutConfiguration landscapeLayoutInsets];
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)additionalWidgetLayoutInsetsForOrientation:(int64_t)a3
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((a3 - 3) > 1)
  {
    [(SBIconListGridLayoutConfiguration *)layoutConfiguration portraitAdditionalWidgetLayoutInsets];
  }

  else
  {
    [(SBIconListGridLayoutConfiguration *)layoutConfiguration landscapeAdditionalWidgetLayoutInsets];
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)iconGridSizeClassSizesForOrientation:(int64_t)a3
{
  if ((a3 - 3) > 1 || ([(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration rotatedIconGridSizeClassSizes], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconGridSizeClassSizes];
  }

  return v4;
}

- (id)labelFontForContentSizeCategory:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E696AF00] isMainThread];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%lu", v6, v4 & 1];
  if (!v7 || ([(NSMutableDictionary *)self->_labelFonts objectForKey:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconLabelVisualConfigurationForContentSizeCategory:v6];
    [v10 fontSize];
    if (v11 <= 0.0)
    {
      [SBIconLabelImageParametersBuilder defaultFontForContentSizeCategory:v6 languageInsets:0];
    }

    else
    {
      [MEMORY[0x1E69DB878] systemFontOfSize:? weight:?];
    }
    v9 = ;
    if (v7)
    {
      [(NSMutableDictionary *)self->_labelFonts setObject:v9 forKey:v8];
    }
  }

  return v9;
}

- (id)accessoryFontForContentSizeCategory:(id)a3 options:(unint64_t)a4
{
  if (a4)
  {
    [(SBIconListGridLayout *)self accessoryBoldFont];
  }

  else
  {
    [(SBIconListGridLayout *)self accessoryFont];
  }
  v4 = ;

  return v4;
}

- (id)accessoryBoldFont
{
  v3 = [MEMORY[0x1E696AF00] isMainThread];
  if (!v3 || (v4 = self->_accessoryBoldFont) == 0)
  {
    v5 = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconAccessoryVisualConfiguration];
    [v5 fontSize];
    v7 = v6;

    v8 = 16.0;
    if (v7 > 0.0)
    {
      v8 = v7;
    }

    v4 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:v8];
    if (v3)
    {
      objc_storeStrong(&self->_accessoryBoldFont, v4);
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)succinctDescription
{
  v2 = [(SBIconListGridLayout *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListGridLayout *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListGridLayout *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_layoutConfiguration withName:@"layoutConfiguration"];

  return v4;
}

@end