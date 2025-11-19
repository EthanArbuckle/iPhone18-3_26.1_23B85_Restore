@interface _SBDisplayItemFlexibleGrid
- (CGSize)maxSize;
- (CGSize)minSize;
- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4;
- (CGSize)sizeAtIndexFromFullWidthForBounds:(unint64_t)a3;
- (_SBDisplayItemFlexibleGrid)initWithBounds:(CGRect)a3 screenScale:(double)a4 windowingConfiguration:(id)a5;
- (id)_gridHeightsForSafeHeight:(double)a3 minimumHeight:(double)a4;
- (id)_gridWidthsForSafeWidth:(double)a3 minimumWidth:(double)a4;
- (id)allHeights;
- (id)allWidths;
- (void)_buildGridWithScreenScale:(double)a3;
@end

@implementation _SBDisplayItemFlexibleGrid

- (_SBDisplayItemFlexibleGrid)initWithBounds:(CGRect)a3 screenScale:(double)a4 windowingConfiguration:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = _SBDisplayItemFlexibleGrid;
  v13 = [(_SBDisplayItemFlexibleGrid *)&v18 init];
  if (v13)
  {
    v14 = +[SBAppSwitcherDomain rootSettings];
    v15 = [v14 windowingSettings];
    settings = v13->_settings;
    v13->_settings = v15;

    objc_storeStrong(&v13->_windowingConfiguration, a5);
    v13->_bounds.origin.x = x;
    v13->_bounds.origin.y = y;
    v13->_bounds.size.width = width;
    v13->_bounds.size.height = height;
    [(_SBDisplayItemFlexibleGrid *)v13 _buildGridWithScreenScale:a4];
  }

  return v13;
}

- (void)_buildGridWithScreenScale:(double)a3
{
  v4 = [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration gridWidths];
  widths = self->_widths;
  self->_widths = v4;

  v6 = [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration gridHeights];
  heights = self->_heights;
  self->_heights = v6;
}

- (id)_gridWidthsForSafeWidth:(double)a3 minimumWidth:(double)a4
{
  [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration stageInterItemSpacing];
  v7 = v6;
  v8 = v6 + a4;
  v9 = objc_opt_new();
  if (v8 > 0.0)
  {
    v26 = floor(a3 / v8);
    v10 = vcvtmd_u64_f64(a3 / v8);
    v11 = floor(((a3 - v7) * 0.5 + (a3 - v7) * 0.5) * 0.5);
    v12 = (v11 + v11) * 0.5;
    while (1)
    {
      v13 = v10 - 1;
      if (v10 == 1)
      {
        v20 = MEMORY[0x277CCABB0];
        v22 = a3;
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
      v15 = floor((a3 - (v10 + -1.0) * v7) / v10);
      v16 = floor((v15 + v15) * 0.5);
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:(v16 + v16) * 0.5];
      [v9 addObject:v17];

      v18 = floor((a3 - v7 - v15 + a3 - v7 - v15) * 0.5);
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:(v18 + v18) * 0.5];
      [v9 addObject:v19];

      if (v26 == v14)
      {
        v20 = MEMORY[0x277CCABB0];
        v21 = floor((a3 - v15 * 0.5 + a3 - v15 * 0.5) * 0.5);
        v22 = (v21 + v21) * 0.5;
LABEL_10:
        v23 = [v20 numberWithDouble:v22];
        [v9 addObject:v23];
      }

      v10 = v13;
    }

    v20 = MEMORY[0x277CCABB0];
    v22 = v12;
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

- (id)_gridHeightsForSafeHeight:(double)a3 minimumHeight:(double)a4
{
  v7 = [MEMORY[0x277CBEB18] array];
  [(SBSwitcherWindowingConfiguration *)self->_windowingConfiguration stageInterItemSpacing];
  if (a3 >= a4)
  {
    v9 = (a3 + (a3 - v8) * -0.5) * 0.25;
    do
    {
      v10 = floor((a3 + a3) * 0.5);
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:(v10 + v10) * 0.5];
      [v7 addObject:v11];

      a3 = a3 - v9;
    }

    while (a3 >= a4);
  }

  return v7;
}

- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
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
  if (a4 == 1 && (v23 & 1) != 0)
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
  v3 = [(NSArray *)self->_widths firstObject];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(NSArray *)self->_heights firstObject];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)maxSize
{
  v3 = [(NSArray *)self->_widths lastObject];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(NSArray *)self->_heights lastObject];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeAtIndexFromFullWidthForBounds:(unint64_t)a3
{
  v5 = [(NSArray *)self->_widths count];
  v6 = [(NSArray *)self->_heights count];
  if (((v5 - 1) & ~((v5 - 1) >> 63)) >= ((v5 - 1 - a3) & ~((v5 - 1 - a3) >> 63)))
  {
    v7 = (v5 - 1 - a3) & ~((v5 - 1 - a3) >> 63);
  }

  else
  {
    v7 = (v5 - 1) & ~((v5 - 1) >> 63);
  }

  if (((v6 - 1) & ~((v6 - 1) >> 63)) >= ((v6 - 1 - a3) & ~((v6 - 1 - a3) >> 63)))
  {
    v8 = (v6 - 1 - a3) & ~((v6 - 1 - a3) >> 63);
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