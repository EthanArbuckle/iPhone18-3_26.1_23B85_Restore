@interface PREditingContentStyleItemsViewController
- (PREditingContentStyleItemsViewController)initWithDataSource:(id)a3 configuration:(id)a4;
- (PREditingContentStyleItemsViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (void)_deselectColorWell;
- (void)_deselectSelectedContentStyle;
- (void)_didSelectContentStyleCoordinator:(id)a3;
- (void)_initializeContent;
- (void)_setupItemViews;
- (void)_updateLayoutForCurrentSize;
- (void)colorWellDidUpdateColor:(id)a3;
- (void)didTapContentStyleItem:(id)a3;
- (void)layoutWithItemViews:(id)a3;
- (void)setContentsLuminance:(double)a3;
- (void)setSelectedContentStyle:(id)a3 fromUIKitPicker:(BOOL)a4;
- (void)updateDataSource:(id)a3 configuration:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PREditingContentStyleItemsViewController

- (PREditingContentStyleItemsViewController)initWithDataSource:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PREditingContentStyleItemsViewController;
  v9 = [(PREditingContentStyleItemsViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v10->_configuration, a4);
    [(PREditingContentStyleItemsViewController *)v10 _initializeContent];
  }

  return v10;
}

- (void)_initializeContent
{
  v3 = [(PREditorContentStylePickerConfiguration *)self->_configuration selectedStyle];
  v4 = __62__PREditingContentStyleItemsViewController__initializeContent__block_invoke(v3, v3);
  dataSource = self->_dataSource;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__PREditingContentStyleItemsViewController__initializeContent__block_invoke_2;
  v26[3] = &unk_1E78433F8;
  v6 = v3;
  v27 = v6;
  v28 = &__block_literal_global_5;
  v29 = v4;
  v7 = [(PREditingContentStyleItemsDataSource *)dataSource firstCoordinatorPassingTest:v26];
  v8 = v7;
  if (v7)
  {
    v9 = [(PREditingPosterContentStyleCoordinator *)v7 style];
    if ([v9 allowsVariation])
    {
      v10 = [v6 allowsVariation];

      if (!v10)
      {
        goto LABEL_6;
      }

      [v6 variation];
      v12 = v11;
      v9 = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
      -[PREditingPosterContentStyleCoordinator setVariation:glassStyleApplied:](v8, "setVariation:glassStyleApplied:", [v9 displayingGlassStyles], v12);
    }
  }

LABEL_6:
  if ([(PREditorContentStylePickerConfiguration *)self->_configuration colorWellDisplayMode])
  {
    v13 = objc_alloc(MEMORY[0x1E69C5548]);
    v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    colorWellView = self->_colorWellView;
    self->_colorWellView = v14;

    v16 = [(PUIColorWellView *)self->_colorWellView colorWell];
    [v16 addTarget:self action:sel_colorWellDidUpdateColor_ forControlEvents:4096];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_colorWell, v16);
    if ([v6 allowsVariation])
    {
      [v6 variationAppliedColors];
    }

    else
    {
      [v6 colors];
    }
    v17 = ;
    v18 = [v17 firstObject];

    [v16 setSelectedColor:v18];
    if (v18)
    {
      v19 = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
      if ([v19 context] == 2)
      {
        v20 = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
        v21 = [v20 displayingGlassStyles] ^ 1;
      }

      else
      {
        v21 = 0;
      }

      v22 = [PREditingPosterContentStyleCoordinator coordinatorForColorWellView:self->_colorWellView vibrant:v21];
      uiKitColorPickerStyleCoordinator = self->_uiKitColorPickerStyleCoordinator;
      self->_uiKitColorPickerStyleCoordinator = v22;
    }

    v24 = [(PREditingContentStyleItemsDataSource *)self->_dataSource indexForCoordinator:v8];
    if (!v18 || v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PREditingContentStyleItemsViewController *)self _deselectColorWell];
    }
  }

  if (!v8)
  {
    v8 = self->_uiKitColorPickerStyleCoordinator;
  }

  selectedContentStyleCoordinator = self->_selectedContentStyleCoordinator;
  self->_selectedContentStyleCoordinator = v8;
}

uint64_t __62__PREditingContentStyleItemsViewController__initializeContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMemberOfClass:objc_opt_class()])
  {
    v3 = [v2 identifier];
    v4 = [v3 isEqualToString:@"VibrantMaterial"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __62__PREditingContentStyleItemsViewController__initializeContent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 style];
  v4 = 1;
  if (([v3 isEqual:*(a1 + 32) ignoringVariation:1] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (*(*(a1 + 40) + 16))())
    {
      v5 = [v3 supportsGlassAppearance];
    }

    else
    {
      if (*(a1 + 48) != 1)
      {
        v4 = 0;
        goto LABEL_9;
      }

      v5 = (*(*(a1 + 40) + 16))();
    }

    v4 = v5;
  }

LABEL_9:

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PREditingContentStyleItemsViewController;
  [(PREditingContentStyleItemsViewController *)&v3 viewDidLoad];
  [(PREditingContentStyleItemsViewController *)self _setupItemViews];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PREditingContentStyleItemsViewController;
  [(PREditingContentStyleItemsViewController *)&v3 viewDidLayoutSubviews];
  [(PREditingContentStyleItemsViewController *)self _updateLayoutForCurrentSize];
}

- (void)_setupItemViews
{
  v3 = [(PREditingContentStyleItemsViewController *)self selectedContentStyleCoordinator];
  v18 = [v3 style];

  v4 = [(PREditingContentStyleItemsDataSource *)self->_dataSource numberOfCoordinators];
  v20 = [MEMORY[0x1E695DF70] array];
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [(PREditingContentStyleItemsDataSource *)self->_dataSource coordinatorForIndex:v5, v18];
      v7 = [PREditingContentStyleItemView alloc];
      v8 = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
      v9 = -[PREditingContentStyleItemView initWithContentStyleCoordinator:applyGlassStyle:](v7, "initWithContentStyleCoordinator:applyGlassStyle:", v6, [v8 displayingGlassStyles]);

      v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapContentStyleItem_];
      [(PREditingContentStyleItemView *)v9 addGestureRecognizer:v10];
      v11 = [v6 style];
      v12 = [v11 isEqual:v18 ignoringVariation:1];

      if (v12)
      {
        [(PRSelectableEditingItemView *)v9 setSelected:1];
        [(PREditingContentStyleItemsViewController *)self setSelectedContentStyleItemView:v9];
      }

      [(PREditingContentStyleItemView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v20 addObject:v9];
      ++v5;
    }

    while (v4 != v5);
  }

  v13 = [v20 copy];
  allItemViews = self->_allItemViews;
  self->_allItemViews = v13;

  [(PREditingContentStyleItemsDataSource *)self->_dataSource setContentsLuminance:self->_contentsLuminance];
  v15 = [MEMORY[0x1E695DF70] arrayWithArray:v20];
  if ([(PREditorContentStylePickerConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    [(NSArray *)v15 addObject:self->_colorWellView];
  }

  allViews = self->_allViews;
  self->_allViews = v15;
  v17 = v15;

  [(PREditingContentStyleItemsViewController *)self layoutWithItemViews:v17];
}

- (void)didTapContentStyleItem:(id)a3
{
  v8 = [a3 view];
  v4 = [v8 contentStyleCoordinator];
  [(PREditingContentStyleItemsViewController *)self setSelectedContentStyleCoordinator:v4];
  [(PREditingContentStyleItemsViewController *)self _didSelectContentStyleCoordinator:v4];
  v5 = [(PREditingContentStyleItemsViewController *)self dataSource];
  v6 = [v5 indexForCoordinator:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PREditingContentStyleItemsViewController *)self _deselectSelectedContentStyle];
  }

  else
  {
    [(PREditingContentStyleItemsViewController *)self _deselectColorWell];
    v7 = [(PREditingContentStyleItemsViewController *)self selectedContentStyleItemView];
    [v7 setSelected:0];

    [(PREditingContentStyleItemsViewController *)self setSelectedContentStyleItemView:v8];
    [v8 setSelected:1];
  }
}

- (void)layoutWithItemViews:(id)a3
{
  v45[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 count] / 6uLL;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [v3 count], 1) <= 0x2AAAAAAAAAAAAAAAuLL)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v8 = 0;
    for (i = 0; i != v6; ++i)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = v8;
      v12 = 6;
      do
      {
        if ([v3 count] <= v11)
        {
          break;
        }

        v13 = [v3 objectAtIndexedSubscript:v11];
        [v10 addObject:v13];

        ++v11;
        --v12;
      }

      while (v12);
      v14 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v10];
      [v14 setAxis:0];
      [v14 setDistribution:3];
      [v14 setAlignment:1];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 addObject:v14];
      [v4 addObject:v14];

      v8 += 6;
    }
  }

  v43 = v7;
  v15 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v7];
  [(UIStackView *)v15 setAxis:1];
  [(UIStackView *)v15 setDistribution:3];
  [(UIStackView *)v15 setAlignment:3];
  [(UIStackView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  self->_stackView = v15;
  v17 = v15;

  v42 = v4;
  v18 = [v4 copy];
  horizontalStackViews = self->_horizontalStackViews;
  self->_horizontalStackViews = v18;

  v20 = [(PREditingContentStyleItemsViewController *)self view];
  [v20 addSubview:v17];

  v21 = [(UIStackView *)v17 leadingAnchor];
  v22 = [(PREditingContentStyleItemsViewController *)self view];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:31.0];

  stackViewLeadingConstraint = self->_stackViewLeadingConstraint;
  self->_stackViewLeadingConstraint = v24;
  v41 = v24;

  v26 = [(UIStackView *)v17 trailingAnchor];
  v27 = [(PREditingContentStyleItemsViewController *)self view];
  v28 = [v27 trailingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:-31.0];

  stackViewTrailingConstraint = self->_stackViewTrailingConstraint;
  self->_stackViewTrailingConstraint = v29;
  v40 = v29;

  v45[0] = v41;
  v45[1] = v40;
  v38 = [(UIStackView *)v17 bottomAnchor];
  v39 = [(PREditingContentStyleItemsViewController *)self view];
  v31 = [v39 bottomAnchor];
  v32 = [v38 constraintEqualToAnchor:v31];
  v45[2] = v32;
  v33 = [(UIStackView *)v17 topAnchor];
  v34 = [(PREditingContentStyleItemsViewController *)self view];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v45[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v37];
  [(PREditingContentStyleItemsViewController *)self _updateLayoutForCurrentSize];
}

- (void)_updateLayoutForCurrentSize
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PREditingContentStyleItemsViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = (v5 + -326.0) / 5.0;
  if (v6 != self->_interitemSpacing)
  {
    self->_interitemSpacing = v6;
    [(UIStackView *)self->_stackView setSpacing:(v5 + -326.0) / 5.0];
    [(UIStackView *)self->_stackView setNeedsLayout];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = self->_horizontalStackViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          [v12 setSpacing:{(v5 + -326.0) / 5.0, v25}];
          [v12 setNeedsLayout];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v13 = [(PREditingContentStyleItemsViewController *)self delegate];
    [v13 contentStyleItemsViewControllerDidUpdateEstimatedSize:self];
  }

  if (v5 != self->_configuredViewWidth)
  {
    v14 = [(PREditingContentStyleItemsViewController *)self stackViewLeadingConstraint];
    [v14 constant];
    v16 = v15;
    v17 = [(PREditingContentStyleItemsViewController *)self stackViewTrailingConstraint];
    [v17 constant];
    v19 = v16 - v18;

    if (v5 + -264.0 >= v19)
    {
      v20 = 31.0;
    }

    else
    {
      v20 = (v5 + -264.0) * 0.5;
    }

    v21 = [(PREditingContentStyleItemsViewController *)self stackViewLeadingConstraint];
    v22 = v21;
    if (v20 >= 0.0)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0.0;
    }

    [v21 setConstant:v23];

    v24 = [(PREditingContentStyleItemsViewController *)self stackViewTrailingConstraint];
    [v24 setConstant:{fmin(-v20, 0.0)}];

    self->_configuredViewWidth = v5;
  }
}

- (double)estimatedHeight
{
  v3 = [(PREditingContentStyleItemsDataSource *)self->_dataSource numberOfCoordinators];
  if ([(PREditorContentStylePickerConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  if (v4 % 6)
  {
    v5 = v4 / 6 + 1;
  }

  else
  {
    v5 = v4 / 6;
  }

  return self->_interitemSpacing * (v5 - 1) + v5 * 44.0;
}

- (void)setContentsLuminance:(double)a3
{
  self->_contentsLuminance = a3;
  if ([(PREditingContentStyleItemsViewController *)self isViewLoaded])
  {
    dataSource = self->_dataSource;

    [(PREditingContentStyleItemsDataSource *)dataSource setContentsLuminance:a3];
  }
}

- (void)_didSelectContentStyleCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(PREditingContentStyleItemsViewController *)self delegate];
  [v5 contentStyleItemsViewController:self didSelectContentStyleCoordinator:v4];
}

- (void)_deselectSelectedContentStyle
{
  [(PRSelectableEditingItemView *)self->_selectedContentStyleItemView setSelected:0];
  selectedContentStyleItemView = self->_selectedContentStyleItemView;
  self->_selectedContentStyleItemView = 0;

  selectedContentStyleCoordinator = self->_selectedContentStyleCoordinator;
  self->_selectedContentStyleCoordinator = 0;

  [(PUIColorWell *)self->_colorWell setSelectedColor:0];
  [(PUIColorWell *)self->_colorWell invalidateIntrinsicContentSize];
  colorWellView = self->_colorWellView;

  [(PUIColorWellView *)colorWellView setNeedsLayout];
}

- (void)_deselectColorWell
{
  [(PUIColorWell *)self->_colorWell setSelectedColor:0];
  [(PUIColorWell *)self->_colorWell invalidateIntrinsicContentSize];
  colorWellView = self->_colorWellView;

  [(PUIColorWellView *)colorWellView setNeedsLayout];
}

- (void)setSelectedContentStyle:(id)a3 fromUIKitPicker:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      [(PRSelectableEditingItemView *)self->_selectedContentStyleItemView setSelected:0];
      selectedContentStyleItemView = self->_selectedContentStyleItemView;
      self->_selectedContentStyleItemView = 0;
    }

    else
    {
      dataSource = self->_dataSource;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __84__PREditingContentStyleItemsViewController_setSelectedContentStyle_fromUIKitPicker___block_invoke;
      v15[3] = &unk_1E7843420;
      v16 = v6;
      v10 = [(PREditingContentStyleItemsDataSource *)dataSource firstCoordinatorPassingTest:v15];
      v11 = [(PREditingContentStyleItemsDataSource *)self->_dataSource indexForCoordinator:v10];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(PREditingContentStyleItemsViewController *)self _deselectSelectedContentStyle];
      }

      else
      {
        v12 = [(NSArray *)self->_allItemViews objectAtIndexedSubscript:v11];
        objc_storeStrong(&self->_selectedContentStyleCoordinator, v10);
        [(PRSelectableEditingItemView *)self->_selectedContentStyleItemView setSelected:0];
        v13 = self->_selectedContentStyleItemView;
        self->_selectedContentStyleItemView = v12;
        v14 = v12;

        [(PRSelectableEditingItemView *)v14 setSelected:1];
      }

      selectedContentStyleItemView = v16;
    }
  }

  else
  {
    [(PREditingContentStyleItemsViewController *)self _deselectSelectedContentStyle];
  }
}

uint64_t __84__PREditingContentStyleItemsViewController_setSelectedContentStyle_fromUIKitPicker___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 style];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)updateDataSource:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UIStackView *)self->_stackView removeFromSuperview];
  stackView = self->_stackView;
  self->_stackView = 0;

  [(PREditingContentStyleItemsViewController *)self _deselectSelectedContentStyle];
  [(PREditingContentStyleItemsViewController *)self _deselectColorWell];
  self->_configuredViewWidth = 0.0;
  self->_interitemSpacing = 0.0;
  dataSource = self->_dataSource;
  self->_dataSource = v6;
  v10 = v6;

  configuration = self->_configuration;
  self->_configuration = v7;
  v12 = v7;

  [(PREditingContentStyleItemsViewController *)self _initializeContent];
  [(PREditingContentStyleItemsViewController *)self _setupItemViews];
  v13 = [(PREditingContentStyleItemsViewController *)self view];
  [v13 layoutIfNeeded];

  v14 = [(PREditingContentStyleItemsDataSource *)self->_dataSource indexForCoordinator:self->_selectedContentStyleCoordinator];
  [(PREditingContentStyleItemsViewController *)self _didSelectContentStyleCoordinator:self->_selectedContentStyleCoordinator];
  v15 = [(NSArray *)self->_allItemViews objectAtIndexedSubscript:v14];
  [(PRSelectableEditingItemView *)self->_selectedContentStyleItemView setSelected:0];
  selectedContentStyleItemView = self->_selectedContentStyleItemView;
  self->_selectedContentStyleItemView = v15;
  v17 = v15;

  [(PRSelectableEditingItemView *)v17 setSelected:1];
}

- (void)colorWellDidUpdateColor:(id)a3
{
  [(PRSelectableEditingItemView *)self->_selectedContentStyleItemView setSelected:0];
  selectedContentStyleItemView = self->_selectedContentStyleItemView;
  self->_selectedContentStyleItemView = 0;

  v11 = [(PREditingContentStyleItemsViewController *)self colorWellView];
  v5 = [(PREditingContentStyleItemsViewController *)self colorWell];
  [v5 invalidateIntrinsicContentSize];

  [v11 setNeedsLayout];
  v6 = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
  v7 = 0;
  if ([v6 context] == 2)
  {
    v8 = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
    v7 = [v8 displayingGlassStyles] ^ 1;
  }

  v9 = [PREditingPosterContentStyleCoordinator coordinatorForColorWellView:self->_colorWellView vibrant:v7];
  uiKitColorPickerStyleCoordinator = self->_uiKitColorPickerStyleCoordinator;
  self->_uiKitColorPickerStyleCoordinator = v9;

  objc_storeStrong(&self->_selectedContentStyleCoordinator, self->_uiKitColorPickerStyleCoordinator);
  [(PREditingContentStyleItemsViewController *)self setSelectedContentStyleCoordinator:self->_selectedContentStyleCoordinator];
  [(PREditingContentStyleItemsViewController *)self _didSelectContentStyleCoordinator:self->_uiKitColorPickerStyleCoordinator];
}

- (PREditingContentStyleItemsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end