@interface PUITextLayoutPickerComponentViewController
- (BOOL)isUsingVerticalLanguage;
- (PUITextLayoutPickerComponentViewController)initWithLayout:(unint64_t)layout;
- (PUITextLayoutPickerComponentViewController)initWithLayouts:(id)layouts selectedLayout:(unint64_t)layout;
- (PUITextLayoutPickerComponentViewControllerDelegate)delegate;
- (double)cellHeight;
- (id)cellViewFor:(unint64_t)for largestItemHeight:(double *)height;
- (void)loadView;
- (void)setselectedLayout:(unint64_t)layout;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PUITextLayoutPickerComponentViewController

- (PUITextLayoutPickerComponentViewController)initWithLayout:(unint64_t)layout
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [PUITextLayoutSet alloc];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layout];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [(PUITextLayoutSet *)v5 initWithTextLayouts:v7];
  v9 = [(PUITextLayoutPickerComponentViewController *)self initWithLayouts:v8 selectedLayout:layout];

  return v9;
}

- (PUITextLayoutPickerComponentViewController)initWithLayouts:(id)layouts selectedLayout:(unint64_t)layout
{
  layoutsCopy = layouts;
  v11.receiver = self;
  v11.super_class = PUITextLayoutPickerComponentViewController;
  v7 = [(PUITextLayoutPickerComponentViewController *)&v11 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = [layoutsCopy copy];
    layouts = v7->_layouts;
    v7->_layouts = v8;

    v7->_selectedLayout = layout;
  }

  return v7;
}

- (BOOL)isUsingVerticalLanguage
{
  v2 = PUIBundle();
  v3 = [v2 localizedStringForKey:@"POSTER_LAYOUT_VERTICAL" value:&stru_1F1C6DED8 table:0];
  pui_isSuitableForVerticalLayout = [v3 pui_isSuitableForVerticalLayout];

  return pui_isSuitableForVerticalLayout;
}

- (double)cellHeight
{
  isUsingVerticalLanguage = [(PUITextLayoutPickerComponentViewController *)self isUsingVerticalLanguage];
  isUsingSmallerSizing = [(PUITextLayoutPickerComponentViewController *)self isUsingSmallerSizing];
  result = 84.0;
  if (isUsingSmallerSizing)
  {
    result = 82.0;
  }

  v6 = 64.0;
  if (isUsingSmallerSizing)
  {
    v6 = 62.0;
  }

  if (!isUsingVerticalLanguage)
  {
    return v6;
  }

  return result;
}

- (id)cellViewFor:(unint64_t)for largestItemHeight:(double *)height
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(PUITextLayoutPickerComponentViewController *)self isUsingVerticalLanguage])
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    IsVertical = PUITextLayoutIsVertical(for);
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

    v15 = PUITextLayoutIsVertical(for);
    [v14 size];
    if (height)
    {
      if (!v15)
      {
        v16 = v17;
      }

      if (*height >= v16)
      {
        v16 = *height;
      }

      *height = v16;
    }

    forCopy2 = for;
    if (PUITextLayoutIsVertical(for))
    {
      if (_AXSPrefersHorizontalTextLayout())
      {
        forCopy2 = 0;
      }

      else
      {
        forCopy2 = for;
      }
    }

    v19 = objc_alloc_init(PUIStyleTitleLayoutPickerButton);
    [(PUIStyleTitleLayoutPickerButton *)v19 setFont:v6];
    [(PUIStyleTitleLayoutPickerButton *)v19 setLayout:forCopy2];
    [(PUIStyleTitleLayoutPickerButton *)v19 setText:v11];
    [(PUIStyleTitleLayoutPickerButton *)v19 setTag:for];
  }

  else
  {
    v19 = objc_alloc_init(PUIStylePickerImageButton);
    contentImageView = [(PUIStyleTitleLayoutPickerButton *)v19 contentImageView];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [contentImageView setTintColor:blackColor];

    contentImageView2 = [(PUIStyleTitleLayoutPickerButton *)v19 contentImageView];
    [contentImageView2 setContentMode:1];

    [(PUIStyleTitleLayoutPickerButton *)v19 setTag:for];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    if (PUITextLayoutIsVertical(for))
    {
      v23 = @"textbox.vertical.filled.topright.iphone";
    }

    else
    {
      v23 = @"textbox.horizontal.filled.top.iphone";
    }

    [(PUIStyleTitleLayoutPickerButton *)v19 configureWithSystemImageNamed:v23 configuration:v6];
    if (height)
    {
      v24 = *height;
      contentImageView3 = [(PUIStyleTitleLayoutPickerButton *)v19 contentImageView];
      [contentImageView3 frame];
      v27 = v26;

      if (v24 >= v27)
      {
        v28 = v24;
      }

      else
      {
        v28 = v27;
      }

      *height = v28;
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
  layouts = [(PUITextLayoutPickerComponentViewController *)self layouts];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __54__PUITextLayoutPickerComponentViewController_loadView__block_invoke;
  v24[3] = &unk_1E7854AF8;
  objc_copyWeak(&v26, &location);
  v22 = v3;
  v25 = v22;
  [layouts enumerateTextLayouts:v24];

  [(PUITextLayoutPickerComponentViewController *)self setCellViews:v22];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:v22];
  v5 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
  stackView = self->_stackView;
  self->_stackView = v5;

  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setAlignment:1];
  [(UIStackView *)self->_stackView setDistribution:1];
  [(UIStackView *)self->_stackView setSpacing:20.0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:self->_stackView];
  v16 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [v23 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
  v28[0] = v18;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [v23 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
  v28[1] = v8;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [v23 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[2] = v11;
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [v23 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
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
  view = [(PUITextLayoutPickerComponentViewController *)self view];
  [view bounds];
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
  heightCellConstraints = [(PUITextLayoutPickerComponentViewController *)self heightCellConstraints];
  [v3 deactivateConstraints:heightCellConstraints];

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cellViews = [(PUITextLayoutPickerComponentViewController *)self cellViews];
  v7 = [cellViews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(cellViews);
        }

        heightAnchor = [*(*(&v15 + 1) + 8 * v10) heightAnchor];
        [(PUITextLayoutPickerComponentViewController *)self cellHeight];
        v12 = [heightAnchor constraintEqualToConstant:?];
        [array addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [cellViews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [array copy];
  heightCellConstraints = self->_heightCellConstraints;
  self->_heightCellConstraints = v13;

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setselectedLayout:(unint64_t)layout
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_selectedLayout != layout)
  {
    self->_selectedLayout = layout;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    cellViews = [(PUITextLayoutPickerComponentViewController *)self cellViews];
    v6 = [cellViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(cellViews);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 tag] == layout)
          {
            selectedCellView = [(PUITextLayoutPickerComponentViewController *)self selectedCellView];
            [selectedCellView setSelected:0];

            [(PUITextLayoutPickerComponentViewController *)self setSelectedCellView:v10];
            [v10 setSelected:1];
          }
        }

        v7 = [cellViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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