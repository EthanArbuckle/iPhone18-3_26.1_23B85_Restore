@interface _PRIconListLayout
- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses;
- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3;
- (_PRIconListLayout)initWithGridSize:(SBHIconGridSize)a3;
@end

@implementation _PRIconListLayout

- (_PRIconListLayout)initWithGridSize:(SBHIconGridSize)a3
{
  v5.receiver = self;
  v5.super_class = _PRIconListLayout;
  result = [(_PRIconListLayout *)&v5 init];
  if (result)
  {
    result->_gridSize = a3;
  }

  return result;
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3
{
  v3 = 20.0;
  v4 = 20.0;
  v5 = 20.0;
  v6 = 20.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRIconGridSizeClassCircular", @"PRIconGridSizeClassRectangular", @"PRIconGridSizeClassSystemSmall", 0}];
  v3 = [objc_alloc(MEMORY[0x1E69D4090]) initWithGridSizeClasses:v2];

  return v3;
}

- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes
{
  v2 = [objc_alloc(MEMORY[0x1E69D4098]) initWithGridSizeClassesAndGridSizes:{@"PRIconGridSizeClassCircular", 65537, @"PRIconGridSizeClassRectangular", 65538, @"PRIconGridSizeClassSystemSmall", 131074, 0}];

  return v2;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3
{
  v4 = a4;
  [MEMORY[0x1E6999618] gridUnitSize];
  [MEMORY[0x1E6999618] complicationEdgeInset];
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  if (@"PRIconGridSizeClassCircular" != v4 && ([(__CFString *)v4 isEqualToString:?]& 1) == 0 && @"PRIconGridSizeClassRectangular" != v4 && ![(__CFString *)v4 isEqualToString:?]&& @"PRIconGridSizeClassSystemSmall" != v4)
  {
    [(__CFString *)v4 isEqualToString:?];
  }

  PRWidgetPlatterCornerRadius();

  return result;
}

@end