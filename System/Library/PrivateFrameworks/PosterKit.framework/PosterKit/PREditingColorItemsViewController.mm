@interface PREditingColorItemsViewController
- (PREditingColorItemsViewController)initWithDataSource:(id)source configuration:(id)configuration variationStore:(id)store;
- (PREditingColorItemsViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)selectedColorItemForColor:(id)color fromDataSource:(id)source withVariationStore:(id)store contextIdentifier:(id)identifier isDataLayerPicker:(BOOL)picker;
- (id)selectedColorItemForColor:(id)color fromVariationStore:(id)store inDataSource:(id)source contextIdentifier:(id)identifier isDataLayerPicker:(BOOL)picker;
- (void)colorWellDidUpdateColor:(id)color;
- (void)deselectSelectedColor;
- (void)didSelectColorItem:(id)item;
- (void)didTapColorItem:(id)item;
- (void)didTapToResetColorItem:(id)item;
- (void)layoutWithItemViews:(id)views;
- (void)setContentsLuminance:(double)luminance;
- (void)setSelectedColorItem:(id)item;
- (void)setupItemViews;
- (void)sliderDidChangeForColorItem:(id)item;
- (void)updateLayoutForCurrentSize;
- (void)updateVibrantMaterialItemForLuminance;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PREditingColorItemsViewController

- (PREditingColorItemsViewController)initWithDataSource:(id)source configuration:(id)configuration variationStore:(id)store
{
  sourceCopy = source;
  configurationCopy = configuration;
  storeCopy = store;
  v24.receiver = self;
  v24.super_class = PREditingColorItemsViewController;
  v12 = [(PREditingColorItemsViewController *)&v24 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    objc_storeStrong(&v13->_configuration, configuration);
    objc_storeStrong(&v13->_variationStore, store);
    selectedColor = [configurationCopy selectedColor];
    if (selectedColor)
    {
      identifier = [configurationCopy identifier];
      context = [configurationCopy context];
      v17 = [(PREditingColorItemsViewController *)v13 selectedColorItemForColor:selectedColor fromVariationStore:storeCopy inDataSource:sourceCopy contextIdentifier:identifier isDataLayerPicker:context == 1];
      if (!v17)
      {
        v17 = [(PREditingColorItemsViewController *)v13 selectedColorItemForColor:selectedColor fromDataSource:sourceCopy withVariationStore:storeCopy contextIdentifier:identifier isDataLayerPicker:context == 1];
      }

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = [(PREditingColorItemsDataSource *)v13->_dataSource colorItemForIndex:0];
      if (v17)
      {
LABEL_14:
        selectedColorItem = v13->_selectedColorItem;
        v13->_selectedColorItem = v17;

        goto LABEL_15;
      }
    }

    if ([configurationCopy context] == 1)
    {
      preferredStyle = [selectedColor preferredStyle];
      v19 = [PREditorColorPickerVibrantColor alloc];
      v20 = 0.0;
      if (preferredStyle == 1)
      {
        v20 = 1.0;
      }
    }

    else
    {
      v19 = [PREditorColorPickerConstantColor alloc];
      v20 = 0.0;
    }

    v21 = [(PREditorColorPickerVibrantColor *)v19 initWithColor:selectedColor initialVariation:v20];
    v17 = [[PREditingColorItem alloc] initWithPickerColor:v21 variation:[(PREditorColorPickerConfiguration *)v13->_configuration context] context:0.0];
    [(PREditingColorItem *)v17 setFromUIKitColorPicker:1];

    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

- (id)selectedColorItemForColor:(id)color fromVariationStore:(id)store inDataSource:(id)source contextIdentifier:(id)identifier isDataLayerPicker:(BOOL)picker
{
  pickerCopy = picker;
  sourceCopy = source;
  v27 = 0.0;
  identifierCopy = identifier;
  storeCopy = store;
  color = [color color];
  v16 = [storeCopy baseColorForVariedColor:color forContextIdentifier:identifierCopy variation:&v27 forDataLayerPicker:pickerCopy];

  if (v16)
  {
    v17 = [[PRPosterColor alloc] initWithColor:v16];
    if ([(PREditorColorPickerConfiguration *)self->_configuration context]== 1)
    {
      v18 = PREditorColorPickerVibrantColor;
    }

    else
    {
      v18 = PREditorColorPickerConstantColor;
    }

    v20 = [v18 alloc];
    v21 = [v20 initWithColor:v17 initialVariation:v27];
    v22 = [PREditingColorItem alloc];
    [v21 initialVariation];
    v19 = [(PREditingColorItem *)v22 initWithPickerColor:v21 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:v23];
    v24 = [sourceCopy indexForItem:v19];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PREditingColorItem *)v19 setFromUIKitColorPicker:1];
    }

    else
    {
      v25 = [sourceCopy colorItemForIndex:v24];
      -[PREditingColorItem setShowsSlider:](v19, "setShowsSlider:", [v25 shouldShowSlider]);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)selectedColorItemForColor:(id)color fromDataSource:(id)source withVariationStore:(id)store contextIdentifier:(id)identifier isDataLayerPicker:(BOOL)picker
{
  colorCopy = color;
  sourceCopy = source;
  storeCopy = store;
  identifierCopy = identifier;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke;
  v30[3] = &unk_1E78444A8;
  v14 = storeCopy;
  v31 = v14;
  v15 = identifierCopy;
  v32 = v15;
  v16 = colorCopy;
  v33 = v16;
  v17 = [sourceCopy firstColorItemPassingTest:v30];
  if (!v17)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke_2;
    v28[3] = &unk_1E78444D0;
    v18 = v16;
    v29 = v18;
    v19 = [sourceCopy firstColorItemPassingTest:v28];
    if (v19)
    {
      v20 = v19;
      pickerColor = [v19 pickerColor];
      if ([pickerColor isVibrantColor])
      {
        color = [v18 color];
        v27 = 1.0;
        [color getWhite:0 alpha:&v27];
        [pickerColor variationForAlpha:v27];
      }

      else
      {
        color = [v18 hslValues];
        [color luminance];
        [pickerColor variationForLuminance:?];
      }

      v24 = v23;

      v25 = [[PREditingColorItem alloc] initWithPickerColor:pickerColor variation:0 context:v24];
    }
  }

  return v17;
}

uint64_t __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pickerColor];
  v5 = [*(a1 + 32) variationForPickerColor:v4 forContextIdentifier:*(a1 + 40)];
  [v4 initialVariation];
  if (v5)
  {
    [v5 doubleValue];
  }

  v7 = v6;
  v8 = [v3 pickerColor];
  v9 = [v8 colorWithVariation:v7];

  v10 = [v9 isEqual:*(a1 + 48)];
  if ([*(a1 + 48) isVibrantMaterialColor])
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(a1 + 48) isVibrantMonochromeColor] ^ 1;
  }

  v12 = [v9 colorValues];
  v13 = [*(a1 + 48) colorValues];
  v14 = [v12 isEqual:v13];

  if (v10)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 & v14;
  }

  return v15;
}

BOOL __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pickerColor];
  if ([v3 isCustomColor])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 baseColor];
    v6 = [*(a1 + 32) hslValues];
    v7 = [v5 hslValues];
    v4 = 1;
    if (![v3 isVibrantColor] || (objc_msgSend(v6, "hue"), v9 = v8, objc_msgSend(v7, "hue"), v9 != v10) || (objc_msgSend(v6, "saturation"), v12 = v11, objc_msgSend(v7, "saturation"), v12 != v13) || (objc_msgSend(v6, "luminance"), v15 = v14, objc_msgSend(v7, "luminance"), v15 != v16))
    {
      [v6 hue];
      v18 = v17;
      [v7 hue];
      if (v18 != v19 || ([v6 saturation], v21 = v20, objc_msgSend(v7, "saturation"), v21 != v22))
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PREditingColorItemsViewController;
  [(PREditingColorItemsViewController *)&v3 viewDidLoad];
  [(PREditingColorItemsViewController *)self setupItemViews];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PREditingColorItemsViewController;
  [(PREditingColorItemsViewController *)&v3 viewDidLayoutSubviews];
  [(PREditingColorItemsViewController *)self updateLayoutForCurrentSize];
}

- (void)setupItemViews
{
  selectedColorItem = [(PREditingColorItemsViewController *)self selectedColorItem];
  numberOfItems = [(PREditingColorItemsDataSource *)self->_dataSource numberOfItems];
  array = [MEMORY[0x1E695DF70] array];
  if (numberOfItems >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [(PREditingColorItemsDataSource *)self->_dataSource colorItemForIndex:v4];
      v6 = [[PREditingColorItemView alloc] initWithColorItem:v5];
      v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapColorItem_];
      [(PREditingColorItemView *)v6 addGestureRecognizer:v7];
      if ([v5 isEqual:selectedColorItem])
      {
        [(PRSelectableEditingItemView *)v6 setSelected:1];
        [(PREditingColorItemsViewController *)self setSelectedColorItemView:v6];
      }

      [(PREditingColorItemView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [array addObject:v6];
      ++v4;
    }

    while (numberOfItems != v4);
  }

  v8 = [array copy];
  allItemViews = self->_allItemViews;
  self->_allItemViews = v8;

  [(PREditingColorItemsViewController *)self updateVibrantMaterialItemForLuminance];
  v10 = [MEMORY[0x1E695DF70] arrayWithArray:array];
  if ([(PREditorColorPickerConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    v11 = objc_alloc(MEMORY[0x1E69C5548]);
    v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    colorWell = [v12 colorWell];
    [colorWell addTarget:self action:sel_colorWellDidUpdateColor_ forControlEvents:4096];
    [colorWell setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NSArray *)v10 addObject:v12];
    objc_storeStrong(&self->_colorWell, colorWell);
    if ([(PREditingColorItem *)self->_selectedColorItem isFromUIKitColorPicker])
    {
      displayColor = [(PREditingColorItem *)self->_selectedColorItem displayColor];
      color = [displayColor color];
      [colorWell setSelectedColor:color];
    }
  }

  allViews = self->_allViews;
  self->_allViews = v10;
  v17 = v10;

  [(PREditingColorItemsViewController *)self layoutWithItemViews:v17];
}

- (void)didTapColorItem:(id)item
{
  view = [item view];
  colorItem = [view colorItem];
  if ([view isSelected])
  {
    pickerColor = [colorItem pickerColor];
    [pickerColor initialVariation];
    [colorItem setVariation:?];

    [view updateForChangedColor];
    [(PREditingColorItemsViewController *)self didTapToResetColorItem:colorItem];
  }

  else
  {
    [(PREditingColorItemsViewController *)self setSelectedColorItem:colorItem];
    [(PREditingColorItemsViewController *)self didSelectColorItem:colorItem];
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

  view = [(PREditingColorItemsViewController *)self view];
  [view addSubview:v17];

  leadingAnchor = [(UIStackView *)v17 leadingAnchor];
  view2 = [(PREditingColorItemsViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:31.0];

  stackViewLeadingConstraint = self->_stackViewLeadingConstraint;
  self->_stackViewLeadingConstraint = v24;
  v41 = v24;

  trailingAnchor = [(UIStackView *)v17 trailingAnchor];
  view3 = [(PREditingColorItemsViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-31.0];

  stackViewTrailingConstraint = self->_stackViewTrailingConstraint;
  self->_stackViewTrailingConstraint = v29;
  v40 = v29;

  v45[0] = v41;
  v45[1] = v40;
  bottomAnchor = [(UIStackView *)v17 bottomAnchor];
  view4 = [(PREditingColorItemsViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45[2] = v32;
  topAnchor = [(UIStackView *)v17 topAnchor];
  view5 = [(PREditingColorItemsViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v37];
  [(PREditingColorItemsViewController *)self updateLayoutForCurrentSize];
}

- (void)updateLayoutForCurrentSize
{
  v30 = *MEMORY[0x1E69E9840];
  view = [(PREditingColorItemsViewController *)self view];
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

    delegate = [(PREditingColorItemsViewController *)self delegate];
    [delegate colorItemsViewControllerDidUpdateEstimatedSize:self];
  }

  if (v5 != self->_configuredViewWidth)
  {
    stackViewLeadingConstraint = [(PREditingColorItemsViewController *)self stackViewLeadingConstraint];
    [stackViewLeadingConstraint constant];
    v16 = v15;
    stackViewTrailingConstraint = [(PREditingColorItemsViewController *)self stackViewTrailingConstraint];
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

    stackViewLeadingConstraint2 = [(PREditingColorItemsViewController *)self stackViewLeadingConstraint];
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

    stackViewTrailingConstraint2 = [(PREditingColorItemsViewController *)self stackViewTrailingConstraint];
    [stackViewTrailingConstraint2 setConstant:{fmin(-v20, 0.0)}];

    self->_configuredViewWidth = v5;
  }
}

- (double)estimatedHeight
{
  numberOfItems = [(PREditingColorItemsDataSource *)self->_dataSource numberOfItems];
  if ([(PREditorColorPickerConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    v4 = numberOfItems + 1;
  }

  else
  {
    v4 = numberOfItems;
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
  if ([(PREditingColorItemsViewController *)self isViewLoaded])
  {

    [(PREditingColorItemsViewController *)self updateVibrantMaterialItemForLuminance];
  }
}

- (void)updateVibrantMaterialItemForLuminance
{
  v3 = [(PREditingColorItemsDataSource *)self->_dataSource firstColorItemPassingTest:&__block_literal_global_19];
  if (v3)
  {
    v6 = v3;
    pickerColor = [v3 pickerColor];
    [pickerColor setContentsLuminance:self->_contentsLuminance];
    v5 = [(NSArray *)self->_allItemViews objectAtIndex:[(PREditingColorItemsDataSource *)self->_dataSource indexForItem:v6]];
    [v5 updateForChangedColor];

    v3 = v6;
  }
}

uint64_t __74__PREditingColorItemsViewController_updateVibrantMaterialItemForLuminance__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 color];
  v3 = [v2 isVibrantMonochromeColor];

  return v3;
}

- (void)didSelectColorItem:(id)item
{
  itemCopy = item;
  delegate = [(PREditingColorItemsViewController *)self delegate];
  [delegate colorItemsViewController:self didSelectColorItem:itemCopy];
}

- (void)didTapToResetColorItem:(id)item
{
  itemCopy = item;
  delegate = [(PREditingColorItemsViewController *)self delegate];
  [delegate colorItemsViewController:self didTapToResetColorItem:itemCopy];
}

- (void)deselectSelectedColor
{
  [(PRSelectableEditingItemView *)self->_selectedColorItemView setSelected:0];
  selectedColorItemView = self->_selectedColorItemView;
  self->_selectedColorItemView = 0;

  selectedColorItem = self->_selectedColorItem;
  self->_selectedColorItem = 0;

  [(PUIColorWell *)self->_colorWell setSelectedColor:0];
  [(PUIColorWell *)self->_colorWell invalidateIntrinsicContentSize];
  colorWellView = self->_colorWellView;

  [(PUIColorWellView *)colorWellView setNeedsLayout];
}

- (void)setSelectedColorItem:(id)item
{
  itemCopy = item;
  v16 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_5;
  }

  if ([itemCopy isFromUIKitColorPicker])
  {
    [(PRSelectableEditingItemView *)self->_selectedColorItemView setSelected:0];
    selectedColorItemView = self->_selectedColorItemView;
    self->_selectedColorItemView = 0;

    objc_storeStrong(&self->_selectedColorItem, item);
    goto LABEL_11;
  }

  v7 = [(PREditingColorItemsDataSource *)self->_dataSource indexForItem:v16];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSArray *)self->_allItemViews objectAtIndexedSubscript:v7];
    objc_storeStrong(&self->_selectedColorItem, item);
    configuration = [(PREditingColorItemsViewController *)self configuration];
    identifier = [configuration identifier];

    pickerColor = [v16 pickerColor];
    if (pickerColor)
    {
      v12 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:pickerColor forContextIdentifier:identifier];
      if (!v12)
      {
        variationStore = self->_variationStore;
        [pickerColor initialVariation];
        [(PREditingColorVariationStore *)variationStore setVariation:pickerColor forPickerColor:identifier forContextIdentifier:?];
      }
    }

    [(PRSelectableEditingItemView *)self->_selectedColorItemView setSelected:0];
    v14 = self->_selectedColorItemView;
    self->_selectedColorItemView = v8;
    v15 = v8;

    [(PRSelectableEditingItemView *)v15 setSelected:1];
  }

  else
  {
LABEL_5:
    [(PREditingColorItemsViewController *)self deselectSelectedColor];
  }

LABEL_11:
}

- (void)colorWellDidUpdateColor:(id)color
{
  selectedColorItemView = self->_selectedColorItemView;
  colorCopy = color;
  [(PRSelectableEditingItemView *)selectedColorItemView setSelected:0];
  v6 = self->_selectedColorItemView;
  self->_selectedColorItemView = 0;

  colorWell = [(PREditingColorItemsViewController *)self colorWell];
  [colorWell invalidateIntrinsicContentSize];

  colorWellView = [(PREditingColorItemsViewController *)self colorWellView];
  [colorWellView setNeedsLayout];

  v9 = [PRPosterColor alloc];
  selectedColor = [colorCopy selectedColor];

  v11 = [(PRPosterColor *)v9 initWithColor:selectedColor];
  context = [(PREditorColorPickerConfiguration *)self->_configuration context];
  if (context == 1)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = off_1E7841A50;
  if (context != 1)
  {
    v14 = off_1E7841A48;
  }

  v22 = [objc_alloc(*v14) initWithColor:v11 initialVariation:v13];
  v15 = [PREditingColorItem alloc];
  [v22 initialVariation];
  v17 = [(PREditingColorItem *)v15 initWithPickerColor:v22 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:v16];
  [(PREditingColorItem *)v17 setFromUIKitColorPicker:1];
  objc_storeStrong(&self->_selectedColorItem, v17);
  configuration = [(PREditingColorItemsViewController *)self configuration];
  identifier = [configuration identifier];

  v20 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:v22 forContextIdentifier:identifier];
  if (!v20)
  {
    variationStore = self->_variationStore;
    [v22 initialVariation];
    [(PREditingColorVariationStore *)variationStore setVariation:v22 forPickerColor:identifier forContextIdentifier:?];
  }

  [(PREditingColorItemsViewController *)self didSelectColorItem:v17];
}

- (void)sliderDidChangeForColorItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    v10 = itemCopy;
    if (self->_colorWell && (itemCopy = [itemCopy isFromUIKitColorPicker], v5 = v10, itemCopy))
    {
      colorWell = self->_colorWell;
      color = [v10 color];
      v7Color = [color color];
      [(PUIColorWell *)colorWell setSelectedColor:v7Color];
    }

    else
    {
      if (!self->_selectedColorItemView)
      {
        goto LABEL_11;
      }

      color = [v5 baseColor];
      v7Color = [(PREditingColorItem *)self->_selectedColorItem baseColor];
      if ([color isEqual:v7Color])
      {
        itemView = [v10 itemView];

        v5 = v10;
        if (itemView)
        {
          goto LABEL_11;
        }

        itemCopy = [(PREditingColorItemView *)self->_selectedColorItemView updateForChangedColor];
        goto LABEL_10;
      }
    }

LABEL_10:
    v5 = v10;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](itemCopy, v5);
}

- (PREditingColorItemsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end