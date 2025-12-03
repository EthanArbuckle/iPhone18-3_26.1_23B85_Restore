@interface PREditingTitleLayoutPickerComponentViewController
+ (id)defaultTitleLayoutsForRole:(id)role;
- (BOOL)isUsingVerticalLanguage;
- (PREditingTitleLayoutPickerComponentViewController)initWithTitleLayouts:(id)layouts selectedLayout:(unint64_t)layout;
- (PREditingTitleLayoutPickerComponentViewControllerDelegate)delegate;
- (double)cellHeight;
- (id)cellViewFor:(unint64_t)for largestItemHeight:(double *)height;
- (void)loadView;
- (void)setSelectedTitleLayout:(unint64_t)layout;
- (void)updateLayoutForCurrentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingTitleLayoutPickerComponentViewController

+ (id)defaultTitleLayoutsForRole:(id)role
{
  if ([role isEqual:@"PRPosterRoleIncomingCall"])
  {
    return &unk_1F1C6BBD8;
  }

  else
  {
    return &unk_1F1C6BBF0;
  }
}

- (PREditingTitleLayoutPickerComponentViewController)initWithTitleLayouts:(id)layouts selectedLayout:(unint64_t)layout
{
  layoutsCopy = layouts;
  v11.receiver = self;
  v11.super_class = PREditingTitleLayoutPickerComponentViewController;
  v8 = [(PREditingTitleLayoutPickerComponentViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_titleLayouts, layouts);
    v9->_selectedTitleLayout = layout;
  }

  return v9;
}

- (BOOL)isUsingVerticalLanguage
{
  v2 = PRBundle();
  v3 = [v2 localizedStringForKey:@"POSTER_LAYOUT_VERTICAL" value:&stru_1F1C13D90 table:@"PosterKit"];
  pr_isSuitableForVerticalLayout = [v3 pr_isSuitableForVerticalLayout];

  return pr_isSuitableForVerticalLayout;
}

- (double)cellHeight
{
  isUsingVerticalLanguage = [(PREditingTitleLayoutPickerComponentViewController *)self isUsingVerticalLanguage];
  isUsingSmallerSizing = [(PREditingTitleLayoutPickerComponentViewController *)self isUsingSmallerSizing];
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
  if ([(PREditingTitleLayoutPickerComponentViewController *)self isUsingVerticalLanguage])
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    IsVertical = PRPosterTitleLayoutIsVertical(for);
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

    v15 = PRPosterTitleLayoutIsVertical(for);
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
    if (PRPosterTitleLayoutIsVertical(for))
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

    v19 = objc_alloc_init(PREditingTitleLayoutPickerCellView);
    [(PREditingTitleLayoutPickerCellView *)v19 setFont:v6];
    [(PREditingTitleLayoutPickerCellView *)v19 setLayout:forCopy2];
    [(PREditingTitleLayoutPickerCellView *)v19 setText:v11];
    [(PREditingTitleLayoutPickerCellView *)v19 setTag:for];
  }

  else
  {
    v19 = objc_alloc_init(PREditingPickerImageCellView);
    contentImageView = [(PREditingTitleLayoutPickerCellView *)v19 contentImageView];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [contentImageView setTintColor:blackColor];

    contentImageView2 = [(PREditingTitleLayoutPickerCellView *)v19 contentImageView];
    [contentImageView2 setContentMode:1];

    [(PREditingTitleLayoutPickerCellView *)v19 setTag:for];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    if (PRPosterTitleLayoutIsVertical(for))
    {
      v23 = @"textbox.vertical.filled.topright.iphone";
    }

    else
    {
      v23 = @"textbox.horizontal.filled.top.iphone";
    }

    [(PREditingTitleLayoutPickerCellView *)v19 configureWithSystemImageNamed:v23 configuration:v6];
    if (height)
    {
      v24 = *height;
      contentImageView3 = [(PREditingTitleLayoutPickerCellView *)v19 contentImageView];
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
  v40 = *MEMORY[0x1E69E9840];
  v27 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  titleLayouts = [(PREditingTitleLayoutPickerComponentViewController *)self titleLayouts];
  v4 = [titleLayouts countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = *v34;
    obj = titleLayouts;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntValue = [*(*(&v33 + 1) + 8 * v6) unsignedIntValue];
        v8 = [(PREditingTitleLayoutPickerComponentViewController *)self cellViewFor:unsignedIntValue largestItemHeight:&self->_largestItemHeight];
        v9 = MEMORY[0x1E69DC628];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __61__PREditingTitleLayoutPickerComponentViewController_loadView__block_invoke;
        v31[3] = &unk_1E7843218;
        objc_copyWeak(v32, &location);
        v32[1] = unsignedIntValue;
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
      titleLayouts = obj;
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
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [v27 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
  v38[0] = v24;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [v27 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
  v38[1] = v13;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [v27 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[2] = v16;
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [v27 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
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
  view = [(PREditingTitleLayoutPickerComponentViewController *)self view];
  [view bounds];
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
  heightCellConstraints = [(PREditingTitleLayoutPickerComponentViewController *)self heightCellConstraints];
  [v3 deactivateConstraints:heightCellConstraints];

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cellViews = [(PREditingTitleLayoutPickerComponentViewController *)self cellViews];
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
        [(PREditingTitleLayoutPickerComponentViewController *)self cellHeight];
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

- (void)setSelectedTitleLayout:(unint64_t)layout
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_selectedTitleLayout != layout)
  {
    self->_selectedTitleLayout = layout;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    cellViews = [(PREditingTitleLayoutPickerComponentViewController *)self cellViews];
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
            selectedCellView = [(PREditingTitleLayoutPickerComponentViewController *)self selectedCellView];
            [selectedCellView setSelected:0];

            [(PREditingTitleLayoutPickerComponentViewController *)self setSelectedCellView:v10];
            [v10 setSelected:1];
          }
        }

        v7 = [cellViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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