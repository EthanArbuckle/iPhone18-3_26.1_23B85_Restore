@interface PUIStyleItemsViewController
- (PUIStyleItemsViewController)initWithDataSource:(id)a3 configuration:(id)a4;
- (PUIStyleItemsViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (void)_deselectColorWell;
- (void)_deselectSelectedStyle;
- (void)_didSelectStyleCoordinator:(id)a3;
- (void)_setupItemViews;
- (void)_updateLayoutForCurrentSize;
- (void)colorWellDidUpdateColor:(id)a3;
- (void)didTapContentStyleItem:(id)a3;
- (void)layoutWithItemViews:(id)a3;
- (void)setContentsLuminance:(double)a3;
- (void)setSelectedStyle:(id)a3 fromUIKitPicker:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUIStyleItemsViewController

- (PUIStyleItemsViewController)initWithDataSource:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = PUIStyleItemsViewController;
  v9 = [(PUIStyleItemsViewController *)&v34 initWithNibName:0 bundle:0];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v9->_dataSource, a3);
  objc_storeStrong(&v10->_configuration, a4);
  v11 = [v8 selectedStyle];
  v12 = __64__PUIStyleItemsViewController_initWithDataSource_configuration___block_invoke(v11, v11);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__PUIStyleItemsViewController_initWithDataSource_configuration___block_invoke_2;
  v30[3] = &unk_1E7855948;
  v13 = v11;
  v33 = v12;
  v31 = v13;
  v32 = &__block_literal_global_23;
  v14 = [v7 firstCoordinatorPassingTest:v30];
  v15 = v14;
  if (v14)
  {
    v16 = [(PUIStyleUICoordinator *)v14 style];
    if ([v16 allowsVariation])
    {
      v17 = [v13 allowsVariation];

      if (v17)
      {
        [v13 variation];
        [(PUIStyleUICoordinator *)v15 setVariation:?];
      }
    }

    else
    {
    }
  }

  if ([v8 colorWellDisplayMode])
  {
    v18 = [PUIColorWellView alloc];
    v19 = [(PUIColorWellView *)v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    colorWellView = v10->_colorWellView;
    v10->_colorWellView = v19;

    v21 = [(PUIColorWellView *)v10->_colorWellView colorWell];
    [v21 addTarget:v10 action:sel_colorWellDidUpdateColor_ forControlEvents:4096];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v10->_colorWell, v21);
    if ([v13 allowsVariation])
    {
      [v13 variationAppliedColors];
    }

    else
    {
      [v13 colors];
    }
    v22 = ;
    v23 = [v22 firstObject];

    [v21 setSelectedColor:v23];
    if (v23)
    {
      v24 = [(PUIStyleConfiguration *)v10->_configuration stylePalette];
      v25 = [v24 context] == 2;

      v26 = [PUIStyleUICoordinator coordinatorForColorWellView:v10->_colorWellView vibrant:v25];
      uiKitColorPickerStyleCoordinator = v10->_uiKitColorPickerStyleCoordinator;
      v10->_uiKitColorPickerStyleCoordinator = v26;

      if ([v7 indexForCoordinator:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [v7 indexForCoordinator:v15];
    }

    [(PUIStyleItemsViewController *)v10 _deselectColorWell];
LABEL_16:
  }

  if (!v15)
  {
    v15 = v10->_uiKitColorPickerStyleCoordinator;
  }

  selectedStyleCoordinator = v10->_selectedStyleCoordinator;
  v10->_selectedStyleCoordinator = v15;

LABEL_20:
  return v10;
}

uint64_t __64__PUIStyleItemsViewController_initWithDataSource_configuration___block_invoke(uint64_t a1, void *a2)
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

uint64_t __64__PUIStyleItemsViewController_initWithDataSource_configuration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 style];
  v4 = 1;
  if (([v3 isEqual:*(a1 + 32) ignoringVariation:1] & 1) == 0)
  {
    if (*(a1 + 48) == 1)
    {
      v4 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUIStyleItemsViewController;
  [(PUIStyleItemsViewController *)&v3 viewDidLoad];
  [(PUIStyleItemsViewController *)self _setupItemViews];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUIStyleItemsViewController;
  [(PUIStyleItemsViewController *)&v3 viewDidLayoutSubviews];
  [(PUIStyleItemsViewController *)self _updateLayoutForCurrentSize];
}

- (void)_setupItemViews
{
  v3 = [(PUIStyleItemsViewController *)self selectedStyleCoordinator];
  v16 = [v3 style];

  v4 = [(PUIStyleItemsDataSource *)self->_dataSource numberOfCoordinators];
  v18 = [MEMORY[0x1E695DF70] array];
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [(PUIStyleItemsDataSource *)self->_dataSource coordinatorForIndex:v5, v16];
      v7 = [[PUIStyleItemView alloc] initWithStyleCoordinator:v6];
      v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapContentStyleItem_];
      [(PUIStyleItemView *)v7 addGestureRecognizer:v8];
      v9 = [v6 style];
      v10 = [v9 isEqual:v16 ignoringVariation:1];

      if (v10)
      {
        [(PUIStyleSelectableItemView *)v7 setSelected:1];
        [(PUIStyleItemsViewController *)self setSelectedStyleItemView:v7];
      }

      [(PUIStyleItemView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v18 addObject:v7];
      ++v5;
    }

    while (v4 != v5);
  }

  v11 = [v18 copy];
  allItemViews = self->_allItemViews;
  self->_allItemViews = v11;

  [(PUIStyleItemsDataSource *)self->_dataSource setContentsLuminance:self->_contentsLuminance];
  v13 = [MEMORY[0x1E695DF70] arrayWithArray:v18];
  if ([(PUIStyleConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    [(NSArray *)v13 addObject:self->_colorWellView];
  }

  allViews = self->_allViews;
  self->_allViews = v13;
  v15 = v13;

  [(PUIStyleItemsViewController *)self layoutWithItemViews:v15];
}

- (void)didTapContentStyleItem:(id)a3
{
  v8 = [a3 view];
  v4 = [v8 styleCoordinator];
  [(PUIStyleItemsViewController *)self setSelectedStyleCoordinator:v4];
  [(PUIStyleItemsViewController *)self _didSelectStyleCoordinator:v4];
  v5 = [(PUIStyleItemsViewController *)self dataSource];
  v6 = [v5 indexForCoordinator:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PUIStyleItemsViewController *)self _deselectSelectedStyle];
  }

  else
  {
    [(PUIStyleItemsViewController *)self _deselectColorWell];
    v7 = [(PUIStyleItemsViewController *)self selectedStyleItemView];
    [v7 setSelected:0];

    [(PUIStyleItemsViewController *)self setSelectedStyleItemView:v8];
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
      [v14 setSpacing:14.0];
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
  [(UIStackView *)v15 setSpacing:14.0];
  [(UIStackView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  self->_stackView = v15;
  v17 = v15;

  v42 = v4;
  v18 = [v4 copy];
  horizontalStackViews = self->_horizontalStackViews;
  self->_horizontalStackViews = v18;

  v20 = [(PUIStyleItemsViewController *)self view];
  [v20 addSubview:v17];

  v21 = [(UIStackView *)v17 leadingAnchor];
  v22 = [(PUIStyleItemsViewController *)self view];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:31.0];

  stackViewLeadingConstraint = self->_stackViewLeadingConstraint;
  self->_stackViewLeadingConstraint = v24;
  v41 = v24;

  v26 = [(UIStackView *)v17 trailingAnchor];
  v27 = [(PUIStyleItemsViewController *)self view];
  v28 = [v27 trailingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:-31.0];

  stackViewTrailingConstraint = self->_stackViewTrailingConstraint;
  self->_stackViewTrailingConstraint = v29;
  v40 = v29;

  v45[0] = v41;
  v45[1] = v40;
  v38 = [(UIStackView *)v17 bottomAnchor];
  v39 = [(PUIStyleItemsViewController *)self view];
  v31 = [v39 bottomAnchor];
  v32 = [v38 constraintEqualToAnchor:v31];
  v45[2] = v32;
  v33 = [(UIStackView *)v17 topAnchor];
  v34 = [(PUIStyleItemsViewController *)self view];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v45[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v37];
  [(PUIStyleItemsViewController *)self _updateLayoutForCurrentSize];
}

- (void)_updateLayoutForCurrentSize
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PUIStyleItemsViewController *)self view];
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

    v13 = [(PUIStyleItemsViewController *)self delegate];
    [v13 styleItemsViewControllerDidUpdateEstimatedSize:self];
  }

  if (v5 != self->_configuredViewWidth)
  {
    v14 = [(PUIStyleItemsViewController *)self stackViewLeadingConstraint];
    [v14 constant];
    v16 = v15;
    v17 = [(PUIStyleItemsViewController *)self stackViewTrailingConstraint];
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

    v21 = [(PUIStyleItemsViewController *)self stackViewLeadingConstraint];
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

    v24 = [(PUIStyleItemsViewController *)self stackViewTrailingConstraint];
    [v24 setConstant:{fmin(-v20, 0.0)}];

    self->_configuredViewWidth = v5;
  }
}

- (double)estimatedHeight
{
  v3 = [(PUIStyleItemsDataSource *)self->_dataSource numberOfCoordinators];
  if ([(PUIStyleConfiguration *)self->_configuration colorWellDisplayMode]== 1)
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
  if ([(PUIStyleItemsViewController *)self isViewLoaded])
  {
    dataSource = self->_dataSource;

    [(PUIStyleItemsDataSource *)dataSource setContentsLuminance:a3];
  }
}

- (void)_didSelectStyleCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(PUIStyleItemsViewController *)self delegate];
  [v5 styleItemsViewController:self didSelectContentStyleCoordinator:v4];
}

- (void)_deselectSelectedStyle
{
  [(PUIStyleSelectableItemView *)self->_selectedStyleItemView setSelected:0];
  selectedStyleItemView = self->_selectedStyleItemView;
  self->_selectedStyleItemView = 0;

  selectedStyleCoordinator = self->_selectedStyleCoordinator;
  self->_selectedStyleCoordinator = 0;

  [(UIColorWell *)self->_colorWell setSelectedColor:0];
  [(PUIColorWell *)self->_colorWell invalidateIntrinsicContentSize];
  colorWellView = self->_colorWellView;

  [(PUIColorWellView *)colorWellView setNeedsLayout];
}

- (void)_deselectColorWell
{
  [(UIColorWell *)self->_colorWell setSelectedColor:0];
  [(PUIColorWell *)self->_colorWell invalidateIntrinsicContentSize];
  colorWellView = self->_colorWellView;

  [(PUIColorWellView *)colorWellView setNeedsLayout];
}

- (void)setSelectedStyle:(id)a3 fromUIKitPicker:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      [(PUIStyleSelectableItemView *)self->_selectedStyleItemView setSelected:0];
      selectedStyleItemView = self->_selectedStyleItemView;
      self->_selectedStyleItemView = 0;
    }

    else
    {
      dataSource = self->_dataSource;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__PUIStyleItemsViewController_setSelectedStyle_fromUIKitPicker___block_invoke;
      v15[3] = &unk_1E7855970;
      v16 = v6;
      v10 = [(PUIStyleItemsDataSource *)dataSource firstCoordinatorPassingTest:v15];
      v11 = [(PUIStyleItemsDataSource *)self->_dataSource indexForCoordinator:v10];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(PUIStyleItemsViewController *)self _deselectSelectedStyle];
      }

      else
      {
        v12 = [(NSArray *)self->_allItemViews objectAtIndexedSubscript:v11];
        objc_storeStrong(&self->_selectedStyleCoordinator, v10);
        [(PUIStyleSelectableItemView *)self->_selectedStyleItemView setSelected:0];
        v13 = self->_selectedStyleItemView;
        self->_selectedStyleItemView = v12;
        v14 = v12;

        [(PUIStyleSelectableItemView *)v14 setSelected:1];
      }

      selectedStyleItemView = v16;
    }
  }

  else
  {
    [(PUIStyleItemsViewController *)self _deselectSelectedStyle];
  }
}

uint64_t __64__PUIStyleItemsViewController_setSelectedStyle_fromUIKitPicker___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 style];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)colorWellDidUpdateColor:(id)a3
{
  [(PUIStyleSelectableItemView *)self->_selectedStyleItemView setSelected:0];
  selectedStyleItemView = self->_selectedStyleItemView;
  self->_selectedStyleItemView = 0;

  v10 = [(PUIStyleItemsViewController *)self colorWellView];
  v5 = [(PUIStyleItemsViewController *)self colorWell];
  [v5 invalidateIntrinsicContentSize];

  [v10 setNeedsLayout];
  v6 = [(PUIStyleConfiguration *)self->_configuration stylePalette];
  v7 = [v6 context] == 2;

  v8 = [PUIStyleUICoordinator coordinatorForColorWellView:self->_colorWellView vibrant:v7];
  uiKitColorPickerStyleCoordinator = self->_uiKitColorPickerStyleCoordinator;
  self->_uiKitColorPickerStyleCoordinator = v8;

  objc_storeStrong(&self->_selectedStyleCoordinator, self->_uiKitColorPickerStyleCoordinator);
  [(PUIStyleItemsViewController *)self setSelectedStyleCoordinator:self->_selectedStyleCoordinator];
  [(PUIStyleItemsViewController *)self _didSelectStyleCoordinator:self->_uiKitColorPickerStyleCoordinator];
}

- (PUIStyleItemsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end