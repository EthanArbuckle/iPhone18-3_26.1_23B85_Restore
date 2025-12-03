@interface PUIStylePickerSegmentedControl
- (PUIStylePickerSegmentedControl)initWithFrame:(CGRect)frame actions:(id)actions;
- (double)calculatedWidthForAvailableWidth:(double)width;
- (void)_updateSegmentWidths;
- (void)layoutSubviews;
@end

@implementation PUIStylePickerSegmentedControl

- (PUIStylePickerSegmentedControl)initWithFrame:(CGRect)frame actions:(id)actions
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v48[1] = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v45.receiver = self;
  v45.super_class = PUIStylePickerSegmentedControl;
  height = [(PUIStylePickerSegmentedControl *)&v45 initWithFrame:actionsCopy actions:x, y, width, height];
  if (height)
  {
    if (objc_opt_respondsToSelector())
    {
      [(PUIStylePickerSegmentedControl *)height _setUseSpringBoardVibrancy:1];
    }

    [(PUIStylePickerSegmentedControl *)height setTransparentBackground:1];
    height->_lastKnownWidth = -1.0;
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
    [(PUIStylePickerSegmentedControl *)height setTitleTextAttributes:v14 forState:0];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    [v18 setObject:v19 forKey:v16];

    v38 = v13;
    [v18 setObject:v13 forKey:v17];
    v37 = v18;
    [(PUIStylePickerSegmentedControl *)height setTitleTextAttributes:v18 forState:4];
    v36 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.12];
    [(PUIStylePickerSegmentedControl *)height setSelectedSegmentTintColor:?];
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(actionsCopy, "count")}];
    v21 = v14;
    v22 = height;
    *&height->_segmentMinimumWidth = qword_1A8D24950[[actionsCopy count] > 2];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = actionsCopy;
    obj = actionsCopy;
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

          title = [*(*(&v41 + 1) + 8 * i) title];
          [title sizeWithAttributes:v21];
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
    height = v22;
    idealSegmentWidths = v22->_idealSegmentWidths;
    v22->_idealSegmentWidths = v33;

    v22->_totalIdealWidth = v26;
    actionsCopy = v39;
  }

  return height;
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

- (double)calculatedWidthForAvailableWidth:(double)width
{
  widthCopy = width;
  if (self->_totalIdealWidth <= width)
  {
    if ([(PUIStylePickerSegmentedControl *)self numberOfSegments])
    {
      v5 = 0;
      widthCopy = 0.0;
      do
      {
        v6 = [(NSArray *)self->_idealSegmentWidths objectAtIndex:v5];
        [v6 floatValue];
        widthCopy = widthCopy + v7;

        ++v5;
      }

      while (v5 < [(PUIStylePickerSegmentedControl *)self numberOfSegments]);
    }

    else
    {
      return 0.0;
    }
  }

  return widthCopy;
}

@end