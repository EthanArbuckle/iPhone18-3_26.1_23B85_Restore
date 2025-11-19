@interface PREditingTitleLayoutPickerComponentViewController
+ (id)defaultTitleLayoutsForRole:(id)a3;
- (BOOL)isUsingVerticalLanguage;
- (PREditingTitleLayoutPickerComponentViewController)initWithTitleLayouts:(id)a3 selectedLayout:(unint64_t)a4;
- (PREditingTitleLayoutPickerComponentViewControllerDelegate)delegate;
- (double)cellHeight;
- (id)cellViewFor:(unint64_t)a3 largestItemHeight:(double *)a4;
- (void)loadView;
- (void)setSelectedTitleLayout:(unint64_t)a3;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingTitleLayoutPickerComponentViewController

+ (id)defaultTitleLayoutsForRole:(id)a3
{
  if ([a3 isEqual:@"PRPosterRoleIncomingCall"])
  {
    return &unk_1F1C6BBD8;
  }

  else
  {
    return &unk_1F1C6BBF0;
  }
}

- (PREditingTitleLayoutPickerComponentViewController)initWithTitleLayouts:(id)a3 selectedLayout:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PREditingTitleLayoutPickerComponentViewController;
  v8 = [(PREditingTitleLayoutPickerComponentViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_titleLayouts, a3);
    v9->_selectedTitleLayout = a4;
  }

  return v9;
}

- (BOOL)isUsingVerticalLanguage
{
  v2 = PRBundle();
  v3 = [v2 localizedStringForKey:@"POSTER_LAYOUT_VERTICAL" value:&stru_1F1C13D90 table:@"PosterKit"];
  v4 = [v3 pr_isSuitableForVerticalLayout];

  return v4;
}

- (double)cellHeight
{
  v3 = [(PREditingTitleLayoutPickerComponentViewController *)self isUsingVerticalLanguage];
  v4 = [(PREditingTitleLayoutPickerComponentViewController *)self isUsingSmallerSizing];
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
  if ([(PREditingTitleLayoutPickerComponentViewController *)self isUsingVerticalLanguage])
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    IsVertical = PRPosterTitleLayoutIsVertical(a3);
    v8 = PRBundle();
    v9 = v8;
    if (IsVertical)
    {
      v10 = @"POSTER_LAYOUT_VERTICAL";
    }

    else
    {
      v10 = @"POSTER_LAYOUT_HORIZONTAL";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_1F1C13D90 table:@"PosterKit"];

    v12 = objc_alloc(MEMORY[0x1E696AD40]);
    v30 = *MEMORY[0x1E69DB648];
    v31[0] = v6;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v14 = [v12 initWithString:v11 attributes:v13];

    v15 = PRPosterTitleLayoutIsVertical(a3);
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
    if (PRPosterTitleLayoutIsVertical(a3))
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

    v19 = objc_alloc_init(PREditingTitleLayoutPickerCellView);
    [(PREditingTitleLayoutPickerCellView *)v19 setFont:v6];
    [(PREditingTitleLayoutPickerCellView *)v19 setLayout:v18];
    [(PREditingTitleLayoutPickerCellView *)v19 setText:v11];
    [(PREditingTitleLayoutPickerCellView *)v19 setTag:a3];
  }

  else
  {
    v19 = objc_alloc_init(PREditingPickerImageCellView);
    v20 = [(PREditingTitleLayoutPickerCellView *)v19 contentImageView];
    v21 = [MEMORY[0x1E69DC888] blackColor];
    [v20 setTintColor:v21];

    v22 = [(PREditingTitleLayoutPickerCellView *)v19 contentImageView];
    [v22 setContentMode:1];

    [(PREditingTitleLayoutPickerCellView *)v19 setTag:a3];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    if (PRPosterTitleLayoutIsVertical(a3))
    {
      v23 = @"textbox.vertical.filled.topright.iphone";
    }

    else
    {
      v23 = @"textbox.horizontal.filled.top.iphone";
    }

    [(PREditingTitleLayoutPickerCellView *)v19 configureWithSystemImageNamed:v23 configuration:v6];
    if (a4)
    {
      v24 = *a4;
      v25 = [(PREditingTitleLayoutPickerCellView *)v19 contentImageView];
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
  v40 = *MEMORY[0x1E69E9840];
  v27 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(PREditingTitleLayoutPickerComponentViewController *)self titleLayouts];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = *v34;
    obj = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v33 + 1) + 8 * v6) unsignedIntValue];
        v8 = [(PREditingTitleLayoutPickerComponentViewController *)self cellViewFor:v7 largestItemHeight:&self->_largestItemHeight];
        v9 = MEMORY[0x1E69DC628];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __61__PREditingTitleLayoutPickerComponentViewController_loadView__block_invoke;
        v31[3] = &unk_1E7843218;
        objc_copyWeak(v32, &location);
        v32[1] = v7;
        v10 = [v9 actionWithHandler:v31];
        [v8 addAction:v10 forControlEvents:0x2000];
        if (BSEqualDoubles())
        {
          [v8 setSelected:1];
          [(PREditingTitleLayoutPickerComponentViewController *)self setSelectedCellView:v8];
        }

        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v30 addObject:v8];

        objc_destroyWeak(v32);
        ++v6;
      }

      while (v4 != v6);
      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v4);
  }

  [(PREditingTitleLayoutPickerComponentViewController *)self setCellViews:v30];
  obja = [MEMORY[0x1E695DF70] array];
  [obja addObjectsFromArray:v30];
  v11 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:obja];
  stackView = self->_stackView;
  self->_stackView = v11;

  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setAlignment:1];
  [(UIStackView *)self->_stackView setDistribution:1];
  [(UIStackView *)self->_stackView setSpacing:20.0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 addSubview:self->_stackView];
  v21 = MEMORY[0x1E696ACD8];
  v26 = [(UIStackView *)self->_stackView leadingAnchor];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:24.0];
  v38[0] = v24;
  v23 = [(UIStackView *)self->_stackView trailingAnchor];
  v22 = [v27 trailingAnchor];
  v13 = [v23 constraintEqualToAnchor:v22 constant:-24.0];
  v38[1] = v13;
  v14 = [(UIStackView *)self->_stackView bottomAnchor];
  v15 = [v27 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v38[2] = v16;
  v17 = [(UIStackView *)self->_stackView topAnchor];
  v18 = [v27 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v38[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v21 activateConstraints:v20];

  [(PREditingTitleLayoutPickerComponentViewController *)self updateLayoutForCurrentSize];
  [(PREditingTitleLayoutPickerComponentViewController *)self setView:v27];

  objc_destroyWeak(&location);
}

void __61__PREditingTitleLayoutPickerComponentViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSelectedTitleLayout:*(a1 + 40)];
  v2 = [WeakRetained delegate];
  [v2 titleLayoutPickerComponentViewController:WeakRetained didSelectTitleLayout:*(a1 + 40) userSelected:1];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PREditingTitleLayoutPickerComponentViewController;
  [(PREditingTitleLayoutPickerComponentViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(PREditingTitleLayoutPickerComponentViewController *)self view];
  [v3 bounds];
  v5 = v4;

  if ([(PREditingTitleLayoutPickerComponentViewController *)self isUsingSmallerSizing]!= v5 <= 375.0)
  {
    self->_usingSmallerSizing = v5 <= 375.0;
    [(PREditingTitleLayoutPickerComponentViewController *)self updateLayoutForCurrentSize];
  }
}

- (void)updateLayoutForCurrentSize
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(PREditingTitleLayoutPickerComponentViewController *)self heightCellConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PREditingTitleLayoutPickerComponentViewController *)self cellViews];
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
        [(PREditingTitleLayoutPickerComponentViewController *)self cellHeight];
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

- (void)setSelectedTitleLayout:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_selectedTitleLayout != a3)
  {
    self->_selectedTitleLayout = a3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(PREditingTitleLayoutPickerComponentViewController *)self cellViews];
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
            v11 = [(PREditingTitleLayoutPickerComponentViewController *)self selectedCellView];
            [v11 setSelected:0];

            [(PREditingTitleLayoutPickerComponentViewController *)self setSelectedCellView:v10];
            [v10 setSelected:1];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (PREditingTitleLayoutPickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end