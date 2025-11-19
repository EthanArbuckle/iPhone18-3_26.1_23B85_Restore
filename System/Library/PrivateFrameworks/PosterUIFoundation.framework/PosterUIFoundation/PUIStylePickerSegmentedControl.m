@interface PUIStylePickerSegmentedControl
- (PUIStylePickerSegmentedControl)initWithFrame:(CGRect)a3 actions:(id)a4;
- (double)calculatedWidthForAvailableWidth:(double)a3;
- (void)_updateSegmentWidths;
- (void)layoutSubviews;
@end

@implementation PUIStylePickerSegmentedControl

- (PUIStylePickerSegmentedControl)initWithFrame:(CGRect)a3 actions:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v48[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v45.receiver = self;
  v45.super_class = PUIStylePickerSegmentedControl;
  v10 = [(PUIStylePickerSegmentedControl *)&v45 initWithFrame:v9 actions:x, y, width, height];
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [(PUIStylePickerSegmentedControl *)v10 _setUseSpringBoardVibrancy:1];
    }

    [(PUIStylePickerSegmentedControl *)v10 setTransparentBackground:1];
    v10->_lastKnownWidth = -1.0;
    v47 = *MEMORY[0x1E6965808];
    v48[0] = @".SFUI-Medium";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v12 = CTFontDescriptorCreateWithAttributesAndOptions();

    v13 = CTFontCreateWithFontDescriptor(v12, 14.0, 0);
    CFRelease(v12);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    v16 = *MEMORY[0x1E69DB650];
    [v14 setObject:v15 forKey:*MEMORY[0x1E69DB650]];

    v17 = *MEMORY[0x1E69DB648];
    [v14 setObject:v13 forKey:*MEMORY[0x1E69DB648]];
    [(PUIStylePickerSegmentedControl *)v10 setTitleTextAttributes:v14 forState:0];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    [v18 setObject:v19 forKey:v16];

    v38 = v13;
    [v18 setObject:v13 forKey:v17];
    v37 = v18;
    [(PUIStylePickerSegmentedControl *)v10 setTitleTextAttributes:v18 forState:4];
    v36 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.12];
    [(PUIStylePickerSegmentedControl *)v10 setSelectedSegmentTintColor:?];
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v21 = v14;
    v22 = v10;
    *&v10->_segmentMinimumWidth = qword_1A8D24950[[v9 count] > 2];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = v9;
    obj = v9;
    v23 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      v26 = 0.0;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = [*(*(&v41 + 1) + 8 * i) title];
          [v28 sizeWithAttributes:v21];
          v30 = ceil(v29 + 25.0);
          if (v30 >= v22->_segmentMinimumWidth)
          {
            segmentMinimumWidth = v30;
          }

          else
          {
            segmentMinimumWidth = v22->_segmentMinimumWidth;
          }

          *&v30 = segmentMinimumWidth;
          v32 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
          [v20 addObject:v32];

          v26 = v26 + segmentMinimumWidth;
        }

        v24 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = 0.0;
    }

    v33 = [v20 copy];
    v10 = v22;
    idealSegmentWidths = v22->_idealSegmentWidths;
    v22->_idealSegmentWidths = v33;

    v22->_totalIdealWidth = v26;
    v9 = v39;
  }

  return v10;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUIStylePickerSegmentedControl;
  [(PUIStylePickerSegmentedControl *)&v3 layoutSubviews];
  [(PUIStylePickerSegmentedControl *)self _updateSegmentWidths];
}

- (void)_updateSegmentWidths
{
  [(PUIStylePickerSegmentedControl *)self bounds];
  Width = CGRectGetWidth(v19);
  if (Width > 0.0)
  {
    v4 = Width;
    if (Width != self->_lastKnownWidth)
    {
      self->_lastKnownWidth = Width;
      v5 = [(NSArray *)self->_idealSegmentWidths count];
      if (v5)
      {
        v6 = v5;
        totalIdealWidth = self->_totalIdealWidth;
        if (totalIdealWidth <= v4)
        {
          for (i = 0; i != v6; ++i)
          {
            v16 = [(NSArray *)self->_idealSegmentWidths objectAtIndex:i];
            [v16 floatValue];
            [(PUIStylePickerSegmentedControl *)self setWidth:i forSegmentAtIndex:v17];
          }
        }

        else
        {
          v8 = v5 - 1;
          if (v5 == 1)
          {
            v10 = 0.0;
          }

          else
          {
            v9 = 0;
            v10 = 0.0;
            v11 = v4 / totalIdealWidth;
            do
            {
              v12 = [(NSArray *)self->_idealSegmentWidths objectAtIndex:v9];
              [v12 floatValue];
              v14 = floor(v11 * v13);
              [(PUIStylePickerSegmentedControl *)self setWidth:v9 forSegmentAtIndex:v14];
              v10 = v10 + v14;

              ++v9;
            }

            while (v8 != v9);
          }

          [(PUIStylePickerSegmentedControl *)self setWidth:v8 forSegmentAtIndex:v4 - v10];
        }
      }
    }
  }
}

- (double)calculatedWidthForAvailableWidth:(double)a3
{
  v3 = a3;
  if (self->_totalIdealWidth <= a3)
  {
    if ([(PUIStylePickerSegmentedControl *)self numberOfSegments])
    {
      v5 = 0;
      v3 = 0.0;
      do
      {
        v6 = [(NSArray *)self->_idealSegmentWidths objectAtIndex:v5];
        [v6 floatValue];
        v3 = v3 + v7;

        ++v5;
      }

      while (v5 < [(PUIStylePickerSegmentedControl *)self numberOfSegments]);
    }

    else
    {
      return 0.0;
    }
  }

  return v3;
}

@end