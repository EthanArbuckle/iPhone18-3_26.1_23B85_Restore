@interface _SBDisplayItemFlexibleGrid
- (CGSize)maxSize;
- (CGSize)minSize;
- (CGSize)nearestGridSizeForSize:(CGSize)size countOnStage:(unint64_t)stage;
- (CGSize)sizeAtIndexFromFullWidthForBounds:(unint64_t)bounds;
- (_SBDisplayItemFlexibleGrid)initWithBounds:(CGRect)bounds screenScale:(double)scale windowingConfiguration:(id)configuration;
- (id)_gridHeightsForSafeHeight:(double)height minimumHeight:(double)minimumHeight;
- (id)_gridWidthsForSafeWidth:(double)width minimumWidth:(double)minimumWidth;
- (id)allHeights;
- (id)allWidths;
- (void)_buildGridWithScreenScale:(double)scale;
@end

@implementation _SBDisplayItemFlexibleGrid

- (_SBDisplayItemFlexibleGrid)initWithBounds:(CGRect)bounds screenScale:(double)scale windowingConfiguration:(id)configuration
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = _SBDisplayItemFlexibleGrid;
  v13 = [(_SBDisplayItemFlexibleGrid *)&v18 init];
  if (v13)
  {
    v14 = +[SBAppSwitcherDomain rootSettings];
    windowingSettings = [v14 windowingSettings];
    settings = v13->_settings;
    v13->_settings = windowingSettings;

    objc_storeStrong(&v13->_windowingConfiguration, configuration);
    v13->_bounds.origin.x = x;
    v13->_bounds.origin.y = y;
    v13->_bounds.size.width = width;
    v13->_bounds.size.height = height;
    [(_SBDisplayItemFlexibleGrid *)v13 _buildGridWithScreenScale:scale];
  }

  return v13;
}

- (void)_buildGridWithScreenScale:(double)scale
{
  gridWidths = [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration gridWidths];
  widths = self->_widths;
  self->_widths = gridWidths;

  gridHeights = [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration gridHeights];
  heights = self->_heights;
  self->_heights = gridHeights;
}

- (id)_gridWidthsForSafeWidth:(double)width minimumWidth:(double)minimumWidth
{
  [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration stageInterItemSpacing];
  v7 = v6;
  v8 = v6 + minimumWidth;
  v9 = objc_opt_new();
  if (v8 > 0.0)
  {
    v26 = floor(width / v8);
    v10 = vcvtmd_u64_f64(width / v8);
    v11 = floor(((width - v7) * 0.5 + (width - v7) * 0.5) * 0.5);
    v12 = (v11 + v11) * 0.5;
    while (1)
    {
      v13 = v10 - 1;
      if (v10 == 1)
      {
        v20 = MEMORY[0x277CCABB0];
        widthCopy = width;
        goto LABEL_10;
      }

      if (v10 == 2)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_15;
      }

      v14 = v10;
      v15 = floor((width - (v10 + -1.0) * v7) / v10);
      v16 = floor((v15 + v15) * 0.5);
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:(v16 + v16) * 0.5];
      [v9 addObject:v17];

      v18 = floor((width - v7 - v15 + width - v7 - v15) * 0.5);
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:(v18 + v18) * 0.5];
      [v9 addObject:v19];

      if (v26 == v14)
      {
        v20 = MEMORY[0x277CCABB0];
        v21 = floor((width - v15 * 0.5 + width - v15 * 0.5) * 0.5);
        widthCopy = (v21 + v21) * 0.5;
LABEL_10:
        v23 = [v20 numberWithDouble:widthCopy];
        [v9 addObject:v23];
      }

      v10 = v13;
    }

    v20 = MEMORY[0x277CCABB0];
    widthCopy = v12;
    goto LABEL_10;
  }

  v24 = SBLogAppSwitcher();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [_SBDisplayItemFlexibleGrid _gridWidthsForSafeWidth:v24 minimumWidth:?];
  }

LABEL_15:

  return v9;
}

- (id)_gridHeightsForSafeHeight:(double)height minimumHeight:(double)minimumHeight
{
  array = [MEMORY[0x277CBEB18] array];
  [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration stageInterItemSpacing];
  if (height >= minimumHeight)
  {
    v9 = (height + (height - v8) * -0.5) * 0.25;
    do
    {
      v10 = floor((height + height) * 0.5);
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:(v10 + v10) * 0.5];
      [array addObject:v11];

      height = height - v9;
    }

    while (height >= minimumHeight);
  }

  return array;
}

- (CGSize)nearestGridSizeForSize:(CGSize)size countOnStage:(unint64_t)stage
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x277CBF3A8];
  v9 = *MEMORY[0x277CBF3A8];
  if ([(NSArray *)self->_widths count])
  {
    v10 = 0;
    v11 = 1.79769313e308;
    do
    {
      v12 = [(NSArray *)self->_widths objectAtIndex:v10];
      [v12 doubleValue];
      v14 = v13;

      v15 = vabdd_f64(v14, width);
      if (v15 < v11)
      {
        v11 = v15;
        v9 = v14;
      }

      ++v10;
    }

    while (v10 < [(NSArray *)self->_widths count]);
  }

  v16 = *(v8 + 8);
  if ([(NSArray *)self->_heights count])
  {
    v17 = 0;
    v18 = 1.79769313e308;
    do
    {
      v19 = [(NSArray *)self->_heights objectAtIndex:v17];
      [v19 doubleValue];
      v21 = v20;

      v22 = vabdd_f64(v21, height);
      if (v22 < v18)
      {
        v18 = v22;
        v16 = v21;
      }

      ++v17;
    }

    while (v17 < [(NSArray *)self->_heights count]);
  }

  [(_SBDisplayItemFlexibleGrid *)self maxSize];
  v23 = BSSizeEqualToSize();
  if (stage == 1 && (v23 & 1) != 0)
  {
    v9 = self->_bounds.size.width;
    v16 = self->_bounds.size.height;
  }

  v24 = v9;
  v25 = v16;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)minSize
{
  firstObject = [(NSArray *)self->_widths firstObject];
  [firstObject doubleValue];
  v5 = v4;

  firstObject2 = [(NSArray *)self->_heights firstObject];
  [firstObject2 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)maxSize
{
  lastObject = [(NSArray *)self->_widths lastObject];
  [lastObject doubleValue];
  v5 = v4;

  lastObject2 = [(NSArray *)self->_heights lastObject];
  [lastObject2 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeAtIndexFromFullWidthForBounds:(unint64_t)bounds
{
  v5 = [(NSArray *)self->_widths count];
  v6 = [(NSArray *)self->_heights count];
  if (((v5 - 1) & ~((v5 - 1) >> 63)) >= ((v5 - 1 - bounds) & ~((v5 - 1 - bounds) >> 63)))
  {
    v7 = (v5 - 1 - bounds) & ~((v5 - 1 - bounds) >> 63);
  }

  else
  {
    v7 = (v5 - 1) & ~((v5 - 1) >> 63);
  }

  if (((v6 - 1) & ~((v6 - 1) >> 63)) >= ((v6 - 1 - bounds) & ~((v6 - 1 - bounds) >> 63)))
  {
    v8 = (v6 - 1 - bounds) & ~((v6 - 1 - bounds) >> 63);
  }

  else
  {
    v8 = (v6 - 1) & ~((v6 - 1) >> 63);
  }

  v9 = [(NSArray *)self->_widths objectAtIndex:v7];
  [v9 doubleValue];
  v11 = v10;

  v12 = [(NSArray *)self->_heights objectAtIndex:v8];
  [v12 doubleValue];
  v14 = v13;

  v15 = v11;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)allWidths
{
  v2 = [(NSArray *)self->_widths copy];

  return v2;
}

- (id)allHeights
{
  v2 = [(NSArray *)self->_heights copy];

  return v2;
}

@end