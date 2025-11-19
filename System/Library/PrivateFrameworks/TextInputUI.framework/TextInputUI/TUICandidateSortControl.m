@interface TUICandidateSortControl
- (CGRect)segmentedControlFrame;
- (TUICandidateSortControl)initWithCoder:(id)a3;
- (TUICandidateSortControl)initWithFrame:(CGRect)a3;
- (double)segmentedControlWidth;
- (int64_t)selectedIndex;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setSelectedIndex:(int64_t)a3;
- (void)setStyle:(id)a3;
- (void)setTitles:(id)a3;
@end

@implementation TUICandidateSortControl

- (void)setSelectedIndex:(int64_t)a3
{
  v4 = [(TUICandidateSortControl *)self segmentedControl];
  [v4 setSelectedSegmentIndex:a3];
}

- (int64_t)selectedIndex
{
  v2 = [(TUICandidateSortControl *)self segmentedControl];
  v3 = [v2 selectedSegmentIndex];

  return v3;
}

- (void)setTitles:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSArray *)self->_titles isEqual:v4]& 1) == 0)
  {
    v5 = [v4 copy];
    titles = self->_titles;
    self->_titles = v5;

    [(UISegmentedControl *)self->_segmentedControl removeAllSegments];
    v7 = [v4 count];
    segmentedControl = self->_segmentedControl;
    if (v7 > 1)
    {
      [(UISegmentedControl *)segmentedControl setHidden:0];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = self->_titles;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [(UISegmentedControl *)self->_segmentedControl insertSegmentWithTitle:*(*(&v14 + 1) + 8 * v13++) atIndex:[(UISegmentedControl *)self->_segmentedControl numberOfSegments] animated:0];
          }

          while (v11 != v13);
          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }

      if ([(NSArray *)self->_titles count])
      {
        [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
      }

      [(TUICandidateSortControl *)self setNeedsLayout];
    }

    else
    {
      [(UISegmentedControl *)segmentedControl setHidden:1];
    }
  }
}

- (void)setStyle:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([(TUICandidateViewStyle *)self->_style isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_style, a3);
    if (v5)
    {
      v6 = [(TUICandidateSortControl *)self segmentedControl];
      v21 = *MEMORY[0x1E69DB648];
      v7 = v21;
      v8 = [v5 sortControlFont];
      v23[0] = v8;
      v22 = *MEMORY[0x1E69DB650];
      v9 = v22;
      v10 = [v5 textColor];
      v23[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v21 count:2];
      [v6 setTitleTextAttributes:v11 forState:0];

      v12 = [(TUICandidateSortControl *)self segmentedControl];
      v19[0] = v7;
      v13 = [v5 sortControlFont];
      v19[1] = v9;
      v20[0] = v13;
      v14 = [v5 textColor];
      v20[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      [v12 setTitleTextAttributes:v15 forState:4];
    }

    v16 = [v5 sortControlColor];
    v17 = [(TUICandidateSortControl *)self segmentedControl];
    [v17 setTintColor:v16];

    v18 = [v5 sortControlBackgroundColor];
    [(TUICandidateSortControl *)self setBackgroundColor:v18];

    [(TUICandidateSortControl *)self setNeedsLayout];
  }
}

- (double)segmentedControlWidth
{
  [(TUICandidateSortControl *)self bounds];
  Width = CGRectGetWidth(v16);
  v4 = [(TUICandidateSortControl *)self style];
  [v4 sortControlPadding];
  v6 = Width - v5;
  v7 = [(TUICandidateSortControl *)self style];
  [v7 sortControlPadding];
  v9 = v6 - v8;

  v10 = [(TUICandidateSortControl *)self style];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(TUICandidateSortControl *)self style];
    v12 = [v11 performSelector:sel_maximizeSortControlWidthWithPadding];

    if (v12)
    {
      return v9;
    }
  }

  else
  {
  }

  v13 = v9 + -10.0;
  if (Width >= 320.0)
  {
    v14 = 320.0;
    if (Width < 452.0)
    {
      v14 = Width + -17.0;
    }
  }

  else
  {
    v14 = Width + -10.0;
  }

  if (v14 < v13)
  {
    v13 = v14;
  }

  if (v13 >= 0.0)
  {
    return v13;
  }

  else
  {
    return 0.0;
  }
}

- (CGRect)segmentedControlFrame
{
  [(TUICandidateSortControl *)self bounds];
  v4 = v3;
  v6 = v5;
  [MEMORY[0x1E69DCF38] defaultHeightForStyle:5];
  v8 = v7;
  [(TUICandidateSortControl *)self segmentedControlWidth];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = TUICandidateSortControl;
  [(TUICandidateSortControl *)&v16 layoutSubviews];
  [(TUICandidateSortControl *)self segmentedControlFrame];
  [(UISegmentedControl *)self->_segmentedControl setFrame:?];
  [(TUICandidateSortControl *)self bounds];
  MidX = CGRectGetMidX(v17);
  v4 = [(TUICandidateSortControl *)self style];
  [v4 sortControlPadding];
  v6 = v5;
  v7 = [(TUICandidateSortControl *)self style];
  [v7 sortControlPadding];
  v9 = MidX + (v6 - v8) * 0.5;
  [(TUICandidateSortControl *)self bounds];
  MidY = CGRectGetMidY(v18);
  v11 = [(TUICandidateSortControl *)self style];
  [v11 sortControlPadding];
  v13 = v12;
  v14 = [(TUICandidateSortControl *)self style];
  [v14 sortControlPadding];
  [(UISegmentedControl *)self->_segmentedControl setCenter:v9, MidY + (v13 - v15) * 0.5];
}

- (TUICandidateSortControl)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateSortControl;
  v3 = [(TUICandidateSortControl *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateSortControl *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateSortControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateSortControl;
  v3 = [(TUICandidateSortControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateSortControl *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc(MEMORY[0x1E69DCF38]);
  [(TUICandidateSortControl *)self segmentedControlFrame];
  v4 = [v3 initWithFrame:?];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v4;

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel_handleValueChanged forControlEvents:4096];
  v6 = self->_segmentedControl;

  [(TUICandidateSortControl *)self addSubview:v6];
}

@end