@interface SBIconListGridLayout
- (BOOL)isEqual:(id)equal;
- (SBIconListGridLayout)init;
- (SBIconListGridLayout)initWithLayoutConfiguration:(id)configuration;
- (UIEdgeInsets)additionalWidgetLayoutInsetsForOrientation:(int64_t)orientation;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation;
- (UIEdgeInsets)widgetContentMargins;
- (id)accessoryBoldFont;
- (id)accessoryFont;
- (id)accessoryFontForContentSizeCategory:(id)category options:(unint64_t)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)iconGridSizeClassSizesForOrientation:(int64_t)orientation;
- (id)labelFontForContentSizeCategory:(id)category options:(unint64_t)options;
- (id)succinctDescription;
- (unint64_t)numberOfColumnsForOrientation:(int64_t)orientation;
- (unint64_t)numberOfRowsForOrientation:(int64_t)orientation;
@end

@implementation SBIconListGridLayout

- (id)accessoryFont
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (!isMainThread || (v4 = self->_accessoryFont) == 0)
  {
    iconAccessoryVisualConfiguration = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconAccessoryVisualConfiguration];
    [iconAccessoryVisualConfiguration fontSize];
    v7 = v6;

    v8 = 16.0;
    if (v7 > 0.0)
    {
      v8 = v7;
    }

    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:v8];
    if (isMainThread)
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

- (SBIconListGridLayout)initWithLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SBIconListGridLayout;
  v5 = [(SBIconListGridLayout *)&v11 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
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

- (unint64_t)numberOfColumnsForOrientation:(int64_t)orientation
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((orientation - 3) > 1)
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

- (unint64_t)numberOfRowsForOrientation:(int64_t)orientation
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((orientation - 3) > 1)
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

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((orientation - 3) > 1)
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

- (UIEdgeInsets)additionalWidgetLayoutInsetsForOrientation:(int64_t)orientation
{
  layoutConfiguration = self->_layoutConfiguration;
  if ((orientation - 3) > 1)
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

- (id)iconGridSizeClassSizesForOrientation:(int64_t)orientation
{
  if ((orientation - 3) > 1 || ([(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration rotatedIconGridSizeClassSizes], (iconGridSizeClassSizes = objc_claimAutoreleasedReturnValue()) == 0))
  {
    iconGridSizeClassSizes = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconGridSizeClassSizes];
  }

  return iconGridSizeClassSizes;
}

- (id)labelFontForContentSizeCategory:(id)category options:(unint64_t)options
{
  optionsCopy = options;
  categoryCopy = category;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%lu", categoryCopy, optionsCopy & 1];
  if (!isMainThread || ([(NSMutableDictionary *)self->_labelFonts objectForKey:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconLabelVisualConfigurationForContentSizeCategory:categoryCopy];
    [v10 fontSize];
    if (v11 <= 0.0)
    {
      [SBIconLabelImageParametersBuilder defaultFontForContentSizeCategory:categoryCopy languageInsets:0];
    }

    else
    {
      [MEMORY[0x1E69DB878] systemFontOfSize:? weight:?];
    }
    v9 = ;
    if (isMainThread)
    {
      [(NSMutableDictionary *)self->_labelFonts setObject:v9 forKey:v8];
    }
  }

  return v9;
}

- (id)accessoryFontForContentSizeCategory:(id)category options:(unint64_t)options
{
  if (options)
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
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (!isMainThread || (v4 = self->_accessoryBoldFont) == 0)
  {
    iconAccessoryVisualConfiguration = [(SBIconListGridLayoutConfiguration *)self->_layoutConfiguration iconAccessoryVisualConfiguration];
    [iconAccessoryVisualConfiguration fontSize];
    v7 = v6;

    v8 = 16.0;
    if (v7 > 0.0)
    {
      v8 = v7;
    }

    v4 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:v8];
    if (isMainThread)
    {
      objc_storeStrong(&self->_accessoryBoldFont, v4);
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
  succinctDescriptionBuilder = [(SBIconListGridLayout *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListGridLayout *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListGridLayout *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_layoutConfiguration withName:@"layoutConfiguration"];

  return succinctDescriptionBuilder;
}

@end