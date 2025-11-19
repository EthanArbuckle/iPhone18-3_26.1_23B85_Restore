@interface PUITextLayoutPickerComponentViewController
- (BOOL)isUsingVerticalLanguage;
- (PUITextLayoutPickerComponentViewController)initWithLayout:(unint64_t)a3;
- (PUITextLayoutPickerComponentViewController)initWithLayouts:(id)a3 selectedLayout:(unint64_t)a4;
- (PUITextLayoutPickerComponentViewControllerDelegate)delegate;
- (double)cellHeight;
- (id)cellViewFor:(unint64_t)a3 largestItemHeight:(double *)a4;
- (void)loadView;
- (void)setselectedLayout:(unint64_t)a3;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PUITextLayoutPickerComponentViewController

- (PUITextLayoutPickerComponentViewController)initWithLayout:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [PUITextLayoutSet alloc];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [(PUITextLayoutSet *)v5 initWithTextLayouts:v7];
  v9 = [(PUITextLayoutPickerComponentViewController *)self initWithLayouts:v8 selectedLayout:a3];

  return v9;
}

- (PUITextLayoutPickerComponentViewController)initWithLayouts:(id)a3 selectedLayout:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PUITextLayoutPickerComponentViewController;
  v7 = [(PUITextLayoutPickerComponentViewController *)&v11 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = [v6 copy];
    layouts = v7->_layouts;
    v7->_layouts = v8;

    v7->_selectedLayout = a4;
  }

  return v7;
}

- (BOOL)isUsingVerticalLanguage
{
  v2 = PUIBundle();
  v3 = [v2 localizedStringForKey:@"POSTER_LAYOUT_VERTICAL" value:&stru_1F1C6DED8 table:0];
  v4 = [v3 pui_isSuitableForVerticalLayout];

  return v4;
}

- (double)cellHeight
{
  v3 = [(PUITextLayoutPickerComponentViewController *)self isUsingVerticalLanguage];
  v4 = [(PUITextLayoutPickerComponentViewController *)self isUsingSmallerSizing];
  result = 84.0;
  if (v4)
  {
    result = 82.0;
  }

  v6 = 64.0;
  if (v4)
  {
    v6 = 62.0;
  }

  if (!v3)
  {
    return v6;
  }

  return result;
}

- (id)cellViewFor:(unint64_t)a3 largestItemHeight:(double *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(PUITextLayoutPickerComponentViewController *)self isUsingVerticalLanguage])
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    IsVertical = PUITextLayoutIsVertical(a3);
    v8 = PUIBundle();
    v9 = v8;
    if (IsVertical)
    {
      v10 = @"POSTER_LAYOUT_VERTICAL";
    }

    else
    {
      v10 = @"POSTER_LAYOUT_HORIZONTAL";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_1F1C6DED8 table:0];

    v12 = objc_alloc(MEMORY[0x1E696AD40]);
    v30 = *MEMORY[0x1E69DB648];
    v31[0] = v6;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v14 = [v12 initWithString:v11 attributes:v13];

    v15 = PUITextLayoutIsVertical(a3);
    [v14 size];
    if (a4)
    {
      if (!v15)
      {
        v16 = v17;
      }

      if (*a4 >= v16)
      {
        v16 = *a4;
      }

      *a4 = v16;
    }

    v18 = a3;
    if (PUITextLayoutIsVertical(a3))
    {
      if (_AXSPrefersHorizontalTextLayout())
      {
        v18 = 0;
      }

      else
      {
        v18 = a3;
      }
    }

    v19 = objc_alloc_init(PUIStyleTitleLayoutPickerButton);
    [(PUIStyleTitleLayoutPickerButton *)v19 setFont:v6];
    [(PUIStyleTitleLayoutPickerButton *)v19 setLayout:v18];
    [(PUIStyleTitleLayoutPickerButton *)v19 setText:v11];
    [(PUIStyleTitleLayoutPickerButton *)v19 setTag:a3];
  }

  else
  {
    v19 = objc_alloc_init(PUIStylePickerImageButton);
    v20 = [(PUIStyleTitleLayoutPickerButton *)v19 contentImageView];
    v21 = [MEMORY[0x1E69DC888] blackColor];
    [v20 setTintColor:v21];

    v22 = [(PUIStyleTitleLayoutPickerButton *)v19 contentImageView];
    [v22 setContentMode:1];

    [(PUIStyleTitleLayoutPickerButton *)v19 setTag:a3];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    if (PUITextLayoutIsVertical(a3))
    {
      v23 = @"textbox.vertical.filled.topright.iphone";
    }

    else
    {
      v23 = @"textbox.horizontal.filled.top.iphone";
    }

    [(PUIStyleTitleLayoutPickerButton *)v19 configureWithSystemImageNamed:v23 configuration:v6];
    if (a4)
    {
      v24 = *a4;
      v25 = [(PUIStyleTitleLayoutPickerButton *)v19 contentImageView];
      [v25 frame];
      v27 = v26;

      if (v24 >= v27)
      {
        v28 = v24;
      }

      else
      {
        v28 = v27;
      }

      *a4 = v28;
    }
  }

  return v19;
}

- (void)loadView
{
  v28[4] = *MEMORY[0x1E69E9840];
  v23 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v4 = [(PUITextLayoutPickerComponentViewController *)self layouts];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __54__PUITextLayoutPickerComponentViewController_loadView__block_invoke;
  v24[3] = &unk_1E7854AF8;
  objc_copyWeak(&v26, &location);
  v22 = v3;
  v25 = v22;
  [v4 enumerateTextLayouts:v24];

  [(PUITextLayoutPickerComponentViewController *)self setCellViews:v22];
  v21 = [MEMORY[0x1E695DF70] array];
  [v21 addObjectsFromArray:v22];
  v5 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v21];
  stackView = self->_stackView;
  self->_stackView = v5;

  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setAlignment:1];
  [(UIStackView *)self->_stackView setDistribution:1];
  [(UIStackView *)self->_stackView setSpacing:20.0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:self->_stackView];
  v16 = MEMORY[0x1E696ACD8];
  v20 = [(UIStackView *)self->_stackView leadingAnchor];
  v19 = [v23 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:24.0];
  v28[0] = v18;
  v17 = [(UIStackView *)self->_stackView trailingAnchor];
  v7 = [v23 trailingAnchor];
  v8 = [v17 constraintEqualToAnchor:v7 constant:-24.0];
  v28[1] = v8;
  v9 = [(UIStackView *)self->_stackView bottomAnchor];
  v10 = [v23 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v28[2] = v11;
  v12 = [(UIStackView *)self->_stackView topAnchor];
  v13 = [v23 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v28[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [v16 activateConstraints:v15];

  [(PUITextLayoutPickerComponentViewController *)self updateLayoutForCurrentSize];
  [(PUITextLayoutPickerComponentViewController *)self setView:v23];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __54__PUITextLayoutPickerComponentViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained cellViewFor:a2 largestItemHeight:WeakRetained + 131];
    if (v6)
    {
      v7 = MEMORY[0x1E69DC628];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __54__PUITextLayoutPickerComponentViewController_loadView__block_invoke_2;
      v12 = &unk_1E7854608;
      objc_copyWeak(v13, (a1 + 40));
      v13[1] = a2;
      v8 = [v7 actionWithHandler:&v9];
      [v6 addAction:v8 forControlEvents:{0x2000, v9, v10, v11, v12}];
      if (v5[126] == a2)
      {
        [v6 setSelected:1];
        [v5 setSelectedCellView:v6];
      }

      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(a1 + 32) addObject:v6];

      objc_destroyWeak(v13);
    }
  }
}

void __54__PUITextLayoutPickerComponentViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setSelectedLayout:*(a1 + 40)];
    v3 = [v4 delegate];
    [v3 textLayoutPickerComponentViewController:v4 didSelectTextLayout:*(a1 + 40) userSelected:1];

    WeakRetained = v4;
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PUITextLayoutPickerComponentViewController;
  [(PUITextLayoutPickerComponentViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(PUITextLayoutPickerComponentViewController *)self view];
  [v3 bounds];
  v5 = v4;

  if ([(PUITextLayoutPickerComponentViewController *)self isUsingSmallerSizing]!= v5 <= 375.0)
  {
    self->_usingSmallerSizing = v5 <= 375.0;
    [(PUITextLayoutPickerComponentViewController *)self updateLayoutForCurrentSize];
  }
}

- (void)updateLayoutForCurrentSize
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(PUITextLayoutPickerComponentViewController *)self heightCellConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PUITextLayoutPickerComponentViewController *)self cellViews];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) heightAnchor];
        [(PUITextLayoutPickerComponentViewController *)self cellHeight];
        v12 = [v11 constraintEqualToConstant:?];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v13;

  [MEMORY[0x1E696ACD8] activateConstraints:v5];
}

- (void)setselectedLayout:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_selectedLayout != a3)
  {
    self->_selectedLayout = a3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(PUITextLayoutPickerComponentViewController *)self cellViews];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 tag] == a3)
          {
            v11 = [(PUITextLayoutPickerComponentViewController *)self selectedCellView];
            [v11 setSelected:0];

            [(PUITextLayoutPickerComponentViewController *)self setSelectedCellView:v10];
            [v10 setSelected:1];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (PUITextLayoutPickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end