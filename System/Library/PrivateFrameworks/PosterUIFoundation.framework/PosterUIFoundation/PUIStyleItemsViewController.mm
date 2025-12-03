@interface PUIStyleItemsViewController
- (PUIStyleItemsViewController)initWithDataSource:(id)source configuration:(id)configuration;
- (PUIStyleItemsViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (void)_deselectColorWell;
- (void)_deselectSelectedStyle;
- (void)_didSelectStyleCoordinator:(id)coordinator;
- (void)_setupItemViews;
- (void)_updateLayoutForCurrentSize;
- (void)colorWellDidUpdateColor:(id)color;
- (void)didTapContentStyleItem:(id)item;
- (void)layoutWithItemViews:(id)views;
- (void)setContentsLuminance:(double)luminance;
- (void)setSelectedStyle:(id)style fromUIKitPicker:(BOOL)picker;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUIStyleItemsViewController

- (PUIStyleItemsViewController)initWithDataSource:(id)source configuration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  v34.receiver = self;
  v34.super_class = PUIStyleItemsViewController;
  v9 = [(PUIStyleItemsViewController *)&v34 initWithNibName:0 bundle:0];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v9->_dataSource, source);
  objc_storeStrong(&v10->_configuration, configuration);
  selectedStyle = [configurationCopy selectedStyle];
  v12 = __64__PUIStyleItemsViewController_initWithDataSource_configuration___block_invoke(selectedStyle, selectedStyle);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__PUIStyleItemsViewController_initWithDataSource_configuration___block_invoke_2;
  v30[3] = &unk_1E7855948;
  v13 = selectedStyle;
  v33 = v12;
  v31 = v13;
  v32 = &__block_literal_global_23;
  v14 = [sourceCopy firstCoordinatorPassingTest:v30];
  v15 = v14;
  if (v14)
  {
    style = [(PUIStyleUICoordinator *)v14 style];
    if ([style allowsVariation])
    {
      allowsVariation = [v13 allowsVariation];

      if (allowsVariation)
      {
        [v13 variation];
        [(PUIStyleUICoordinator *)v15 setVariation:?];
      }
    }

    else
    {
    }
  }

  if ([configurationCopy colorWellDisplayMode])
  {
    v18 = [PUIColorWellView alloc];
    v19 = [(PUIColorWellView *)v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    colorWellView = v10->_colorWellView;
    v10->_colorWellView = v19;

    colorWell = [(PUIColorWellView *)v10->_colorWellView colorWell];
    [colorWell addTarget:v10 action:sel_colorWellDidUpdateColor_ forControlEvents:4096];
    [colorWell setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v10->_colorWell, colorWell);
    if ([v13 allowsVariation])
    {
      [v13 variationAppliedColors];
    }

    else
    {
      [v13 colors];
    }
    v22 = ;
    firstObject = [v22 firstObject];

    [colorWell setSelectedColor:firstObject];
    if (firstObject)
    {
      stylePalette = [(PUIStyleConfiguration *)v10->_configuration stylePalette];
      v25 = [stylePalette context] == 2;

      v26 = [PUIStyleUICoordinator coordinatorForColorWellView:v10->_colorWellView vibrant:v25];
      uiKitColorPickerStyleCoordinator = v10->_uiKitColorPickerStyleCoordinator;
      v10->_uiKitColorPickerStyleCoordinator = v26;

      if ([sourceCopy indexForCoordinator:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [sourceCopy indexForCoordinator:v15];
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
  selectedStyleCoordinator = [(PUIStyleItemsViewController *)self selectedStyleCoordinator];
  style = [selectedStyleCoordinator style];

  numberOfCoordinators = [(PUIStyleItemsDataSource *)self->_dataSource numberOfCoordinators];
  array = [MEMORY[0x1E695DF70] array];
  if (numberOfCoordinators >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [(PUIStyleItemsDataSource *)self->_dataSource coordinatorForIndex:v5, style];
      v7 = [[PUIStyleItemView alloc] initWithStyleCoordinator:v6];
      v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapContentStyleItem_];
      [(PUIStyleItemView *)v7 addGestureRecognizer:v8];
      style2 = [v6 style];
      v10 = [style2 isEqual:style ignoringVariation:1];

      if (v10)
      {
        [(PUIStyleSelectableItemView *)v7 setSelected:1];
        [(PUIStyleItemsViewController *)self setSelectedStyleItemView:v7];
      }

      [(PUIStyleItemView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [array addObject:v7];
      ++v5;
    }

    while (numberOfCoordinators != v5);
  }

  v11 = [array copy];
  allItemViews = self->_allItemViews;
  self->_allItemViews = v11;

  [(PUIStyleItemsDataSource *)self->_dataSource setContentsLuminance:self->_contentsLuminance];
  v13 = [MEMORY[0x1E695DF70] arrayWithArray:array];
  if ([(PUIStyleConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    [(NSArray *)v13 addObject:self->_colorWellView];
  }

  allViews = self->_allViews;
  self->_allViews = v13;
  v15 = v13;

  [(PUIStyleItemsViewController *)self layoutWithItemViews:v15];
}

- (void)didTapContentStyleItem:(id)item
{
  view = [item view];
  styleCoordinator = [view styleCoordinator];
  [(PUIStyleItemsViewController *)self setSelectedStyleCoordinator:styleCoordinator];
  [(PUIStyleItemsViewController *)self _didSelectStyleCoordinator:styleCoordinator];
  dataSource = [(PUIStyleItemsViewController *)self dataSource];
  v6 = [dataSource indexForCoordinator:styleCoordinator];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PUIStyleItemsViewController *)self _deselectSelectedStyle];
  }

  else
  {
    [(PUIStyleItemsViewController *)self _deselectColorWell];
    selectedStyleItemView = [(PUIStyleItemsViewController *)self selectedStyleItemView];
    [selectedStyleItemView setSelected:0];

    [(PUIStyleItemsViewController *)self setSelectedStyleItemView:view];
    [view setSelected:1];
  }
}

- (void)layoutWithItemViews:(id)views
{
  v45[4] = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [viewsCopy count] / 6uLL;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [viewsCopy count], 1) <= 0x2AAAAAAAAAAAAAAAuLL)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

  array2 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v8 = 0;
    for (i = 0; i != v6; ++i)
    {
      array3 = [MEMORY[0x1E695DF70] array];
      v11 = v8;
      v12 = 6;
      do
      {
        if ([viewsCopy count] <= v11)
        {
          break;
        }

        v13 = [viewsCopy objectAtIndexedSubscript:v11];
        [array3 addObject:v13];

        ++v11;
        --v12;
      }

      while (v12);
      v14 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array3];
      [v14 setAxis:0];
      [v14 setDistribution:3];
      [v14 setAlignment:1];
      [v14 setSpacing:14.0];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [array2 addObject:v14];
      [array addObject:v14];

      v8 += 6;
    }
  }

  v43 = array2;
  v15 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array2];
  [(UIStackView *)v15 setAxis:1];
  [(UIStackView *)v15 setDistribution:3];
  [(UIStackView *)v15 setAlignment:3];
  [(UIStackView *)v15 setSpacing:14.0];
  [(UIStackView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  self->_stackView = v15;
  v17 = v15;

  v42 = array;
  v18 = [array copy];
  horizontalStackViews = self->_horizontalStackViews;
  self->_horizontalStackViews = v18;

  view = [(PUIStyleItemsViewController *)self view];
  [view addSubview:v17];

  leadingAnchor = [(UIStackView *)v17 leadingAnchor];
  view2 = [(PUIStyleItemsViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:31.0];

  stackViewLeadingConstraint = self->_stackViewLeadingConstraint;
  self->_stackViewLeadingConstraint = v24;
  v41 = v24;

  trailingAnchor = [(UIStackView *)v17 trailingAnchor];
  view3 = [(PUIStyleItemsViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-31.0];

  stackViewTrailingConstraint = self->_stackViewTrailingConstraint;
  self->_stackViewTrailingConstraint = v29;
  v40 = v29;

  v45[0] = v41;
  v45[1] = v40;
  bottomAnchor = [(UIStackView *)v17 bottomAnchor];
  view4 = [(PUIStyleItemsViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45[2] = v32;
  topAnchor = [(UIStackView *)v17 topAnchor];
  view5 = [(PUIStyleItemsViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v37];
  [(PUIStyleItemsViewController *)self _updateLayoutForCurrentSize];
}

- (void)_updateLayoutForCurrentSize
{
  v30 = *MEMORY[0x1E69E9840];
  view = [(PUIStyleItemsViewController *)self view];
  [view bounds];
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

    delegate = [(PUIStyleItemsViewController *)self delegate];
    [delegate styleItemsViewControllerDidUpdateEstimatedSize:self];
  }

  if (v5 != self->_configuredViewWidth)
  {
    stackViewLeadingConstraint = [(PUIStyleItemsViewController *)self stackViewLeadingConstraint];
    [stackViewLeadingConstraint constant];
    v16 = v15;
    stackViewTrailingConstraint = [(PUIStyleItemsViewController *)self stackViewTrailingConstraint];
    [stackViewTrailingConstraint constant];
    v19 = v16 - v18;

    if (v5 + -264.0 >= v19)
    {
      v20 = 31.0;
    }

    else
    {
      v20 = (v5 + -264.0) * 0.5;
    }

    stackViewLeadingConstraint2 = [(PUIStyleItemsViewController *)self stackViewLeadingConstraint];
    v22 = stackViewLeadingConstraint2;
    if (v20 >= 0.0)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0.0;
    }

    [stackViewLeadingConstraint2 setConstant:v23];

    stackViewTrailingConstraint2 = [(PUIStyleItemsViewController *)self stackViewTrailingConstraint];
    [stackViewTrailingConstraint2 setConstant:{fmin(-v20, 0.0)}];

    self->_configuredViewWidth = v5;
  }
}

- (double)estimatedHeight
{
  numberOfCoordinators = [(PUIStyleItemsDataSource *)self->_dataSource numberOfCoordinators];
  if ([(PUIStyleConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    v4 = numberOfCoordinators + 1;
  }

  else
  {
    v4 = numberOfCoordinators;
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

- (void)setContentsLuminance:(double)luminance
{
  self->_contentsLuminance = luminance;
  if ([(PUIStyleItemsViewController *)self isViewLoaded])
  {
    dataSource = self->_dataSource;

    [(PUIStyleItemsDataSource *)dataSource setContentsLuminance:luminance];
  }
}

- (void)_didSelectStyleCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  delegate = [(PUIStyleItemsViewController *)self delegate];
  [delegate styleItemsViewController:self didSelectContentStyleCoordinator:coordinatorCopy];
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

- (void)setSelectedStyle:(id)style fromUIKitPicker:(BOOL)picker
{
  pickerCopy = picker;
  styleCopy = style;
  v7 = styleCopy;
  if (styleCopy)
  {
    if (pickerCopy)
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
      v16 = styleCopy;
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

- (void)colorWellDidUpdateColor:(id)color
{
  [(PUIStyleSelectableItemView *)self->_selectedStyleItemView setSelected:0];
  selectedStyleItemView = self->_selectedStyleItemView;
  self->_selectedStyleItemView = 0;

  colorWellView = [(PUIStyleItemsViewController *)self colorWellView];
  colorWell = [(PUIStyleItemsViewController *)self colorWell];
  [colorWell invalidateIntrinsicContentSize];

  [colorWellView setNeedsLayout];
  stylePalette = [(PUIStyleConfiguration *)self->_configuration stylePalette];
  v7 = [stylePalette context] == 2;

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